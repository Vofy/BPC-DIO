<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="H" />
        <signal name="Tmin" />
        <signal name="Tmax" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="O" />
        <signal name="Vout" />
        <signal name="Vin" />
        <signal name="A" />
        <port polarity="Input" name="H" />
        <port polarity="Input" name="Tmin" />
        <port polarity="Input" name="Tmax" />
        <port polarity="Output" name="O" />
        <port polarity="Output" name="Vout" />
        <port polarity="Output" name="Vin" />
        <port polarity="Output" name="A" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="and3" name="XLXI_1">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="Tmin" name="I1" />
            <blockpin signalname="H" name="I2" />
            <blockpin signalname="O" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="Vin" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="H" name="I" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_4">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="H" name="I2" />
            <blockpin signalname="Vout" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="Tmin" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="Tmax" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="Tmax" name="I" />
            <blockpin signalname="A" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1536" y="1408" name="XLXI_1" orien="R0" />
        <instance x="1536" y="848" name="XLXI_2" orien="R0" />
        <instance x="1136" y="752" name="XLXI_3" orien="R0" />
        <branch name="H">
            <wire x2="1088" y1="720" y2="720" x1="1040" />
            <wire x2="1136" y1="720" y2="720" x1="1088" />
            <wire x2="1088" y1="720" y2="912" x1="1088" />
            <wire x2="1536" y1="912" y2="912" x1="1088" />
            <wire x2="1088" y1="912" y2="1216" x1="1088" />
            <wire x2="1536" y1="1216" y2="1216" x1="1088" />
        </branch>
        <branch name="Tmin">
            <wire x2="1120" y1="976" y2="976" x1="1040" />
            <wire x2="1136" y1="976" y2="976" x1="1120" />
            <wire x2="1120" y1="976" y2="1280" x1="1120" />
            <wire x2="1536" y1="1280" y2="1280" x1="1120" />
        </branch>
        <branch name="Tmax">
            <wire x2="1104" y1="1344" y2="1344" x1="1040" />
            <wire x2="1104" y1="1344" y2="1440" x1="1104" />
            <wire x2="1136" y1="1440" y2="1440" x1="1104" />
            <wire x2="1136" y1="1344" y2="1344" x1="1104" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1536" y1="720" y2="720" x1="1360" />
        </branch>
        <instance x="1536" y="1104" name="XLXI_4" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="1536" y1="976" y2="976" x1="1360" />
        </branch>
        <instance x="1136" y="1008" name="XLXI_5" orien="R0" />
        <instance x="1136" y="1376" name="XLXI_6" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="1440" y1="1344" y2="1344" x1="1360" />
            <wire x2="1536" y1="1344" y2="1344" x1="1440" />
            <wire x2="1440" y1="784" y2="1040" x1="1440" />
            <wire x2="1536" y1="1040" y2="1040" x1="1440" />
            <wire x2="1440" y1="1040" y2="1344" x1="1440" />
            <wire x2="1536" y1="784" y2="784" x1="1440" />
        </branch>
        <branch name="O">
            <wire x2="1824" y1="1280" y2="1280" x1="1792" />
        </branch>
        <branch name="Vout">
            <wire x2="1824" y1="976" y2="976" x1="1792" />
        </branch>
        <branch name="Vin">
            <wire x2="1824" y1="752" y2="752" x1="1792" />
        </branch>
        <instance x="1136" y="1472" name="XLXI_7" orien="R0" />
        <branch name="A">
            <wire x2="1824" y1="1440" y2="1440" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1040" y="720" name="H" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1344" name="Tmax" orien="R180" />
        <iomarker fontsize="28" x="1824" y="1280" name="O" orien="R0" />
        <iomarker fontsize="28" x="1824" y="976" name="Vout" orien="R0" />
        <iomarker fontsize="28" x="1824" y="752" name="Vin" orien="R0" />
        <iomarker fontsize="28" x="1824" y="1440" name="A" orien="R0" />
        <iomarker fontsize="28" x="1040" y="976" name="Tmin" orien="R180" />
    </sheet>
</drawing>