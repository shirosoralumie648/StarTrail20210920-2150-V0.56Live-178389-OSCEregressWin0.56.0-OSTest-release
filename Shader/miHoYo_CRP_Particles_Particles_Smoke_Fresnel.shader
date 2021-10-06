//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Particles_Smoke_Fresnel" {
Properties {
[MHYHelpURL(PARTICLESMOKEFRESNEL)] _RampTex ("RampTex", 2D) = "white" { }
_DisTex ("DisTex(R)", 2D) = "white" { }
_DisUV ("DisSpeed  z=Intensity w=smooth", Vector) = (0,0,0,0)
_VertexTex ("Vertex Normal", 2D) = "white" { }
_VertexUV ("VertexUV  z=Dis+", Vector) = (0,0,0,0)
[Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull Mode", Float) = 2
[Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Float) = 0
[Enum(AlphaBlend, 0, Additive, 1, Multiply, 2, OneChannel, 3, Opaque, 4)] _RenderingMode ("Rendering Mode", Float) = 0
[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("SrcBlend", Float) = 1
[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("DstBlend", Float) = 0
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  Cull Off
  GpuProgramID 5631
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
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
}
CustomEditor "RPG.Editor.BaseParticleShaderGUI"
}