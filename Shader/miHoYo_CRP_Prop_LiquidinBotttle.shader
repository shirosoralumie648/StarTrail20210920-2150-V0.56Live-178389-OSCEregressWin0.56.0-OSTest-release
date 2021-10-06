//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Prop/LiquidinBotttle" {
Properties {
[MHYHeaderBox(Liquid Colors)] _FillAmount ("Fill Amount", Range(-10, 10)) = 0
_WobbleX ("WobbleX", Range(-1, 1)) = 0
_WobbleZ ("WobbleZ", Range(-1, 1)) = 0
_MainTex ("Texture", 2D) = "white" { }
_MainTexSpeed ("Main Texture Flow Speed", Vector) = (0,0,0,0)
_BrightColor ("Liquid Color Bright", Color) = (1,1,1,1)
_DarkColor ("Liquid Color Dark", Color) = (1,1,1,1)
_FoamColor ("Liquid Surface Eddge Color", Color) = (1,1,1,1)
_FoamWidth ("Liquid Edge Width", Range(0, 5)) = 0.1
_SurfaceColor ("Liquid Surface Color", Color) = (1,1,1,1)
_SurfaceLighted ("Liquid Surface Intensty", Range(0, 10)) = 3
_RimColor ("Rim Color", Color) = (1,1,1,1)
_RimPower ("Rim Power", Range(0.5, 4)) = 1
_LiquidOpaqueness ("Liquid Transparency", Range(0, 1)) = 1
[MHYHeaderBox(Glass Colors)] _GlassColorA ("Above Liquid Glass Color", Color) = (1,1,1,1)
_GlassFrsnIn ("Glass Fresnel Inside", Range(0.1, 8)) = 1
_Opaqueness ("Glass Transparency", Range(0, 1)) = 0.1
_GlassColorU ("Specular Color", Color) = (1,1,1,1)
_SpecularShininess ("Specular Shininess", Range(0.1, 64)) = 4
_SpecularThreshold ("Specular Threshold", Range(0, 1)) = 0
_SpecularIntensity ("Specular Intensity", Range(0, 5)) = 1
_SPDir ("Specular Direction", Vector) = (0,0,0,1)
_EdgeWidth ("Glass Volume Offset", Range(-1, 1)) = 0
[MHYHeaderBox(DITHER)] [Toggle(_USINGDITHERALPAH)] _UsingDitherAlpha ("UsingDitherAlpha", Float) = 0
_DitherAlpha ("Dither Alpha Value", Range(0, 1)) = 1
[Enum(AlphaBlend, 0, Opaque, 1)] _RenderingMode ("Rendering Mode", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 0
_StencilRef ("Stencil Ref", Float) = 10
_Z ("ZWrite Enable", Float) = 1
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPTransparent" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  Cull Front
  GpuProgramID 30906
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPTransparent2" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  Stencil {
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 80702
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_USINGDITHERALPAH" }
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