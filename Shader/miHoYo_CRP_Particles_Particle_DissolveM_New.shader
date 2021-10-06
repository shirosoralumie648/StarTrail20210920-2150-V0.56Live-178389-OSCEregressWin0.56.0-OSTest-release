//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Particle_DissolveM_New" {
Properties {
[MHYHelpURL(PARTICLEDISSOLVEMNEW)] _MidColor ("MidColorRGB   A", Color) = (1,1,1,0.1)
_SmoothStep ("SmoothXYZ    W=Midedge", Vector) = (0,0,0,0)
[Toggle(_ScreenPosON)] _ScrPos ("ScreenPos", Float) = 0
_ScrPosScale ("ScrPosScale  0/1", Float) = 0
[KeywordEnum(RGBA,RA)] _CL4 ("Main Channel", Float) = 0
_MainChannel ("MainChannelA      RGBA=0/1 ", Vector) = (0,0,0,1)
_MainChannelRGB ("MainChannelRGB  RGBA=0/1 ", Vector) = (0,0,0,1)
_MainTex ("MainTex", 2D) = "white" { }
_MainSpeed ("MainSpeed  intensity* +", Vector) = (0,0,1,0)
_CustomUV ("Custom1uv    XY = Main/  DisNoise    0/1", Vector) = (1,1,0,0)
_Opacity ("Opacity", Range(0, 1)) = 1
_DisTex ("DisTex          r*mask ", 2D) = "white" { }
_DisRSpeed ("Dis(R)Speed  r+z", Vector) = (0,0,0,0)
[KeywordEnum(TEX,VER,OFF)] _CL3 ("Noise Mode", Float) = 0
_NoiseTex ("NoiseTex", 2D) = "white" { }
_NoiseChannelRGB ("NoiseChannelRGB  RGB=0/1 ", Vector) = (1,1,1,0)
_NoiseSpeed ("NoiseSpeed  itensity", Vector) = (0,0,1,1)
_OffsetColor ("VertexAniColor ", Color) = (1,1,1,0)
_NoiseMask ("VertexAniGrad  Y=Tex+  Z=Clamp   W=UV2 0/1", Vector) = (1,0,0,1)
[Toggle(_FresnelON)] _FresnelON ("Fresnel_On", Float) = 0
_FresnelColor ("FresnelColor", Color) = (1,1,1,0)
_Fresnel ("Fresnel RGB/A = xy/zw ", Vector) = (0,1,0,1)
_Disappear ("Disappear", Range(0, 1)) = 0
[MHYHeaderBox(DITHER)] [Toggle(_USINGDITHERALPAH)] _UsingDitherAlpha ("UsingDitherAlpha", Float) = 0
_DitherAlpha ("Dither Alpha Value", Range(0, 1)) = 1
[Enum(Off, 4, On, 0)] _AlwaysOnTop ("Always On Top", Float) = 4
[Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull Mode", Float) = 2
[Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Float) = 1
[Enum(AlphaBlend, 0, Additive, 1, Multiply, 2, OneChannel, 3, Opaque, 4)] _RenderingMode ("Rendering Mode", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 0
}
SubShader {
 LOD 100
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZTest Off
  ZWrite Off
  Cull Off
  GpuProgramID 41228
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RGBA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RGBA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RGBA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RGBA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "BuildGBuffer" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZTest Off
  ZWrite Off
  Cull Off
  Stencil {
   Ref 96
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 126104
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RGBA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RGBA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RGBA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RGBA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "CustomReflectionTransparent"
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomReflection" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZTest Off
  ZWrite Off
  Cull Off
  GpuProgramID 155369
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RGBA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RGBA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RGBA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_VER" "_CL_RGBA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_FresnelON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_FresnelON" "_ScreenPosON" }
"// shader disassembly not supported on DXBC"
}
}
}
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
}
CustomEditor "RPG.Editor.CRPParticleShaderGUI"
}