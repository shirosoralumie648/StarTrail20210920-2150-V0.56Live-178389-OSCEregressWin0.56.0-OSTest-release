//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Character/Character_Effect_Ghost" {
Properties {
[MHYHeaderBox(OUTLINE)] [KeywordEnum(Normal, Tangent, UV2)] _OutlineNormalFrom ("Outline Normal From", Float) = 0
_PolygonOffsetFactor ("Polygon Offset Factor", Float) = 0
_PolygonOffsetUnits ("Polygon Offset Units", Float) = 0
_OutlinePolygonOffsetFactor ("Outline Polygon Offset Factor", Float) = 0
_OutlinePolygonOffsetUnits ("Outline Polygon Offset Units", Float) = 0
_OutlineWidth ("Outline Width", Range(0, 1)) = 0.1
_OutlineColor ("Outline Color", Color) = (0,0,0,1)
[MHYHeaderBox(DIFFUSE)] _MainTex ("Albedo", 2D) = "white" { }
_Color ("Color", Color) = (1,1,1,1)
_ShadowRamp ("Color Blend Factor", Range(0, 1)) = 0
[MHYHeaderBox(RIMLIGHT)] _FresnelColor ("RimColor", Color) = (1,1,1,0)
_FresnelColorStrength ("Rim Intensity", Float) = 0.5
_FresnelBSI ("Rim IBIS", Vector) = (0.1,0.5,0,0)
[MHYHeaderBox(BLOOM)] _mBloomIntensity ("Bloom Intensity", Float) = 0
[MHYHeaderBox(DITHER)] [Toggle(_USINGDITHERALPAH)] _UsingDitherAlpha ("UsingDitherAlpha", Float) = 0
_DitherAlpha ("Dither Alpha Value", Range(0, 1)) = 1
_StencilRef ("Stencil Ref", Float) = 16
}
SubShader {
 Tags { "QUEUE" = "Geometry-1" "RenderType" = "Opaque" }
 Pass {
  Name "CustomForward"
  Tags { "LIGHTMODE" = "CustomForwardOpaque" "QUEUE" = "Geometry-1" "RenderType" = "Opaque" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  Stencil {
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 12779
Program "vp" {
SubProgram "d3d11 " {
Keywords { "_LEVEL_ADJUST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_LEVEL_ADJUST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "_LEVEL_ADJUST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_LEVEL_ADJUST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_FORWARD_WITH_MOTION_VECTOR" "_LEVEL_ADJUST_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
}
}
 UsePass "Hidden/miHoYo/Character/Shared/OpaqueOutlineSimple"
 UsePass "Hidden/miHoYo/Character/Shared/MOTIONVECTORSCENEMRT"
 UsePass "Hidden/miHoYo/Character/Shared/MOTIONVECTOROUTLINE"
 UsePass "Hidden/miHoYo/Character/Shared/MOTIONVECTOROUTLINESCENEMRT"
}
}