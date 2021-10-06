//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Unlit/Clip" {
Properties {
_MainColor ("Main Color", Color) = (1,1,1,1)
_MainTex ("Texture", 2D) = "white" { }
_MainTexScale ("Texture Scale", Float) = 1
_ZOffsetX ("Offset", Float) = 0
_ZOffsetY ("Offset", Float) = 0
_CutOutValue ("Cut Out Value", Range(0, 1)) = 0
[Enum(UnityEngine.Rendering.CullMode)] _CullMode ("Cull Mode", Float) = 0
}
SubShader {
 Tags { "QUEUE" = "Geometry+35" "RenderType" = "Opaque" }
 Pass {
  Tags { "LIGHTMODE" = "CustomForwardOpaque" "QUEUE" = "Geometry+35" "RenderType" = "Opaque" }
  Cull Off
  GpuProgramID 34806
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