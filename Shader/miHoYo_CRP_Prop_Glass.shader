//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Prop/Glass" {
Properties {
[MHYHeaderBox(OPTIONS)] [Enum(UnityEngine.Rendering.CullMode)] _CullMode ("Cull Mode", Float) = 2
_PolygonOffsetFactor ("Polygon Offset Factor", Float) = 0
_PolygonOffsetUnits ("Polygon Offset Units", Float) = 0
_OutlinePolygonOffsetFactor ("Outline Polygon Offset Factor", Float) = 0
_OutlinePolygonOffsetUnits ("Outline Polygon Offset Units", Float) = 0
_BloomFactor ("Bloom Factor", Float) = 1
[MHYHeaderBox(Glass Colors)] _BrightColor ("Glass Color", Color) = (1,1,1,1)
_DarkColor ("Edge Dark", Color) = (1,1,1,1)
_EdgeWidth ("Glass Edge Thickness", Range(0, 1)) = 0.25
_GlassFrsnIn ("Fresnel Inside", Range(0, 1)) = 0.25
_EnvColor ("Env Color", Color) = (1,1,1,1)
_Scale ("Scale Compared to Maya", Float) = 0.01
[MHYHeaderBox(Opaqueness)] _Opaqueness ("Opaqueness", Range(0, 1)) = 1
_MinAlpha ("Glass Min Alpha", Range(0, 1)) = 0
_OpaquenessScalerWithoutHDR ("", Float) = 1
[MHYHeaderBox(DITHER)] [Toggle(_USINGDITHERALPAH)] _UsingDitherAlpha ("UsingDitherAlpha", Float) = 0
_DitherAlpha ("Dither Alpha Value", Range(0, 1)) = 1
[Enum(AlphaBlend, 0, Opaque, 1)] _RenderingMode ("Rendering Mode", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 0
_StencilRef ("Stencil Ref", Float) = 7
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPTransparent" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  Stencil {
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 17595
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
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPTransparent2" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  Cull Front
  Stencil {
   Comp NotEqual
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 102192
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
SubShader {
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 UsePass "Hidden/miHoYo/Common/Shared/SHADOWCASTER"
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
}
CustomEditor "RPG.Editor.BasePropShaderGUI"
}