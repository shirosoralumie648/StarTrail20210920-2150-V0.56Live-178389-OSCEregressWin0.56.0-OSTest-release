//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Scene/Skybox/Atmosphere Layer" {
Properties {
_StarsTex ("Stars (Alpha)", 2D) = "white" { }
_StarsColorPalette ("Stars Color Palette", 2D) = "white" { }
_NoiseTex ("Noise Tex (Alpha)", 2D) = "white" { }
}
SubShader {
 Tags { "QUEUE" = "Background" "RenderType" = "Transparent" }
 Pass {
  Name "SkyAtmosphere"
  Tags { "LIGHTMODE" = "CustomForwardOpaque" "QUEUE" = "Background" "RenderType" = "Transparent" }
  ColorMask RGB 0
  ColorMask 0 1
  ColorMask 0 2
  ZClip Off
  ZWrite Off
  GpuProgramID 22810
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ENABLE_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ENABLE_FOG" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ENABLE_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ENABLE_FOG" "_ENABLE_HEIGHT_FOG" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}