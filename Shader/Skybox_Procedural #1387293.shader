//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Skybox/Procedural" {
Properties {
[KeywordEnum(None, Simple, High Quality)] _SunDisk ("Sun", Float) = 2
_SunSize ("Sun Size", Range(0, 1)) = 0.04
_SunSizeConvergence ("Sun Size Convergence", Range(1, 10)) = 5
_AtmosphereThickness ("Atmosphere Thickness", Range(0, 5)) = 1
_SkyTint ("Sky Tint", Color) = (0.5,0.5,0.5,1)
_GroundColor ("Ground", Color) = (0.369,0.349,0.341,1)
_Exposure ("Exposure", Range(0, 8)) = 1.3
}
SubShader {
 Tags { "PreviewType" = "Skybox" "QUEUE" = "Background" "RenderType" = "Background" }
 Pass {
  Tags { "PreviewType" = "Skybox" "QUEUE" = "Background" "RenderType" = "Background" }
  ZWrite Off
  Cull Off
  GpuProgramID 42598
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_SUNDISK_NONE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SUNDISK_SIMPLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SUNDISK_HIGH_QUALITY" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_SUNDISK_NONE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SUNDISK_SIMPLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SUNDISK_HIGH_QUALITY" }
"// shader disassembly not supported on DXBC"
}
}
}
}
CustomEditor "SkyboxProceduralShaderGUI"
}