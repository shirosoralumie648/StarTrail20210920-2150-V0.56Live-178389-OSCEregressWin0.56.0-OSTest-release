//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_UI/UI_Particle_Dissolve_Swirl" {
Properties {
_MainTex ("MainTex", 2D) = "white" { }
_Opacity ("Opacity", Range(0, 1)) = 1
_OutSideColor ("OutSideColor", Color) = (0,0,0,0)
_OutSideIntensity ("OutSideIntensity", Float) = 1
_OutSideEdge ("OutSideEdge", Range(0, 5)) = 0.45
_MidColor ("MidColor", Color) = (0,0,0,0)
_MidIntensity ("MidIntensity", Float) = 1
_MidEdge ("MidEdge", Range(0, 5)) = 0
_InsideColor ("InsideColor", Color) = (0,0,0,0)
_InsideIntensity ("InsideIntensity", Float) = 1
_InsideEdge ("InsideEdge", Range(0, 5)) = 0
_SmoothStep ("SmoothStep", Range(0, 1)) = 0.1
_DisTex ("DisTex", 2D) = "white" { }
_DisRSpeed ("Dis(R)Speed", Vector) = (0,0,0,0)
_DisGSpeed ("Dis(G)Speed", Vector) = (0,0,1,1)
_DisRIntensity ("Dis(R)Intensity", Range(0, 5)) = 1
_DisGIntensity ("Dis(G)Intensity", Range(0, 5)) = 1
[Toggle(CUSTOMDATA)] _customDataToggle ("CustomData", Float) = 0
[Enum(AlphaBlend, 0, Additive, 1, Multiply, 2, OneChannel, 3, Opaque, 4)] _RenderingMode ("Rendering Mode", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 0
[Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull Mode", Float) = 2
[Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Float) = 1
}
SubShader {
 LOD 100
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  Cull Off
  GpuProgramID 35628
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