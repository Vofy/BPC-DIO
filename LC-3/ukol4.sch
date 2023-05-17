<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="x3" />
        <signal name="x0" />
        <signal name="x1" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_19" />
        <signal name="x2" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="f" />
        <port polarity="Input" name="x3" />
        <port polarity="Input" name="x0" />
        <port polarity="Input" name="x1" />
        <port polarity="Input" name="x2" />
        <port polarity="Output" name="f" />
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
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
        <block symbolname="or4" name="XLXI_1">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="XLXN_2" name="I2" />
            <blockpin signalname="XLXN_1" name="I3" />
            <blockpin signalname="f" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="x3" name="I0" />
            <blockpin signalname="x2" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="x1" name="I0" />
            <blockpin signalname="x0" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="x1" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_5">
            <blockpin signalname="x0" name="I0" />
            <blockpin signalname="XLXN_19" name="I1" />
            <blockpin signalname="XLXN_11" name="I2" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="x2" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="x2" name="I" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="x3" name="I" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1856" y="1392" name="XLXI_1" orien="R0" />
        <instance x="1312" y="1312" name="XLXI_2" orien="R0" />
        <instance x="1312" y="1456" name="XLXI_3" orien="R0" />
        <instance x="1328" y="1152" name="XLXI_5" orien="R0" />
        <instance x="1312" y="1600" name="XLXI_4" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1856" y1="1024" y2="1024" x1="1584" />
            <wire x2="1856" y1="1024" y2="1136" x1="1856" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1712" y1="1216" y2="1216" x1="1568" />
            <wire x2="1712" y1="1200" y2="1216" x1="1712" />
            <wire x2="1856" y1="1200" y2="1200" x1="1712" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1712" y1="1360" y2="1360" x1="1568" />
            <wire x2="1712" y1="1264" y2="1360" x1="1712" />
            <wire x2="1856" y1="1264" y2="1264" x1="1712" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1856" y1="1504" y2="1504" x1="1568" />
            <wire x2="1856" y1="1328" y2="1504" x1="1856" />
        </branch>
        <branch name="x3">
            <wire x2="960" y1="1248" y2="1248" x1="752" />
            <wire x2="1312" y1="1248" y2="1248" x1="960" />
            <wire x2="1072" y1="1024" y2="1024" x1="960" />
            <wire x2="960" y1="1024" y2="1248" x1="960" />
        </branch>
        <branch name="x0">
            <wire x2="1280" y1="1328" y2="1328" x1="752" />
            <wire x2="1312" y1="1328" y2="1328" x1="1280" />
            <wire x2="1328" y1="1088" y2="1088" x1="1280" />
            <wire x2="1280" y1="1088" y2="1328" x1="1280" />
        </branch>
        <branch name="x1">
            <wire x2="1136" y1="1392" y2="1392" x1="752" />
            <wire x2="1136" y1="1392" y2="1472" x1="1136" />
            <wire x2="1312" y1="1472" y2="1472" x1="1136" />
            <wire x2="1312" y1="1392" y2="1392" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="752" y="1184" name="x2" orien="R180" />
        <iomarker fontsize="28" x="752" y="1248" name="x3" orien="R180" />
        <iomarker fontsize="28" x="752" y="1328" name="x0" orien="R180" />
        <iomarker fontsize="28" x="752" y="1392" name="x1" orien="R180" />
        <branch name="XLXN_11">
            <wire x2="1312" y1="960" y2="960" x1="1184" />
            <wire x2="1328" y1="960" y2="960" x1="1312" />
        </branch>
        <instance x="992" y="1568" name="XLXI_8" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="1312" y1="1536" y2="1536" x1="1216" />
        </branch>
        <instance x="960" y="992" name="XLXI_7" orien="R0" />
        <instance x="1072" y="1056" name="XLXI_10" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="1328" y1="1024" y2="1024" x1="1296" />
        </branch>
        <branch name="x2">
            <wire x2="880" y1="1184" y2="1184" x1="752" />
            <wire x2="1312" y1="1184" y2="1184" x1="880" />
            <wire x2="880" y1="1184" y2="1536" x1="880" />
            <wire x2="992" y1="1536" y2="1536" x1="880" />
            <wire x2="960" y1="960" y2="960" x1="880" />
            <wire x2="880" y1="960" y2="1184" x1="880" />
        </branch>
        <branch name="f">
            <wire x2="2144" y1="1232" y2="1232" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="2144" y="1232" name="f" orien="R0" />
    </sheet>
</drawing>