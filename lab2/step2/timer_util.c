#include <stdio.h>
#include <stdlib.h>
#include "xparameters.h"
#include "xscutimer.h"
#include "core_matrix.h"

/*******************************************************************************/
/*                         S E E D   V A L U E S                               */
/*******************************************************************************/


#if VALIDATION_RUN
	volatile ee_s32 seed1_volatile=0x3415;
	volatile ee_s32 seed2_volatile=0x3415;
	volatile ee_s32 seed3_volatile=0x66;
#endif
#if PERFORMANCE_RUN
	volatile ee_s32 seed1_volatile=0x0;
	volatile ee_s32 seed2_volatile=0x0;
	volatile ee_s32 seed3_volatile=0x66;
#endif
#if PROFILE_RUN
	volatile ee_s32 seed1_volatile=0x8;
	volatile ee_s32 seed2_volatile=0x8;
	volatile ee_s32 seed3_volatile=0x8;
#endif


/*******************************************************************************/
/*                             D E F I N E S                                   */
/*******************************************************************************/

#define TIMER_DEVICE_ID		XPAR_XSCUTIMER_0_DEVICE_ID
#define TIMER_LOAD_VALUE	0xFFFFFFE
#define START_COUNTER		0
#define STOP_COUNTER		1

#define NSECS_PER_SEC 		667000000/2
#define CORETIMETYPE 		ee_u32
#define TIMER_RES_DIVIDER 	40
#define EE_TICKS_PER_SEC 	(NSECS_PER_SEC / TIMER_RES_DIVIDER)


/*******************************************************************************/
/*                        G L O B A L   V A R I A B L E S                      */
/*******************************************************************************/


static CORETIMETYPE start_time_val, stop_time_val;


/*******************************************************************************/
/*                             I N S T A N C E S                               */
/*******************************************************************************/

// Cortex A9 SCU Private Timer Instance

XScuTimer		Timer;


/*******************************************************************************/
/*                      F U N C T I O N A L   P R O T O T Y P E S              */
/*******************************************************************************/

ee_u32 GetTimerValue(ee_u32 TimerIntrId, ee_u16 Mode);


/*******************************************************************************/
/*                         G E T  S T A R T  T I M E                           */
/*******************************************************************************/

// Get start time by reading the ARM CPU private timer counter

void start_time(void) {
	start_time_val = GetTimerValue(TIMER_DEVICE_ID,START_COUNTER);
}

/*******************************************************************************/
/*                           G E T  S T O P  T I M E                           */
/*******************************************************************************/

// Get stop time by reading the ARM CPU private timer counter

void stop_time(void) {
	stop_time_val = GetTimerValue(TIMER_DEVICE_ID, STOP_COUNTER);
}


/*******************************************************************************/
/*                       G E T  E L A P S E D  T I M E                         */
/*******************************************************************************/


CORE_TICKS get_time(void) {
	CORE_TICKS elapsed = start_time_val-stop_time_val;
	return elapsed;
}

/*******************************************************************************/
/*                    C O N V E R T   T O  S E C O N D S                       */
/*******************************************************************************/

secs_ret time_in_secs(CORE_TICKS ticks) {
	secs_ret retval=((secs_ret)ticks) / (secs_ret)EE_TICKS_PER_SEC;
	return retval;
}

ee_u32 default_num_contexts=1;



/*******************************************************************************/
/*                          G E T  T I M E R  V A L U E                        */
/*******************************************************************************/

// This routine is specific for the ARM Cortex-A9 processor
// Mode = 0 when Starting the Timer, and 1 when Stopping the Timer

ee_u32 GetTimerValue(ee_u32 TimerIntrId, ee_u16 Mode)
{

	int 			Status;
	XScuTimer_Config 	*ConfigPtr;
	volatile ee_u32		CntValue  = 0;
	XScuTimer		*TimerInstancePtr = &Timer;


	if (Mode == 0) {  // Start timer

	  // Initialize the Private Timer so that it is ready to use

	  ConfigPtr = XScuTimer_LookupConfig(TimerIntrId);

	  Status = XScuTimer_CfgInitialize(TimerInstancePtr, ConfigPtr,
					 ConfigPtr->BaseAddr);

	   if (Status != XST_SUCCESS) {
		  return XST_FAILURE; }

	   // Load the timer prescaler register.

	   XScuTimer_SetPrescaler(TimerInstancePtr, TIMER_RES_DIVIDER);

	   // Load the timer counter register.

	  XScuTimer_LoadTimer(TimerInstancePtr, TIMER_LOAD_VALUE);

	  // Start the timer counter and read start value

	  XScuTimer_Start(TimerInstancePtr);
	  CntValue = XScuTimer_GetCounterValue(TimerInstancePtr);

	}

	else {

	   // Read stop value and stop the timer counter

	   CntValue = XScuTimer_GetCounterValue(TimerInstancePtr);
	   XScuTimer_Stop(TimerInstancePtr);


	}

	return CntValue;

}
