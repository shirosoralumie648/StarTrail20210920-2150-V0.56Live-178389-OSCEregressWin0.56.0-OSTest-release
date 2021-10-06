//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Particles/Particle_StarCloud" {
Properties {
[MHYHelpURL(STARCLOUD)] _CloudColor ("CloudColor", Color) = (0,1,0.7103448,0)
_CloudTex ("CloudTex", 2D) = "white" { }
_CloudOffset ("CloudOffset", Float) = 0
_CloudTexUV2Coord ("CloudTexUV2Coord", Vector) = (1,1,0,0)
_StarDepth ("StarDepth", Float) = 14.89
_CloudMultiplyer ("CloudMultiplyer", Float) = 2.5
_CloudSpeed ("CloudSpeed", Float) = 0.05
_Cloud02Color ("Cloud02Color", Color) = (1,0.3676471,0.3676471,0)
_Cloud02Tex ("Cloud02Tex", 2D) = "white" { }
_CloudTex02UV2Coord ("CloudTex02UV2Coord", Vector) = (1,1,0,0)
_Cloud02Offset ("Cloud02Offset", Float) = -0.09
_Cloud02Multipler ("Cloud02Multipler", Float) = 2.5
_Cloud02Speed ("Cloud02Speed", Float) = 0.005
_NoiseTex ("NoiseTex", 2D) = "white" { }
_NoiseTexUV2Coord ("NoiseTexUV2Coord", Vector) = (1,1,0,0)
_NoiseOffset ("NoiseOffset", Float) = 0.08
_NoiseBrightness ("NoiseBrightness", Float) = 3.01
_NoiseSpeed ("NoiseSpeed", Float) = 0.01
_StarBrightness ("StarBrightness", Float) = 10
_StarTex ("StarTex", 2D) = "black" { }
_StarUVSpeed ("StarUVSpeed", Float) = 1
_StarTexUV2Coord ("StarTexUV2Coord", Vector) = (1,1,0,0)
_ColorPalette ("ColorPalette", 2D) = "white" { }
_Desaturate ("Desaturate", Range(0, 1)) = 0
_ColorPalletteSpeed ("ColorPalletteSpeed", Float) = -1.95
_FadeAlpha ("FadeAlpha", Range(0, 1)) = 1
_Power ("Power", Float) = 10
_Scale ("Scale", Float) = 33.58
_HorizonFade ("HorizonFade", Float) = 4
_HorizonHeight ("HorizonHeight", Float) = -1.95
_GradientRange ("GradientRange", Float) = 8
_GradientOffset ("GradientOffset", Float) = -6
[Header(Down Color)] _LightColor ("LightColor", Color) = (0.426273,0.3749459,0.6985294,0)
_LightColorScale ("LightColorScale", Float) = 1
_DarkColor ("DarkColor", Color) = (0.1609537,0.07028547,0.1911765,0)
_PowerDown ("PowerDown", Float) = 15
_ScaleDown ("ScaleDown", Float) = 1.2
_Opacity ("Opacity", Range(0, 1)) = 0
[Space] [Header(BlackHole)] _BlackHoleBase ("BlackHole Base Tex", 2D) = "black" { }
_BlackHoleNoise ("BlackHole Noise", 2D) = "black" { }
_BlackHoleColor ("BlackHole Color", Color) = (1,1,1,1)
_BlackHoleAddColor ("BlackHole Add Color", Color) = (0,0,0,0)
_BlackHoleBrightness ("BlackHole Brightness", Range(0, 25)) = 5
_BlackHoleSize ("BlackHole Size", Range(0, 10)) = 3
_DistortionSpeedU ("Distortion X Speed", Range(-2, 2)) = 0.1
_DistortionSpeedV ("Distortion Y Speed", Range(-2, 2)) = 0.1
_DistortionIntensity ("Distortion Intensity", Range(0, 2)) = 0.1
[Header(Cull Mode)] [Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull Mode", Float) = 2
[Header(Depth Mode)] [Enum(Off, 0, On, 1)] _Zwrite ("ZWrite Mode", Float) = 1
[Enum(UnityEngine.Rendering.CompareFunction)] _Ztest ("ZTest Mode", Float) = 4
}
SubShader {
 Tags { "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  ZTest Off
  ZWrite Off
  Cull Off
  GpuProgramID 20029
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
 Pass {
  Name "CustomReflectionOpaque"
  Tags { "LIGHTMODE" = "CustomReflection" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  ZTest Off
  ZWrite Off
  Cull Off
  GpuProgramID 125149
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