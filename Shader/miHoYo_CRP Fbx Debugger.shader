//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP Fbx Debugger" {
Properties {
_OutlineWidth ("Outline Width", Float) = 0.02
_OutlineColor ("Outline Color", Color) = (0,0,0,1)
}
SubShader {
 Tags { "QUEUE" = "Geometry-2" "RenderType" = "Opaque" }
 UsePass "Hidden/miHoYo/Character/Shared/OpaqueOutlineSimple"
}
}