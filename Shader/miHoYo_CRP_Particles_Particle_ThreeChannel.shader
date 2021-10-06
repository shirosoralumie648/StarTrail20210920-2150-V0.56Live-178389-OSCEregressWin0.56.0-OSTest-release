//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Particle_ThreeChannel" {
Properties {
[MHYHelpURL(PARTICLETHREECHANNEL)] _MainChannel ("MainChannelA  RGBA=0/1 ", Vector) = (1,1,1,0)
_MainTex ("Main Texture", 2D) = "white" { }
_MainSpeed ("MainSpeed     intensity ", Vector) = (0,0,1,0)
_MainColorR ("RColorDark", Color) = (0.5,0.5,0.5,0)
_MainColorR2 ("RColorLight", Color) = (0.5,0.5,0.5,0)
_MainColorG ("GColor", Color) = (0.5,0.5,0.5,0)
_MainColorB ("BColor  A", Color) = (0.5,0.5,0.5,0.1)
[KeywordEnum(OFF,RG,RGB,FLOW,RADIAL)] _CL2 ("Noise Channel", Float) = 0
_NoiseTex ("NoiseTex", 2D) = "white" { }
_NoiseSpeed ("NoiseSpeed(RG)   intensityRG/B", Vector) = (0,0,1,1)
_NoiseSpeedG ("NoiseSpeed(B)", Vector) = (0,0,1,1)
[Toggle(_MASKON)] _MASK ("Mask_ON", Float) = 0
_MaskTex ("MaskTex", 2D) = "white" { }
_MaskSpeed ("MaskSpeed   ZW=Smooth", Vector) = (0,0,0,0)
_MaskChannel ("MaskChannel  RGB=0/1  W=Noise", Vector) = (1,0,0,0)
_MaskChannelMainG ("MaskChannelMainG  RGBA=0/1 ", Vector) = (0,0,0,1)
_CustomUV ("Custom1uv  XYZ=Main/Noise/Mask 0/1", Vector) = (1,1,0,0)
[Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull Mode", Float) = 2
[Enum(Off, 4, On, 0)] _AlwaysOnTop ("Always On Top", Float) = 4
[Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Float) = 0
[Enum(AlphaBlend, 0, Additive, 1, Multiply, 2, OneChannel, 3, Opaque, 4)] _RenderingMode ("Rendering Mode", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 0
_Disappear ("Disappear", Range(0, 1)) = 0
_Opacity ("Opacity", Range(0, 1)) = 1
[Toggle(_SoftParticle)] _SoftParticleOn ("Soft Particle", Float) = 0
[MHYKeywordFilter(_SoftParticle On)] _SoftNear ("Soft Near", Range(0, 1)) = 0
[MHYKeywordFilter(_SoftParticle On)] _SoftFar ("Soft Far", Range(0, 1)) = 1
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZTest Off
  ZWrite Off
  Cull Off
  GpuProgramID 24002
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" "_MASKON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" "_MASKON" "_SoftParticle" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_OFF" "_MASKON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_OFF" "_MASKON" "_SoftParticle" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RGB" "_MASKON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RGB" "_MASKON" "_SoftParticle" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RADIAL" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" "_MASKON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" "_MASKON" "_SoftParticle" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_OFF" "_MASKON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_OFF" "_MASKON" "_SoftParticle" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RGB" "_MASKON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RGB" "_MASKON" "_SoftParticle" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RADIAL" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
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
  GpuProgramID 112695
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" "_MASKON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_OFF" "_MASKON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RGB" "_MASKON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RADIAL" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" "_MASKON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_OFF" "_MASKON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RGB" "_MASKON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RADIAL" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "CustomReflectionTransparent"
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomReflection" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZTest Off
  ZWrite Off
  Cull Off
  GpuProgramID 138172
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" "_MASKON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" "_MASKON" "_SoftParticle" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_OFF" "_MASKON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_OFF" "_MASKON" "_SoftParticle" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RGB" "_MASKON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RGB" "_MASKON" "_SoftParticle" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RADIAL" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" "_MASKON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RG" "_MASKON" "_SoftParticle" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_OFF" "_MASKON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_OFF" "_MASKON" "_SoftParticle" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RGB" "_MASKON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RGB" "_MASKON" "_SoftParticle" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_CL2_RADIAL" }
"// shader disassembly not supported on DXBC"
}
}
}
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
}
CustomEditor "RPG.Editor.BaseParticleShaderGUI"
}