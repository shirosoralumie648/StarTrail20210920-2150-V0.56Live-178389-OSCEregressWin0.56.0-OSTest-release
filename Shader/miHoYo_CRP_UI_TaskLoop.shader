//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_UI/TaskLoop" {
Properties {
[MHYHelpURL(TASKLOOP)] _MainTex ("Sprite Texture", 2D) = "white" { }
_EdgeWidth ("Edge Width", Float) = 1
_Size ("Size", Float) = 1
_Color ("Tint", Color) = (1,1,1,1)
[Enum(UnityEngine.Rendering.BlendMode)] _SrcAlphaBlend ("BlendSource", Float) = 5
[Enum(UnityEngine.Rendering.BlendMode)] _DstcAlphaBlend ("BlendDestination", Float) = 10
_StencilComp ("Stencil Comparison", Float) = 8
_Stencil ("Stencil ID", Float) = 0
_StencilOp ("Stencil Operation", Float) = 0
_StencilWriteMask ("Stencil Write Mask", Float) = 255
_StencilReadMask ("Stencil Read Mask", Float) = 255
_ColorMask ("Color Mask", Float) = 15
[Header(SmoothMask)] [Toggle(UNITY_UI_SMOOTHMASKTEXTURE)] _UseUISmoothMask ("Smooth Mask Type Texture", Float) = 0
[Toggle(UNITY_UI_SMOOTHMASKRECTANGLE)] _UseUISmoothMask ("Smooth Mask Type Rectangle", Float) = 0
[Toggle(UNITY_UI_SMOOTHMASKCIRCLE)] _UseUISmoothMask ("Smooth Mask Type Circle", Float) = 0
_SmoothMaskTexture ("Smooth Mask Texture", 2D) = "white" { }
_SmoothMaskSoftRanges ("Smooth Mask Soft Ranges [x:Horizontal y:Verticle z:Radial]", Vector) = (0,0,0,0)
_SmoothMaskFillParams ("Smooth Mask Fill Params [x:Type y:Amount z:Origin w:Clockwise]", Vector) = (1,0,0,0)
[Toggle(UNITY_UI_ALPHACLIP)] _UseUIAlphaClip ("Use Alpha Clip", Float) = 0
}
SubShader {
 Tags { "CanUseSpriteAtlas" = "true" "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Name "Default"
  Tags { "CanUseSpriteAtlas" = "true" "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend Zero Zero, Zero Zero
  ColorMask 0 0
  ZTest Off
  ZWrite Off
  Cull Off
  Stencil {
   ReadMask 0
   WriteMask 0
   Comp Disabled
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 7986
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_CLIP_RECT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_CLIP_RECT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_SMOOTHMASKTEXTURE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_SMOOTHMASKTEXTURE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKTEXTURE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKTEXTURE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_SMOOTHMASKTEXSLICED" "UNITY_UI_SMOOTHMASKTEXTURE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_SMOOTHMASKTEXSLICED" "UNITY_UI_SMOOTHMASKTEXTURE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKTEXSLICED" "UNITY_UI_SMOOTHMASKTEXTURE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKTEXSLICED" "UNITY_UI_SMOOTHMASKTEXTURE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_SMOOTHMASKRECTANGLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_SMOOTHMASKRECTANGLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKRECTANGLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKRECTANGLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_SMOOTHMASKRECTANGLE" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_SMOOTHMASKRECTANGLE" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKRECTANGLE" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKRECTANGLE" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_SMOOTHMASKCIRCLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_SMOOTHMASKCIRCLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKCIRCLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKCIRCLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_SMOOTHMASKCIRCLE" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_SMOOTHMASKCIRCLE" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKCIRCLE" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKCIRCLE" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_CLIP_RECT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_CLIP_RECT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_SMOOTHMASKTEXTURE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_SMOOTHMASKTEXTURE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKTEXTURE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKTEXTURE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_SMOOTHMASKTEXSLICED" "UNITY_UI_SMOOTHMASKTEXTURE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_SMOOTHMASKTEXSLICED" "UNITY_UI_SMOOTHMASKTEXTURE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKTEXSLICED" "UNITY_UI_SMOOTHMASKTEXTURE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKTEXSLICED" "UNITY_UI_SMOOTHMASKTEXTURE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_SMOOTHMASKRECTANGLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_SMOOTHMASKRECTANGLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKRECTANGLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKRECTANGLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_SMOOTHMASKRECTANGLE" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_SMOOTHMASKRECTANGLE" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKRECTANGLE" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKRECTANGLE" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_SMOOTHMASKCIRCLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_SMOOTHMASKCIRCLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKCIRCLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKCIRCLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_SMOOTHMASKCIRCLE" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_SMOOTHMASKCIRCLE" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKCIRCLE" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "UNITY_UI_ALPHACLIP" "UNITY_UI_CLIP_RECT" "UNITY_UI_SMOOTHMASKCIRCLE" "UNITY_UI_SMOOTHMASKTEXSLICED" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}