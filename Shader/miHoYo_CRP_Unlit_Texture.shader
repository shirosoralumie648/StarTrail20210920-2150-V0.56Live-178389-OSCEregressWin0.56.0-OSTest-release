//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Unlit/Texture" {
Properties {
_Color ("Color", Color) = (1,1,1,1)
_MainTex ("Texture", 2D) = "white" { }
_EmissionScale ("EmissionScale", Float) = 1
[Enum(UnityEngine.Rendering.CompareFunction)] _ZTest ("Z Test OP", Float) = 4
[Enum(Off,0,On,1)] _ZWrite ("Z Write OP", Float) = 0
[Toggle(_DISABLE_ALPHA_BLEND)] _DisableAlpheBlend ("Disable Alpha Blend?", Float) = 0
}
SubShader {
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 Pass {
  Tags { "LIGHTMODE" = "CustomForwardOpaque" "QUEUE" = "Geometry" "RenderType" = "Opaque" }
  Blend 0 SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ColorMask RGB 0
  ColorMask 0 1
  ColorMask 0 2
  ZTest Off
  ZWrite Off
  Cull Off
  Stencil {
   Ref 64
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 39810
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
SubShader {
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
 UsePass "Hidden/miHoYo/Common/Shared/SHADOWCASTER"
}
}