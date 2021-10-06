//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_UI/UI_Particle_UVMove" {
Properties {
[Header(Main Texture)] _MainTex ("MainTex", 2D) = "white" { }
[Enum(R,0,G,1,B,2,A,3)] _MainTexAlpha ("MainTexAlpha", Float) = 3
_MainColor ("MainColor", Color) = (1,1,1,0)
_MainIntensity ("MainIntensity", Range(0, 50)) = 1
_MainSpeed ("MainSpeed", Vector) = (0,0,0,0)
[Toggle(CUSTOMDATA)] _CustomData ("Custom Data", Float) = 0
[Header(Noise Turbulence 01)] _NoiseTex01 ("NoiseTex01", 2D) = "white" { }
[Enum(R, 0,  A, 1)] _Noise01ChannelMapping ("Channel Mapping", Float) = 0
_NoiseTex01Intensity ("Noise01Intensity", Float) = 0
_Noise01Speed ("Noise01Speed", Vector) = (0,0,0,0)
[Header(Noise Turbulence 02)] _NoiseTex02 ("NoiseTex02", 2D) = "white" { }
[Enum(R, 0,  A, 1)] _Noise02ChannelMapping ("Channel Mapping", Float) = 0
_NoiseTex02Intensity ("Noise02Intensity", Float) = 0
_Noise02Speed ("Noise02Speed", Vector) = (0,0,0,0)
_Opacity ("Opacity", Range(0, 1)) = 1
_MaskTex ("MaskTex", 2D) = "white" { }
[Enum(R, 0,  A, 1)] _MaskChannelMapping ("Channel Mapping", Float) = 0
[Header(Render Options)] [Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull Mode", Float) = 2
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
  ZWrite Off
  Cull Off
  GpuProgramID 48826
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