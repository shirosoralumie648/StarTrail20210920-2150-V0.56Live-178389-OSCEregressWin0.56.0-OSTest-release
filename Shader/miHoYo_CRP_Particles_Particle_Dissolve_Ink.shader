//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Particle_Dissolve_Ink" {
Properties {
[MHYHelpURL(PARTICLEDISSOLVEINK)] _MainTex ("MainTex", 2D) = "white" { }
_Opacity ("Opacity", Range(0, 1)) = 1
_OutSideColor ("OutSideColor", Color) = (0,0,0,0)
_InsideColor ("InsideColor", Color) = (0,0,0,0)
_MixTex ("MixTex", 2D) = "black" { }
_DisTex ("DisTex", 2D) = "white" { }
_Dist_ST ("DistortST", Vector) = (0,0,0,0)
_SpreadPrcs ("Spread Progress", Range(0.01, 0.99)) = 0
_SwrilIntensity ("Twist Amount", Range(0, 2)) = 0
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
  GpuProgramID 12845
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "CUSTOMDATA" }
"// shader disassembly not supported on DXBC"
}
}
}
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
}
CustomEditor "RPG.Editor.BaseParticleShaderGUI"
}