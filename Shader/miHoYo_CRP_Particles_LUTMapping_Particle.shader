//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/LUTMapping_Particle" {
Properties {
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
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent-400" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPTransparent" "QUEUE" = "Transparent-400" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ColorMask RGB 0
  ZWrite Off
  Cull Off
  GpuProgramID 59904
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLORGRADING" "_LUTMAPPING" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLORGRADING" "_LUTMAPPING" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}