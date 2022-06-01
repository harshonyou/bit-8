<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="zynq" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RED" />
        <signal name="SW0" />
        <signal name="SW1" />
        <signal name="GREEN" />
        <port polarity="Output" name="RED" />
        <port polarity="Input" name="SW0" />
        <port polarity="Input" name="SW1" />
        <port polarity="Output" name="GREEN" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="GREEN" name="I" />
            <blockpin signalname="RED" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="SW1" name="I0" />
            <blockpin signalname="SW0" name="I1" />
            <blockpin signalname="GREEN" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1456" y="1312" name="XLXI_2" orien="R0" />
        <instance x="1840" y="1248" name="XLXI_1" orien="R0" />
        <branch name="RED">
            <wire x2="2096" y1="1216" y2="1216" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="1216" name="RED" orien="R0" />
        <branch name="SW0">
            <wire x2="1456" y1="1184" y2="1184" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1424" y="1184" name="SW0" orien="R180" />
        <branch name="SW1">
            <wire x2="1456" y1="1248" y2="1248" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1424" y="1248" name="SW1" orien="R180" />
        <iomarker fontsize="28" x="2096" y="1088" name="GREEN" orien="R0" />
        <branch name="GREEN">
            <wire x2="1776" y1="1216" y2="1216" x1="1712" />
            <wire x2="1840" y1="1216" y2="1216" x1="1776" />
            <wire x2="2096" y1="1088" y2="1088" x1="1776" />
            <wire x2="1776" y1="1088" y2="1216" x1="1776" />
        </branch>
    </sheet>
</drawing>