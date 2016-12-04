<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="AVR_IN" />
        <signal name="AVR_CLK" />
        <signal name="AVR_RST" />
        <signal name="AVR_EN" />
        <signal name="found" />
        <signal name="UserHash(127:0)" />
        <signal name="w0(31:0)" />
        <signal name="w1(31:0)" />
        <signal name="w2(31:0)" />
        <signal name="w3(31:0)" />
        <signal name="w4(31:0)" />
        <signal name="word_out(159:0)" />
        <signal name="HASH_RDY" />
        <signal name="MD5_RST" />
        <signal name="MD5_RUN" />
        <signal name="clk" />
        <port polarity="Input" name="AVR_IN" />
        <port polarity="Input" name="AVR_CLK" />
        <port polarity="Input" name="AVR_RST" />
        <port polarity="Input" name="AVR_EN" />
        <port polarity="Output" name="found" />
        <port polarity="Output" name="w0(31:0)" />
        <port polarity="Output" name="w1(31:0)" />
        <port polarity="Output" name="w2(31:0)" />
        <port polarity="Output" name="w3(31:0)" />
        <port polarity="Output" name="w4(31:0)" />
        <port polarity="Output" name="word_out(159:0)" />
        <port polarity="Output" name="HASH_RDY" />
        <port polarity="Input" name="MD5_RST" />
        <port polarity="Input" name="MD5_RUN" />
        <port polarity="Input" name="clk" />
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
        <blockdef name="SPI_Slave">
            <timestamp>2016-11-22T3:0:7</timestamp>
            <rect width="320" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="wordAssemble">
            <timestamp>2016-11-22T3:43:20</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <block symbolname="SPI_Slave" name="XLXI_3">
            <blockpin signalname="AVR_IN" name="AVR_IN" />
            <blockpin signalname="AVR_CLK" name="AVR_CLK" />
            <blockpin signalname="AVR_RST" name="RST" />
            <blockpin signalname="AVR_EN" name="ENABLE" />
            <blockpin signalname="HASH_RDY" name="READY" />
            <blockpin signalname="UserHash(127:0)" name="HASH_OUT(127:0)" />
        </block>
        <block symbolname="MD5_Toplevel" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="MD5_RUN" name="run" />
            <blockpin signalname="MD5_RST" name="rst" />
            <blockpin signalname="UserHash(127:0)" name="UserHash(127:0)" />
            <blockpin signalname="found" name="Found" />
            <blockpin signalname="w0(31:0)" name="w0_out(31:0)" />
            <blockpin signalname="w1(31:0)" name="w1_out(31:0)" />
            <blockpin signalname="w2(31:0)" name="w2_out(31:0)" />
            <blockpin signalname="w3(31:0)" name="w3_out(31:0)" />
            <blockpin signalname="w4(31:0)" name="w4_out(31:0)" />
        </block>
        <block symbolname="wordAssemble" name="XLXI_4">
            <blockpin signalname="w0(31:0)" name="w0(31:0)" />
            <blockpin signalname="w1(31:0)" name="w1(31:0)" />
            <blockpin signalname="w2(31:0)" name="w2(31:0)" />
            <blockpin signalname="w3(31:0)" name="w3(31:0)" />
            <blockpin signalname="w4(31:0)" name="w4(31:0)" />
            <blockpin signalname="word_out(159:0)" name="word_out(159:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="576" y="1424" name="XLXI_3" orien="R0">
        </instance>
        <branch name="AVR_IN">
            <wire x2="576" y1="1200" y2="1200" x1="464" />
        </branch>
        <branch name="AVR_CLK">
            <wire x2="576" y1="1264" y2="1264" x1="464" />
        </branch>
        <branch name="AVR_RST">
            <wire x2="576" y1="1328" y2="1328" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="1200" name="AVR_IN" orien="R180" />
        <iomarker fontsize="28" x="464" y="1264" name="AVR_CLK" orien="R180" />
        <iomarker fontsize="28" x="464" y="1328" name="AVR_RST" orien="R180" />
        <branch name="AVR_EN">
            <wire x2="576" y1="1392" y2="1392" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="1392" name="AVR_EN" orien="R180" />
        <instance x="1536" y="1456" name="XLXI_1" orien="R0">
        </instance>
        <branch name="found">
            <wire x2="2016" y1="1104" y2="1104" x1="2000" />
            <wire x2="2816" y1="1104" y2="1104" x1="2016" />
        </branch>
        <branch name="UserHash(127:0)">
            <wire x2="1536" y1="1392" y2="1392" x1="1024" />
        </branch>
        <instance x="2256" y="1584" name="XLXI_4" orien="R0">
        </instance>
        <branch name="w0(31:0)">
            <wire x2="2128" y1="1168" y2="1168" x1="2000" />
            <wire x2="2128" y1="1168" y2="1296" x1="2128" />
            <wire x2="2256" y1="1296" y2="1296" x1="2128" />
            <wire x2="2128" y1="1296" y2="1680" x1="2128" />
            <wire x2="2560" y1="1680" y2="1680" x1="2128" />
        </branch>
        <branch name="w1(31:0)">
            <wire x2="2112" y1="1232" y2="1232" x1="2000" />
            <wire x2="2112" y1="1232" y2="1360" x1="2112" />
            <wire x2="2256" y1="1360" y2="1360" x1="2112" />
            <wire x2="2112" y1="1360" y2="1760" x1="2112" />
            <wire x2="2560" y1="1760" y2="1760" x1="2112" />
        </branch>
        <branch name="w2(31:0)">
            <wire x2="2096" y1="1296" y2="1296" x1="2000" />
            <wire x2="2096" y1="1296" y2="1424" x1="2096" />
            <wire x2="2256" y1="1424" y2="1424" x1="2096" />
            <wire x2="2096" y1="1424" y2="1840" x1="2096" />
            <wire x2="2560" y1="1840" y2="1840" x1="2096" />
        </branch>
        <branch name="w3(31:0)">
            <wire x2="2080" y1="1360" y2="1360" x1="2000" />
            <wire x2="2080" y1="1360" y2="1488" x1="2080" />
            <wire x2="2256" y1="1488" y2="1488" x1="2080" />
            <wire x2="2080" y1="1488" y2="1920" x1="2080" />
            <wire x2="2560" y1="1920" y2="1920" x1="2080" />
        </branch>
        <branch name="w4(31:0)">
            <wire x2="2064" y1="1424" y2="1424" x1="2000" />
            <wire x2="2064" y1="1424" y2="1552" x1="2064" />
            <wire x2="2256" y1="1552" y2="1552" x1="2064" />
            <wire x2="2064" y1="1552" y2="2000" x1="2064" />
            <wire x2="2560" y1="2000" y2="2000" x1="2064" />
        </branch>
        <branch name="word_out(159:0)">
            <wire x2="2816" y1="1296" y2="1296" x1="2640" />
        </branch>
        <iomarker fontsize="28" x="2816" y="1296" name="word_out(159:0)" orien="R0" />
        <branch name="HASH_RDY">
            <wire x2="1120" y1="1200" y2="1200" x1="1024" />
            <wire x2="1120" y1="944" y2="1200" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="1120" y="944" name="HASH_RDY" orien="R270" />
        <branch name="MD5_RST">
            <wire x2="1200" y1="944" y2="1296" x1="1200" />
            <wire x2="1536" y1="1296" y2="1296" x1="1200" />
        </branch>
        <branch name="MD5_RUN">
            <wire x2="1264" y1="944" y2="1200" x1="1264" />
            <wire x2="1536" y1="1200" y2="1200" x1="1264" />
        </branch>
        <branch name="clk">
            <wire x2="1328" y1="944" y2="1104" x1="1328" />
            <wire x2="1520" y1="1104" y2="1104" x1="1328" />
            <wire x2="1536" y1="1104" y2="1104" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1200" y="944" name="MD5_RST" orien="R270" />
        <iomarker fontsize="28" x="1264" y="944" name="MD5_RUN" orien="R270" />
        <iomarker fontsize="28" x="1328" y="944" name="clk" orien="R270" />
        <iomarker fontsize="28" x="2816" y="1104" name="found" orien="R0" />
        <iomarker fontsize="28" x="2560" y="1680" name="w0(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2560" y="1760" name="w1(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2560" y="1840" name="w2(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2560" y="1920" name="w3(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2560" y="2000" name="w4(31:0)" orien="R0" />
    </sheet>
</drawing>