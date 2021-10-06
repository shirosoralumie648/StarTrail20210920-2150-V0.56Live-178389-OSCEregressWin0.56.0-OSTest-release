//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Prop/Ice" {
Properties {
[Toggle(_PARALLAX_ICE)] _EnableParallax ("Enable Parallax", Float) = 0
[Toggle(_DISPLACEMENT_UV)] _EnableDisplacementUV ("Enable Displacement UV", Float) = 0
[MHYKeywordFilter(_PARALLAX_ICE On)] _Thickness ("Ice Thickness", Range(0, 0.1)) = 0.01
[MHYHeaderBox(MainMap)] _IceMap ("Ice Map", 2D) = "white" { }
_MainColor ("MainColor", Color) = (0,0,0,0)
[MHYKeywordFilter(_PARALLAX_ICE Off)] _LightPower ("LightPower", Float) = 1
[MHYHeaderBox(SSS)] [MHYKeywordFilter(_PARALLAX_ICE Off)] _SSSColor ("SSS Color", Color) = (0,0,0,0)
[MHYKeywordFilter(_PARALLAX_ICE Off)] _SSSIntensity ("3SIntensity", Float) = 0
[MHYHeaderBox(Fresnel)] [MHYKeywordFilter(_PARALLAX_ICE Off)] _FresnelCT ("FresnelCT", Vector) = (0,0,0,0)
[MHYKeywordFilter(_PARALLAX_ICE Off)] _FresnelColor ("FresnelColor", Color) = (0,0,0,0)
[MHYHeaderBox(MidLight)] [MHYKeywordFilter(_PARALLAX_ICE Off)] _MidLightPower ("MidLightPower", Float) = 22.02
[MHYKeywordFilter(_PARALLAX_ICE Off)] _MidLightColor ("MidLightColor", Color) = (0,0,0,0)
[MHYHeaderBox(Inside)] [MHYKeywordFilter(_PARALLAX_ICE Off)] _InsideTexIntensity ("InsideTexIntensity", Float) = 0
_InsideTexHeight ("InsideTexHeight", Float) = 0
_InsideTexColor ("InsideTexColor", Color) = (0,0,0,0)
[MHYKeywordFilter(_PARALLAX_ICE Off)] _InsidePower ("Inside Power", Float) = 1
[MHYKeywordFilter(_PARALLAX_ICE On)] _ParallaxMap ("Parallax Map", 2D) = "black" { }
[MHYKeywordFilter(_PARALLAX_ICE On)] _InsideMap ("Inside Map", 2D) = "black" { }
[MHYHeaderBox(Distortion)] [MHYKeywordFilter(_PARALLAX_ICE On)] _TransparentMaxThickness ("Scale Depth Alpha", Range(0, 1)) = 0
[MHYKeywordFilter(_PARALLAX_ICE On)] _ColorAlphaScale ("Scale Color Alpha", Range(0, 10)) = 0
[MHYKeywordFilter(_PARALLAX_ICE On)] _DistortionMap ("Distortion Map", 2D) = "white" { }
[MHYKeywordFilter(_PARALLAX_ICE On)] _Distortion ("Distortion", Range(0, 1)) = 0
[MHYKeywordFilter(_PARALLAX_ICE On)] _DistortionEnd ("DistortionEnd", Float) = 0
[Enum(AlphaBlend, 0, Opaque, 1)] _RenderingMode ("Rendering Mode", Float) = 0
[Enum(Off, 0, Front, 1, Back, 2)] _CullMode ("Cull Mode", Float) = 1
[MHYHeaderBox(VAT)] [MHYSingleLineTextureNoScaleOffset] _VAT_PosTex ("Pos", 2D) = "white" { }
[MHYSingleLineTextureNoScaleOffset] _VAT_NormalTex ("Normal", 2D) = "white" { }
[MHYSingleLineTextureNoScaleOffset] _VAT_TangentTex ("Tangent", 2D) = "white" { }
_VAT_PosRangeMin ("Bbox Min", Vector) = (0,0,0,0)
_VAT_PosRangeMax ("Bbox Max", Vector) = (0,0,0,0)
_VAT_PrimiteCount ("Prim Count", Float) = 1
_VAT_AnimSpeed ("Animation Speed", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 0
}
SubShader {
 LOD 100
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 Pass {
  LOD 100
  Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
  Blend Zero Zero, Zero Zero
  Cull Off
  GpuProgramID 56559
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_PARALLAX_ICE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISPLACEMENT_UV" "_PARALLAX_ICE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_PARALLAX_ICE" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISPLACEMENT_UV" "_PARALLAX_ICE" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_PARALLAX_ICE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISPLACEMENT_UV" "_PARALLAX_ICE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_PARALLAX_ICE" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DISPLACEMENT_UV" "_PARALLAX_ICE" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
}
}
}
CustomEditor "RPG.Editor.BasePropShaderGUI"
}