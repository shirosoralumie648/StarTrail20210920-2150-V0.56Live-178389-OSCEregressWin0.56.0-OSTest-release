//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/HolographicImageCPerformance" {
Properties {
[MHYHelpURL(HOLOGRAPHICIMAGECPERFORMANCE)] _BaseColor ("BaseColor", Color) = (1,1,1,0)
_FresnelColor ("FresnelColor", Color) = (1,1,1,0)
_ScanlineColor ("ScanlineColor", Color) = (1,1,1,0)
_FresnelScale ("FresnelScale", Float) = 0.9
_FresnelBias ("FresnelBias", Float) = -0.11
_FresnelPower ("FresnelPower", Float) = 1.9
_ScanlineNum ("ScanlineNum", Float) = 280
_ScanlineSpeed ("ScanlineSpeed", Range(0, 0.5)) = 0.5
_OffsetDirtection ("OffsetDirtection", Vector) = (1,0,0,0)
_OffsetSize ("OffsetSize", Float) = 0.5
_OffsetSpeed ("OffsetSpeed", Float) = 4
_OffsetMaskSize ("OffsetMaskSize", Float) = 555
_OffsetMaskSpeed ("OffsetMaskSpeed", Float) = 17.8
_OffsetMaskRange ("OffsetMaskRange", Range(-1, 1)) = -0.11
_OffsetIntensity ("OffsetIntensity", Float) = 1
_OffsetFrequency ("OffsetFrequency", Float) = 1
_OffsetDuration ("OffsetDuration", Range(0, 1)) = 0.504
_Opacity ("Opacity", Range(0, 1)) = 0.87
_MainTex ("MainTex", 2D) = "white" { }
_MainTexIntensity ("MainTexIntensity", Range(0, 1)) = 0.434
}
SubShader {
 Tags { "QUEUE" = "Transparent+100" "RenderType" = "Transparent" }
 Pass {
  Tags { "LIGHTMODE" = "CustomRPTransparent" "QUEUE" = "Transparent+100" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  Cull Off
  GpuProgramID 38888
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
  Tags { "QUEUE" = "Transparent+100" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ZTest Equal
  ZWrite Off
  Cull Off
  GpuProgramID 121707
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