//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Scene/Skybox/Fog Particle" {
Properties {
[MHYHeaderBox(Base)] _FogParticleAtlas ("Fog Particle Atlas", 2D) = "white" { }
_AlphaScale ("Alpha Scale", Float) = 1
_EmissionScale ("Emission Scale", Float) = 1
_FogColor ("Fog Color", Color) = (1,1,1,1)
_SoftParticle ("Soft Particle", Float) = 1
_OffsetY ("Offset Y", Float) = 0
[MHYHeaderBox(NearGround)] [Toggle(_USE_HEIGHTMAP)] _UseHeightMap ("Use Height Map ?", Float) = 0
_ScaleY ("Scale Y Near Ground", Float) = 1
[MHYHeaderBox(Curl)] _CloudCurlTex ("Cloud Curl Tex", 2D) = "black" { }
_CloudCurlTiling ("Cloud Curl Tiling", Range(0, 30)) = 10
_CloudCurlAmplitude ("Cloud Curl Amplitude", Range(0, 1)) = 0.01
_CloudCurlSpeed ("Cloud Curl Speed 2", Range(-50, 50)) = 20
[MHYHeaderBox(Cur2)] _CloudCurlTiling2 ("Cloud Curl Tiling 2", Range(0, 30)) = 10
_CloudCurlAmplitude2 ("Cloud Curl Amplitude 2", Range(0, 1)) = 0.01
_CloudCurlSpeed2 ("Cloud Curl Speed 2", Range(-50, 50)) = 20
[MHYHeaderBox(DistanceFade)] _DistanceFadeBase ("Distance Fade Base", Float) = 15
_DistanceFadeRange ("Distance Fade Range", Float) = 15
[MHYHeaderBox(LifeTimeFade)] _FadeIn ("FadeIn duaring lifetime", Float) = 0.4
_FadeOut ("FadeOut duaring lifetime", Float) = 0.6
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ZClip Off
  ZWrite Off
  Cull Off
  GpuProgramID 26083
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ENABLE_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ENABLE_FOG" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" "_ENABLE_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" "_ENABLE_FOG" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "_ENABLE_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "_ENABLE_FOG" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" "_ENABLE_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" "_ENABLE_FOG" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_SPRITE_ID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_SPRITE_ID" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_SPRITE_ID" "_ENABLE_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_SPRITE_ID" "_ENABLE_FOG" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" "_ENABLE_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" "_ENABLE_FOG" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_SPRITE_ID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_SPRITE_ID" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_SPRITE_ID" "_ENABLE_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_SPRITE_ID" "_ENABLE_FOG" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" "_ENABLE_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" "_ENABLE_FOG" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ENABLE_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ENABLE_FOG" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" "_ENABLE_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" "_ENABLE_FOG" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "_ENABLE_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "_ENABLE_FOG" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" "_ENABLE_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" "_ENABLE_FOG" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_SPRITE_ID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_SPRITE_ID" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_SPRITE_ID" "_ENABLE_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_SPRITE_ID" "_ENABLE_FOG" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" "_ENABLE_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" "_ENABLE_FOG" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_SPRITE_ID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_SPRITE_ID" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_SPRITE_ID" "_ENABLE_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_SPRITE_ID" "_ENABLE_FOG" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" "_ENABLE_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FIXED_EDGE_SMOOTHNESS" "FIXED_RIMLIGHT_WIDTH" "FIXED_SPRITE_ID" "_ENABLE_FOG" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}