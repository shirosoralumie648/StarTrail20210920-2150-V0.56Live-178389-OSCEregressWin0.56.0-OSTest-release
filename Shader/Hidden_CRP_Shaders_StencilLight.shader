//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/CRP/Shaders/StencilLight" {
Properties {
_MatIDStencilRef ("Material ID Stencil Ref", Float) = 0
}
SubShader {
 Pass {
  Name "Volume Stencil"
  ColorMask 0 0
  ColorMask 0 1
  ColorMask 0 2
  ZWrite Off
  Stencil {
   Ref 1
   WriteMask 1
   CompFront Always
   PassFront Keep
   FailFront Keep
   ZFailFront Replace
   CompBack Always
   PassBack Keep
   FailBack Keep
   ZFailBack Replace
  }
  GpuProgramID 22078
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
  Name "Defer Lighting"
  Blend 0 One One, One One
  ColorMask RGB 0
  ColorMask 0 1
  ColorMask 0 2
  ZClip Off
  ZTest GEqual
  ZWrite Off
  Cull Front
  Stencil {
   ReadMask 1
   WriteMask 1
   Comp Equal
   Pass Zero
   Fail Zero
   ZFail Zero
  }
  GpuProgramID 66674
Program "vp" {
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
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
Local Keywords { "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_CHARA_DIRECTIONATTEN" "_EDITOR_DEBUG_OVERLAY" "_LIGHT_LOD_DITHER" "_LOCAL_LIGHT_SHADOWMAP" "_SHADOWED_LIGHTING" "_SPEC_FALLOFF" "_SPOTLIGHT" "_SPOT_COOKIE" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Defer Lighting LOD1"
  Blend 0 One One, One One
  ColorMask RGB 0
  ColorMask 0 1
  ColorMask 0 2
  ZClip Off
  ZTest GEqual
  ZWrite Off
  Cull Front
  Stencil {
   ReadMask 1
   WriteMask 1
   Comp Equal
   Pass Zero
   Fail Zero
   ZFail Zero
  }
  GpuProgramID 194005
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Defer Lighting LODFade"
  Blend 0 One One, One One
  ColorMask RGB 0
  ColorMask 0 1
  ColorMask 0 2
  ZClip Off
  ZTest GEqual
  ZWrite Off
  Cull Front
  Stencil {
   ReadMask 1
   WriteMask 1
   Comp Equal
   Pass Zero
   Fail Zero
   ZFail Zero
  }
  GpuProgramID 210100
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_PEROBJ_SHADOWS" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DUAL_PARABOLOID" "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_LOCAL_LIGHT_SHADOWMAP" "_SPOTLIGHT" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Mesh Stencil"
  ColorMask 0 0
  ColorMask 0 1
  ColorMask 0 2
  ZClip Off
  ZWrite Off
  Cull Off
  Stencil {
   ReadMask 1
   WriteMask 1
   Comp Equal
   Pass IncrSat
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 295165
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