//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Scene/Scene_Car" {
Properties {
[MHYHeaderBox(DIFFUSE)] [MHYSingleLineTextureNoScaleOffset(_Color)] _MainTex ("Albedo |RGB(base color) A (alpha)", 2D) = "white" { }
_Color ("Color", Color) = (1,1,1,1)
[MHYSingleLineTextureKeywordDrawer(_USE_NORMAL_MAP)] _NormalMap ("Normal", 2D) = "bump" { }
_NormalScale ("Normal Scale", Range(0, 5)) = 1
_ShadowThreshold ("Diffuse Threshold", Range(0.01, 1)) = 0.337
_ShadowFeather ("Diffuse Feather", Range(0.01, 1)) = 0.337
_BrightDiffuseColor ("Bright Color", Color) = (1,1,1,1)
_ShadowDiffuseColor ("Shadow Color", Color) = (0,0,0,1)
_EnvColor ("Env Color", Color) = (1,1,1,1)
_AddColor ("Add Color", Color) = (0,0,0,0)
[MHYHeaderBox(SPECULAR)] _SpecularColor ("Specular Color", Color) = (1,1,1,1)
_SpecularShininess ("Specular Shininess", Range(0.1, 500)) = 10
_SpecularIntensity ("Specular Intensity", Range(0, 50)) = 1
_SpecularThreshold ("Specular Threshold", Range(0, 1)) = 1
[MHYHeaderBox(RIMLIGHT)] _RimColor ("RimColor", Color) = (1,1,1,0)
_RimWidth ("RimWidth", Float) = 1
_RimIntensity ("Rim Intensity", Float) = 1
_RimFeatherWidth ("Rim Feather Width", Range(0.01, 1)) = 0.01
[MHYHeaderBox(BLOOM)] _mBloomIntensity ("Bloom Intensity", Float) = 1
[MHYHeaderBox(ADDLIGHT)] _AddLightOffset ("Add Light Offset", Range(0, 1)) = 0.5
_AddLightStrengthen ("Add Light Strengthen", Range(0, 3)) = 0.3
_AddLightFeather ("Add Light Feather", Range(0, 0.1)) = 0.03
[MHYHeaderBox(DITHER)] [Toggle(_USINGDITHERALPAH)] _UsingDitherAlpha ("UsingDitherAlpha", Float) = 0
_DitherAlpha ("Dither Alpha Value", Range(0, 1)) = 1
[Toggle(_RECEIVE_SHADOWS)] _ReceiveShadows ("Receive Shadows", Float) = 0
_Stencil ("Stencil", Float) = 247
}
SubShader {
 Tags { "QUEUE" = "Geometry-1" "RenderType" = "Opaque" }
 Pass {
  Name "ForwardOnly"
  Tags { "LIGHTMODE" = "CustomRPBase" "QUEUE" = "Geometry-1" "RenderType" = "Opaque" }
  ColorMask RGB 0
  ColorMask 0 1
  ColorMask 0 2
  Stencil {
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 53452
Program "vp" {
SubProgram "d3d11 " {
Keywords { "_LEVEL_ADJUST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS_VERTEX" "_LEVEL_ADJUST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_LEVEL_ADJUST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ENABLE_FOG" "_LEVEL_ADJUST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS_VERTEX" "_ENABLE_FOG" "_LEVEL_ADJUST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ENABLE_FOG" "_LEVEL_ADJUST_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "_LEVEL_ADJUST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS_VERTEX" "_LEVEL_ADJUST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_LEVEL_ADJUST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ENABLE_FOG" "_LEVEL_ADJUST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS_VERTEX" "_ENABLE_FOG" "_LEVEL_ADJUST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ENABLE_FOG" "_LEVEL_ADJUST_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
SubShader {
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 UsePass "Hidden/miHoYo/Common/Shared/SHADOWCASTER"
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
}
CustomEditor "RPG.Editor.BaseSceneShaderGUI"
}