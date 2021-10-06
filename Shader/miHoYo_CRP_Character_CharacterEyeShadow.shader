//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Character/CharacterEyeShadow" {
Properties {
[MHYHelpBox(Info, Vertex Color B (outline width))] _Color ("Color", Color) = (1,1,1,1)
[Toggle(_USINGDITHERALPAH)] _UsingDitherAlpha ("UsingDitherAlpha", Float) = 0
_DitherAlpha ("Dither Alpha Value", Range(0, 1)) = 1
_StencilRef ("Stencil Ref", Float) = 16
}
SubShader {
 Tags { "QUEUE" = "Geometry+15" "RenderType" = "Opaque" }
 Pass {
  Name "ForwardOnly"
  Tags { "LIGHTMODE" = "CustomForwardOpaque" "QUEUE" = "Geometry+15" "RenderType" = "Opaque" }
  Blend 0 DstColor Zero, DstColor Zero
  ColorMask RGB 0
  ColorMask 0 1
  ColorMask 0 2
  ZWrite Off
  GpuProgramID 38561
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}