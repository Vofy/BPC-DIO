<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="y" />
        <signal name="E" />
        <signal name="b" />
        <signal name="c" />
        <signal name="d" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="a" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <port polarity="Output" name="y" />
        <port polarity="Input" name="E" />
        <port polarity="Input" name="b" />
        <port polarity="Input" name="c" />
        <port polarity="Input" name="d" />
        <port polarity="Input" name="a" />
        <blockdef name="m8_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-544" y2="-544" x1="0" />
            <line x2="96" y1="-608" y2="-608" x1="0" />
            <line x2="96" y1="-672" y2="-672" x1="0" />
            <line x2="96" y1="-736" y2="-736" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="160" />
            <line x2="160" y1="-268" y2="-160" x1="160" />
            <line x2="96" y1="-224" y2="-224" x1="128" />
            <line x2="128" y1="-264" y2="-224" x1="128" />
            <line x2="96" y1="-96" y2="-96" x1="192" />
            <line x2="192" y1="-276" y2="-96" x1="192" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-280" y2="-32" x1="224" />
            <line x2="256" y1="-512" y2="-512" x1="320" />
            <line x2="96" y1="-768" y2="-256" x1="96" />
            <line x2="96" y1="-704" y2="-768" x1="256" />
            <line x2="256" y1="-288" y2="-704" x1="256" />
            <line x2="256" y1="-256" y2="-288" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="96" y1="-480" y2="-480" x1="0" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="m8_1e" name="XLXI_1">
            <blockpin signalname="XLXN_17" name="D0" />
            <blockpin signalname="XLXN_18" name="D1" />
            <blockpin signalname="a" name="D2" />
            <blockpin signalname="a" name="D3" />
            <blockpin signalname="XLXN_21" name="D4" />
            <blockpin signalname="XLXN_18" name="D5" />
            <blockpin signalname="XLXN_17" name="D6" />
            <blockpin signalname="a" name="D7" />
            <blockpin signalname="E" name="E" />
            <blockpin signalname="b" name="S0" />
            <blockpin signalname="c" name="S1" />
            <blockpin signalname="d" name="S2" />
            <blockpin signalname="y" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_2">
            <blockpin signalname="XLXN_18" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_3">
            <blockpin signalname="XLXN_17" name="G" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="a" name="I" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1744" y="1616" name="XLXI_1" orien="R0" />
        <branch name="y">
            <wire x2="2096" y1="1104" y2="1104" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="1104" name="y" orien="R0" />
        <branch name="E">
            <wire x2="1744" y1="1584" y2="1584" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1712" y="1584" name="E" orien="R180" />
        <branch name="b">
            <wire x2="1744" y1="1392" y2="1392" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1712" y="1392" name="b" orien="R180" />
        <branch name="c">
            <wire x2="1744" y1="1456" y2="1456" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1712" y="1456" name="c" orien="R180" />
        <branch name="d">
            <wire x2="1744" y1="1520" y2="1520" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1712" y="1520" name="d" orien="R180" />
        <instance x="1360" y="1632" name="XLXI_3" orien="R0" />
        <instance x="1184" y="592" name="XLXI_2" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="1744" y1="880" y2="880" x1="1424" />
            <wire x2="1424" y1="880" y2="1264" x1="1424" />
            <wire x2="1424" y1="1264" y2="1504" x1="1424" />
            <wire x2="1744" y1="1264" y2="1264" x1="1424" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1248" y1="592" y2="944" x1="1248" />
            <wire x2="1744" y1="944" y2="944" x1="1248" />
            <wire x2="1248" y1="944" y2="1200" x1="1248" />
            <wire x2="1744" y1="1200" y2="1200" x1="1248" />
        </branch>
        <branch name="a">
            <wire x2="1312" y1="1008" y2="1008" x1="1056" />
            <wire x2="1472" y1="1008" y2="1008" x1="1312" />
            <wire x2="1480" y1="1008" y2="1008" x1="1472" />
            <wire x2="1648" y1="1008" y2="1008" x1="1480" />
            <wire x2="1744" y1="1008" y2="1008" x1="1648" />
            <wire x2="1648" y1="1008" y2="1072" x1="1648" />
            <wire x2="1744" y1="1072" y2="1072" x1="1648" />
            <wire x2="1472" y1="1008" y2="1136" x1="1472" />
            <wire x2="1488" y1="1136" y2="1136" x1="1472" />
            <wire x2="1312" y1="1008" y2="1328" x1="1312" />
            <wire x2="1744" y1="1328" y2="1328" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1056" y="1008" name="a" orien="R180" />
        <branch name="XLXN_21">
            <wire x2="1744" y1="1136" y2="1136" x1="1712" />
        </branch>
        <instance x="1488" y="1168" name="XLXI_4" orien="R0" />
    </sheet>
</drawing>