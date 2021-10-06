//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_UI/UI_Particle_Dissolve" {
Properties {
_MainTex ("MainTex", 2D) = "white" { }
[Enum(R,0,G,1,B,2,A,3)] _MainTexAlpha ("MainTexAlpha", Float) = 3
_Opacity ("Opacity", Range(0, 1)) = 1
_MainIntensity ("MainIntensity", Range(0, 10)) = 1
_Saturate ("Saturate", Range(0, 10)) = 1
_MainColor ("MainColor", Color) = (0,0,0,0)
_DisTex ("DisTex", 2D) = "white" { }
[Enum(R,0,A,1)] _DisTexAlpha ("DisTexAlpha", Float) = 0
_DisTexStep ("DisTexStep", Range(-1, 1)) = 0.01
_DisTexStepSmooth ("DisTexStepSmooth", Range(0, 1)) = 0.01
[Header(FlipBook)] [Toggle( FLIPBOOK)] _FlipBook ("FlipBook", Float) = 0
_HorizontalAmount ("Horizontal Amount", Float) = 4
_VerticalAmount ("Vertical Amount", Float) = 4
_Speed ("Speed", Range(1, 100)) = 5
[Toggle( PLAYONCE)] _PlayOnce ("PlayOnce", Float) = 0
[Header(Others)] [Toggle(CUSTOMDATA)] _customDataToggle ("CustomData", Float) = 0
[Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull Mode", Float) = 2
[Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Float) = 1
[Enum(AlphaBlend, 0, Additive, 1, Multiply, 2, OneChannel, 3, Opaque, 4)] _RenderingMode ("Rendering Mode", Float) = 0
_texcoord ("", 2D) = "white" { }
}
SubShader {
 LOD 100
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ZWrite Off
  Cull Off
  GpuProgramID 54489
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