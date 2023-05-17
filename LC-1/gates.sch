<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="B" />
        <signal name="A" />
        <signal name="OUT6" />
        <signal name="OUT2" />
        <signal name="OUT5" />
        <signal name="OUT4" />
        <signal name="OUT3" />
        <signal name="OUT1" />
        <signal name="OUT0" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="A" />
        <port polarity="Output" name="OUT6" />
        <port polarity="Output" name="OUT2" />
        <port polarity="Output" name="OUT5" />
        <port polarity="Output" name="OUT4" />
        <port polarity="Output" name="OUT3" />
        <port polarity="Output" name="OUT1" />
        <port polarity="Output" name="OUT0" />
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
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
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
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="OUT0" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="OUT1" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="OUT2" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_4">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="OUT3" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="OUT4" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_6">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="OUT5" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="OUT6" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1264" y="320" name="XLXI_1" orien="R0" />
        <instance x="1408" y="752" name="XLXI_3" orien="R0" />
        <instance x="1312" y="544" name="XLXI_2" orien="R0" />
        <instance x="1472" y="944" name="XLXI_4" orien="R0" />
        <instance x="1568" y="1136" name="XLXI_5" orien="R0" />
        <instance x="1648" y="1376" name="XLXI_6" orien="R0" />
        <branch name="B">
            <wire x2="1136" y1="256" y2="256" x1="1072" />
            <wire x2="1264" y1="256" y2="256" x1="1136" />
            <wire x2="1136" y1="256" y2="480" x1="1136" />
            <wire x2="1136" y1="480" y2="688" x1="1136" />
            <wire x2="1136" y1="688" y2="880" x1="1136" />
            <wire x2="1136" y1="880" y2="1072" x1="1136" />
            <wire x2="1136" y1="1072" y2="1312" x1="1136" />
            <wire x2="1648" y1="1312" y2="1312" x1="1136" />
            <wire x2="1568" y1="1072" y2="1072" x1="1136" />
            <wire x2="1472" y1="880" y2="880" x1="1136" />
            <wire x2="1408" y1="688" y2="688" x1="1136" />
            <wire x2="1312" y1="480" y2="480" x1="1136" />
        </branch>
        <instance x="1728" y="1552" name="XLXI_7" orien="R0" />
        <branch name="A">
            <wire x2="1216" y1="192" y2="192" x1="1072" />
            <wire x2="1264" y1="192" y2="192" x1="1216" />
            <wire x2="1216" y1="192" y2="416" x1="1216" />
            <wire x2="1312" y1="416" y2="416" x1="1216" />
            <wire x2="1216" y1="416" y2="624" x1="1216" />
            <wire x2="1408" y1="624" y2="624" x1="1216" />
            <wire x2="1216" y1="624" y2="816" x1="1216" />
            <wire x2="1472" y1="816" y2="816" x1="1216" />
            <wire x2="1216" y1="816" y2="1008" x1="1216" />
            <wire x2="1568" y1="1008" y2="1008" x1="1216" />
            <wire x2="1216" y1="1008" y2="1248" x1="1216" />
            <wire x2="1216" y1="1248" y2="1520" x1="1216" />
            <wire x2="1728" y1="1520" y2="1520" x1="1216" />
            <wire x2="1648" y1="1248" y2="1248" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1072" y="192" name="A" orien="R180" />
        <iomarker fontsize="28" x="1072" y="256" name="B" orien="R180" />
        <branch name="OUT6">
            <wire x2="1984" y1="1520" y2="1520" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="1984" y="1520" name="OUT6" orien="R0" />
        <branch name="OUT2">
            <wire x2="1696" y1="656" y2="656" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="1696" y="656" name="OUT2" orien="R0" />
        <branch name="OUT5">
            <wire x2="1936" y1="1280" y2="1280" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1936" y="1280" name="OUT5" orien="R0" />
        <branch name="OUT4">
            <wire x2="1856" y1="1040" y2="1040" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1040" name="OUT4" orien="R0" />
        <branch name="OUT3">
            <wire x2="1760" y1="848" y2="848" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="1760" y="848" name="OUT3" orien="R0" />
        <branch name="OUT1">
            <wire x2="1600" y1="448" y2="448" x1="1568" />
        </branch>
        <iomarker fontsize="28" x="1600" y="448" name="OUT1" orien="R0" />
        <branch name="OUT0">
            <wire x2="1552" y1="224" y2="224" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1552" y="224" name="OUT0" orien="R0" />
    </sheet>
</drawing>