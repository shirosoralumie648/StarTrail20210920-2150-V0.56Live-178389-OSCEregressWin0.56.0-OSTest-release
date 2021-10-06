//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_UI/UI_Manikin_Floor" {
Properties {
[Header(Base)] _BaseColor ("Base Color", Color) = (1,1,1,1)
_BaseTex ("Base Tex", 2D) = "white" { }
[Space] [Header(Bottom)] _BottomColor ("Bottom Color", Color) = (1,1,1,0)
_BottomTex ("Bottom Tex", 2D) = "white" { }
[Space] [Header(Light)] _LightColor ("Light Color", Color) = (1,1,1,0)
_LightIntensity ("Light Intensity", Range(0, 2)) = 1
_LightPower ("Light Power", Range(0, 20)) = 1
_LightTex ("Light Tex", 2D) = "black" { }
[Space] [Header(Tortuosity)] _Tortuosity ("Tortuosity Intensity", Range(0, 1)) = 0.2
_DisturbanceTex ("Disturbance Tex", 2D) = "black" { }
[Space] [Header(Flow)] _MainSpeed ("Flow Speed (XY:Light ZW:Disturbance)", Vector) = (0,0,0,0)
_BottomCorrection ("Bottom Speed Correction", Range(0, 2)) = 0.1
[Space] [Header(Rim)] _RimColor ("Rim Color", Color) = (1,1,1,0)
_RimRange ("Rim Range", Range(0, 50)) = 4
[Space] [Header(Other)] _ViewOffset ("View Offset", Range(0, 0.8)) = 0.05
_ReflectWeight ("Reflect Weight", Range(0, 1)) = 0.5
}
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  GpuProgramID 7421
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_PLANAR_REFLECTION" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_PLANAR_REFLECTION" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}