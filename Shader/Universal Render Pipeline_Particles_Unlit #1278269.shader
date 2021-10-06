//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Universal Render Pipeline/Particles/Unlit" {
Properties {
_BaseMap ("Base Map", 2D) = "white" { }
_BaseColor ("Base Color", Color) = (1,1,1,1)
_Cutoff ("Alpha Cutoff", Range(0, 1)) = 0.5
_BumpMap ("Normal Map", 2D) = "bump" { }
_EmissionColor ("Color", Color) = (0,0,0,1)
_EmissionMap ("Emission", 2D) = "white" { }
_SoftParticlesNearFadeDistance ("Soft Particles Near Fade", Float) = 0
_SoftParticlesFarFadeDistance ("Soft Particles Far Fade", Float) = 1
_CameraNearFadeDistance ("Camera Near Fade", Float) = 1
_CameraFarFadeDistance ("Camera Far Fade", Float) = 2
_DistortionBlend ("Distortion Blend", Float) = 0.5
_DistortionStrength ("Distortion Strength", Float) = 1
_Surface ("__surface", Float) = 0
_Blend ("__mode", Float) = 0
_AlphaClip ("__clip", Float) = 0
_BlendOp ("__blendop", Float) = 0
_SrcBlend ("__src", Float) = 1
_DstBlend ("__dst", Float) = 0
_ZWrite ("__zw", Float) = 1
_Cull ("__cull", Float) = 2
_ColorMode ("_ColorMode", Float) = 0
_BaseColorAddSubDiff ("_ColorMode", Vector) = (0,0,0,0)
[ToggleOff] _FlipbookBlending ("__flipbookblending", Float) = 0
_SoftParticlesEnabled ("__softparticlesenabled", Float) = 0
_CameraFadingEnabled ("__camerafadingenabled", Float) = 0
_SoftParticleFadeParams ("__softparticlefadeparams", Vector) = (0,0,0,0)
_CameraFadeParams ("__camerafadeparams", Vector) = (0,0,0,0)
_DistortionEnabled ("__distortionenabled", Float) = 0
_DistortionStrengthScaled ("Distortion Strength Scaled", Float) = 0.1
_QueueOffset ("Queue offset", Float) = 0
_FlipbookMode ("flipbook", Float) = 0
_Mode ("mode", Float) = 0
_Color ("color", Color) = (1,1,1,1)
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "PerformanceChecks" = "False" "PreviewType" = "Plane" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
 Pass {
  Name "ForwardLit"
  Tags { "IGNOREPROJECTOR" = "true" "PerformanceChecks" = "False" "PreviewType" = "Plane" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  Blend Zero Zero, Zero Zero
  ColorMask RGB 0
  ZWrite Off
  Cull Off
  GpuProgramID 498
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
CustomEditor "UnityEditor.Rendering.Universal.ShaderGUI.ParticlesUnlitShader"
}