//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "miHoYo/CRP_Terrain/CRP_Terrain_Base" {
Properties {
}
SubShader {
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 Pass {
  Name "TerrainBuildGBuffer"
  Tags { "DebugView" = "On" "EntityUseType" = "Terrain" "LIGHTMODE" = "BuildGBuffer" "QUEUE" = "Geometry" "RenderType" = "Opaque" }
  Stencil {
   Ref 224
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 821
Program "vp" {
SubProgram "d3d11 " {
Keywords { "EMISSION_TYPE_NONE" "MHY_SHADER_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DISABLE_MSAA_UV_CORRECTION" "EMISSION_TYPE_NONE" "MHY_SHADER_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "EMISSION_TYPE_NONE" "MHY_SHADER_MIDDLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DISABLE_MSAA_UV_CORRECTION" "EMISSION_TYPE_NONE" "MHY_SHADER_MIDDLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "EMISSION_TYPE_NONE" "MHY_SHADER_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DISABLE_MSAA_UV_CORRECTION" "EMISSION_TYPE_NONE" "MHY_SHADER_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "EMISSION_TYPE_NONE" "LINE_INTERPOLATION" "MHY_SHADER_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DISABLE_MSAA_UV_CORRECTION" "EMISSION_TYPE_NONE" "LINE_INTERPOLATION" "MHY_SHADER_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "EMISSION_TYPE_NONE" "LINE_INTERPOLATION" "MHY_SHADER_MIDDLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DISABLE_MSAA_UV_CORRECTION" "EMISSION_TYPE_NONE" "LINE_INTERPOLATION" "MHY_SHADER_MIDDLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "EMISSION_TYPE_NONE" "LINE_INTERPOLATION" "MHY_SHADER_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DISABLE_MSAA_UV_CORRECTION" "EMISSION_TYPE_NONE" "LINE_INTERPOLATION" "MHY_SHADER_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "EMISSION_TYPE_NONE" "MHY_SHADER_HIGH" "MSAA_INTERPOLATION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DISABLE_MSAA_UV_CORRECTION" "EMISSION_TYPE_NONE" "MHY_SHADER_HIGH" "MSAA_INTERPOLATION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "EMISSION_TYPE_NONE" "MHY_SHADER_MIDDLE" "MSAA_INTERPOLATION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DISABLE_MSAA_UV_CORRECTION" "EMISSION_TYPE_NONE" "MHY_SHADER_MIDDLE" "MSAA_INTERPOLATION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "EMISSION_TYPE_NONE" "MHY_SHADER_LOW" "MSAA_INTERPOLATION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DISABLE_MSAA_UV_CORRECTION" "EMISSION_TYPE_NONE" "MHY_SHADER_LOW" "MSAA_INTERPOLATION" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "EMISSION_TYPE_NONE" "MHY_SHADER_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DISABLE_MSAA_UV_CORRECTION" "EMISSION_TYPE_NONE" "MHY_SHADER_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "EMISSION_TYPE_NONE" "MHY_SHADER_MIDDLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DISABLE_MSAA_UV_CORRECTION" "EMISSION_TYPE_NONE" "MHY_SHADER_MIDDLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "EMISSION_TYPE_NONE" "MHY_SHADER_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DISABLE_MSAA_UV_CORRECTION" "EMISSION_TYPE_NONE" "MHY_SHADER_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "EMISSION_TYPE_NONE" "LINE_INTERPOLATION" "MHY_SHADER_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DISABLE_MSAA_UV_CORRECTION" "EMISSION_TYPE_NONE" "LINE_INTERPOLATION" "MHY_SHADER_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "EMISSION_TYPE_NONE" "LINE_INTERPOLATION" "MHY_SHADER_MIDDLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DISABLE_MSAA_UV_CORRECTION" "EMISSION_TYPE_NONE" "LINE_INTERPOLATION" "MHY_SHADER_MIDDLE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "EMISSION_TYPE_NONE" "LINE_INTERPOLATION" "MHY_SHADER_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DISABLE_MSAA_UV_CORRECTION" "EMISSION_TYPE_NONE" "LINE_INTERPOLATION" "MHY_SHADER_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "EMISSION_TYPE_NONE" "MHY_SHADER_HIGH" "MSAA_INTERPOLATION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DISABLE_MSAA_UV_CORRECTION" "EMISSION_TYPE_NONE" "MHY_SHADER_HIGH" "MSAA_INTERPOLATION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "EMISSION_TYPE_NONE" "MHY_SHADER_MIDDLE" "MSAA_INTERPOLATION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DISABLE_MSAA_UV_CORRECTION" "EMISSION_TYPE_NONE" "MHY_SHADER_MIDDLE" "MSAA_INTERPOLATION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "EMISSION_TYPE_NONE" "MHY_SHADER_LOW" "MSAA_INTERPOLATION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DISABLE_MSAA_UV_CORRECTION" "EMISSION_TYPE_NONE" "MHY_SHADER_LOW" "MSAA_INTERPOLATION" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}