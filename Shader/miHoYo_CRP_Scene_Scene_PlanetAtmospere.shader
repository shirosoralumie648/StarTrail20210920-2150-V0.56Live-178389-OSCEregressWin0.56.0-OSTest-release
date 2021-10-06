//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Scene/Scene_PlanetAtmospere" {
Properties {
_AtmosphereLUT ("Atmosphere LUT", 2D) = "black" { }
_TransmittanceLUT ("Tramsmittance LUT", 2D) = "white" { }
_AtmosphereScale ("Atmospere Scale", Float) = 1.1
_Sqrt_Res_Mu ("Sqrt Res Mu", Float) = 8
_Res_Mus ("Res Mus", Float) = 32
_Res_Nu ("Res Nu", Float) = 32
_BetaR ("Beta R", Vector) = (0,0,0,1)
_MieG ("Mie G", Float) = 0.8
}
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Name "RefractionPass"
  Tags { "LIGHTMODE" = "CustomRPTransparent" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend One SrcAlpha, One SrcAlpha
  ZWrite Off
  GpuProgramID 41974
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOD_DYNAMIC_SKIP_DETAIL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOD_DYNAMIC_SKIP_DETAIL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_LOD_DYNAMIC_SKIP_DETAIL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_LOD_DYNAMIC_SKIP_DETAIL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOD_DYNAMIC_SKIP_DETAIL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOD_DYNAMIC_SKIP_DETAIL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_LOD_DYNAMIC_SKIP_DETAIL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_LOD_DYNAMIC_SKIP_DETAIL" "_USINGDITHERALPAH" }
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
SubProgram "d3d11 " {
Local Keywords { "_LOD_DYNAMIC_SKIP_DETAIL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_LOD_DYNAMIC_SKIP_DETAIL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_LOD_DYNAMIC_SKIP_DETAIL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_LOD_DYNAMIC_SKIP_DETAIL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOD_DYNAMIC_SKIP_DETAIL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "_LOD_DYNAMIC_SKIP_DETAIL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_LOD_DYNAMIC_SKIP_DETAIL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "_LOD_DYNAMIC_SKIP_DETAIL" "_USINGDITHERALPAH" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}