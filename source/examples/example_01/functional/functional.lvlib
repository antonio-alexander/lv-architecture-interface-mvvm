﻿<?xml version='1.0' encoding='UTF-8'?>
<Library LVVersion="15008000">
	<Property Name="NI.Lib.ContainingLib" Type="Str">example_01.lvlib</Property>
	<Property Name="NI.Lib.ContainingLibPath" Type="Str">../../example_01.lvlib</Property>
	<Property Name="NI.Lib.Icon" Type="Bin">&amp;1#!!!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!(]!!!*Q(C=\&gt;7R=2MR%!81N=?"5X&lt;A91P&lt;!FNA#^M#5Y6M96NA"R[WM#WQ"&lt;9A0ZYR'E?G!WPM1$AN&gt;@S(!ZZQG&amp;0%VLZ'@)H8:_X\&lt;^P(^7@8H\4Y;"`NX\;8JZPUX@@MJXC]C.3I6K5S(F/^DHTE)R`ZS%@?]J;XP/5N&lt;XH*3V\SEJ?]Z#F0?=J4HP+5&lt;Y=]Z#%0/&gt;+9@%QU"BU$D-YI-4[':XC':XB]D?%:HO%:HO(2*9:H?):H?)&lt;(&lt;4%]QT-]QT-]BNIEMRVSHO%R@$20]T20]T30+;.Z'K".VA:OAW"%O^B/GK&gt;ZGM&gt;J.%`T.%`T.)`,U4T.UTT.UTROW6;F.]XDE0-9*IKH?)KH?)L(U&amp;%]R6-]R6-]JIPC+:[#+"/7Q2'CX&amp;1[F#`&amp;5TR_2@%54`%54`'YN$WBWF&lt;GI8E==J\E3:\E3:\E-51E4`)E4`)EDW%D?:)H?:)H?5Q6S:-]S:-A;6,42RIMX:A[J3"Z`'S\*&lt;?HV*MENS.C&lt;&gt;Z9GT,7:IOVC7*NDFA00&gt;&lt;$D0719CV_L%7.N6CR&amp;C(7(R=,(1M4;Z*9.T][RNXH46X62:X632X61?X6\H(L8_ZYP^`D&gt;LP&amp;^8K.S_53Z`-Z4K&gt;4()`(/"Q/M&gt;`P9\@&lt;P&lt;U'PDH?8AA`XUMPTP_EXOF`[8`Q&lt;IT0]?OYVOA(5/(_Z!!!!!!</Property>
	<Property Name="NI.Lib.SourceVersion" Type="Int">352354304</Property>
	<Property Name="NI.Lib.Version" Type="Str">1.0.0.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="private" Type="Folder">
		<Property Name="NI.LibItem.Scope" Type="Int">2</Property>
		<Item Name="_controls" Type="Folder">
			<Item Name="event_common.ctl" Type="VI" URL="../private/_controls/event_common.ctl"/>
			<Item Name="event_common_command.ctl" Type="VI" URL="../private/_controls/event_common_command.ctl"/>
			<Item Name="event_interface.ctl" Type="VI" URL="../private/_controls/event_interface.ctl"/>
			<Item Name="event_interface_command.ctl" Type="VI" URL="../private/_controls/event_interface_command.ctl"/>
		</Item>
		<Item Name="_subvis" Type="Folder">
			<Item Name="event_common_die.vi" Type="VI" URL="../private/_subvis/event_common_die.vi"/>
		</Item>
		<Item Name="templates" Type="Folder">
			<Item Name="event_common_.vit" Type="VI" URL="../private/templates/event_common_.vit"/>
			<Item Name="event_interface_.vit" Type="VI" URL="../private/templates/event_interface_.vit"/>
		</Item>
	</Item>
	<Item Name="public" Type="Folder">
		<Item Name="_controls" Type="Folder">
			<Item Name="event_functional.ctl" Type="VI" URL="../public/_controls/event_functional.ctl"/>
			<Item Name="event_functional_command.ctl" Type="VI" URL="../public/_controls/event_functional_command.ctl"/>
			<Item Name="hmi_references.ctl" Type="VI" URL="../public/_controls/hmi_references.ctl"/>
			<Item Name="menu_selection.ctl" Type="VI" URL="../public/_controls/menu_selection.ctl"/>
		</Item>
		<Item Name="_subvis" Type="Folder">
			<Item Name="event_functional_load_interface.vi" Type="VI" URL="../public/_subvis/event_functional_load_interface.vi"/>
			<Item Name="event_functional_stop.vi" Type="VI" URL="../public/_subvis/event_functional_stop.vi"/>
		</Item>
		<Item Name="config" Type="Folder">
			<Item Name="menu.rtm" Type="Document" URL="../public/config/menu.rtm"/>
		</Item>
		<Item Name="interface" Type="Folder">
			<Item Name="interface.lvclass" Type="LVClass" URL="../public/interface/interface.lvclass"/>
		</Item>
		<Item Name="templates" Type="Folder">
			<Item Name="event_functional_.vit" Type="VI" URL="../public/templates/event_functional_.vit"/>
		</Item>
		<Item Name="main.vi" Type="VI" URL="../public/main.vi"/>
	</Item>
</Library>
