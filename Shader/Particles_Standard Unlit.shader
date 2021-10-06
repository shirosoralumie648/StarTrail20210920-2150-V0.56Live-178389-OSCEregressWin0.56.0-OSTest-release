//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Particles/Standard Unlit" {
Properties {
_MainTex ("Albedo", 2D) = "white" { }
_Color ("Color", Color) = (1,1,1,1)
_Cutoff ("Alpha Cutoff", Range(0, 1)) = 0.5
_BumpScale ("Scale", Float) = 1
_BumpMap ("Normal Map", 2D) = "bump" { }
_EmissionColor ("Color", Color) = (0,0,0,1)
_EmissionMap ("Emission", 2D) = "white" { }
_DistortionStrength ("Strength", Float) = 1
_DistortionBlend ("Blend", Range(0, 1)) = 0.5
_SoftParticlesNearFadeDistance ("Soft Particles Near Fade", Float) = 0
_SoftParticlesFarFadeDistance ("Soft Particles Far Fade", Float) = 1
_CameraNearFadeDistance ("Camera Near Fade", Float) = 1
_CameraFarFadeDistance ("Camera Far Fade", Float) = 2
_Mode ("__mode", Float) = 0
_ColorMode ("__colormode", Float) = 0
_FlipbookMode ("__flipbookmode", Float) = 0
_LightingEnabled ("__lightingenabled", Float) = 0
_DistortionEnabled ("__distortionenabled", Float) = 0
_EmissionEnabled ("__emissionenabled", Float) = 0
_BlendOp ("__blendop", Float) = 0
_SrcBlend ("__src", Float) = 1
_DstBlend ("__dst", Float) = 0
_ZWrite ("__zw", Float) = 1
_Cull ("__cull", Float) = 2
_SoftParticlesEnabled ("__softparticlesenabled", Float) = 0
_CameraFadingEnabled ("__camerafadingenabled", Float) = 0
_SoftParticleFadeParams ("__softparticlefadeparams", Vector) = (0,0,0,0)
_CameraFadeParams ("__camerafadeparams", Vector) = (0,0,0,0)
_ColorAddSubDiff ("__coloraddsubdiff", Vector) = (0,0,0,0)
_DistortionStrengthScaled ("__distortionstrengthscaled", Float) = 0
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "PerformanceChecks" = "False" "PreviewType" = "Plane" "RenderType" = "Opaque" }
 GrabPass {
  "_GrabTexture"
}
 Pass {
  Name "ShadowCaster"
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "SHADOWCASTER" "PerformanceChecks" = "False" "PreviewType" = "Plane" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  ColorMask RGB 0
  Cull Off
  GpuProgramID 18548
Program "vp" {
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_CUBE" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_DEPTH" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_CUBE" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_DEPTH" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_CUBE" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SHADOWS_DEPTH" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_CUBE" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SHADOWS_DEPTH" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "FORWARDBASE" "PerformanceChecks" = "False" "PreviewType" = "Plane" "RenderType" = "Opaque" }
  Blend Zero Zero, Zero Zero
  ColorMask RGB 0
  ZWrite Off
  Cull Off
  GpuProgramID 253844
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PROCEDURAL_INSTANCING_ON" "SOFTPARTICLES_ON" }
Local Keywords { "_ALPHABLEND_ON" "_FADING_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "VertexLit"
CustomEditor "StandardParticlesShaderGUI"
}