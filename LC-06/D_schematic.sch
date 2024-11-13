<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_10" />
        <signal name="clk" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_16" />
        <signal name="D" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_21" />
        <signal name="XLXN_24" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_27" />
        <signal name="Q1" />
        <signal name="Q1inv" />
        <signal name="XLXN_30" />
        <signal name="Q2" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="D" />
        <port polarity="Output" name="Q1" />
        <port polarity="Output" name="Q1inv" />
        <port polarity="Output" name="Q2" />
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
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="D" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_10">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="D" name="D" />
            <blockpin signalname="Q2" name="Q" />
        </block>
        <block symbolname="nand2" name="XLXI_4">
            <blockpin signalname="XLXN_13" name="I0" />
            <blockpin signalname="clk" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_6">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="Q1" name="I1" />
            <blockpin signalname="Q1inv" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_1">
            <blockpin signalname="clk" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_7">
            <blockpin signalname="Q1inv" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="Q1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="624" y="1088" name="XLXI_2" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="1024" y1="992" y2="992" x1="880" />
        </branch>
        <iomarker fontsize="28" x="544" y="640" name="D" orien="R180" />
        <iomarker fontsize="28" x="544" y="816" name="clk" orien="R180" />
        <branch name="D">
            <wire x2="608" y1="640" y2="640" x1="544" />
            <wire x2="608" y1="640" y2="960" x1="608" />
            <wire x2="624" y1="960" y2="960" x1="608" />
            <wire x2="608" y1="960" y2="1024" x1="608" />
            <wire x2="624" y1="1024" y2="1024" x1="608" />
            <wire x2="912" y1="640" y2="640" x1="608" />
            <wire x2="1024" y1="640" y2="640" x1="912" />
            <wire x2="912" y1="640" y2="1216" x1="912" />
            <wire x2="1024" y1="1216" y2="1216" x1="912" />
        </branch>
        <branch name="clk">
            <wire x2="992" y1="816" y2="816" x1="544" />
            <wire x2="992" y1="816" y2="928" x1="992" />
            <wire x2="1024" y1="928" y2="928" x1="992" />
            <wire x2="992" y1="928" y2="1344" x1="992" />
            <wire x2="1024" y1="1344" y2="1344" x1="992" />
            <wire x2="1024" y1="704" y2="704" x1="992" />
            <wire x2="992" y1="704" y2="816" x1="992" />
        </branch>
        <instance x="1024" y="1472" name="XLXI_10" orien="R0" />
        <instance x="1024" y="1056" name="XLXI_4" orien="R0" />
        <instance x="1344" y="1024" name="XLXI_6" orien="R0" />
        <instance x="1024" y="768" name="XLXI_1" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="1344" y1="672" y2="672" x1="1280" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1344" y1="960" y2="960" x1="1280" />
        </branch>
        <instance x="1344" y="800" name="XLXI_7" orien="R0" />
        <branch name="Q1">
            <wire x2="1312" y1="832" y2="896" x1="1312" />
            <wire x2="1344" y1="896" y2="896" x1="1312" />
            <wire x2="1616" y1="832" y2="832" x1="1312" />
            <wire x2="1616" y1="704" y2="704" x1="1600" />
            <wire x2="1760" y1="704" y2="704" x1="1616" />
            <wire x2="1616" y1="704" y2="832" x1="1616" />
        </branch>
        <branch name="Q1inv">
            <wire x2="1344" y1="736" y2="736" x1="1312" />
            <wire x2="1312" y1="736" y2="800" x1="1312" />
            <wire x2="1648" y1="800" y2="800" x1="1312" />
            <wire x2="1648" y1="800" y2="928" x1="1648" />
            <wire x2="1760" y1="928" y2="928" x1="1648" />
            <wire x2="1648" y1="928" y2="928" x1="1600" />
        </branch>
        <iomarker fontsize="28" x="1760" y="704" name="Q1" orien="R0" />
        <iomarker fontsize="28" x="1760" y="928" name="Q1inv" orien="R0" />
        <branch name="Q2">
            <wire x2="1440" y1="1216" y2="1216" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1440" y="1216" name="Q2" orien="R0" />
    </sheet>
</drawing>