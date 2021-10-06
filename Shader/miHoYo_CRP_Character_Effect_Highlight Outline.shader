//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Character/Effect/Highlight Outline" {
Properties {
_OutlineWidth ("Hightlight Width", Float) = 0
_OutlineWidth2 ("Hightlight Width2", Float) = 0
_OutlineColorInner ("Hightlight Color", Color) = (1,1,1,1)
_OutlineColorOuter ("Hightlight Color2", Color) = (1,0,0,1)
_HighlightPow ("pow", Float) = 1
_OutlineFadeout ("Outline Fadeout", Range(0, 1)) = 0
[KeywordEnum(Normal, Tangent, UV2)] _OutlineNormalFrom ("Outline Normal From", Float) = 1
_OutlinePolygonOffsetFactor ("Outline Polygon Offset Factor", Float) = 0
_OutlinePolygonOffsetUnits ("Outline Polygon Offset Units", Float) = 0
_StencilRef ("Stencil Ref", Float) = 4
}
SubShader {
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 Pass {
  Name "HighlightOutline"
  Tags { "LIGHTMODE" = "RPGOutline" "QUEUE" = "Geometry" "RenderType" = "Opaque" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ZWrite Off
  Cull Front
  Stencil {
   ReadMask 30
   Comp NotEqual
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 24723
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "HighlightOutline_OUT"
  Tags { "LIGHTMODE" = "RPGOutline2" "QUEUE" = "Geometry" "RenderType" = "Opaque" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  Cull Front
  Stencil {
   ReadMask 30
   Comp NotEqual
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 73593
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_NORMAL" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_OUTLINENORMALFROM_TANGENT" "_VAT_MODEL_PARTICLE" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}