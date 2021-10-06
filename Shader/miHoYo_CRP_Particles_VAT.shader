//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/VAT" {
Properties {
_MainTex ("Main Texture", 2D) = "white" { }
[MHYSingleLineTextureNoScaleOffset] _PosTex ("Position Texture", 2D) = "white" { }
[MHYSingleLineTextureNoScaleOffset] _NormalTex ("Normal Texture", 2D) = "white" { }
[MHYSingleLineTextureNoScaleOffset] _TangentTex ("Tangent Texture", 2D) = "white" { }
_PosRangeMin ("AABB Min", Vector) = (0,0,0,0)
_PosRangeMax ("AABB Max", Vector) = (0,0,0,0)
_TimeLocation ("Time Location", Range(0, 1)) = 0
_TotalFrameTime ("Total Frame Time", Float) = 64
[Toggle(_PARTICEL_VAT)] _ParticleVAT ("Is Particle VAT", Float) = 0
[Toggle(_PARTICEL_ON)] _ParticleON ("Use Particle System", Float) = 0
[Enum(Off, 0, Rotation, 1, Velocity, 2)] _ParticleRotateMode ("Particle Rotate Mode", Float) = 0
[Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull Mode", Float) = 2
[Enum(Off, 0, On, 1)] _ZTest ("Always On Top", Float) = 1
[Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Float) = 1
[Enum(AlphaBlend, 0, Additive, 1, Multiply, 2, OneChannel, 3, Opaque, 4)] _RenderingMode ("Rendering Mode", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 0
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Geometry" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomForwardOpaque" "QUEUE" = "Geometry" "RenderType" = "Transparent" }
  Blend 0 Zero Zero, Zero Zero
  ColorMask RGB 0
  ColorMask 0 1
  ColorMask 0 2
  ZWrite Off
  Cull Off
  GpuProgramID 50826
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
CustomEditor "RPG.Editor.BaseParticleShaderGUI"
}