//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Particle_DissolveM_Model" {
Properties {
[MHYHelpURL(PARTICLEDISSOLVEMMODELNEW)] _InsideColor ("InsideColor  A", Color) = (1,1,1,1)
_OutSideColor ("OutSideColor ", Color) = (1,1,1,1)
_DisStep ("DisStep     Y=OutEdge   Z=Mask0/1/2", Vector) = (0,0,0,0)
_MidColor ("MidColor", Color) = (1,1,1,0.1)
_SmoothStep ("SmoothXYZ    W=Midedge", Vector) = (0,0,0,0)
[Toggle(_ScreenPosON)] _ScrPos ("ScreenPos", Float) = 0
_ScrPosScale ("ScrPosScale  0/1", Float) = 0
[KeywordEnum(RGBA,RA)] _CL4 ("Main Channel", Float) = 0
_MainChannel ("MainChannelA      RGBA=0/1 ", Vector) = (0,0,0,1)
_MainChannelRGB ("MainChannelRGB  RGBA=0/1 ", Vector) = (0,0,0,1)
_MainTex ("MainTex", 2D) = "white" { }
_MainSpeed ("MainSpeed  intensity* +", Vector) = (0,0,1,0)
_Opacity ("Opacity", Range(0, 1)) = 1
_DisTex ("DisTex          r*mask ", 2D) = "white" { }
_DisRSpeed ("Dis(R)Speed  r+z", Vector) = (0,0,0,0)
[KeywordEnum(TEX,VER,OFF)] _CL3 ("Noise Mode", Float) = 0
_NoiseTex ("NoiseTex", 2D) = "white" { }
_NoiseSpeed ("NoiseSpeed  itensity", Vector) = (0,0,1,0)
_NoiseChannelRGB ("NoiseChannelRGB  RGB=0/1 ", Vector) = (1,1,1,0)
_OffsetColor ("VertexAniColor ", Color) = (1,1,1,0)
_NoiseMask ("VertexAniGrad  Y=Tex+  Z=Clamp   W=UV2 0/1", Vector) = (1,0,0,1)
[Toggle(_FresnelON)] _FresnelON ("Fresnel_On", Float) = 0
_FresnelColor ("FresnelColor", Color) = (1,1,1,0)
_Fresnel ("Fresnel RGB/A = xy/zw", Vector) = (0,1,0,1)
_Disappear ("Disappear", Range(0, 1)) = 0
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
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPTransparent" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZTest Off
  ZWrite Off
  Cull Off
  GpuProgramID 8745
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" }
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
Local Keywords { "_CL3_TEX" "_CL_RA" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_FresnelON" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" }
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
Local Keywords { "_CL3_TEX" "_CL_RA" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RGBA" "_FresnelON" "_VAT_MODEL_PARTICLE" }
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
  GpuProgramID 128513
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" }
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
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" }
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
  GpuProgramID 185645
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" }
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
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_OFF" "_CL_RA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL3_TEX" "_CL_RGBA" }
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
}
}
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
}
CustomEditor "RPG.Editor.CRPParticleShaderGUI"
}