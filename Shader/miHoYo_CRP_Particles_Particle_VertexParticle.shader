//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Particle_VertexParticle" {
Properties {
[MHYHelpURL(PARTICLEVERTEXPARTICLE)] [KeywordEnum(R,RGBA,RA)] _CL ("Channel Mapping", Float) = 0
_MainChannel ("MainChannelA      RGB+W=0/1 ", Vector) = (1,0,0,1)
_MainChannelRGB ("MainChannelRGB  RGB=0/1 ", Vector) = (1,0,0,0)
_MainTex ("Main Texture", 2D) = "white" { }
_Opacity ("Opacity", Range(0, 1)) = 1
_MainColor ("Color", Color) = (0.5,0.5,0.5,0.1)
_VertexAniTex ("VertexAniTex", 2D) = "white" { }
_VertexSpeed ("VertexSpeed  intensity", Vector) = (0,0,1,0)
[Enum(AlphaBlend, 0, Additive, 1, Multiply, 2, OneChannel, 3, Opaque, 4)] _RenderingMode ("Rendering Mode", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 0
[Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull Mode", Float) = 2
[Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Float) = 1
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent+1" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent+1" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  Cull Off
  GpuProgramID 29840
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL_R" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL_R" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "CustomReflectionTransparent"
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomReflection" "QUEUE" = "Transparent+1" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  Cull Off
  GpuProgramID 128039
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_CL_R" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_CL_R" }
"// shader disassembly not supported on DXBC"
}
}
}
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
}
CustomEditor "RPG.Editor.BaseParticleShaderGUI"
}