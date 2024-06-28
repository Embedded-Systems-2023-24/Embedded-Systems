export LD_LIBRARY_PATH=/mnt:/tmp:$LD_LIBRARY_PATH
export XILINX_XRT=/usr
./lsal smith_waterman.xclbin
return_code=$?
if [ $return_code -ne 0 ]; then
echo "ERROR: host run failed, RC=$return_code"
fi
echo "INFO: host run completed."
