#tag Class
Protected Class Bezo
	#tag Method, Flags = &h0
		 Shared Function binomials(n As integer) As double()
		  static line() As double = Array(1.0, 1.0)   //prebuild standard sizes
		  static cubic() As double = Array(1.0, 2.0, 1.0)
		  static quartic() As double = Array(1.0, 3.0, 3.0, 1.0)
		  
		  if n = 1 then return line    //return standard sizes
		  if n = 2 then return cubic
		  if n = 3 then return quartic
		  
		  dim binom() As double   //setup new array for binomial coefficients
		  redim binom(n)
		  
		  dim midIdx As integer = (n+1) \ 2   //array is symmetric, only loop to middle
		  
		  dim coeff As integer
		  for i As integer = 0 to midIdx   //for each coefficient
		    
		    if i = 0 then  //take care of first 2 indices simply
		      coeff = 1.0
		    elseif i = 1 then
		      coeff = n
		    else           //compute an inner coefficient
		      dim r As integer = 1
		      dim bigN As integer = n + 1
		      for d As integer = 1 to i
		        bigN = bigN - 1
		        r = r * bigN / d
		        'bigN = bigN - 1
		      next
		      coeff = r
		    end
		     
		    binom(i) = coeff   //store coefficient on both sides of binom array (symmetric)
		    binom(n-i) = coeff //(this assignment is redundant on last iteration when odd count)
		    
		  next
		  
		  return binom
		  
		  //n is the 0 based last index of control point array.
		  //returns array of the binomial coefficients for that size
		  
		  //dim isOdd As boolean = (n+1) mod 2 = 1
		  
		  //    pascals triangle
		  //http://www.rastergrid.com/blog/wp-content/uploads/2010/09/binomial_coeff2.png
		  //    Bob Bryans post has inner coefficient algorithm
		  //http:/ /stackoverflow.com/questions/12983731/algorithm-for-calculating-binomial-coefficient
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawControlLines(g As Graphics)
		  
		  for i As integer = 1 to controlPntX.Ubound
		    
		    g.DrawLine(controlPntX(i-1), controlPntY(i-1), controlPntX(i), controlPntY(i))
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawControlPoints(g As Graphics, dotRadius As integer = 8)
		  
		  dim dotWidth As integer = dotRadius * 2
		  
		  //draw each dot
		  for i As integer = 0 to controlPntX.Ubound
		    
		    g.FillOval(controlPntX(i) - dotRadius, controlPntY(i) - dotRadius, dotWidth, dotWidth)
		    
		  next
		  
		  //draw ring around first control point dot
		  if controlPntX.Ubound >= 0 then
		    
		    g.DrawOval(controlPntX(0) - dotRadius-3, controlPntY(0) - dotRadius-3, dotWidth+6, dotWidth+6)
		    
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawDashed(g As Graphics, resolution As integer = 50, dashes() As double = nil)
		  
		  if binomCoeffs.Ubound <> controlPntX.Ubound then binomCoeffs = binomials(controlPntX.Ubound)
		  
		  if dashes = nil then dashes = dashPattern
		  
		  drawDashedBezier(g, controlPntX, controlPntY, dashes, resolution, binomCoeffs)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub drawDashedBezier(g As Graphics, xpos() As double, ypos() As double, dashes() As Double, resolution As integer = 50, coeffs() As double = nil)
		  #pragma DisableBackgroundTasks
		  #pragma DisableBoundsChecking
		  #pragma NilObjectChecking false
		  #pragma StackOverflowChecking false
		  
		  if dashes.Ubound = -1 then dashes = Array(100.0, 0.0) //fix dashes() if no elements
		  if xpos.Ubound = 1 then resolution = 1 //just a straight line, no bending, so only sample the 2 endpoints
		  if resolution < 0 then resolution = 50 //reset res if passed -1 for default
		  
		  //tracking vars
		  dim dashIsOn As boolean = true    //treat first dashes() element as dash ON
		  dim curDashIdx As integer = 0     //current index into dashes()
		  dim dashCount As integer = dashes.Ubound + 1   //for wrapping curDashIdx
		  dim x0, y0, x1, y1, vx, vy, tx0, ty0, tx1, ty1 As double       //endpoints and vectors
		  dim xDiff, yDiff, segDist As double   //temps
		  dim dashSum As Double = dashes(curDashIdx)
		  
		  if coeffs = nil then coeffs = binomials(xpos.Ubound)   //get coefficients once per curve
		  
		  sampleBezierN(0.0, xpos, ypos, x0, y0, coeffs)  //sample t=0.0 of curve xpos/ypos into point x0,y0
		  
		  for i As integer = 1 to resolution
		    
		    sampleBezierN(i / resolution, xpos, ypos, x1, y1, coeffs)   //sample t=i/res into x1,y1
		    
		    xDiff = x1 - x0   //measure and sum distance
		    yDiff = y1 - y0
		    segDist = Sqrt(xDiff * xDiff + yDiff * yDiff)
		    
		    if dashSum > segDist then   //whole segment is a single dash
		      if dashIsOn then drawLineTimed(g, x0, y0, x1, y1)   //draw if on
		      dashSum = dashSum - segDist   //remove the expanse of dash 'drawn'
		    else     //draw dash portions along this segment
		      vx = (x1 - x0) / segDist   //get unit vector from p0 to p1
		      vy = (y1 - y0) / segDist
		      tx0 = x0
		      ty0 = y0
		      while dashSum < segDist
		        tx1 = x0 + vx * dashSum   //calc endpoint of dash
		        ty1 = y0 + vy * dashSum
		        if dashIsOn then drawLineTimed(g, tx0, ty0, tx1, ty1)
		        curDashIdx = (curDashIdx + 1) mod dashCount   //step to next dash 1
		        dashIsOn = not dashIsOn   //step to next dash 2
		        dashSum = dashSum + dashes(curDashIdx)   //step to next dash 3
		        tx0 = tx1
		        ty0 = ty1
		      wend
		      //at dash that spans the segment endpoint (ie dashSum > segDist)
		      if dashIsOn then drawLineTimed(g, tx0, ty0, x1, y1)
		      dashSum = dashSum - segDist   //remove segDist from dashSum for next segment
		    end
		    
		    x0 = x1 //roll coords
		    y0 = y1
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub drawDashedPolygon(g As Graphics, xpos() As double, ypos() As double, dashes() As Double)
		  #pragma DisableBackgroundTasks
		  #pragma DisableBoundsChecking
		  #pragma NilObjectChecking false
		  #pragma StackOverflowChecking false
		  
		  if dashes.Ubound = -1 then dashes = Array(100.0, 0.0) //fix dashes() if no elements
		  'if xpos.Ubound = 1 then resolution = 1 //just a straight line, no bending, so only sample the 2 endpoints
		  'if resolution < 0 then resolution = 50 //reset res if passed -1 for default
		  
		  //tracking vars
		  dim dashIsOn As boolean = true    //treat first dashes() element as dash ON
		  dim curDashIdx As integer = 0     //current index into dashes()
		  dim dashCount As integer = dashes.Ubound + 1   //for wrapping curDashIdx
		  dim x0, y0, x1, y1, vx, vy, tx0, ty0, tx1, ty1 As double       //endpoints and vectors
		  dim xDiff, yDiff, segDist As double   //temps
		  dim dashSum As Double = dashes(curDashIdx)
		  
		  'if coeffs = nil then coeffs = binomials(xpos.Ubound)   //get coefficients once per curve
		  
		  'sampleBezierN(0.0, xpos, ypos, x0, y0, coeffs)  //sample t=0.0 of curve xpos/ypos into point x0,y0
		  x0 = xpos(0)
		  y0 = ypos(0)
		  
		  for i As integer = 1 to xpos.Ubound
		    
		    'sampleBezierN(i / resolution, xpos, ypos, x1, y1, coeffs)   //sample t=i/res into x1,y1
		    x1 = xpos(i)
		    y1 = ypos(i)
		    
		    xDiff = x1 - x0   //measure and sum distance
		    yDiff = y1 - y0
		    segDist = Sqrt(xDiff * xDiff + yDiff * yDiff)
		    
		    if dashSum > segDist then   //whole segment is a single dash
		      if dashIsOn then drawLineTimed(g, x0, y0, x1, y1)   //draw if on
		      dashSum = dashSum - segDist   //remove the expanse of dash 'drawn'
		    else     //draw dash portions along this segment
		      vx = (x1 - x0) / segDist   //get unit vector from p0 to p1
		      vy = (y1 - y0) / segDist
		      tx0 = x0
		      ty0 = y0
		      while dashSum < segDist
		        tx1 = x0 + vx * dashSum   //calc endpoint of dash
		        ty1 = y0 + vy * dashSum
		        if dashIsOn then drawLineTimed(g, tx0, ty0, tx1, ty1)
		        curDashIdx = (curDashIdx + 1) mod dashCount   //step to next dash 1
		        dashIsOn = not dashIsOn   //step to next dash 2
		        dashSum = dashSum + dashes(curDashIdx)   //step to next dash 3
		        tx0 = tx1
		        ty0 = ty1
		      wend
		      //at dash that spans the segment endpoint (ie dashSum > segDist)
		      if dashIsOn then drawLineTimed(g, tx0, ty0, x1, y1)
		      dashSum = dashSum - segDist   //remove segDist from dashSum for next segment
		    end
		    
		    x0 = x1 //roll coords
		    y0 = y1
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub drawLineTimed(g As Graphics, x0 As double, y0 As double, x1 As double, y1 As double)
		  
		  g.DrawLine x0, y0, x1, y1
		  
		  //separate drawline for profiling
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawSolid(g As Graphics, resolution As integer = 50)
		  
		  if binomCoeffs.Ubound <> controlPntX.Ubound then binomCoeffs = binomials(controlPntX.Ubound)
		  
		  static dashes() As double = Array(100000.0, 0.0)
		  
		  drawDashedBezier(g, controlPntX, controlPntY, dashes, resolution, binomCoeffs)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function hitControlPoint(x As integer, y As integer, dotRadius As integer = 8) As integer
		  
		  dim hitRadiusSqr As integer = dotRadius * dotRadius //calc squared radius
		  
		  dim xDiff, yDiff As integer
		  for i As integer = 0 to controlPntX.Ubound //test each control point for closeness
		    
		    xDiff = controlPntX(i) - x
		    yDiff = controlPntY(i) - y
		    if xDiff * xDiff + yDiff * yDiff < hitRadiusSqr then return i
		    
		  next
		  
		  return -1 //nothing hit
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub sampleBezierN(t As double, xpos() As double, ypos() As double, byref x As double, byref y As double, coeffs() As double)
		  #pragma DisableBackgroundTasks
		  #pragma DisableBoundsChecking
		  #pragma NilObjectChecking false
		  #pragma StackOverflowChecking false
		  
		  
		  dim n As integer = xpos.Ubound //last index
		  
		  dim omt As double = 1 - t   //One Minus T   (omt)
		  dim ta(), omta() As double  //T Array (ta), One Minus T Array  (omta)
		  
		  redim ta(n)    //size the t arrays
		  redim omta(n)
		  
		  ta(0) = 1     //init them with unity/identity
		  omta(n) = 1
		  
		  for i As integer = 1 to n   //build powers into rest of array
		    ta(i) = ta(i-1) * t
		    omta(n-i) = omta(n-i+1) * omt
		  next
		  
		  dim tx, ty, w As double
		  for i As integer = 0 to n    //sum the polynomial
		    w = coeffs(i) * ta(i) * omta(i)
		    tx = tx + xpos(i) * w
		    ty = ty + ypos(i) * w
		  next
		  
		  x = tx   //assign byref result
		  y = ty
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub translate(dx As double, dy As double)
		  
		  for i As integer = 0 to controlPntX.Ubound
		    
		    controlPntX(i) = controlPntX(i) + dx
		    controlPntY(i) = controlPntY(i) + dy
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub translatePoint(pntIdx As integer, dx As double, dy As double)
		  
		  controlPntX(pntIdx) = controlPntX(pntIdx) + dx 
		  controlPntY(pntIdx) = controlPntY(pntIdx) + dy
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = description
		
		This class draws bezier curves of any number of control points, optionally dashed.
		
		
		It's split into 2 parts
		1) Shared methods containing the core drawing routines
		
		
		2) Instance methods and properties for a simple curve object
		
		
	#tag EndNote

	#tag Note, Name = license
		
		/*
		* Bezo - a bezier curve drawing class for Xojo
		*
		* Copyright (c) 2013 doofus (stuart s) (William Shank)
		*
		* Any party obtaining a copy of these files from the author, directly or
		* indirectly, is granted, free of charge, a full and unrestricted irrevocable,
		* world-wide, paid up, royalty-free, nonexclusive right and license to deal
		* in this software and documentation files (the "Software"), including without
		* limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
		* and/or sell copies of the Software, and to permit persons who receive
		* copies from any such party to do so, with the only requirement being
		* that this copyright notice remain intact.
		*/
		
		
		
		http://home.comcast.net/~trochoid/code/index.html
	#tag EndNote

	#tag Note, Name = to add or improve
		
		problems / things to improve
		
		a1) thick drawLine()s have a rounded edge
		
		a2) using drawPolygon doesn't have rounded edges and closes the poly
		         (unusable because of closing)
		
		A) drawing with alpha leaves overlap/darkening of the segments. Can't
		group segments into a drawPolygon because of the closing, the mitering and
		the joining style.
		
		could circumvent those problems with NSBezier but then it can do the whole thing, no?
		well, it doesn't have negative dash values
		
		B) negative dash values mark a dot with radius of -1*dash value
		
		C) pass parrallel array of colors for each dash/dot
		
		D) supply curve offset since the lines drawn aren't centered on the math but at top/left
		
		E) adaptive subdivision by angle and/or distance
		E2) simple subdivision based on number of control points
		
		F) supply starting phase of dashes
		
		G) plug in other parametric curve functions, as interface or delegate
		
		H) stretch dash with curve, repeated a number of times
		
		I) wrap settings/parameters in instance class
		
		J) chain curves
	#tag EndNote


	#tag Property, Flags = &h1
		Protected binomCoeffs() As double
	#tag EndProperty

	#tag Property, Flags = &h0
		controlPntX() As double
	#tag EndProperty

	#tag Property, Flags = &h0
		controlPntY() As double
	#tag EndProperty

	#tag Property, Flags = &h0
		dashPattern() As double
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
