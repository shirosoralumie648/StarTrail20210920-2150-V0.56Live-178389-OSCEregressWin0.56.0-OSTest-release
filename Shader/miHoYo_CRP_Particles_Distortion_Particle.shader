//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Distortion_Particle" {
Properties {
[Toggle(DISTORTION)] _Distortion ("Distortion", Float) = 0
[Toggle(_TEXTURE_TOP)] _Texture_Top ("Top", Float) = 0
[Toggle] _VertexAlpha ("Vertex Color R As Alpha", Float) = 0
_DistortionTex ("Distortion Tex", 2D) = "bump" { }
_DistortionIntensity ("Distortion Intensity", Range(0, 2)) = 0.1
_UVCorrect ("UVCorrect", Float) = 0.9
[Toggle] _UseVertexMask ("Use Vertex Mask", Float) = 0
[Toggle(_DISTORTION_MASK)] _MaskOn ("Distortion Mask", Float) = 0
[MHYKeywordFilter(_DISTORTION_MASK On)] _MaskTex ("Mask Tex", 2D) = "white" { }
[MHYKeywordFilter(_DISTORTION_MASK On)] _MaskChannle ("Mask Channel", Vector) = (1,0,0,0)
_TimeScale ("xy:Distortion Speed, zw:Mask Speed", Vector) = (0,0,0,0)
[Enum(UnityEngine.Rendering.CompareFunction)] _ZTest ("ZTest", Float) = 4
[Toggle(COLORGRADING)] _ColorGrading ("ColorGrading", Float) = 0
_LevelHighTone ("Level High Tone", Range(0, 1)) = 1
_LevelShadowTone ("Level Shadow Tone", Range(0, 1)) = 0
_LevelColor ("Level Color", Color) = (1,1,1,1)
_ColorSaturationGlobal ("Golal Saturation", Color) = (1,1,1,1)
_ColorContrastGlobal ("Golal Contrast", Color) = (1,1,1,1)
_ColorGainGlobal ("Golal Gain", Color) = (1,1,1,1)
_ColorCorrectionShadowMax ("Max", Range(-1, 1)) = 0.09
_ColorCorrectionHighlightMin ("Min", Range(-1, 1)) = 0.5
_ColorSaturationShadow ("Shadow Saturation", Color) = (1,1,1,1)
_ColorContrastShadow ("Shadow Contrast", Color) = (1,1,1,1)
_ColorGainShadow ("Shadow Gain", Color) = (1,1,1,1)
_ColorSaturationMidtone ("Midtone Saturation", Color) = (1,1,1,1)
_ColorContrastMidtone ("Midtone Contrast", Color) = (1,1,1,1)
_ColorGainMidtone ("Midtone Gain", Color) = (1,1,1,1)
_ColorSaturationHighlight ("Highlight Saturation", Color) = (1,1,1,1)
_ColorContrastHighlight ("Highlight Contrast", Color) = (1,1,1,1)
_ColorGainHighlight ("Highlight Gain", Color) = (1,1,1,1)
[Toggle(_LUTMAPPING)] _LutMapping ("LUT Mapping", Float) = 0
[Enum(RG, 0, RB, 1, GB, 2, RGB, 3)] _LUTMode ("LUT Mode", Float) = 0
_LUTRChannle ("LUT R Channel", Float) = 0
_LUTGChannle ("LUT G Channel", Float) = 0
_LUTBChannle ("LUT B Channel", Float) = 0
_LUTCellNum ("Cell Number", Float) = 4
_LUTTexture ("LUT", 2D) = "white" { }
_LUTIntensity ("LUT Intensity", Range(0, 1)) = 1
_USE_CameraOpaqueTexture ("Use Camera Opaque Texture", Float) = 1
_USE_CameraDepthTexture ("Use Camera Depth Texture", Float) = 1
[Header(Others)] [Toggle(_CUSTOMDATA)] _customDataToggle ("CustomData", Float) = 0
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent+400" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPRefraction" "QUEUE" = "Transparent+400" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ColorMask RGB 0
  ZTest Off
  ZWrite Off
  Cull Off
  GpuProgramID 40072
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" "_TEXTURE_TOP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISTORTION_MASK" "_TEXTURE_TOP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" "_DISTORTION_MASK" "_TEXTURE_TOP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLORGRADING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLORGRADING" "DISTORTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLORGRADING" "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLORGRADING" "DISTORTION" "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLORGRADING" "_DISTORTION_MASK" "_TEXTURE_TOP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLORGRADING" "DISTORTION" "_DISTORTION_MASK" "_TEXTURE_TOP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLORGRADING" "DISTORTION" "_CUSTOMDATA" "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLORGRADING" "DISTORTION" "_CUSTOMDATA" "_DISTORTION_MASK" "_TEXTURE_TOP" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" "_TEXTURE_TOP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISTORTION_MASK" "_TEXTURE_TOP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" "_DISTORTION_MASK" "_TEXTURE_TOP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLORGRADING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLORGRADING" "DISTORTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLORGRADING" "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLORGRADING" "DISTORTION" "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLORGRADING" "_DISTORTION_MASK" "_TEXTURE_TOP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLORGRADING" "DISTORTION" "_DISTORTION_MASK" "_TEXTURE_TOP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLORGRADING" "DISTORTION" "_CUSTOMDATA" "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLORGRADING" "DISTORTION" "_CUSTOMDATA" "_DISTORTION_MASK" "_TEXTURE_TOP" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "DistortionVector" "QUEUE" = "Transparent+400" "RenderType" = "Transparent" }
  Blend One One, One One
  ColorMask RGB 0
  ZTest Off
  Cull Off
  GpuProgramID 123392
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "DistortionCompose" "QUEUE" = "Transparent+400" "RenderType" = "Opaque" }
  ColorMask RGB 0
  ZTest Off
  Cull Off
  GpuProgramID 134192
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" "_TEXTURE_TOP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISTORTION_MASK" "_TEXTURE_TOP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" "_DISTORTION_MASK" "_TEXTURE_TOP" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" "_TEXTURE_TOP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISTORTION_MASK" "_TEXTURE_TOP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" "_DISTORTION_MASK" "_TEXTURE_TOP" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "DistortionVectorFBF" "QUEUE" = "Transparent+400" "RenderType" = "Transparent" }
  ColorMask GB 0
  ZTest Off
  Cull Off
  GpuProgramID 261589
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DISTORTION" "_DISTORTION_MASK" }
"// shader disassembly not supported on DXBC"
}
}
}
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
}
CustomEditor "RPG.Editor.ParticlesDistortionShaderGUI"
}