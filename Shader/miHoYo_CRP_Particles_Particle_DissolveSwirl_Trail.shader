//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Particle_DissolveSwirl_Trail" {
Properties {
[MHYHelpURL(PARTICLEDISSOLVESWIRLTRAIL)] [KeywordEnum(R,RGBA,RA)] _CL ("Channel Mapping", Float) = 0
_MainChannel ("MainChannelA      RGB+W=0/1 ", Vector) = (1,0,0,1)
_MainChannelRGB ("MainChannelRGB  RGB=0/1 ", Vector) = (1,0,0,0)
_MainTex ("MainTex", 2D) = "white" { }
_MainSpeed ("MainSpeed  intensity* +", Vector) = (0,0,1,0)
_Opacity ("Opacity", Range(0, 1)) = 1
_DisStep ("DisStep             Y=OutEdge", Vector) = (1.1,0,0,0)
_InsideColor ("InsideColor", Color) = (1,1,1,0)
_OutSideColor ("OutSideColor", Color) = (1,1,1,0)
[Toggle(_MidColorON)] _Mid ("Mid", Float) = 0
_MidColor ("MidColorRGB   a", Color) = (1,1,1,0.1)
_SmoothStep ("SmoothStep_xyz W=Midedge", Vector) = (0,0,0,0)
_DisTex ("DisTex  (r+b)*mask ", 2D) = "white" { }
_DisRSpeed ("Dis(R)Speed  rg+z", Vector) = (0,0,0,0)
[Toggle(_DisTexGON)] _DisTexG ("Dis(G)_Switch", Float) = 0
_DisGSpeed ("Dis(G)Speed  uv", Vector) = (0,0,1,1)
[Toggle(_MaskON)] _MaskON ("MaskTex_Switch  /  OFF=UVramp  offset=0/1/2 ", Float) = 1
_MaskTex ("MaskTex", 2D) = "white" { }
_MaskChannel ("MaskChannel  RGB=0/1", Vector) = (1,0,0,0)
[Toggle(_Noise)] _NoiseSwitch ("NoiseTex_Switch", Float) = 0
_NoiseTex ("NoiseTex", 2D) = "white" { }
_NoiseSpeed ("NoiseSpeed  itensity", Vector) = (0,0,1,1)
_Disappear ("Disappear", Range(0, 1)) = 0
[Enum(AlphaBlend, 0, Additive, 1, Multiply, 2, OneChannel, 3, Opaque, 4)] _RenderingMode ("Rendering Mode", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 0
[Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull Mode", Float) = 2
[Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Float) = 1
}
SubShader {
 LOD 100
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent+1" "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent+1" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  Cull Off
  GpuProgramID 24723
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL_R" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_R" "_DisTexGON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_R" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_R" "_MaskON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_R" "_DisTexGON" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MidColorON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MaskON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MaskON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL_R" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_R" "_DisTexGON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_R" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_R" "_MaskON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_R" "_DisTexGON" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MidColorON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MaskON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MaskON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "BuildGBuffer" "QUEUE" = "Transparent+1" "RenderType" = "Transparent" }
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
  GpuProgramID 78864
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL_R" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_R" "_DisTexGON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_R" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_R" "_MaskON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_R" "_DisTexGON" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MidColorON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MaskON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MaskON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL_R" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_R" "_DisTexGON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_R" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_R" "_MaskON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_R" "_DisTexGON" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MidColorON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MaskON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RGBA" "_DisTexGON" "_MaskON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_MidColorON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_Noise" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL_RA" "_DisTexGON" "_MaskON" }
"// shader disassembly not supported on DXBC"
}
}
}
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
}
CustomEditor "RPG.Editor.CRPParticleShaderGUI"
}