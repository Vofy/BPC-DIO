<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a" />
        <signal name="b" />
        <signal name="c" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="y" />
        <signal name="XLXN_15" />
        <port polarity="Input" name="a" />
        <port polarity="Input" name="b" />
        <port polarity="Input" name="c" />
        <port polarity="Output" name="y" />
        <blockdef name="d3_8e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="320" y1="-576" y2="-576" x1="384" />
            <line x2="320" y1="-512" y2="-512" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="256" x="64" y="-640" height="576" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="d3_8e" name="XLXI_1">
            <blockpin signalname="a" name="A0" />
            <blockpin signalname="b" name="A1" />
            <blockpin signalname="c" name="A2" />
            <blockpin signalname="XLXN_15" name="E" />
            <blockpin signalname="XLXN_4" name="D0" />
            <blockpin name="D1" />
            <blockpin name="D2" />
            <blockpin name="D3" />
            <blockpin name="D4" />
            <blockpin signalname="XLXN_11" name="D5" />
            <blockpin name="D6" />
            <blockpin signalname="XLXN_12" name="D7" />
        </block>
        <block symbolname="or3" name="XLXI_2">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_4" name="I2" />
            <blockpin signalname="y" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_4">
            <blockpin signalname="XLXN_15" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2304" y="1472" name="XLXI_2" orien="R0" />
        <branch name="a">
            <wire x2="1232" y1="1008" y2="1008" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1008" name="a" orien="R180" />
        <branch name="b">
            <wire x2="1232" y1="1072" y2="1072" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1072" name="b" orien="R180" />
        <branch name="c">
            <wire x2="1232" y1="1136" y2="1136" x1="1200" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="2304" y1="1008" y2="1008" x1="1616" />
            <wire x2="2304" y1="1008" y2="1280" x1="2304" />
        </branch>
        <instance x="1232" y="1584" name="XLXI_1" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="1952" y1="1328" y2="1328" x1="1616" />
            <wire x2="1952" y1="1328" y2="1344" x1="1952" />
            <wire x2="2304" y1="1344" y2="1344" x1="1952" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2304" y1="1456" y2="1456" x1="1616" />
            <wire x2="2304" y1="1408" y2="1456" x1="2304" />
        </branch>
        <branch name="y">
            <wire x2="2592" y1="1344" y2="1344" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2592" y="1344" name="y" orien="R0" />
        <instance x="976" y="1280" name="XLXI_4" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="1040" y1="1280" y2="1456" x1="1040" />
            <wire x2="1232" y1="1456" y2="1456" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1136" name="c" orien="R180" />
    </sheet>
</drawing>