//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Scene/Scene_ShadowCaster" {
Properties {
_Color ("Color", Color) = (1,1,1,1)
_Transparent ("Transparent", Range(0, 1)) = 1
}
SubShader {
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 UsePass "Hidden/miHoYo/Common/Shared/SHADOWCASTER"
}
}