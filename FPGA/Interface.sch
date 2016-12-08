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
        <signal name="HASH_RDY" />
        <signal name="MD5_RST" />
        <signal name="MD5_RUN" />
        <signal name="w4(31:0)" />
        <signal name="w3(31:0)" />
        <signal name="w2(31:0)" />
        <signal name="w1(31:0)" />
        <signal name="w0(31:0)" />
        <signal name="clk" />
        <signal name="LCD_DB(4)" />
        <signal name="LCD_DB(5)" />
        <signal name="LCD_DB(6)" />
        <signal name="LCD_DB(7)" />
        <signal name="LCD_DB(7:4)" />
        <signal name="LCD_RW" />
        <signal name="LCD_RS" />
        <signal name="LCD_E" />
        <signal name="XLXN_1" />
        <signal name="XLXN_2(159:0)" />
        <signal name="XLXN_3(127:0)" />
        <signal name="XLXN_4(127:0)" />
        <port polarity="Input" name="AVR_IN" />
        <port polarity="Input" name="AVR_CLK" />
        <port polarity="Input" name="AVR_RST" />
        <port polarity="Input" name="AVR_EN" />
        <port polarity="Output" name="found" />
        <port polarity="Output" name="HASH_RDY" />
        <port polarity="Input" name="MD5_RST" />
        <port polarity="Input" name="MD5_RUN" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="LCD_DB(4)" />
        <port polarity="Output" name="LCD_DB(5)" />
        <port polarity="Output" name="LCD_DB(6)" />
        <port polarity="Output" name="LCD_DB(7)" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_E" />
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
        <blockdef name="lcd16x2_ctrl">
            <timestamp>2016-12-5T0:6:47</timestamp>
            <rect width="336" x="64" y="-256" height="256" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="lcd_parser">
            <timestamp>2016-12-8T0:15:28</timestamp>
            <rect width="304" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
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
            <blockpin signalname="XLXN_2(159:0)" name="word_out(159:0)" />
        </block>
        <block symbolname="lcd16x2_ctrl" name="XLXI_5">
            <blockpin signalname="LCD_E" name="lcd_e" />
            <blockpin signalname="LCD_RS" name="lcd_rs" />
            <blockpin signalname="LCD_RW" name="lcd_rw" />
            <blockpin signalname="LCD_DB(7:4)" name="lcd_db(7:4)" />
            <blockpin signalname="XLXN_4(127:0)" name="line1_buffer(127:0)" />
            <blockpin signalname="XLXN_3(127:0)" name="line2_buffer(127:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="MD5_RST" name="rst" />
        </block>
        <block symbolname="lcd_parser" name="XLXI_7">
            <blockpin signalname="XLXN_2(159:0)" name="word_in(159:0)" />
            <blockpin signalname="XLXN_4(127:0)" name="line1(127:0)" />
            <blockpin signalname="XLXN_3(127:0)" name="line2(127:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="AVR_IN">
            <wire x2="464" y1="1200" y2="1200" x1="352" />
        </branch>
        <branch name="AVR_CLK">
            <wire x2="464" y1="1264" y2="1264" x1="352" />
        </branch>
        <branch name="AVR_RST">
            <wire x2="464" y1="1328" y2="1328" x1="352" />
        </branch>
        <branch name="AVR_EN">
            <wire x2="464" y1="1392" y2="1392" x1="352" />
        </branch>
        <branch name="UserHash(127:0)">
            <wire x2="1424" y1="1392" y2="1392" x1="912" />
        </branch>
        <branch name="HASH_RDY">
            <wire x2="1008" y1="1200" y2="1200" x1="912" />
            <wire x2="1008" y1="832" y2="1200" x1="1008" />
        </branch>
        <branch name="MD5_RUN">
            <wire x2="1152" y1="832" y2="1200" x1="1152" />
            <wire x2="1424" y1="1200" y2="1200" x1="1152" />
        </branch>
        <branch name="w4(31:0)">
            <wire x2="2096" y1="1424" y2="1424" x1="1888" />
        </branch>
        <branch name="w3(31:0)">
            <wire x2="2096" y1="1360" y2="1360" x1="1888" />
        </branch>
        <branch name="w2(31:0)">
            <wire x2="2096" y1="1296" y2="1296" x1="1888" />
        </branch>
        <branch name="w1(31:0)">
            <wire x2="2096" y1="1232" y2="1232" x1="1888" />
        </branch>
        <branch name="w0(31:0)">
            <wire x2="2096" y1="1168" y2="1168" x1="1888" />
        </branch>
        <instance x="464" y="1424" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1424" y="1456" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2096" y="1456" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="352" y="1200" name="AVR_IN" orien="R180" />
        <iomarker fontsize="28" x="352" y="1264" name="AVR_CLK" orien="R180" />
        <iomarker fontsize="28" x="352" y="1328" name="AVR_RST" orien="R180" />
        <iomarker fontsize="28" x="352" y="1392" name="AVR_EN" orien="R180" />
        <iomarker fontsize="28" x="3328" y="1760" name="LCD_DB(4)" orien="R0" />
        <iomarker fontsize="28" x="3328" y="1696" name="LCD_DB(5)" orien="R0" />
        <iomarker fontsize="28" x="3328" y="1632" name="LCD_DB(6)" orien="R0" />
        <iomarker fontsize="28" x="3328" y="1568" name="LCD_DB(7)" orien="R0" />
        <bustap x2="3232" y1="1696" y2="1696" x1="3136" />
        <bustap x2="3232" y1="1632" y2="1632" x1="3136" />
        <bustap x2="3232" y1="1568" y2="1568" x1="3136" />
        <bustap x2="3232" y1="1760" y2="1760" x1="3136" />
        <iomarker fontsize="28" x="3328" y="1344" name="LCD_E" orien="R0" />
        <iomarker fontsize="28" x="3328" y="1472" name="LCD_RW" orien="R0" />
        <iomarker fontsize="28" x="3328" y="1408" name="LCD_RS" orien="R0" />
        <instance x="2640" y="1568" name="XLXI_5" orien="R0">
        </instance>
        <branch name="MD5_RST">
            <wire x2="1088" y1="832" y2="1296" x1="1088" />
            <wire x2="1424" y1="1296" y2="1296" x1="1088" />
            <wire x2="1088" y1="1296" y2="1536" x1="1088" />
            <wire x2="2640" y1="1536" y2="1536" x1="1088" />
        </branch>
        <branch name="LCD_DB(4)">
            <wire x2="3328" y1="1760" y2="1760" x1="3232" />
        </branch>
        <branch name="LCD_DB(5)">
            <wire x2="3328" y1="1696" y2="1696" x1="3232" />
        </branch>
        <branch name="LCD_DB(6)">
            <wire x2="3328" y1="1632" y2="1632" x1="3232" />
        </branch>
        <branch name="LCD_DB(7)">
            <wire x2="3328" y1="1568" y2="1568" x1="3232" />
        </branch>
        <branch name="LCD_DB(7:4)">
            <wire x2="3136" y1="1536" y2="1536" x1="3104" />
            <wire x2="3136" y1="1536" y2="1568" x1="3136" />
            <wire x2="3136" y1="1568" y2="1632" x1="3136" />
            <wire x2="3136" y1="1632" y2="1696" x1="3136" />
            <wire x2="3136" y1="1696" y2="1760" x1="3136" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="3328" y1="1472" y2="1472" x1="3104" />
        </branch>
        <branch name="LCD_RS">
            <wire x2="3328" y1="1408" y2="1408" x1="3104" />
        </branch>
        <branch name="LCD_E">
            <wire x2="3328" y1="1344" y2="1344" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3296" y="752" name="found" orien="R0" />
        <branch name="found">
            <wire x2="1904" y1="1104" y2="1104" x1="1888" />
            <wire x2="1904" y1="1040" y2="1104" x1="1904" />
            <wire x2="2448" y1="1040" y2="1040" x1="1904" />
            <wire x2="3296" y1="752" y2="752" x1="2448" />
            <wire x2="2448" y1="752" y2="1040" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="1008" y="832" name="HASH_RDY" orien="R270" />
        <iomarker fontsize="28" x="1088" y="832" name="MD5_RST" orien="R270" />
        <iomarker fontsize="28" x="1152" y="832" name="MD5_RUN" orien="R270" />
        <iomarker fontsize="28" x="1216" y="832" name="clk" orien="R270" />
        <branch name="XLXN_2(159:0)">
            <wire x2="2560" y1="1168" y2="1168" x1="2480" />
            <wire x2="2560" y1="1008" y2="1168" x1="2560" />
            <wire x2="2656" y1="1008" y2="1008" x1="2560" />
        </branch>
        <branch name="XLXN_3(127:0)">
            <wire x2="3168" y1="1200" y2="1200" x1="2592" />
            <wire x2="2592" y1="1200" y2="1408" x1="2592" />
            <wire x2="2640" y1="1408" y2="1408" x1="2592" />
            <wire x2="3168" y1="1008" y2="1008" x1="3088" />
            <wire x2="3168" y1="1008" y2="1200" x1="3168" />
        </branch>
        <branch name="XLXN_4(127:0)">
            <wire x2="3152" y1="1168" y2="1168" x1="2576" />
            <wire x2="2576" y1="1168" y2="1344" x1="2576" />
            <wire x2="2640" y1="1344" y2="1344" x1="2576" />
            <wire x2="3152" y1="944" y2="944" x1="3088" />
            <wire x2="3152" y1="944" y2="1168" x1="3152" />
        </branch>
        <branch name="clk">
            <wire x2="1216" y1="832" y2="944" x1="1216" />
            <wire x2="1216" y1="944" y2="1104" x1="1216" />
            <wire x2="1424" y1="1104" y2="1104" x1="1216" />
            <wire x2="1216" y1="1104" y2="1472" x1="1216" />
            <wire x2="2640" y1="1472" y2="1472" x1="1216" />
        </branch>
        <instance x="2656" y="1040" name="XLXI_7" orien="R0">
        </instance>
    </sheet>
</drawing>