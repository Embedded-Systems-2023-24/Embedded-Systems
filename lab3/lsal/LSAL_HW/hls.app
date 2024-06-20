<project xmlns="com.autoesl.autopilot.project" name="LSAL_HW" top="compute_matrices">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="255 280">
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../hw_baseline/Vitis_HLS/lsal_test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="hw_baseline/Vitis_HLS/lsal.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="inactive"/>
        <solution name="solution2" status="active"/>
    </solutions>
</project>

