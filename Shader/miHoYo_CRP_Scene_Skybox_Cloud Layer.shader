//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Scene/Skybox/Cloud Layer" {
Properties {
[Header(Cloud Maps)] _CloudDensityMap ("Cloud Density Map", 2D) = "black" { }
_CloudNormalMap ("Cloud Normal Map", 2D) = "bump" { }
_CloudWispsTex ("Cloud Wisps Tex", 2D) = "black" { }
[Header(Cloud Curl)] _CloudCurlTex ("Cloud Curl Tex", 2D) = "black" { }
[Header(Cloud Lighting)] _CloudDarkShadingNormalYScale ("Cloud Dark Shading Normal Y Scale", Range(0, 10)) = 3
_CloudLightShadingNormalYScale ("Cloud Light Shading Normal Y Scale", Range(0, 10)) = 3
_ES_CloudLightingIntensity ("_ES_CloudLightingIntensity", Float) = 1
_ES_LightColor ("_ES_LightColor", Color) = (1,1,1,1)
}
SubShader {
 Tags { "QUEUE" = "Background+2" "RenderType" = "Transparent" }
 Pass {
  Name "CloudLayer"
  Tags { "LIGHTMODE" = "CustomForwardOpaque" "QUEUE" = "Background+2" "RenderType" = "Transparent" }
  Blend 0 SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ColorMask RGB 0
  ColorMask 0 1
  ColorMask 0 2
  ZClip Off
  ZWrite Off
  GpuProgramID 45196
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