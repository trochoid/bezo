#tag Window
Begin Window BezoDemoWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   716
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   1005309300
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Demo Window"
   Visible         =   True
   Width           =   923
   Begin Canvas display
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   616
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   80
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   883
   End
   Begin TextField dashSeqField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   132
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "80, 20, 20, 20, 20, 20"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   46
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   514
   End
   Begin Label lbl
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      Text            =   "dash sequence"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   47
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin CheckBox showPointsCB
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "show control dots"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   1
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   142
   End
   Begin CheckBox showLinesCB
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "show control lines"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   174
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   1
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   141
   End
   Begin Label lbl
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   1
      InitialParent   =   ""
      Italic          =   False
      Left            =   355
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      Text            =   "resolution"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   68
   End
   Begin TextField resField
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   435
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "-1"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   13
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label lbl
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2
      InitialParent   =   ""
      Italic          =   False
      Left            =   527
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      Text            =   "-1 = 50 (default)"
      TextAlign       =   0
      TextColor       =   &c47474700
      TextFont        =   "System"
      TextSize        =   11.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   112
   End
   Begin Label lbl
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   3
      InitialParent   =   ""
      Italic          =   False
      Left            =   658
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      Text            =   "line thickness"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   47
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   92
   End
   Begin Slider lineSizeSlider
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   19
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   762
      LineStep        =   1
      LiveScroll      =   True
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Maximum         =   40
      Minimum         =   1
      PageStep        =   20
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   "0"
      Top             =   48
      Value           =   2
      Visible         =   True
      Width           =   100
   End
   Begin Label lineSizeLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   874
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      Text            =   "2"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   47
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   29
   End
   Begin CheckBox dragOutsideTranslatesCB
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "dragging outside of dot translates"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   651
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   252
   End
End
#tag EndWindow

#tag WindowCode
	#tag Property, Flags = &h0
		dragIdx As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		oldXY(1) As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		theCurve As Bezo
	#tag EndProperty


#tag EndWindowCode

#tag Events display
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #pragma unused areas
		  //this is a commit???
		  //=============================================== init theCurve if empty/nil
		  if theCurve = nil then theCurve = new Bezo
		  if theCurve.controlPntX.Ubound = -1 then
		    'theCurve.controlPntX = Array(10.0, 10,          g.Width-10,  g.Width-10, g.Width * 0.5)
		    'theCurve.controlPntY = Array(10.0, g.Height-10, g.Height-10, 10,         g.Height * 0.5)
		    dim w As integer = 400
		    dim h As integer = 200
		    dim inset As integer = 100
		    dim r As double = 60
		    dim rres As integer = 12
		    dim arcX(), arcY(), xa(), ya() As double
		    for i As integer = 0 to rres
		      arcX.Append r * cos(i/rres*1.5707963267949)
		      arcY.Append r * sin(i/rres*1.5707963267949)
		    next
		    for i As integer = 0 to rres
		      xa.Append arcX(i)+w  +inset
		      ya.Append arcY(i)+h    +inset
		    next
		    for i As integer = 0 to rres
		      xa.Append -arcY(i)   +inset
		      ya.Append arcX(i)+h    +inset
		    next
		    for i As integer = 0 to rres
		      xa.Append -arcX(i)    +inset
		      ya.Append -arcY(i)  +inset
		    next
		    for i As integer = 0 to rres
		      xa.Append arcY(i)+w   +inset
		      ya.Append -arcX(i)  +inset
		    next
		    xa.Append arcX(0)+w  +inset
		    ya.Append arcY(0)+h    +inset
		    theCurve.controlPntX = xa
		    theCurve.controlPntY = ya
		    
		    
		  end //===============================================
		  
		  dim dashes() As double     //create dashes from textfield
		  dim sa() As String = dashSeqField.Text.Split(",")
		  for i As integer = 0 to sa.Ubound
		    dashes.Append Val(sa(i))
		  next
		  'theCurve.dashPattern = dashes
		  
		  g.ForeColor = &c000000AA     //draw curve handles
		  if showLinesCB.Value then  theCurve.drawControlLines(g)
		  if showPointsCB.Value then theCurve.drawControlPoints(g)
		  
		  'dim res As integer = Val(resField.Text) //get resolution
		  
		  g.PenWidth =  lineSizeSlider.Value  //set line thickness
		  g.PenHeight = lineSizeSlider.Value
		  
		  'g.ForeColor = &cBBBBBB       //draw worm
		  'theCurve.drawSolid(g, res)
		  
		  g.ForeColor = &c000000       //draw dashed
		  'theCurve.drawDashed(g, res)
		  Bezo.drawDashedPolygon(g, theCurve.controlPntX, theCurve.controlPntY, dashes)
		  
		  g.ForeColor = &c808080 //draw canvas border
		  g.PenWidth = 1
		  g.PenHeight = 1
		  g.DrawRect 0, 0, g.Width, g.Height
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  
		  if x = oldXY(0) and y = oldXY(1) then return //no mouse change
		  
		  dim dx As integer = x - oldXY(0) //calc deltas
		  dim dy As integer = y - oldXY(1)
		  
		  if dragIdx = -1 then          //translate whole curve
		    theCurve.translate(dx, dy)
		  else                          //translate a single control point
		    theCurve.translatePoint(dragIdx, dx, dy)
		  end
		  
		  oldXY(0) = x //store last coords
		  oldXY(1) = y
		  
		  me.Invalidate //redraw change
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  
		  dim hitIdx As integer = theCurve.hitControlPoint(x, y) //get control point index clicked on
		  
		  if IsContextualClick then //first handle any context clicking to add or remove points
		    if hitIdx = -1 then             //no point hit so append one
		      theCurve.controlPntX.Append x
		      theCurve.controlPntY.Append y
		    else                            //hit a point so remove it
		      theCurve.controlPntX.Remove(hitIdx)
		      theCurve.controlPntY.Remove(hitIdx)
		    end
		    me.Invalidate //redraw for added or removed point
		    return false //no dragging
		  end
		  
		  //if nothing hit and not dragging plane then skip out
		  if hitIdx = -1 and (not dragOutsideTranslatesCB.Value) then return false
		  
		  dragIdx = hitIdx //store what's being dragged
		  
		  oldXY(0) = x //store last coords
		  oldXY(1) = y
		  
		  return true //start dragging
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events dashSeqField
	#tag Event
		Sub TextChange()
		  display.Invalidate
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events showPointsCB
	#tag Event
		Sub Action()
		  display.Invalidate
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events showLinesCB
	#tag Event
		Sub Action()
		  display.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events resField
	#tag Event
		Sub TextChange()
		  display.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lineSizeSlider
	#tag Event
		Sub ValueChanged()
		  lineSizeLabel.Text = Str(me.Value)
		  display.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="dragIdx"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"10 - Drawer Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
