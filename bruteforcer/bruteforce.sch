<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_10" />
        <signal name="XLXN_12" />
        <signal name="XLXN_14" />
        <signal name="w4(31:0)" />
        <signal name="w4(23:16)" />
        <signal name="w4(15:8)" />
        <signal name="w4(7:0)" />
        <signal name="w4(31:24)" />
        <signal name="XLXN_30" />
        <signal name="w4_in(31:24)" />
        <signal name="w4_in(23:16)" />
        <signal name="w4_in(15:8)" />
        <signal name="w4_in(7:0)" />
        <signal name="w4_in(31:0)" />
        <signal name="w3_in(31:0)" />
        <signal name="w3_in(7:0)" />
        <signal name="w3_in(15:8)" />
        <signal name="w3_in(23:16)" />
        <signal name="w3_in(31:24)" />
        <signal name="w3(31:24)" />
        <signal name="w3(7:0)" />
        <signal name="w3(15:8)" />
        <signal name="w3(23:16)" />
        <signal name="w3(31:0)" />
        <signal name="XLXN_40" />
        <signal name="XLXN_39" />
        <signal name="XLXN_38" />
        <signal name="XLXN_168" />
        <signal name="XLXN_169" />
        <signal name="XLXN_170" />
        <signal name="w2(31:0)" />
        <signal name="w2(23:16)" />
        <signal name="w2(15:8)" />
        <signal name="w2(7:0)" />
        <signal name="w2(31:24)" />
        <signal name="w2_in(31:24)" />
        <signal name="w2_in(23:16)" />
        <signal name="w2_in(15:8)" />
        <signal name="w2_in(7:0)" />
        <signal name="w1_in(7:0)" />
        <signal name="w1_in(15:8)" />
        <signal name="w1_in(23:16)" />
        <signal name="w1_in(31:24)" />
        <signal name="w1(31:24)" />
        <signal name="w1(7:0)" />
        <signal name="w1(15:8)" />
        <signal name="w1(23:16)" />
        <signal name="XLXN_191" />
        <signal name="XLXN_192" />
        <signal name="XLXN_193" />
        <signal name="XLXN_249" />
        <signal name="XLXN_251" />
        <signal name="XLXN_253" />
        <signal name="w1(31:0)" />
        <signal name="w2_in(31:0)" />
        <signal name="ActiveAdders(7)" />
        <signal name="ActiveAdders(6)" />
        <signal name="ActiveAdders(5)" />
        <signal name="ActiveAdders(16)" />
        <signal name="ActiveAdders(17)" />
        <signal name="ActiveAdders(18)" />
        <signal name="ActiveAdders(11)" />
        <signal name="ActiveAdders(8)" />
        <signal name="ActiveAdders(9)" />
        <signal name="ActiveAdders(10)" />
        <signal name="ActiveAdders(15)" />
        <signal name="ActiveAdders(14)" />
        <signal name="ActiveAdders(13)" />
        <signal name="ActiveAdders(12)" />
        <signal name="ActiveAdders(4)" />
        <signal name="w1_in(31:0)" />
        <signal name="w0_in(7:0)" />
        <signal name="w0_in(15:8)" />
        <signal name="w0_in(23:16)" />
        <signal name="w0_in(31:24)" />
        <signal name="w0(31:24)" />
        <signal name="w0(7:0)" />
        <signal name="w0(15:8)" />
        <signal name="w0(23:16)" />
        <signal name="XLXN_554" />
        <signal name="XLXN_555" />
        <signal name="XLXN_556" />
        <signal name="w0(31:0)" />
        <signal name="ActiveAdders(2)" />
        <signal name="ActiveAdders(1)" />
        <signal name="ActiveAdders(0)" />
        <signal name="w0_in(31:0)" />
        <signal name="ActiveAdders(3)" />
        <signal name="XLXN_582" />
        <signal name="ActiveAdders(18:0)" />
        <signal name="XLXN_585" />
        <signal name="inc" />
        <signal name="XLXN_588" />
        <signal name="AdderNum(3:0)" />
        <port polarity="Output" name="w4(31:0)" />
        <port polarity="Input" name="w4_in(31:0)" />
        <port polarity="Input" name="w3_in(31:0)" />
        <port polarity="Output" name="w3(31:0)" />
        <port polarity="Output" name="w2(31:0)" />
        <port polarity="Output" name="w1(31:0)" />
        <port polarity="Input" name="w2_in(31:0)" />
        <port polarity="Input" name="w1_in(31:0)" />
        <port polarity="Output" name="w0(31:0)" />
        <port polarity="Input" name="w0_in(31:0)" />
        <port polarity="Output" name="ActiveAdders(18:0)" />
        <port polarity="Input" name="inc" />
        <port polarity="Input" name="AdderNum(3:0)" />
        <blockdef name="charAdder">
            <timestamp>2016-11-8T2:30:35</timestamp>
            <rect width="304" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <line x2="432" y1="-128" y2="-128" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="firstCharAdder">
            <timestamp>2016-11-8T2:34:2</timestamp>
            <rect width="320" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-128" y2="-128" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <block symbolname="charAdder" name="XLXI_31">
            <blockpin signalname="XLXN_10" name="Inc" />
            <blockpin signalname="ActiveAdders(18)" name="rAddActive" />
            <blockpin signalname="XLXN_30" name="lastAdder" />
            <blockpin signalname="w4_in(31:24)" name="lastChar(7:0)" />
            <blockpin name="activeAdder" />
            <blockpin name="carry" />
            <blockpin signalname="w4(31:24)" name="nextChar(7:0)" />
        </block>
        <block symbolname="charAdder" name="XLXI_27">
            <blockpin signalname="XLXN_14" name="Inc" />
            <blockpin signalname="ActiveAdders(16)" name="rAddActive" />
            <blockpin signalname="XLXN_585" name="lastAdder" />
            <blockpin signalname="w4_in(15:8)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(17)" name="activeAdder" />
            <blockpin signalname="XLXN_12" name="carry" />
            <blockpin signalname="w4(15:8)" name="nextChar(7:0)" />
        </block>
        <block symbolname="charAdder" name="XLXI_41">
            <blockpin signalname="XLXN_249" name="Inc" />
            <blockpin signalname="ActiveAdders(15)" name="rAddActive" />
            <blockpin signalname="XLXN_585" name="lastAdder" />
            <blockpin signalname="w4_in(7:0)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(16)" name="activeAdder" />
            <blockpin signalname="XLXN_14" name="carry" />
            <blockpin signalname="w4(7:0)" name="nextChar(7:0)" />
        </block>
        <block symbolname="charAdder" name="XLXI_30">
            <blockpin signalname="XLXN_12" name="Inc" />
            <blockpin signalname="ActiveAdders(17)" name="rAddActive" />
            <blockpin signalname="XLXN_585" name="lastAdder" />
            <blockpin signalname="w4_in(23:16)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(18)" name="activeAdder" />
            <blockpin signalname="XLXN_10" name="carry" />
            <blockpin signalname="w4(23:16)" name="nextChar(7:0)" />
        </block>
        <block symbolname="charAdder" name="XLXI_145">
            <blockpin signalname="XLXN_39" name="Inc" />
            <blockpin signalname="ActiveAdders(13)" name="rAddActive" />
            <blockpin signalname="XLXN_585" name="lastAdder" />
            <blockpin signalname="w3_in(23:16)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(14)" name="activeAdder" />
            <blockpin signalname="XLXN_38" name="carry" />
            <blockpin signalname="w3(23:16)" name="nextChar(7:0)" />
        </block>
        <block symbolname="charAdder" name="XLXI_144">
            <blockpin signalname="XLXN_251" name="Inc" />
            <blockpin signalname="ActiveAdders(11)" name="rAddActive" />
            <blockpin signalname="XLXN_585" name="lastAdder" />
            <blockpin signalname="w3_in(7:0)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(12)" name="activeAdder" />
            <blockpin signalname="XLXN_40" name="carry" />
            <blockpin signalname="w3(7:0)" name="nextChar(7:0)" />
        </block>
        <block symbolname="charAdder" name="XLXI_143">
            <blockpin signalname="XLXN_40" name="Inc" />
            <blockpin signalname="ActiveAdders(12)" name="rAddActive" />
            <blockpin signalname="XLXN_585" name="lastAdder" />
            <blockpin signalname="w3_in(15:8)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(13)" name="activeAdder" />
            <blockpin signalname="XLXN_39" name="carry" />
            <blockpin signalname="w3(15:8)" name="nextChar(7:0)" />
        </block>
        <block symbolname="charAdder" name="XLXI_142">
            <blockpin signalname="XLXN_38" name="Inc" />
            <blockpin signalname="ActiveAdders(14)" name="rAddActive" />
            <blockpin signalname="XLXN_585" name="lastAdder" />
            <blockpin signalname="w3_in(31:24)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(15)" name="activeAdder" />
            <blockpin signalname="XLXN_249" name="carry" />
            <blockpin signalname="w3(31:24)" name="nextChar(7:0)" />
        </block>
        <block symbolname="charAdder" name="XLXI_225">
            <blockpin signalname="XLXN_168" name="Inc" />
            <blockpin signalname="ActiveAdders(10)" name="rAddActive" />
            <blockpin signalname="XLXN_585" name="lastAdder" />
            <blockpin signalname="w2_in(31:24)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(11)" name="activeAdder" />
            <blockpin signalname="XLXN_251" name="carry" />
            <blockpin signalname="w2(31:24)" name="nextChar(7:0)" />
        </block>
        <block symbolname="charAdder" name="XLXI_226">
            <blockpin signalname="XLXN_170" name="Inc" />
            <blockpin signalname="ActiveAdders(8)" name="rAddActive" />
            <blockpin signalname="XLXN_585" name="lastAdder" />
            <blockpin signalname="w2_in(15:8)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(9)" name="activeAdder" />
            <blockpin signalname="XLXN_169" name="carry" />
            <blockpin signalname="w2(15:8)" name="nextChar(7:0)" />
        </block>
        <block symbolname="charAdder" name="XLXI_227">
            <blockpin signalname="XLXN_253" name="Inc" />
            <blockpin signalname="ActiveAdders(7)" name="rAddActive" />
            <blockpin signalname="XLXN_585" name="lastAdder" />
            <blockpin signalname="w2_in(7:0)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(8)" name="activeAdder" />
            <blockpin signalname="XLXN_170" name="carry" />
            <blockpin signalname="w2(7:0)" name="nextChar(7:0)" />
        </block>
        <block symbolname="charAdder" name="XLXI_228">
            <blockpin signalname="XLXN_169" name="Inc" />
            <blockpin signalname="ActiveAdders(9)" name="rAddActive" />
            <blockpin signalname="XLXN_585" name="lastAdder" />
            <blockpin signalname="w2_in(23:16)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(10)" name="activeAdder" />
            <blockpin signalname="XLXN_168" name="carry" />
            <blockpin signalname="w2(23:16)" name="nextChar(7:0)" />
        </block>
        <block symbolname="charAdder" name="XLXI_237">
            <blockpin signalname="XLXN_192" name="Inc" />
            <blockpin signalname="ActiveAdders(5)" name="rAddActive" />
            <blockpin signalname="XLXN_585" name="lastAdder" />
            <blockpin signalname="w1_in(23:16)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(6)" name="activeAdder" />
            <blockpin signalname="XLXN_193" name="carry" />
            <blockpin signalname="w1(23:16)" name="nextChar(7:0)" />
        </block>
        <block symbolname="charAdder" name="XLXI_239">
            <blockpin signalname="XLXN_191" name="Inc" />
            <blockpin signalname="ActiveAdders(4)" name="rAddActive" />
            <blockpin signalname="XLXN_585" name="lastAdder" />
            <blockpin signalname="w1_in(15:8)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(5)" name="activeAdder" />
            <blockpin signalname="XLXN_192" name="carry" />
            <blockpin signalname="w1(15:8)" name="nextChar(7:0)" />
        </block>
        <block symbolname="charAdder" name="XLXI_240">
            <blockpin signalname="XLXN_193" name="Inc" />
            <blockpin signalname="ActiveAdders(6)" name="rAddActive" />
            <blockpin signalname="XLXN_585" name="lastAdder" />
            <blockpin signalname="w1_in(31:24)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(7)" name="activeAdder" />
            <blockpin signalname="XLXN_253" name="carry" />
            <blockpin signalname="w1(31:24)" name="nextChar(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_232">
            <blockpin signalname="XLXN_585" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_138">
            <blockpin signalname="XLXN_30" name="P" />
        </block>
        <block symbolname="charAdder" name="XLXI_299">
            <blockpin signalname="XLXN_582" name="Inc" />
            <blockpin signalname="ActiveAdders(3)" name="rAddActive" />
            <blockpin signalname="XLXN_585" name="lastAdder" />
            <blockpin signalname="w1_in(7:0)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(4)" name="activeAdder" />
            <blockpin signalname="XLXN_191" name="carry" />
            <blockpin signalname="w1(7:0)" name="nextChar(7:0)" />
        </block>
        <block symbolname="charAdder" name="XLXI_336">
            <blockpin signalname="XLXN_555" name="Inc" />
            <blockpin signalname="ActiveAdders(1)" name="rAddActive" />
            <blockpin signalname="XLXN_585" name="lastAdder" />
            <blockpin signalname="w0_in(23:16)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(2)" name="activeAdder" />
            <blockpin signalname="XLXN_556" name="carry" />
            <blockpin signalname="w0(23:16)" name="nextChar(7:0)" />
        </block>
        <block symbolname="charAdder" name="XLXI_337">
            <blockpin signalname="XLXN_554" name="Inc" />
            <blockpin signalname="ActiveAdders(0)" name="rAddActive" />
            <blockpin signalname="XLXN_585" name="lastAdder" />
            <blockpin signalname="w0_in(15:8)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(1)" name="activeAdder" />
            <blockpin signalname="XLXN_555" name="carry" />
            <blockpin signalname="w0(15:8)" name="nextChar(7:0)" />
        </block>
        <block symbolname="charAdder" name="XLXI_338">
            <blockpin signalname="XLXN_556" name="Inc" />
            <blockpin signalname="ActiveAdders(2)" name="rAddActive" />
            <blockpin signalname="XLXN_585" name="lastAdder" />
            <blockpin signalname="w0_in(31:24)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(3)" name="activeAdder" />
            <blockpin signalname="XLXN_582" name="carry" />
            <blockpin signalname="w0(31:24)" name="nextChar(7:0)" />
        </block>
        <block symbolname="firstCharAdder" name="XLXI_344">
            <blockpin signalname="inc" name="Inc" />
            <blockpin signalname="XLXN_588" name="rAddActive" />
            <blockpin signalname="AdderNum(3:0)" name="adderNum(3:0)" />
            <blockpin signalname="w0_in(7:0)" name="lastChar(7:0)" />
            <blockpin signalname="ActiveAdders(0)" name="activeAdder" />
            <blockpin signalname="XLXN_554" name="carry" />
            <blockpin signalname="w0(7:0)" name="nextChar(7:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_345">
            <blockpin signalname="XLXN_588" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="XLXN_10">
            <wire x2="512" y1="1200" y2="1200" x1="448" />
            <wire x2="448" y1="1200" y2="1504" x1="448" />
            <wire x2="1008" y1="1504" y2="1504" x1="448" />
            <wire x2="1008" y1="1504" y2="1712" x1="1008" />
            <wire x2="1008" y1="1712" y2="1712" x1="944" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="512" y1="1616" y2="1616" x1="448" />
            <wire x2="448" y1="1616" y2="1904" x1="448" />
            <wire x2="1008" y1="1904" y2="1904" x1="448" />
            <wire x2="1008" y1="1904" y2="2112" x1="1008" />
            <wire x2="1008" y1="2112" y2="2112" x1="944" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="512" y1="2016" y2="2016" x1="448" />
            <wire x2="448" y1="2016" y2="2304" x1="448" />
            <wire x2="1008" y1="2304" y2="2304" x1="448" />
            <wire x2="1008" y1="2304" y2="2512" x1="1008" />
            <wire x2="1008" y1="2512" y2="2512" x1="944" />
        </branch>
        <branch name="w4(31:0)">
            <wire x2="1104" y1="1392" y2="1392" x1="1088" />
            <wire x2="1104" y1="1392" y2="1808" x1="1104" />
            <wire x2="1104" y1="1808" y2="2208" x1="1104" />
            <wire x2="1104" y1="2208" y2="2608" x1="1104" />
            <wire x2="1104" y1="1808" y2="1808" x1="1088" />
            <wire x2="1104" y1="2208" y2="2208" x1="1088" />
            <wire x2="1104" y1="2608" y2="2608" x1="1088" />
            <wire x2="1104" y1="1104" y2="1392" x1="1104" />
        </branch>
        <branch name="w4(23:16)">
            <wire x2="992" y1="1808" y2="1808" x1="944" />
        </branch>
        <branch name="w4(15:8)">
            <wire x2="992" y1="2208" y2="2208" x1="944" />
        </branch>
        <branch name="w4(7:0)">
            <wire x2="992" y1="2608" y2="2608" x1="944" />
        </branch>
        <branch name="w4(31:24)">
            <wire x2="992" y1="1392" y2="1392" x1="944" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="384" y1="1312" y2="1328" x1="384" />
            <wire x2="512" y1="1328" y2="1328" x1="384" />
        </branch>
        <branch name="w4_in(31:24)">
            <wire x2="512" y1="1392" y2="1392" x1="368" />
        </branch>
        <branch name="w4_in(23:16)">
            <wire x2="512" y1="1808" y2="1808" x1="368" />
        </branch>
        <branch name="w4_in(15:8)">
            <wire x2="512" y1="2208" y2="2208" x1="368" />
        </branch>
        <branch name="w4_in(7:0)">
            <wire x2="512" y1="2608" y2="2608" x1="368" />
        </branch>
        <branch name="w4_in(31:0)">
            <wire x2="256" y1="1104" y2="1392" x1="256" />
            <wire x2="256" y1="1392" y2="1808" x1="256" />
            <wire x2="272" y1="1808" y2="1808" x1="256" />
            <wire x2="256" y1="1808" y2="2208" x1="256" />
            <wire x2="272" y1="2208" y2="2208" x1="256" />
            <wire x2="256" y1="2208" y2="2608" x1="256" />
            <wire x2="272" y1="2608" y2="2608" x1="256" />
            <wire x2="272" y1="1392" y2="1392" x1="256" />
        </branch>
        <branch name="w3_in(31:0)">
            <wire x2="1376" y1="1104" y2="1392" x1="1376" />
            <wire x2="1376" y1="1392" y2="1808" x1="1376" />
            <wire x2="1376" y1="1808" y2="2208" x1="1376" />
            <wire x2="1392" y1="2208" y2="2208" x1="1376" />
            <wire x2="1376" y1="2208" y2="2608" x1="1376" />
            <wire x2="1392" y1="2608" y2="2608" x1="1376" />
            <wire x2="1392" y1="1808" y2="1808" x1="1376" />
            <wire x2="1392" y1="1392" y2="1392" x1="1376" />
        </branch>
        <branch name="w3_in(7:0)">
            <wire x2="1632" y1="2608" y2="2608" x1="1488" />
        </branch>
        <branch name="w3_in(15:8)">
            <wire x2="1632" y1="2208" y2="2208" x1="1488" />
        </branch>
        <branch name="w3_in(23:16)">
            <wire x2="1632" y1="1808" y2="1808" x1="1488" />
        </branch>
        <branch name="w3_in(31:24)">
            <wire x2="1632" y1="1392" y2="1392" x1="1488" />
        </branch>
        <branch name="w3(31:24)">
            <wire x2="2112" y1="1392" y2="1392" x1="2064" />
        </branch>
        <branch name="w3(7:0)">
            <wire x2="2112" y1="2608" y2="2608" x1="2064" />
        </branch>
        <branch name="w3(15:8)">
            <wire x2="2112" y1="2208" y2="2208" x1="2064" />
        </branch>
        <branch name="w3(23:16)">
            <wire x2="2112" y1="1808" y2="1808" x1="2064" />
        </branch>
        <branch name="w3(31:0)">
            <wire x2="2224" y1="1392" y2="1392" x1="2208" />
            <wire x2="2224" y1="1392" y2="1808" x1="2224" />
            <wire x2="2224" y1="1808" y2="2208" x1="2224" />
            <wire x2="2224" y1="2208" y2="2608" x1="2224" />
            <wire x2="2224" y1="1808" y2="1808" x1="2208" />
            <wire x2="2224" y1="2208" y2="2208" x1="2208" />
            <wire x2="2224" y1="2608" y2="2608" x1="2208" />
            <wire x2="2224" y1="1104" y2="1392" x1="2224" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="1632" y1="2016" y2="2016" x1="1568" />
            <wire x2="1568" y1="2016" y2="2304" x1="1568" />
            <wire x2="2128" y1="2304" y2="2304" x1="1568" />
            <wire x2="2128" y1="2304" y2="2512" x1="2128" />
            <wire x2="2128" y1="2512" y2="2512" x1="2064" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="1632" y1="1616" y2="1616" x1="1568" />
            <wire x2="1568" y1="1616" y2="1904" x1="1568" />
            <wire x2="2128" y1="1904" y2="1904" x1="1568" />
            <wire x2="2128" y1="1904" y2="2112" x1="2128" />
            <wire x2="2128" y1="2112" y2="2112" x1="2064" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="1632" y1="1200" y2="1200" x1="1568" />
            <wire x2="1568" y1="1200" y2="1504" x1="1568" />
            <wire x2="2128" y1="1504" y2="1504" x1="1568" />
            <wire x2="2128" y1="1504" y2="1712" x1="2128" />
            <wire x2="2128" y1="1712" y2="1712" x1="2064" />
        </branch>
        <branch name="XLXN_168">
            <wire x2="2832" y1="1200" y2="1200" x1="2768" />
            <wire x2="2768" y1="1200" y2="1504" x1="2768" />
            <wire x2="3328" y1="1504" y2="1504" x1="2768" />
            <wire x2="3328" y1="1504" y2="1712" x1="3328" />
            <wire x2="3328" y1="1712" y2="1712" x1="3264" />
        </branch>
        <branch name="XLXN_169">
            <wire x2="2832" y1="1616" y2="1616" x1="2768" />
            <wire x2="2768" y1="1616" y2="1904" x1="2768" />
            <wire x2="3328" y1="1904" y2="1904" x1="2768" />
            <wire x2="3328" y1="1904" y2="2112" x1="3328" />
            <wire x2="3328" y1="2112" y2="2112" x1="3264" />
        </branch>
        <branch name="XLXN_170">
            <wire x2="2832" y1="2016" y2="2016" x1="2768" />
            <wire x2="2768" y1="2016" y2="2304" x1="2768" />
            <wire x2="3328" y1="2304" y2="2304" x1="2768" />
            <wire x2="3328" y1="2304" y2="2512" x1="3328" />
            <wire x2="3328" y1="2512" y2="2512" x1="3264" />
        </branch>
        <branch name="w2(31:0)">
            <wire x2="3424" y1="1392" y2="1392" x1="3408" />
            <wire x2="3424" y1="1392" y2="1808" x1="3424" />
            <wire x2="3424" y1="1808" y2="2208" x1="3424" />
            <wire x2="3424" y1="2208" y2="2608" x1="3424" />
            <wire x2="3424" y1="1808" y2="1808" x1="3408" />
            <wire x2="3424" y1="2208" y2="2208" x1="3408" />
            <wire x2="3424" y1="2608" y2="2608" x1="3408" />
            <wire x2="3424" y1="1104" y2="1392" x1="3424" />
        </branch>
        <branch name="w2(23:16)">
            <wire x2="3312" y1="1808" y2="1808" x1="3264" />
        </branch>
        <branch name="w2(15:8)">
            <wire x2="3312" y1="2208" y2="2208" x1="3264" />
        </branch>
        <branch name="w2(7:0)">
            <wire x2="3312" y1="2608" y2="2608" x1="3264" />
        </branch>
        <branch name="w2(31:24)">
            <wire x2="3312" y1="1392" y2="1392" x1="3264" />
        </branch>
        <branch name="w2_in(31:24)">
            <wire x2="2832" y1="1392" y2="1392" x1="2688" />
        </branch>
        <branch name="w2_in(23:16)">
            <wire x2="2832" y1="1808" y2="1808" x1="2688" />
        </branch>
        <branch name="w2_in(15:8)">
            <wire x2="2832" y1="2208" y2="2208" x1="2688" />
        </branch>
        <branch name="w2_in(7:0)">
            <wire x2="2832" y1="2608" y2="2608" x1="2688" />
        </branch>
        <branch name="w1_in(7:0)">
            <wire x2="3952" y1="2608" y2="2608" x1="3808" />
        </branch>
        <branch name="w1_in(15:8)">
            <wire x2="3952" y1="2208" y2="2208" x1="3808" />
        </branch>
        <branch name="w1_in(23:16)">
            <wire x2="3952" y1="1808" y2="1808" x1="3808" />
        </branch>
        <branch name="w1_in(31:24)">
            <wire x2="3952" y1="1392" y2="1392" x1="3808" />
        </branch>
        <branch name="w1(31:24)">
            <wire x2="4432" y1="1392" y2="1392" x1="4384" />
        </branch>
        <branch name="w1(7:0)">
            <wire x2="4432" y1="2608" y2="2608" x1="4384" />
        </branch>
        <branch name="w1(15:8)">
            <wire x2="4432" y1="2208" y2="2208" x1="4384" />
        </branch>
        <branch name="w1(23:16)">
            <wire x2="4432" y1="1808" y2="1808" x1="4384" />
        </branch>
        <branch name="XLXN_191">
            <wire x2="3952" y1="2016" y2="2016" x1="3936" />
            <wire x2="3936" y1="2016" y2="2320" x1="3936" />
            <wire x2="4448" y1="2320" y2="2320" x1="3936" />
            <wire x2="4448" y1="2320" y2="2512" x1="4448" />
            <wire x2="4448" y1="2512" y2="2512" x1="4384" />
        </branch>
        <branch name="XLXN_192">
            <wire x2="3952" y1="1616" y2="1616" x1="3888" />
            <wire x2="3888" y1="1616" y2="1904" x1="3888" />
            <wire x2="4448" y1="1904" y2="1904" x1="3888" />
            <wire x2="4448" y1="1904" y2="2112" x1="4448" />
            <wire x2="4448" y1="2112" y2="2112" x1="4384" />
        </branch>
        <branch name="XLXN_193">
            <wire x2="3952" y1="1200" y2="1200" x1="3888" />
            <wire x2="3888" y1="1200" y2="1504" x1="3888" />
            <wire x2="4448" y1="1504" y2="1504" x1="3888" />
            <wire x2="4448" y1="1504" y2="1712" x1="4448" />
            <wire x2="4448" y1="1712" y2="1712" x1="4384" />
        </branch>
        <branch name="XLXN_249">
            <wire x2="512" y1="2416" y2="2416" x1="432" />
            <wire x2="432" y1="2416" y2="2768" x1="432" />
            <wire x2="1328" y1="2768" y2="2768" x1="432" />
            <wire x2="1328" y1="832" y2="2768" x1="1328" />
            <wire x2="2080" y1="832" y2="832" x1="1328" />
            <wire x2="2080" y1="832" y2="1296" x1="2080" />
            <wire x2="2080" y1="1296" y2="1296" x1="2064" />
        </branch>
        <branch name="XLXN_251">
            <wire x2="1632" y1="2416" y2="2416" x1="1552" />
            <wire x2="1552" y1="2416" y2="2768" x1="1552" />
            <wire x2="2528" y1="2768" y2="2768" x1="1552" />
            <wire x2="3280" y1="832" y2="832" x1="2528" />
            <wire x2="3280" y1="832" y2="1296" x1="3280" />
            <wire x2="2528" y1="832" y2="2768" x1="2528" />
            <wire x2="3280" y1="1296" y2="1296" x1="3264" />
        </branch>
        <branch name="XLXN_253">
            <wire x2="2832" y1="2416" y2="2416" x1="2752" />
            <wire x2="2752" y1="2416" y2="2768" x1="2752" />
            <wire x2="3664" y1="2768" y2="2768" x1="2752" />
            <wire x2="3664" y1="832" y2="2768" x1="3664" />
            <wire x2="4400" y1="832" y2="832" x1="3664" />
            <wire x2="4400" y1="832" y2="1296" x1="4400" />
            <wire x2="4400" y1="1296" y2="1296" x1="4384" />
        </branch>
        <branch name="w1(31:0)">
            <wire x2="4544" y1="1392" y2="1392" x1="4528" />
            <wire x2="4544" y1="1392" y2="1808" x1="4544" />
            <wire x2="4544" y1="1808" y2="2208" x1="4544" />
            <wire x2="4544" y1="2208" y2="2608" x1="4544" />
            <wire x2="4544" y1="1808" y2="1808" x1="4528" />
            <wire x2="4544" y1="2208" y2="2208" x1="4528" />
            <wire x2="4544" y1="2608" y2="2608" x1="4528" />
            <wire x2="4544" y1="1104" y2="1392" x1="4544" />
        </branch>
        <branch name="w2_in(31:0)">
            <wire x2="2576" y1="1104" y2="1392" x1="2576" />
            <wire x2="2576" y1="1392" y2="1808" x1="2576" />
            <wire x2="2592" y1="1808" y2="1808" x1="2576" />
            <wire x2="2576" y1="1808" y2="2208" x1="2576" />
            <wire x2="2592" y1="2208" y2="2208" x1="2576" />
            <wire x2="2576" y1="2208" y2="2608" x1="2576" />
            <wire x2="2592" y1="2608" y2="2608" x1="2576" />
            <wire x2="2592" y1="1392" y2="1392" x1="2576" />
        </branch>
        <branch name="ActiveAdders(7)">
            <wire x2="2832" y1="2480" y2="2480" x1="2768" />
            <wire x2="2768" y1="2480" y2="2720" x1="2768" />
            <wire x2="3648" y1="2720" y2="2720" x1="2768" />
            <wire x2="3648" y1="800" y2="2720" x1="3648" />
            <wire x2="4480" y1="800" y2="800" x1="3648" />
            <wire x2="4480" y1="800" y2="1200" x1="4480" />
            <wire x2="4592" y1="1200" y2="1200" x1="4480" />
            <wire x2="4480" y1="1200" y2="1200" x1="4384" />
        </branch>
        <branch name="ActiveAdders(6)">
            <wire x2="3952" y1="1264" y2="1264" x1="3872" />
            <wire x2="3872" y1="1264" y2="1440" x1="3872" />
            <wire x2="4496" y1="1440" y2="1440" x1="3872" />
            <wire x2="4496" y1="1440" y2="1616" x1="4496" />
            <wire x2="4592" y1="1616" y2="1616" x1="4496" />
            <wire x2="4496" y1="1616" y2="1616" x1="4384" />
        </branch>
        <branch name="ActiveAdders(5)">
            <wire x2="3952" y1="1680" y2="1680" x1="3872" />
            <wire x2="3872" y1="1680" y2="1856" x1="3872" />
            <wire x2="4496" y1="1856" y2="1856" x1="3872" />
            <wire x2="4496" y1="1856" y2="2016" x1="4496" />
            <wire x2="4592" y1="2016" y2="2016" x1="4496" />
            <wire x2="4496" y1="2016" y2="2016" x1="4384" />
        </branch>
        <branch name="ActiveAdders(16)">
            <wire x2="512" y1="2080" y2="2080" x1="464" />
            <wire x2="464" y1="2080" y2="2256" x1="464" />
            <wire x2="1056" y1="2256" y2="2256" x1="464" />
            <wire x2="1056" y1="2256" y2="2416" x1="1056" />
            <wire x2="1136" y1="2416" y2="2416" x1="1056" />
            <wire x2="1056" y1="2416" y2="2416" x1="944" />
        </branch>
        <branch name="ActiveAdders(17)">
            <wire x2="512" y1="1680" y2="1680" x1="464" />
            <wire x2="464" y1="1680" y2="1856" x1="464" />
            <wire x2="1056" y1="1856" y2="1856" x1="464" />
            <wire x2="1056" y1="1856" y2="2016" x1="1056" />
            <wire x2="1136" y1="2016" y2="2016" x1="1056" />
            <wire x2="1056" y1="2016" y2="2016" x1="944" />
        </branch>
        <branch name="ActiveAdders(18)">
            <wire x2="512" y1="1264" y2="1264" x1="464" />
            <wire x2="464" y1="1264" y2="1440" x1="464" />
            <wire x2="1056" y1="1440" y2="1440" x1="464" />
            <wire x2="1056" y1="1440" y2="1616" x1="1056" />
            <wire x2="1136" y1="1616" y2="1616" x1="1056" />
            <wire x2="1056" y1="1616" y2="1616" x1="944" />
        </branch>
        <branch name="ActiveAdders(11)">
            <wire x2="1632" y1="2480" y2="2480" x1="1584" />
            <wire x2="1584" y1="2480" y2="2720" x1="1584" />
            <wire x2="2496" y1="2720" y2="2720" x1="1584" />
            <wire x2="2496" y1="800" y2="2720" x1="2496" />
            <wire x2="3360" y1="800" y2="800" x1="2496" />
            <wire x2="3360" y1="800" y2="1200" x1="3360" />
            <wire x2="3456" y1="1200" y2="1200" x1="3360" />
            <wire x2="3360" y1="1200" y2="1200" x1="3264" />
        </branch>
        <branch name="ActiveAdders(8)">
            <wire x2="2832" y1="2080" y2="2080" x1="2784" />
            <wire x2="2784" y1="2080" y2="2256" x1="2784" />
            <wire x2="3376" y1="2256" y2="2256" x1="2784" />
            <wire x2="3376" y1="2256" y2="2416" x1="3376" />
            <wire x2="3456" y1="2416" y2="2416" x1="3376" />
            <wire x2="3376" y1="2416" y2="2416" x1="3264" />
        </branch>
        <branch name="ActiveAdders(9)">
            <wire x2="2832" y1="1680" y2="1680" x1="2784" />
            <wire x2="2784" y1="1680" y2="1856" x1="2784" />
            <wire x2="3376" y1="1856" y2="1856" x1="2784" />
            <wire x2="3376" y1="1856" y2="2016" x1="3376" />
            <wire x2="3456" y1="2016" y2="2016" x1="3376" />
            <wire x2="3376" y1="2016" y2="2016" x1="3264" />
        </branch>
        <branch name="ActiveAdders(10)">
            <wire x2="2832" y1="1264" y2="1264" x1="2784" />
            <wire x2="2784" y1="1264" y2="1440" x1="2784" />
            <wire x2="3376" y1="1440" y2="1440" x1="2784" />
            <wire x2="3376" y1="1440" y2="1616" x1="3376" />
            <wire x2="3456" y1="1616" y2="1616" x1="3376" />
            <wire x2="3376" y1="1616" y2="1616" x1="3264" />
        </branch>
        <branch name="ActiveAdders(15)">
            <wire x2="512" y1="2480" y2="2480" x1="464" />
            <wire x2="464" y1="2480" y2="2720" x1="464" />
            <wire x2="1312" y1="2720" y2="2720" x1="464" />
            <wire x2="1312" y1="800" y2="2720" x1="1312" />
            <wire x2="2160" y1="800" y2="800" x1="1312" />
            <wire x2="2160" y1="800" y2="1200" x1="2160" />
            <wire x2="2256" y1="1200" y2="1200" x1="2160" />
            <wire x2="2160" y1="1200" y2="1200" x1="2064" />
        </branch>
        <branch name="ActiveAdders(14)">
            <wire x2="1632" y1="1264" y2="1264" x1="1584" />
            <wire x2="1584" y1="1264" y2="1440" x1="1584" />
            <wire x2="2176" y1="1440" y2="1440" x1="1584" />
            <wire x2="2176" y1="1440" y2="1616" x1="2176" />
            <wire x2="2256" y1="1616" y2="1616" x1="2176" />
            <wire x2="2176" y1="1616" y2="1616" x1="2064" />
        </branch>
        <branch name="ActiveAdders(13)">
            <wire x2="1632" y1="1680" y2="1680" x1="1584" />
            <wire x2="1584" y1="1680" y2="1856" x1="1584" />
            <wire x2="2176" y1="1856" y2="1856" x1="1584" />
            <wire x2="2176" y1="1856" y2="2016" x1="2176" />
            <wire x2="2256" y1="2016" y2="2016" x1="2176" />
            <wire x2="2176" y1="2016" y2="2016" x1="2064" />
        </branch>
        <branch name="ActiveAdders(12)">
            <wire x2="1632" y1="2080" y2="2080" x1="1584" />
            <wire x2="1584" y1="2080" y2="2256" x1="1584" />
            <wire x2="2176" y1="2256" y2="2256" x1="1584" />
            <wire x2="2176" y1="2256" y2="2416" x1="2176" />
            <wire x2="2256" y1="2416" y2="2416" x1="2176" />
            <wire x2="2176" y1="2416" y2="2416" x1="2064" />
        </branch>
        <branch name="ActiveAdders(4)">
            <wire x2="3952" y1="2080" y2="2080" x1="3872" />
            <wire x2="3872" y1="2080" y2="2256" x1="3872" />
            <wire x2="4496" y1="2256" y2="2256" x1="3872" />
            <wire x2="4496" y1="2256" y2="2416" x1="4496" />
            <wire x2="4592" y1="2416" y2="2416" x1="4496" />
            <wire x2="4496" y1="2416" y2="2416" x1="4384" />
        </branch>
        <instance x="512" y="1424" name="XLXI_31" orien="R0">
        </instance>
        <instance x="512" y="2240" name="XLXI_27" orien="R0">
        </instance>
        <instance x="512" y="2640" name="XLXI_41" orien="R0">
        </instance>
        <instance x="512" y="1840" name="XLXI_30" orien="R0">
        </instance>
        <bustap x2="992" y1="2208" y2="2208" x1="1088" />
        <bustap x2="992" y1="2608" y2="2608" x1="1088" />
        <bustap x2="992" y1="1808" y2="1808" x1="1088" />
        <bustap x2="992" y1="1392" y2="1392" x1="1088" />
        <bustap x2="368" y1="1392" y2="1392" x1="272" />
        <bustap x2="368" y1="1808" y2="1808" x1="272" />
        <bustap x2="368" y1="2208" y2="2208" x1="272" />
        <bustap x2="368" y1="2608" y2="2608" x1="272" />
        <bustap x2="1488" y1="2608" y2="2608" x1="1392" />
        <bustap x2="1488" y1="2208" y2="2208" x1="1392" />
        <bustap x2="1488" y1="1808" y2="1808" x1="1392" />
        <bustap x2="1488" y1="1392" y2="1392" x1="1392" />
        <bustap x2="2112" y1="1392" y2="1392" x1="2208" />
        <bustap x2="2112" y1="1808" y2="1808" x1="2208" />
        <bustap x2="2112" y1="2608" y2="2608" x1="2208" />
        <bustap x2="2112" y1="2208" y2="2208" x1="2208" />
        <instance x="1632" y="1840" name="XLXI_145" orien="R0">
        </instance>
        <instance x="1632" y="2640" name="XLXI_144" orien="R0">
        </instance>
        <instance x="1632" y="2240" name="XLXI_143" orien="R0">
        </instance>
        <instance x="1632" y="1424" name="XLXI_142" orien="R0">
        </instance>
        <instance x="2832" y="1424" name="XLXI_225" orien="R0">
        </instance>
        <instance x="2832" y="2240" name="XLXI_226" orien="R0">
        </instance>
        <instance x="2832" y="2640" name="XLXI_227" orien="R0">
        </instance>
        <instance x="2832" y="1840" name="XLXI_228" orien="R0">
        </instance>
        <bustap x2="3312" y1="2208" y2="2208" x1="3408" />
        <bustap x2="3312" y1="2608" y2="2608" x1="3408" />
        <bustap x2="3312" y1="1808" y2="1808" x1="3408" />
        <bustap x2="3312" y1="1392" y2="1392" x1="3408" />
        <bustap x2="2688" y1="1392" y2="1392" x1="2592" />
        <bustap x2="2688" y1="1808" y2="1808" x1="2592" />
        <bustap x2="2688" y1="2208" y2="2208" x1="2592" />
        <bustap x2="2688" y1="2608" y2="2608" x1="2592" />
        <bustap x2="3808" y1="2608" y2="2608" x1="3712" />
        <bustap x2="3808" y1="2208" y2="2208" x1="3712" />
        <bustap x2="3808" y1="1808" y2="1808" x1="3712" />
        <bustap x2="3808" y1="1392" y2="1392" x1="3712" />
        <bustap x2="4432" y1="1392" y2="1392" x1="4528" />
        <bustap x2="4432" y1="1808" y2="1808" x1="4528" />
        <bustap x2="4432" y1="2608" y2="2608" x1="4528" />
        <bustap x2="4432" y1="2208" y2="2208" x1="4528" />
        <instance x="3952" y="1840" name="XLXI_237" orien="R0">
        </instance>
        <instance x="3952" y="2240" name="XLXI_239" orien="R0">
        </instance>
        <instance x="3952" y="1424" name="XLXI_240" orien="R0">
        </instance>
        <instance x="2640" y="3008" name="XLXI_232" orien="R0" />
        <instance x="320" y="1312" name="XLXI_138" orien="R0" />
        <bustap x2="4592" y1="2416" y2="2416" x1="4688" />
        <bustap x2="4592" y1="2016" y2="2016" x1="4688" />
        <bustap x2="4592" y1="1200" y2="1200" x1="4688" />
        <bustap x2="4592" y1="1616" y2="1616" x1="4688" />
        <bustap x2="3456" y1="2416" y2="2416" x1="3552" />
        <bustap x2="3456" y1="2016" y2="2016" x1="3552" />
        <bustap x2="3456" y1="1200" y2="1200" x1="3552" />
        <bustap x2="3456" y1="1616" y2="1616" x1="3552" />
        <bustap x2="2256" y1="2416" y2="2416" x1="2352" />
        <bustap x2="2256" y1="2016" y2="2016" x1="2352" />
        <bustap x2="2256" y1="1200" y2="1200" x1="2352" />
        <bustap x2="2256" y1="1616" y2="1616" x1="2352" />
        <bustap x2="1136" y1="2416" y2="2416" x1="1232" />
        <bustap x2="1136" y1="2016" y2="2016" x1="1232" />
        <bustap x2="1136" y1="1616" y2="1616" x1="1232" />
        <instance x="3952" y="2640" name="XLXI_299" orien="R0">
        </instance>
        <branch name="w1_in(31:0)">
            <wire x2="3696" y1="1104" y2="1392" x1="3696" />
            <wire x2="3712" y1="1392" y2="1392" x1="3696" />
            <wire x2="3696" y1="1392" y2="1808" x1="3696" />
            <wire x2="3712" y1="1808" y2="1808" x1="3696" />
            <wire x2="3696" y1="1808" y2="2208" x1="3696" />
            <wire x2="3712" y1="2208" y2="2208" x1="3696" />
            <wire x2="3696" y1="2208" y2="2608" x1="3696" />
            <wire x2="3712" y1="2608" y2="2608" x1="3696" />
        </branch>
        <iomarker fontsize="28" x="3424" y="1104" name="w2(31:0)" orien="R270" />
        <iomarker fontsize="28" x="4544" y="1104" name="w1(31:0)" orien="R270" />
        <iomarker fontsize="28" x="2576" y="1104" name="w2_in(31:0)" orien="R270" />
        <iomarker fontsize="28" x="2224" y="1104" name="w3(31:0)" orien="R270" />
        <iomarker fontsize="28" x="1376" y="1104" name="w3_in(31:0)" orien="R270" />
        <iomarker fontsize="28" x="1104" y="1104" name="w4(31:0)" orien="R270" />
        <iomarker fontsize="28" x="256" y="1104" name="w4_in(31:0)" orien="R270" />
        <iomarker fontsize="28" x="512" y="720" name="ActiveAdders(18:0)" orien="R180" />
        <iomarker fontsize="28" x="3696" y="1104" name="w1_in(31:0)" orien="R270" />
        <branch name="w0_in(7:0)">
            <wire x2="5184" y1="2608" y2="2608" x1="5040" />
        </branch>
        <branch name="w0_in(15:8)">
            <wire x2="5184" y1="2208" y2="2208" x1="5040" />
        </branch>
        <branch name="w0_in(23:16)">
            <wire x2="5184" y1="1808" y2="1808" x1="5040" />
        </branch>
        <branch name="w0_in(31:24)">
            <wire x2="5184" y1="1392" y2="1392" x1="5040" />
        </branch>
        <branch name="w0(31:24)">
            <wire x2="5664" y1="1392" y2="1392" x1="5616" />
        </branch>
        <branch name="w0(7:0)">
            <wire x2="5664" y1="2608" y2="2608" x1="5632" />
        </branch>
        <branch name="w0(15:8)">
            <wire x2="5664" y1="2208" y2="2208" x1="5616" />
        </branch>
        <branch name="w0(23:16)">
            <wire x2="5664" y1="1808" y2="1808" x1="5616" />
        </branch>
        <branch name="XLXN_554">
            <wire x2="5184" y1="2016" y2="2016" x1="5168" />
            <wire x2="5168" y1="2016" y2="2320" x1="5168" />
            <wire x2="5680" y1="2320" y2="2320" x1="5168" />
            <wire x2="5680" y1="2320" y2="2512" x1="5680" />
            <wire x2="5680" y1="2512" y2="2512" x1="5632" />
        </branch>
        <branch name="XLXN_555">
            <wire x2="5184" y1="1616" y2="1616" x1="5120" />
            <wire x2="5120" y1="1616" y2="1904" x1="5120" />
            <wire x2="5680" y1="1904" y2="1904" x1="5120" />
            <wire x2="5680" y1="1904" y2="2112" x1="5680" />
            <wire x2="5680" y1="2112" y2="2112" x1="5616" />
        </branch>
        <branch name="XLXN_556">
            <wire x2="5184" y1="1200" y2="1200" x1="5120" />
            <wire x2="5120" y1="1200" y2="1504" x1="5120" />
            <wire x2="5680" y1="1504" y2="1504" x1="5120" />
            <wire x2="5680" y1="1504" y2="1712" x1="5680" />
            <wire x2="5680" y1="1712" y2="1712" x1="5616" />
        </branch>
        <branch name="w0(31:0)">
            <wire x2="5776" y1="1392" y2="1392" x1="5760" />
            <wire x2="5776" y1="1392" y2="1808" x1="5776" />
            <wire x2="5776" y1="1808" y2="2208" x1="5776" />
            <wire x2="5776" y1="2208" y2="2608" x1="5776" />
            <wire x2="5776" y1="1808" y2="1808" x1="5760" />
            <wire x2="5776" y1="2208" y2="2208" x1="5760" />
            <wire x2="5776" y1="2608" y2="2608" x1="5760" />
            <wire x2="5776" y1="1104" y2="1392" x1="5776" />
        </branch>
        <branch name="ActiveAdders(2)">
            <wire x2="5184" y1="1264" y2="1264" x1="5104" />
            <wire x2="5104" y1="1264" y2="1440" x1="5104" />
            <wire x2="5728" y1="1440" y2="1440" x1="5104" />
            <wire x2="5728" y1="1440" y2="1616" x1="5728" />
            <wire x2="5824" y1="1616" y2="1616" x1="5728" />
            <wire x2="5728" y1="1616" y2="1616" x1="5616" />
        </branch>
        <branch name="ActiveAdders(1)">
            <wire x2="5184" y1="1680" y2="1680" x1="5104" />
            <wire x2="5104" y1="1680" y2="1856" x1="5104" />
            <wire x2="5728" y1="1856" y2="1856" x1="5104" />
            <wire x2="5728" y1="1856" y2="2016" x1="5728" />
            <wire x2="5824" y1="2016" y2="2016" x1="5728" />
            <wire x2="5728" y1="2016" y2="2016" x1="5616" />
        </branch>
        <branch name="ActiveAdders(0)">
            <wire x2="5184" y1="2080" y2="2080" x1="5104" />
            <wire x2="5104" y1="2080" y2="2256" x1="5104" />
            <wire x2="5728" y1="2256" y2="2256" x1="5104" />
            <wire x2="5728" y1="2256" y2="2416" x1="5728" />
            <wire x2="5824" y1="2416" y2="2416" x1="5728" />
            <wire x2="5728" y1="2416" y2="2416" x1="5632" />
        </branch>
        <bustap x2="5040" y1="2608" y2="2608" x1="4944" />
        <bustap x2="5040" y1="2208" y2="2208" x1="4944" />
        <bustap x2="5040" y1="1808" y2="1808" x1="4944" />
        <bustap x2="5040" y1="1392" y2="1392" x1="4944" />
        <bustap x2="5664" y1="1392" y2="1392" x1="5760" />
        <bustap x2="5664" y1="1808" y2="1808" x1="5760" />
        <bustap x2="5664" y1="2608" y2="2608" x1="5760" />
        <bustap x2="5664" y1="2208" y2="2208" x1="5760" />
        <instance x="5184" y="1840" name="XLXI_336" orien="R0">
        </instance>
        <instance x="5184" y="2240" name="XLXI_337" orien="R0">
        </instance>
        <instance x="5184" y="1424" name="XLXI_338" orien="R0">
        </instance>
        <bustap x2="5824" y1="2416" y2="2416" x1="5920" />
        <bustap x2="5824" y1="2016" y2="2016" x1="5920" />
        <bustap x2="5824" y1="1200" y2="1200" x1="5920" />
        <bustap x2="5824" y1="1616" y2="1616" x1="5920" />
        <branch name="w0_in(31:0)">
            <wire x2="4928" y1="1104" y2="1392" x1="4928" />
            <wire x2="4944" y1="1392" y2="1392" x1="4928" />
            <wire x2="4928" y1="1392" y2="1808" x1="4928" />
            <wire x2="4944" y1="1808" y2="1808" x1="4928" />
            <wire x2="4928" y1="1808" y2="2208" x1="4928" />
            <wire x2="4944" y1="2208" y2="2208" x1="4928" />
            <wire x2="4928" y1="2208" y2="2608" x1="4928" />
            <wire x2="4944" y1="2608" y2="2608" x1="4928" />
        </branch>
        <iomarker fontsize="28" x="5776" y="1104" name="w0(31:0)" orien="R270" />
        <iomarker fontsize="28" x="4928" y="1104" name="w0_in(31:0)" orien="R270" />
        <branch name="XLXN_582">
            <wire x2="3872" y1="2416" y2="2768" x1="3872" />
            <wire x2="4848" y1="2768" y2="2768" x1="3872" />
            <wire x2="3952" y1="2416" y2="2416" x1="3872" />
            <wire x2="5648" y1="832" y2="832" x1="4848" />
            <wire x2="5648" y1="832" y2="1296" x1="5648" />
            <wire x2="4848" y1="832" y2="2768" x1="4848" />
            <wire x2="5648" y1="1296" y2="1296" x1="5616" />
        </branch>
        <instance x="5184" y="2640" name="XLXI_344" orien="R0">
        </instance>
        <branch name="ActiveAdders(18:0)">
            <wire x2="1248" y1="720" y2="720" x1="512" />
            <wire x2="2368" y1="720" y2="720" x1="1248" />
            <wire x2="3568" y1="720" y2="720" x1="2368" />
            <wire x2="3568" y1="720" y2="1200" x1="3568" />
            <wire x2="3568" y1="1200" y2="1616" x1="3568" />
            <wire x2="3568" y1="1616" y2="2016" x1="3568" />
            <wire x2="3568" y1="2016" y2="2416" x1="3568" />
            <wire x2="4704" y1="720" y2="720" x1="3568" />
            <wire x2="4704" y1="720" y2="1200" x1="4704" />
            <wire x2="4704" y1="1200" y2="1616" x1="4704" />
            <wire x2="4704" y1="1616" y2="2016" x1="4704" />
            <wire x2="4704" y1="2016" y2="2224" x1="4704" />
            <wire x2="4704" y1="2224" y2="2416" x1="4704" />
            <wire x2="5936" y1="720" y2="720" x1="4704" />
            <wire x2="5936" y1="720" y2="1200" x1="5936" />
            <wire x2="5936" y1="1200" y2="1616" x1="5936" />
            <wire x2="5936" y1="1616" y2="2016" x1="5936" />
            <wire x2="5936" y1="2016" y2="2416" x1="5936" />
            <wire x2="2368" y1="720" y2="1200" x1="2368" />
            <wire x2="2368" y1="1200" y2="1616" x1="2368" />
            <wire x2="2368" y1="1616" y2="2016" x1="2368" />
            <wire x2="2368" y1="2016" y2="2416" x1="2368" />
            <wire x2="1248" y1="720" y2="1616" x1="1248" />
            <wire x2="1248" y1="1616" y2="2016" x1="1248" />
            <wire x2="1248" y1="2016" y2="2416" x1="1248" />
            <wire x2="1248" y1="1616" y2="1616" x1="1232" />
            <wire x2="1248" y1="2016" y2="2016" x1="1232" />
            <wire x2="1248" y1="2416" y2="2416" x1="1232" />
            <wire x2="2368" y1="1200" y2="1200" x1="2352" />
            <wire x2="2368" y1="1616" y2="1616" x1="2352" />
            <wire x2="2368" y1="2016" y2="2016" x1="2352" />
            <wire x2="2368" y1="2416" y2="2416" x1="2352" />
            <wire x2="3568" y1="1200" y2="1200" x1="3552" />
            <wire x2="3568" y1="1616" y2="1616" x1="3552" />
            <wire x2="3568" y1="2016" y2="2016" x1="3552" />
            <wire x2="3568" y1="2416" y2="2416" x1="3552" />
            <wire x2="4704" y1="1200" y2="1200" x1="4688" />
            <wire x2="4704" y1="1616" y2="1616" x1="4688" />
            <wire x2="4704" y1="2016" y2="2016" x1="4688" />
            <wire x2="4704" y1="2416" y2="2416" x1="4688" />
            <wire x2="5936" y1="1200" y2="1200" x1="5920" />
            <wire x2="5936" y1="1616" y2="1616" x1="5920" />
            <wire x2="5936" y1="2016" y2="2016" x1="5920" />
            <wire x2="5936" y1="2416" y2="2416" x1="5920" />
        </branch>
        <branch name="XLXN_585">
            <wire x2="512" y1="1744" y2="1744" x1="384" />
            <wire x2="384" y1="1744" y2="2144" x1="384" />
            <wire x2="512" y1="2144" y2="2144" x1="384" />
            <wire x2="384" y1="2144" y2="2544" x1="384" />
            <wire x2="512" y1="2544" y2="2544" x1="384" />
            <wire x2="384" y1="2544" y2="2800" x1="384" />
            <wire x2="1504" y1="2800" y2="2800" x1="384" />
            <wire x2="2704" y1="2800" y2="2800" x1="1504" />
            <wire x2="2704" y1="2800" y2="2880" x1="2704" />
            <wire x2="3824" y1="2800" y2="2800" x1="2704" />
            <wire x2="5056" y1="2800" y2="2800" x1="3824" />
            <wire x2="1632" y1="1328" y2="1328" x1="1504" />
            <wire x2="1504" y1="1328" y2="1744" x1="1504" />
            <wire x2="1632" y1="1744" y2="1744" x1="1504" />
            <wire x2="1504" y1="1744" y2="2144" x1="1504" />
            <wire x2="1632" y1="2144" y2="2144" x1="1504" />
            <wire x2="1504" y1="2144" y2="2544" x1="1504" />
            <wire x2="1632" y1="2544" y2="2544" x1="1504" />
            <wire x2="1504" y1="2544" y2="2800" x1="1504" />
            <wire x2="2832" y1="1328" y2="1328" x1="2704" />
            <wire x2="2704" y1="1328" y2="1744" x1="2704" />
            <wire x2="2832" y1="1744" y2="1744" x1="2704" />
            <wire x2="2704" y1="1744" y2="2144" x1="2704" />
            <wire x2="2832" y1="2144" y2="2144" x1="2704" />
            <wire x2="2704" y1="2144" y2="2544" x1="2704" />
            <wire x2="2832" y1="2544" y2="2544" x1="2704" />
            <wire x2="2704" y1="2544" y2="2800" x1="2704" />
            <wire x2="3952" y1="1328" y2="1328" x1="3824" />
            <wire x2="3824" y1="1328" y2="1744" x1="3824" />
            <wire x2="3952" y1="1744" y2="1744" x1="3824" />
            <wire x2="3824" y1="1744" y2="2144" x1="3824" />
            <wire x2="3952" y1="2144" y2="2144" x1="3824" />
            <wire x2="3824" y1="2144" y2="2544" x1="3824" />
            <wire x2="3824" y1="2544" y2="2800" x1="3824" />
            <wire x2="3952" y1="2544" y2="2544" x1="3824" />
            <wire x2="5184" y1="1328" y2="1328" x1="5056" />
            <wire x2="5056" y1="1328" y2="1744" x1="5056" />
            <wire x2="5184" y1="1744" y2="1744" x1="5056" />
            <wire x2="5056" y1="1744" y2="2144" x1="5056" />
            <wire x2="5184" y1="2144" y2="2144" x1="5056" />
            <wire x2="5056" y1="2144" y2="2800" x1="5056" />
        </branch>
        <branch name="inc">
            <wire x2="5088" y1="2416" y2="2880" x1="5088" />
            <wire x2="5184" y1="2416" y2="2416" x1="5088" />
        </branch>
        <iomarker fontsize="28" x="5088" y="2880" name="inc" orien="R90" />
        <branch name="XLXN_588">
            <wire x2="4992" y1="2448" y2="2464" x1="4992" />
            <wire x2="4992" y1="2464" y2="2480" x1="4992" />
            <wire x2="5184" y1="2480" y2="2480" x1="4992" />
        </branch>
        <instance x="4928" y="2448" name="XLXI_345" orien="R0" />
        <branch name="AdderNum(3:0)">
            <wire x2="5184" y1="2544" y2="2544" x1="5136" />
            <wire x2="5136" y1="2544" y2="2880" x1="5136" />
        </branch>
        <iomarker fontsize="28" x="5136" y="2880" name="AdderNum(3:0)" orien="R90" />
        <branch name="ActiveAdders(3)">
            <wire x2="3952" y1="2480" y2="2480" x1="3904" />
            <wire x2="3904" y1="2480" y2="2720" x1="3904" />
            <wire x2="4832" y1="2720" y2="2720" x1="3904" />
            <wire x2="4848" y1="800" y2="800" x1="4832" />
            <wire x2="5696" y1="800" y2="800" x1="4848" />
            <wire x2="5728" y1="800" y2="800" x1="5696" />
            <wire x2="5728" y1="800" y2="1200" x1="5728" />
            <wire x2="5824" y1="1200" y2="1200" x1="5728" />
            <wire x2="4832" y1="800" y2="2720" x1="4832" />
            <wire x2="5696" y1="1200" y2="1200" x1="5616" />
            <wire x2="5728" y1="1200" y2="1200" x1="5696" />
        </branch>
    </sheet>
</drawing>