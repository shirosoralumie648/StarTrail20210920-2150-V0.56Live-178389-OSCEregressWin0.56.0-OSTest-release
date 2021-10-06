//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Custom/CommonDebug" {
Properties {
_Color ("Color", Color) = (1,1,1,1)
}
SubShader {
 LOD 100
 Tags { "RenderType" = "Opaque" }
}
}