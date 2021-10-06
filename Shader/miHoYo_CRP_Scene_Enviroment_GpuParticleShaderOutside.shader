//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Scene/Enviroment/GpuParticleShaderOutside" {
Properties {
[MHYHeaderBox(Color)] _MainTex ("Texture", 2D) = "white" { }
_EmissionScale ("Emission Scale", Float) = 1
[MHYHeaderBox(Density)] _GPUParticle_Density ("Density", Range(0, 1)) = 1
_GPUParticle_NearClipDist ("NearClipDist", Range(0, 20)) = 5
_GPUParticle_FarClipDist ("FarClipDist", Range(20, 40)) = 25
[MHYHeaderBox(Scale)] _GPUParticle_Scale ("Render Scale", Range(0, 1)) = 0.1
_GPUParticle_SpeedScale ("Scale By Speed", Float) = 1
_GPUParticle_SpeedScaleThreShold ("Scale By Speed Threshold", Float) = 1
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Overlay+998" "RenderType" = "Overlay" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Overlay+998" "RenderType" = "Overlay" }
  Blend SrcAlpha One, SrcAlpha One
  ZTest GEqual
  ZWrite Off
  Cull Off
  Stencil {
   Ref 255
   Comp Equal
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 42989
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