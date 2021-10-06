//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/HolographicImage" {
Properties {
[MHYHelpURL(HOLOGRAPHICIMAGE)] _ColorGain ("ColorGain", Color) = (1,1,1,0)
_BaseColor ("BaseColor", Color) = (1,1,1,0)
_ShadowColor ("ShadowColor", Color) = (1,1,1,0)
_ThicknessColor ("ThicknessColor", Color) = (1,1,1,0)
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
_AO ("Lightmap", 2D) = "white" { }
_BaseColorTex ("BaseColorTex", 2D) = "white" { }
_BaseColorTexIntensity ("BaseColorTexIntensity", Range(0, 1)) = 0.434
_Thickness ("Thickness", 2D) = "white" { }
_ThicknessIntensity ("ThicknessIntensity", Range(0, 1)) = 0.414
}
SubShader {
 Tags { "QUEUE" = "Geometry+45" }
 Pass {
  Name "Depth Only"
  Tags { "LIGHTMODE" = "CustomForwardOpaque" "QUEUE" = "Geometry+45" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ColorMask 0 0
  Cull Off
  Stencil {
   Ref 96
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 51294
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
  Tags { "LIGHTMODE" = "CustomForwardOpaque2" "QUEUE" = "Geometry+45" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ZTest Equal
  Cull Off
  GpuProgramID 67827
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}