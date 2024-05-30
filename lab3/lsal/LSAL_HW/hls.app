<project xmlns="com.autoesl.autopilot.project" top="compute_matrices" name="LSAL_HW">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="32 32">
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../hw_baseline/Vitis_HLS/lsal_test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="hw_baseline/Vitis_HLS/lsal.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

