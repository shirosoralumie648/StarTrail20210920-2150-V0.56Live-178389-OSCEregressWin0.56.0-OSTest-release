//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Character/Avatar_Unlit_Color" {
Properties {
[MHYHeaderBox(OPTIONS)] [Enum(UnityEngine.Rendering.CullMode)] _CullMode ("Cull Mode", Float) = 2
_PolygonOffsetFactor ("Polygon Offset Factor", Float) = 0
_PolygonOffsetUnits ("Polygon Offset Units", Float) = 0
[Space(10)] _Color ("Color", Color) = (1,1,1,1)
}
SubShader {
 Tags { "QUEUE" = "Geometry-2" "RenderType" = "Opaque" }
 Pass {
  Tags { "LIGHTMODE" = "CustomRPBase" "QUEUE" = "Geometry-2" "RenderType" = "Opaque" }
  Cull Off
  GpuProgramID 31335
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