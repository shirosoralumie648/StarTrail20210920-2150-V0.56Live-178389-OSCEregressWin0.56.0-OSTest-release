//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Particle_NormalLight_Distortion" {
Properties {
[MHYHelpURL(PARTICLENORMALLIGHT)] _UseCustomEffectLightDir ("Use Custom Effect Light Dir", Float) = 0
_LightColor ("LightColor A", Color) = (1,1,1,0.1)
_DarkColor ("DarkColor", Color) = (0,0,0,0)
_intensity ("intensity", Float) = 1
[KeywordEnum(RGBA,RA)] _CL4 ("Main Channel", Float) = 0
_MainChannel ("MainChannelA      RGBA=0/1 ", Vector) = (0,0,0,1)
_MainChannelRGB ("MainChannelRGB  RGBA=0/1 ", Vector) = (0,0,0,1)
_MainTex ("MainTex", 2D) = "white" { }
_MainMaskChannel ("MaskChannel  RGBA=0/1  ", Vector) = (1,0,0,0)
[Toggle(_NORMALMAP)] _NormalMapToggle ("NormalMap", Float) = 0
_NormalTex ("NormalTex", 2D) = "bump" { }
_Normal ("Normal  NormalScale  LightingScale ", Vector) = (1,1,0,0)
[Toggle(_DISTORTION)] _DISTORTToggle ("Distort             Queue=3400", Float) = 0
_DistortColor ("DistorlColor    A=Noise           DistortMask=Fresnel.a* MainTex.a ", Color) = (1,1,1,0.1)
_SpecularColor ("SpecularlColor", Color) = (0.5,1,0,0)
_Specular ("Specular   Smooth   ZW=DistorMask/Smooth", Vector) = (0.5,0,0,0.1)
_FresnelColor ("FresnelColor", Color) = (1,1,1,0)
_Fresnel ("FresnelRGB/A = XY/ZW   YW=Smooth", Vector) = (1,0,0,1)
[Toggle(_MATCAP)] _MatcapToggle ("Matcap", Float) = 0
_MatCap ("Matcap", 2D) = "white" { }
_MatcapColor ("MatcapColor A", Color) = (1,1,1,1)
_MatCapLerp ("_MatCapLerp", Range(0, 1)) = 0.5
_CustomLightMode ("Custom Light Mode", Range(0, 1)) = 0
[Toggle(CUSTOMDATA)] _CustomData ("Custom Data", Float) = 1
_DisStep ("Disstep  Smooth  Normal  W=Ramp0/1/2 off", Vector) = (0,0,1,0)
_Disappear ("Disappear", Range(0, 1)) = 0
[Header(Render Options)] [Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull Mode", Float) = 2
[Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Float) = 1
[Enum(AlphaBlend, 0, Additive, 1, Multiply, 2, OneChannel, 3, Opaque, 4)] _RenderingMode ("Rendering Mode", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 0
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPRefraction" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  Cull Off
  GpuProgramID 22251
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL_RA" "_DISTORTION" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL_RA" "_DISTORTION" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "BuildGBuffer" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  Cull Off
  Stencil {
   Ref 96
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 111729
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL_RA" "_DISTORTION" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL_RA" "_DISTORTION" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "CustomReflectionTransparent"
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomReflection" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  Cull Off
  GpuProgramID 147329
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL_RA" "_DISTORTION" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" "_CL_RA" "_DISTORTION" }
"// shader disassembly not supported on DXBC"
}
}
}
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
}
CustomEditor "RPG.Editor.CRPParticleShaderGUI"
}