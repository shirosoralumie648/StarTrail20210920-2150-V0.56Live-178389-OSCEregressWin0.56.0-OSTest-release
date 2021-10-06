//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Scene/Scene_Grass" {
Properties {
_AlphaClipThr ("Alpha Clip Threshold", Range(0, 1)) = 0
[MHYHeaderBox(PBR)] _Color ("Color", Color) = (1,1,1,1)
_TillingOffset ("Albedo TillingOffset", Vector) = (1,1,0,0)
_AlbedoScale ("Albedo Scale", Range(0, 3)) = 1
_NormalScale ("Normal Scale", Range(0, 5)) = 1
_MetalScale ("Metallic Scale", Range(0, 1)) = 1
_SmoothnessScale ("Smoothness Scale", Range(0, 3)) = 1
[MHYSingleLineTextureNoScaleOffset] _PackAlbedoMetalMap ("Pack Albedo Metal Map", 2D) = "gray" { }
[MHYSingleLineTextureNoScaleOffset] _PackNormalSmoothMap ("Pack Normal Smoothness Map", 2D) = "bump" { }
[MHYSingleLineTextureNoScaleOffset] _SpecialMap ("Pack Special Map", 2D) = "blue" { }
[MHYHeaderBox(WIND)] [Toggle(_VANI_WIND)] _EnableWind ("Enable Wind", Float) = 0
_WindDir ("Wind Dir", Vector) = (1,1,0,0)
_WaveSpeed ("Wave Speed", Range(0, 1)) = 0.1
_SideBendSoftness ("Side Bend Softness", Range(0, 2)) = 1
_BendVariance ("Bend Variance", Range(0, 1)) = 0
_CenterScale ("Center Scale", Float) = 1
}
SubShader {
 Tags { "QUEUE" = "Geometry+30" "RenderType" = "Opaque" }
 Pass {
  Name "BuildGBuffer_Grass"
  Tags { "LIGHTMODE" = "BuildGBuffer" "QUEUE" = "Geometry+30" "RenderType" = "Opaque" }
  Cull Off
  Stencil {
   Ref 128
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 42287
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
SubShader {
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 UsePass "Hidden/miHoYo/Common/Shared/SHADOWCASTERNPR"
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
}
}