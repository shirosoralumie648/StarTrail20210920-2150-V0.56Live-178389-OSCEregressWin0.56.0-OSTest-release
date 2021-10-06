//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Scene/Enviroment/GpuParticleShader" {
Properties {
[MHYHeaderBox(Color)] _MainTex ("Texture", 2D) = "white" { }
_EmissionScale ("Emission Scale", Float) = 1
[MHYHeaderBox(Density)] _GPUParticle_NearClipDist ("NearClipDist", Range(0, 20)) = 5
_GPUParticle_FarClipDist ("FarClipDist", Range(20, 40)) = 25
[MHYHeaderBox(Scale)] _GPUParticle_Scale ("Render Scale", Range(0, 1)) = 0.1
_GPUParticle_SpeedScale ("Scale By Speed", Float) = 1
_GPUParticle_SpeedScaleThreShold ("Scale By Speed Threshold", Float) = 1
[Enum(UnityEngine.Rendering.CompareFunction)] _StencilOP ("Z Test OP", Float) = 8
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Overlay+1000" "RenderType" = "Overlay" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Overlay+1000" "RenderType" = "Overlay" }
  Blend SrcAlpha One, SrcAlpha One
  ZWrite Off
  Cull Off
  Stencil {
   Comp Disabled
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 22653
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
}