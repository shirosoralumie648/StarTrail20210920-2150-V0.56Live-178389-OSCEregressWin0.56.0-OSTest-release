//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "CustomRP/Unlit" {
Properties {
_BaseMap ("Texture", 2D) = "white" { }
_BaseColor ("Color", Color) = (1,1,1,1)
_Cutoff ("AlphaCutout", Range(0, 1)) = 0.5
_Surface ("__surface", Float) = 0
_Blend ("__blend", Float) = 0
_AlphaClip ("__clip", Float) = 0
_SrcBlend ("Src", Float) = 1
_DstBlend ("Dst", Float) = 0
_ZWrite ("ZWrite", Float) = 1
_Cull ("__cull", Float) = 2
_QueueOffset ("Queue offset", Float) = 0
_MainTex ("BaseMap", 2D) = "white" { }
_Color ("Base Color", Color) = (0.5,0.5,0.5,1)
_SampleGI ("SampleGI", Float) = 0
}
SubShader {
 LOD 100
 Tags { "IGNOREPROJECTOR" = "true" "RenderPipeline" = "LightweightPipeline" "RenderType" = "Opaque" }
 Pass {
  Name "Unlit"
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "RenderPipeline" = "LightweightPipeline" "RenderType" = "Opaque" }
  Blend Zero Zero, Zero Zero
  ZWrite Off
  Cull Off
  GpuProgramID 54372
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
 Pass {
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "DepthOnly" "RenderPipeline" = "LightweightPipeline" "RenderType" = "Opaque" }
  Blend Zero Zero, Zero Zero
  ColorMask 0 0
  Cull Off
  GpuProgramID 73824
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
}