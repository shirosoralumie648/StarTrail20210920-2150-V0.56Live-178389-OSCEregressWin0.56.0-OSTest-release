//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Custom RP/CustomShadow" {
Properties {
}
SubShader {
 LOD 100
 Tags { "IGNOREPROJECTOR" = "true" "RenderType" = "Opaque" }
 Pass {
  Name "ScreenSpaceShadows"
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPBase" "RenderType" = "Opaque" }
  ColorMask GB 0
  ColorMask 0 1
  ColorMask 0 2
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 58782
Program "vp" {
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_TEMPORAL_FILTERING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_SHADOWS_PCF7x7" "_TEMPORAL_FILTERING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_SHADOWS_PCF5x5" "_TEMPORAL_FILTERING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_SHADOWS_PCF3x3" "_TEMPORAL_FILTERING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_SHADOWS_PCF2x2" "_TEMPORAL_FILTERING" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_TEMPORAL_FILTERING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_SHADOWS_PCF7x7" "_TEMPORAL_FILTERING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_SHADOWS_PCF5x5" "_TEMPORAL_FILTERING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_SHADOWS_PCF3x3" "_TEMPORAL_FILTERING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_SHADOWS_PCF2x2" "_TEMPORAL_FILTERING" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "BackFaceZFailTo1"
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "StencilOnly" "RenderType" = "Opaque" }
  ColorMask 0 0
  ColorMask 0 1
  ColorMask 0 2
  ZTest Less
  ZWrite Off
  Cull Front
  Stencil {
   Ref 33
   ReadMask 32
   WriteMask 1
   Comp Equal
   Pass Keep
   Fail Keep
   ZFail IncrSat
  }
  GpuProgramID 67941
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
  Name "FrontFaceZFailTo0"
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "StencilOnly" "RenderType" = "Opaque" }
  ColorMask 0 0
  ColorMask 0 1
  ColorMask 0 2
  ZTest Less
  ZWrite Off
  Stencil {
   Ref 32
   ReadMask 32
   WriteMask 1
   Comp Equal
   Pass Keep
   Fail Keep
   ZFail DecrSat
  }
  GpuProgramID 138732
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
  Name "ObjectScreenSpaceShadows"
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPBase" "RenderType" = "Opaque" }
  Blend One One, One One
  BlendOp Min, Min
  ColorMask 0 0
  ColorMask 0 1
  ColorMask 0 2
  ZTest Always
  ZWrite Off
  Cull Front
  Stencil {
   Ref 33
   ReadMask 33
   WriteMask 1
   Comp Equal
   Pass Zero
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 249187
Program "vp" {
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF7x7" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF5x5" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF3x3" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF2x2" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF7x7" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF5x5" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF3x3" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF2x2" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "LocalLightShadow"
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPBase" "RenderType" = "Opaque" }
  Blend One One, One One
  BlendOp Min, Min
  ColorMask B 0
  ColorMask 0 1
  ColorMask 0 2
  ZTest Always
  ZWrite Off
  Cull Front
  Stencil {
   Ref 33
   ReadMask 33
   WriteMask 1
   Comp Equal
   Pass Zero
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 314679
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF7x7" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF5x5" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF3x3" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF2x2" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF7x7" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF5x5" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF3x3" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF2x2" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF7x7" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF5x5" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF3x3" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF2x2" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF7x7" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF5x5" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF3x3" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF2x2" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "StencilVolumn"
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "StencilOnly" "RenderType" = "Opaque" }
  ColorMask 0 0
  ColorMask 0 1
  ColorMask 0 2
  ZWrite Off
  Stencil {
   Ref 1
   WriteMask 1
   Comp Always
   Pass Keep
   Fail Keep
   ZFail Replace
  }
  GpuProgramID 332334
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
  Name "ObjectScreenSpaceShadows_HalfRes"
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPBase" "RenderType" = "Opaque" }
  Blend One One, One One
  BlendOp Min, Min
  ColorMask 0 0
  ColorMask 0 1
  ColorMask 0 2
  ZTest GEqual
  ZWrite Off
  Cull Front
  Stencil {
   Ref 192
   ReadMask 193
   WriteMask 1
   Comp Equal
   Pass Zero
   Fail Zero
   ZFail Keep
  }
  GpuProgramID 415814
Program "vp" {
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF7x7" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF5x5" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF3x3" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF2x2" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF7x7" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF5x5" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF3x3" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF2x2" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "LocalLightShadow_HalfRes"
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPBase" "RenderType" = "Opaque" }
  Blend One One, One One
  BlendOp Min, Min
  ColorMask B 0
  ColorMask 0 1
  ColorMask 0 2
  ZTest GEqual
  ZWrite Off
  Cull Front
  Stencil {
   Ref 192
   ReadMask 193
   WriteMask 1
   Comp Equal
   Pass Zero
   Fail Zero
   ZFail Keep
  }
  GpuProgramID 523348
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF7x7" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF5x5" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF3x3" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF2x2" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF7x7" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF5x5" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF3x3" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF2x2" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF7x7" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF5x5" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF3x3" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF2x2" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF7x7" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF5x5" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF3x3" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF2x2" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "ClearWhite"
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPBase" "RenderType" = "Opaque" }
  ColorMask GB 0
  ColorMask 0 1
  ColorMask 0 2
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 569638
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
  Name "LocalLightShadow2"
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPBase" "RenderType" = "Opaque" }
  ColorMask B 0
  ColorMask 0 1
  ColorMask 0 2
  ZTest Always
  ZWrite Off
  Cull Front
  GpuProgramID 601821
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF7x7" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF5x5" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF3x3" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF2x2" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF7x7" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF5x5" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF3x3" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF2x2" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF7x7" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF5x5" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF3x3" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SHADOWS_PCF2x2" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF7x7" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF5x5" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF3x3" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_DUAL_PARABOLOID" }
Local Keywords { "_SHADOWS_PCF2x2" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "ObjectScreenSpaceShadows2"
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "CustomRPBase" "RenderType" = "Opaque" }
  Blend One One, One One
  BlendOp Min, Min
  ZTest Always
  ZWrite Off
  Cull Off
  Stencil {
   Ref 192
   ReadMask 193
   WriteMask 1
   Comp Equal
   Pass Zero
   Fail Zero
   ZFail Keep
  }
  GpuProgramID 671514
Program "vp" {
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF7x7" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF5x5" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF3x3" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF2x2" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF7x7" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF7x7" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF5x5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF5x5" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF3x3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF3x3" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SAMPLE_MAINLIGHT_SHADOW" "_SHADOWS_PCF2x2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWS_PCF2x2" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}