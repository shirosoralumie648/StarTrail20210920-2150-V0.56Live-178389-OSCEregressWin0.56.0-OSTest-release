//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP Default Lit" {
Properties {
_Color ("Color", Color) = (1,1,1,1)
[Toggle(_RECEIVE_SHADOWS)] _ReceiveShadow ("ReceiveShadow", Float) = 1
_StencilRef ("Stencil Ref", Float) = 224
[MHYKeywordFilter(_PLANAR_REFLECTION On)] _ReflectionFresnel ("Reflection Fresnel", Vector) = (0,0,1,0)
}
SubShader {
 Tags { "QUEUE" = "Geometry+30" "RenderType" = "Opaque" }
 Pass {
  Tags { "LIGHTMODE" = "BuildGBuffer" "QUEUE" = "Geometry+30" "RenderType" = "Opaque" }
  Stencil {
   Ref 224
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 57101
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_PLANAR_REFLECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_PLANAR_REFLECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_PLANAR_REFLECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_PLANAR_REFLECTION" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_PLANAR_REFLECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_PLANAR_REFLECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_PLANAR_REFLECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_PLANAR_REFLECTION" }
"// shader disassembly not supported on DXBC"
}
}
}
}
SubShader {
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 UsePass "Hidden/miHoYo/Common/Shared/SHADOWCASTER"
 UsePass "Hidden/miHoYo/Common/Shared/DEPTHONLY"
}
}