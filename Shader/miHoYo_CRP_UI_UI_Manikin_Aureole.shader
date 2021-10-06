//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_UI/UI_Manikin_Aureole" {
Properties {
[Header(Base)] _LineColor ("Line Color", Color) = (1,1,1,1)
_TortuosityColor ("Tortuosity Color", Color) = (1,1,1,1)
_StarColor ("Star Color", Color) = (1,1,1,1)
_BaseTex ("Base Tex", 2D) = "white" { }
_StarTex ("Star Tex", 2D) = "black" { }
_DisturbanceTex ("Disturbance Tex", 2D) = "black" { }
[Space] [Header(Flow)] _DisturbanceSpeed ("Disturbance Speed", Float) = 2
_StarSpeed ("Star Speed", Float) = 0.01
_AureoleSpeed ("Aureole Speed", Float) = 0.1
[Space] [Header(Brightness)] _LineBrightness ("Line Brightness", Range(0, 10)) = 1
_TortuosityBrightness ("Tortuosity Brightness", Range(0, 10)) = 1
_StarBrightness ("Star Brightness", Range(0, 100)) = 15
[Space] [Header(Other)] _Tortuosity ("Tortuosity Intensity", Range(0, 1)) = 0.2
_StarDiff ("Star Difference", Range(0, 10)) = 0
[Space] [Header(UVCorrection)] _CircleCenter ("Center", Float) = 1.75
_CircleOffset ("Offset", Float) = 0.3
}
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend One One, One One
  GpuProgramID 2653
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
}
}