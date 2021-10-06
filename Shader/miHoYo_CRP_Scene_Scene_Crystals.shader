//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Scene/Scene_Crystals" {
Properties {
_Color ("Color", Color) = (1,1,1,1)
_Transparent ("Transparent", Range(0, 1)) = 1
_MainTex ("Albedo |RGB(base color)", 2D) = "white" { }
_FresnelParams ("Fresnel Parameters", Vector) = (1,1,0,1)
[MHYHeaderBox(Reflection)] [Toggle(_REFLECTION_ON)] _ReflectionOn ("Reflection", Float) = 0
_ReflectionStrength ("Reflection Strength", Range(0, 2)) = 1
_ReflectTex ("Refraction Texture", Cube) = "" { }
[MHYHeaderBox(EMISSION)] [Toggle(_EMISSION_ON)] _EmissionOn ("Emission", Float) = 0
_EmissionMask ("Emission Mask", 2D) = "black" { }
[Enum(UV1st,0,UV2nd,1)] _UseSet ("UV Set", Float) = 1
_Emission ("Emission Color", Color) = (0,0,0,0.5)
_EmissionIntensity ("Emission Intensity", Range(0, 20)) = 1
[MHYHeaderBox(DEPTHFADE)] [Toggle(_DEPTHFADE_ON)] _DepthFadeOn ("DepthFade", Float) = 0
_DepthFadeColor ("DepthFadeColor", Color) = (0,0,0,0)
_DepthFadeDistance ("DepthFadeDistance", Range(0, 30)) = 0
_DepthFadeTexIntensity ("DepthFadeIntensity", Float) = 1
_DepthFadeTex ("DepthFadeTex", 2D) = "white" { }
}
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderType" = "Transparency" }
 Pass {
  Name "CrystalRenderPass"
  Tags { "LIGHTMODE" = "CustomRPTransparent" "QUEUE" = "Transparent" "RenderType" = "Transparency" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  GpuProgramID 45107
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_REFLECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_REFLECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}