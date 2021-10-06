//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/CRP/Shaders/GBufferLighting" {
Properties {
_MatIDStencilRef ("Material ID Stencil Ref", Float) = 0
}
SubShader {
 Pass {
  Name "DeferLightingPBR"
  ColorMask RGB 0
  ColorMask 0 1
  ColorMask 0 2
  ZTest Off
  ZWrite Off
  Cull Off
  Stencil {
   Ref 192
   ReadMask 192
   WriteMask 1
   Comp Equal
   Pass Zero
   Fail Zero
   ZFail Keep
  }
  GpuProgramID 9895
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_HALF_PROBE_BRDF" }
Local Keywords { "_AMBIENT_TEX_ENABLE" "_DIRECT_LIGHT_ENABLE" "_EDITOR_DEBUG_OVERLAY" "_PBR_PASS" "_PROBE_ENABLE" "_SHADOWS_SCENE_OBJ_SPLIT" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "DeferLightingUnlit"
  ColorMask RGB 0
  ColorMask 0 1
  ColorMask 0 2
  ZTest Off
  ZWrite Off
  Cull Off
  Stencil {
   Ref 64
   ReadMask 192
   WriteMask 1
   Comp Equal
   Pass Zero
   Fail Zero
   ZFail Keep
  }
  GpuProgramID 70153
Program "vp" {
SubProgram "d3d11 " {
Keywords { "_UNLIT_PASS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_UNLIT_PASS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "_UNLIT_PASS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_UNLIT_PASS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "DeferLightingSSS"
  ColorMask RGB 0
  ColorMask 0 1
  ColorMask 0 2
  ZTest Off
  ZWrite Off
  Cull Off
  Stencil {
   Ref 128
   ReadMask 192
   WriteMask 1
   Comp Equal
   Pass Zero
   Fail Zero
   ZFail Keep
  }
  GpuProgramID 162946
Program "vp" {
SubProgram "d3d11 " {
Keywords { "_SSS_PASS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SSS_PASS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SSS_PASS" }
Local Keywords { "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SSS_PASS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "_SSS_PASS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SSS_PASS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SSS_PASS" }
Local Keywords { "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SSS_PASS" }
Local Keywords { "_EDITOR_DEBUG_OVERLAY" "_SHADOW_ENABLE" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}