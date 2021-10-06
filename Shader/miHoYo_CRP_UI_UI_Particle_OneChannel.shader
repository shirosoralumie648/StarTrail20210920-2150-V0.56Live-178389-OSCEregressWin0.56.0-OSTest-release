//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_UI/UI_Particle_OneChannel" {
Properties {
_MainTex ("Main Texture", 2D) = "white" { }
_Opacity ("Opacity", Range(0, 1)) = 1
[Enum(R,0,G,1,B,2,A,3)] _MainTexAlpha ("MainTexAlpha", Float) = 3
_MainColor ("Main Color", Color) = (0.5,0.5,0.5,1)
_EmissionIntensity ("MainColorIntensity", Range(0, 50)) = 1
_MaskTex ("Mask Texture", 2D) = "white" { }
[Enum(R,0,G,1,B,2,A,3)] _MaskTexAlpha ("MaskTexAlpha", Float) = 0
_MaskTexIntensity ("MaskTexIntensity", Range(0, 1)) = 1
[Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull Mode", Float) = 2
[Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Float) = 1
[Enum(AlphaBlend, 0, Additive, 1, Multiply, 2, OneChannel, 3, Opaque, 4)] _RenderingMode ("Rendering Mode", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 0
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent+1" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent+1" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ColorMask RGB 0
  ZWrite Off
  Cull Off
  GpuProgramID 11028
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