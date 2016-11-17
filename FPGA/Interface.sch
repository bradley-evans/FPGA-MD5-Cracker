<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(127:0)" />
        <signal name="rst" />
        <signal name="shift_r" />
        <signal name="shift_enable" />
        <signal name="clk" />
        <signal name="shiftin(3:0)" />
        <signal name="shiftin(3)" />
        <signal name="shiftin(2)" />
        <signal name="shiftin(1)" />
        <signal name="shiftin(0)" />
        <signal name="run" />
        <signal name="found" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="shift_r" />
        <port polarity="Input" name="shift_enable" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="shiftin(3)" />
        <port polarity="Input" name="shiftin(2)" />
        <port polarity="Input" name="shiftin(1)" />
        <port polarity="Input" name="shiftin(0)" />
        <port polarity="Input" name="run" />
        <port polarity="Output" name="found" />
        <blockdef name="MD5_Toplevel">
            <timestamp>2016-11-17T6:44:55</timestamp>
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
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="run" name="run" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_1(127:0)" name="UserHash(127:0)" />
            <blockpin signalname="found" name="Found" />
            <blockpin name="w0_out(31:0)" />
            <blockpin name="w1_out(31:0)" />
            <blockpin name="w2_out(31:0)" />
            <blockpin name="w3_out(31:0)" />
            <blockpin name="w4_out(31:0)" />
        </block>
        <block symbolname="UserHashReg" name="XLXI_2">
            <blockpin signalname="clk" name="Clk" />
            <blockpin signalname="rst" name="Reset" />
            <blockpin signalname="shift_enable" name="Shift_Enable" />
            <blockpin signalname="shift_r" name="Shift_R" />
            <blockpin signalname="shiftin(3:0)" name="Shift_In(3:0)" />
            <blockpin signalname="XLXN_1(127:0)" name="Data_Out(127:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1536" y="1440" name="XLXI_1" orien="R0">
        </instance>
        <instance x="928" y="1664" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(127:0)">
            <wire x2="1536" y1="1376" y2="1376" x1="1376" />
        </branch>
        <branch name="shift_r">
            <wire x2="928" y1="1568" y2="1568" x1="480" />
        </branch>
        <branch name="shift_enable">
            <wire x2="928" y1="1504" y2="1504" x1="480" />
        </branch>
        <branch name="rst">
            <wire x2="800" y1="1920" y2="1920" x1="480" />
            <wire x2="1488" y1="1920" y2="1920" x1="800" />
            <wire x2="928" y1="1440" y2="1440" x1="800" />
            <wire x2="800" y1="1440" y2="1920" x1="800" />
            <wire x2="1536" y1="1280" y2="1280" x1="1488" />
            <wire x2="1488" y1="1280" y2="1920" x1="1488" />
        </branch>
        <branch name="clk">
            <wire x2="832" y1="1984" y2="1984" x1="480" />
            <wire x2="1504" y1="1984" y2="1984" x1="832" />
            <wire x2="928" y1="1376" y2="1376" x1="832" />
            <wire x2="832" y1="1376" y2="1984" x1="832" />
            <wire x2="1536" y1="1088" y2="1088" x1="1504" />
            <wire x2="1504" y1="1088" y2="1984" x1="1504" />
        </branch>
        <branch name="shiftin(3:0)">
            <wire x2="672" y1="1680" y2="1680" x1="640" />
            <wire x2="672" y1="1680" y2="1728" x1="672" />
            <wire x2="672" y1="1728" y2="1776" x1="672" />
            <wire x2="672" y1="1776" y2="1824" x1="672" />
            <wire x2="672" y1="1728" y2="1728" x1="640" />
            <wire x2="672" y1="1776" y2="1776" x1="640" />
            <wire x2="672" y1="1824" y2="1824" x1="640" />
            <wire x2="928" y1="1632" y2="1632" x1="672" />
            <wire x2="672" y1="1632" y2="1680" x1="672" />
        </branch>
        <bustap x2="544" y1="1680" y2="1680" x1="640" />
        <bustap x2="544" y1="1728" y2="1728" x1="640" />
        <bustap x2="544" y1="1776" y2="1776" x1="640" />
        <bustap x2="544" y1="1824" y2="1824" x1="640" />
        <branch name="shiftin(3)">
            <wire x2="544" y1="1680" y2="1680" x1="480" />
        </branch>
        <branch name="shiftin(2)">
            <wire x2="544" y1="1728" y2="1728" x1="480" />
        </branch>
        <branch name="shiftin(1)">
            <wire x2="544" y1="1776" y2="1776" x1="480" />
        </branch>
        <branch name="shiftin(0)">
            <wire x2="544" y1="1824" y2="1824" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="1680" name="shiftin(3)" orien="R180" />
        <iomarker fontsize="28" x="480" y="1728" name="shiftin(2)" orien="R180" />
        <iomarker fontsize="28" x="480" y="1776" name="shiftin(1)" orien="R180" />
        <iomarker fontsize="28" x="480" y="1824" name="shiftin(0)" orien="R180" />
        <iomarker fontsize="28" x="480" y="1920" name="rst" orien="R180" />
        <iomarker fontsize="28" x="480" y="1568" name="shift_r" orien="R180" />
        <iomarker fontsize="28" x="480" y="1504" name="shift_enable" orien="R180" />
        <branch name="run">
            <wire x2="1520" y1="2048" y2="2048" x1="480" />
            <wire x2="1536" y1="1184" y2="1184" x1="1520" />
            <wire x2="1520" y1="1184" y2="2048" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="480" y="1984" name="clk" orien="R180" />
        <iomarker fontsize="28" x="480" y="2048" name="run" orien="R180" />
        <branch name="found">
            <wire x2="2560" y1="1088" y2="1088" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2560" y="1088" name="found" orien="R0" />
    </sheet>
</drawing>