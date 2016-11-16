<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6(127:0)" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9(3:0)" />
        <signal name="XLXN_10" />
        <port polarity="Input" name="XLXN_1" />
        <port polarity="Input" name="XLXN_2" />
        <port polarity="Input" name="XLXN_5" />
        <port polarity="Input" name="XLXN_7" />
        <port polarity="Input" name="XLXN_8" />
        <port polarity="Input" name="XLXN_9(3:0)" />
        <port polarity="Output" name="XLXN_10" />
        <blockdef name="MD5_Toplevel">
            <timestamp>2016-11-15T3:55:47</timestamp>
            <rect width="336" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-76" height="24" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <rect width="64" x="400" y="-300" height="24" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="UserHashReg">
            <timestamp>2016-11-8T2:33:2</timestamp>
            <rect width="320" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-300" height="24" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
        </blockdef>
        <block symbolname="MD5_Toplevel" name="XLXI_1">
            <blockpin signalname="XLXN_1" name="clk" />
            <blockpin signalname="XLXN_5" name="run" />
            <blockpin signalname="XLXN_2" name="rst" />
            <blockpin signalname="XLXN_6(127:0)" name="UserHash(127:0)" />
            <blockpin signalname="XLXN_10" name="Found" />
            <blockpin name="w0_out(31:0)" />
            <blockpin name="w1_out(31:0)" />
            <blockpin name="w2_out(31:0)" />
            <blockpin name="w3_out(31:0)" />
            <blockpin name="w4_out(31:0)" />
        </block>
        <block symbolname="UserHashReg" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="Clk" />
            <blockpin signalname="XLXN_2" name="Reset" />
            <blockpin signalname="XLXN_7" name="Shift_Enable" />
            <blockpin signalname="XLXN_8" name="Shift_R" />
            <blockpin signalname="XLXN_9(3:0)" name="Shift_In(3:0)" />
            <blockpin signalname="XLXN_6(127:0)" name="Data_Out(127:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1536" y="1360" name="XLXI_1" orien="R0">
        </instance>
        <instance x="896" y="1584" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="848" y1="1008" y2="1008" x1="480" />
            <wire x2="1536" y1="1008" y2="1008" x1="848" />
            <wire x2="848" y1="1008" y2="1296" x1="848" />
            <wire x2="896" y1="1296" y2="1296" x1="848" />
        </branch>
        <iomarker fontsize="28" x="480" y="1008" name="XLXN_1" orien="R180" />
        <iomarker fontsize="28" x="480" y="1120" name="XLXN_2" orien="R180" />
        <branch name="XLXN_2">
            <wire x2="640" y1="1120" y2="1120" x1="480" />
            <wire x2="640" y1="1120" y2="1280" x1="640" />
            <wire x2="816" y1="1280" y2="1280" x1="640" />
            <wire x2="816" y1="1280" y2="1360" x1="816" />
            <wire x2="896" y1="1360" y2="1360" x1="816" />
            <wire x2="1536" y1="1200" y2="1200" x1="816" />
            <wire x2="816" y1="1200" y2="1280" x1="816" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1520" y1="1072" y2="1072" x1="480" />
            <wire x2="1520" y1="1072" y2="1104" x1="1520" />
            <wire x2="1536" y1="1104" y2="1104" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="480" y="1072" name="XLXN_5" orien="R180" />
        <branch name="XLXN_6(127:0)">
            <wire x2="1536" y1="1296" y2="1296" x1="1344" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="896" y1="1424" y2="1424" x1="512" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="896" y1="1488" y2="1488" x1="512" />
        </branch>
        <branch name="XLXN_9(3:0)">
            <wire x2="896" y1="1552" y2="1552" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="1424" name="XLXN_7" orien="R180" />
        <iomarker fontsize="28" x="512" y="1488" name="XLXN_8" orien="R180" />
        <iomarker fontsize="28" x="512" y="1552" name="XLXN_9(3:0)" orien="R180" />
        <branch name="XLXN_10">
            <wire x2="2416" y1="1008" y2="1008" x1="2000" />
            <wire x2="2416" y1="1008" y2="1024" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2416" y="1024" name="XLXN_10" orien="R90" />
    </sheet>
</drawing>