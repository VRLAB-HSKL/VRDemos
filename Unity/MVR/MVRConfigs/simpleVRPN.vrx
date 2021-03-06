<?xml version="1.0" encoding="UTF-8"?>
<MiddleVR>
	<Kernel LogLevel="2" LogInSimulationFolder="0" EnableCrashHandler="0" Version="1.7.0.8" />
	<DeviceManager>
		<Driver Type="vrDriverDirectInput" />
		<Driver Type="vrDriverVRPN">
			<Tracker Address="Tracker0@localhost" ChannelIndex="0" ChannelsNb="1" Name="VRPNTracker0" Right="+X" Front="+Y" Up="+Z" NeutralPosition="0.000000,0.000000,0.000000" Scale="1" WaitForData="0" />
			<Axis Address="Mouse0@localhost" ChannelIndex="0" ChannelsNb="2" Name="VRPNAxis0" />
			<Buttons Address="Mouse0@localhost" ChannelIndex="0" ChannelsNb="3" Name="VRPNButtons0" />
		</Driver>
		<Wand Name="Wand0" Driver="0" Axis="0" HorizontalAxis="0" HorizontalAxisScale="1" VerticalAxis="1" VerticalAxisScale="1" AxisDeadZone="0.3" Buttons="0" Button0="0" Button1="1" Button2="2" Button3="3" Button4="4" Button5="5" />
	</DeviceManager>
	<DisplayManager Fullscreen="0" AlwaysOnTop="1" WindowBorders="0" ShowMouseCursor="1" VSync="1" GraphicsRenderer="2" AntiAliasing="0" ForceHideTaskbar="0" SaveRenderTarget="0" ChangeWorldScale="0" WorldScale="1">
		<Node3D Name="VRSystemCenterNode" Tag="VRSystemCenter" Parent="None" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,1.800000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" />
		<Node3D Name="HeadNode" Tag="Head" Parent="VRSystemCenterNode" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.000000,0.000000,0.000000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" />
		<Camera Name="Camera0" Parent="HeadNode" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="-0.008467,0.000000,0.000000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" VerticalFOV="77" Near="0.1" Far="1000" Screen="0" ScreenDistance="1" UseViewportAspectRatio="1" AspectRatio="1.33333" />
		<Node3D Name="HandNode" Tag="Hand" Parent="VRSystemCenterNode" Tracker="0" IsFiltered="0" Filter="0" PositionLocal="0.500000,1.000000,0.500000" OrientationLocal="0.000000,0.000000,0.000000,1.000000" />
		<Viewport Name="Viewport0" Left="100" Top="100" Width="1280" Height="720" Camera="Camera0" Stereo="0" StereoMode="3" CompressSideBySide="0" StereoInvertEyes="0" OculusRiftWarping="0" OffScreen="0" UseHomography="0" />
	</DisplayManager>
	<ClusterManager NVidiaSwapLock="0" DisableVSyncOnServer="0" ForceOpenGLConversion="0" BigBarrier="0" SimulateClusterLag="0" MultiGPUEnabled="0" ImageDistributionMaxPacketSize="8000" ClientConnectionTimeout="60" />
</MiddleVR>
