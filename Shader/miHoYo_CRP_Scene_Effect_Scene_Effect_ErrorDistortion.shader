//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Scene/Effect/Scene_Effect_ErrorDistortion" {
Properties {
_Offset ("Intensity Bias", Float) = 0
_UVTillingOffset ("UV Tilling Offset", Vector) = (1,1,0,0)
_Alpha ("Alpha", Float) = 1
_Color0 ("Color 0", Color) = (1,1,1,1)
_Color1 ("Color 1", Color) = (1,0,0,1)
_Color1Offset ("Offset Color 1", Float) = 0
[MHYHeaderBox(DistortionLayer1)] _Block1_TillingOffset ("Block Tilling Offset", Vector) = (1,1,0,0)
_BlockLayer1_Offset ("Block Bias", Float) = 0
_BlockLayer1_Scale ("Block Scale", Float) = 1
[MHYHeaderBox(DistortionLayer2)] _Block2_TillingOffset ("Block Tilling Offset", Vector) = (1,1,0,0)
_BlockLayer2_Offset ("Block Bias", Float) = 0
_BlockLayer2_Scale ("Block Scale", Float) = 1
[MHYHeaderBox(Jitter)] _Jitter_Time ("Jitter Time", Float) = 0
_Jitter_Scale ("Jitter Scale", Float) = 1
}
SubShader {
 Pass {
  Tags { "LIGHTMODE" = "CustomForwardOpaque" "QUEUE" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  Cull Off
  GpuProgramID 14506
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
 Pass {
  Tags { "LIGHTMODE" = "CustomForwardOpaque2" "QUEUE" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  Cull Off
  GpuProgramID 75653
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
 Pass {
  Tags { "LIGHTMODE" = "CustomRPRefraction" "QUEUE" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  Cull Off
  GpuProgramID 152375
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