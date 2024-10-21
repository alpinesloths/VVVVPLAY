/**************************
***** Compiler Parameters *****
***************************
@P EffectName: WireframeShader
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 416]
@C    World_id21 => Transformation.World
@C    WorldInverse_id22 => Transformation.WorldInverse
@C    WorldInverseTranspose_id23 => Transformation.WorldInverseTranspose
@C    WorldView_id24 => Transformation.WorldView
@C    WorldViewInverse_id25 => Transformation.WorldViewInverse
@C    WorldViewProjection_id26 => Transformation.WorldViewProjection
@C    WorldScale_id27 => Transformation.WorldScale
@C    EyeMS_id28 => Transformation.EyeMS
cbuffer PerView [Size: 368]
@C    View_id14 => Transformation.View
@C    ViewInverse_id15 => Transformation.ViewInverse
@C    Projection_id16 => Transformation.Projection
@C    ProjectionInverse_id17 => Transformation.ProjectionInverse
@C    ViewProjection_id18 => Transformation.ViewProjection
@C    ProjScreenRay_id19 => Transformation.ProjScreenRay
@C    Eye_id20 => Transformation.Eye
@C    Viewport_id101 => WireframeShader.Viewport
cbuffer Globals [Size: 112]
@C    Texture0TexelSize_id30 => Texturing.Texture0TexelSize
@C    Texture1TexelSize_id32 => Texturing.Texture1TexelSize
@C    Texture2TexelSize_id34 => Texturing.Texture2TexelSize
@C    Texture3TexelSize_id36 => Texturing.Texture3TexelSize
@C    Texture4TexelSize_id38 => Texturing.Texture4TexelSize
@C    Texture5TexelSize_id40 => Texturing.Texture5TexelSize
@C    Texture6TexelSize_id42 => Texturing.Texture6TexelSize
@C    Texture7TexelSize_id44 => Texturing.Texture7TexelSize
@C    Texture8TexelSize_id46 => Texturing.Texture8TexelSize
@C    Texture9TexelSize_id48 => Texturing.Texture9TexelSize
@C    LineWidth_id99 => WireframeShader.LineWidth
@C    LineColor_id100 => WireframeShader.LineColor
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerDraw => PerDraw [Stage: Geometry, Slot: (0-0)]
@R    PerView => PerView [Stage: Geometry, Slot: (1-1)]
@R    Globals => Globals [Stage: Geometry, Slot: (2-2)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    WireframeShader => 0331f79ea9c90f7b57286beecdb414aa
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    PositionStream4 => 992b49e1b4dd13d8ef84a05830d70229
***************************
*****     Stages      *****
***************************
@G    Vertex => 112b2b0f5dfe2f858aa12bf21e7ccb0b
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id21;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id22;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id23;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id24;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id25;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id26; // Offset:  320 Size:    64
//   float3 WorldScale_id27;            // Offset:  384 Size:    12
//   float4 EyeMS_id28;                 // Offset:  400 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// NORMAL                   0   xyz         1     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// POSITION                 0   xyzw        1     NONE   float   xyzw
// NORMAL                   0   xyz         2     NONE   float   xyz 
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[25], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_output_siv o0.xyzw, position
dcl_output o1.xyzw
dcl_output o2.xyz
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.Position_id87.x; v0.y <- __input__.Position_id87.y; v0.z <- __input__.Position_id87.z; v0.w <- __input__.Position_id87.w; 
//   v1.x <- __input__.Normal_id92.x; v1.y <- __input__.Normal_id92.y; v1.z <- __input__.Normal_id92.z; 
//   o2.x <- <VSMain return value>.Normal_id92.x; o2.y <- <VSMain return value>.Normal_id92.y; o2.z <- <VSMain return value>.Normal_id92.z; 
//   o1.x <- <VSMain return value>.Position_id87.x; o1.y <- <VSMain return value>.Position_id87.y; o1.z <- <VSMain return value>.Position_id87.z; o1.w <- <VSMain return value>.Position_id87.w; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 212 "C:\Users\ravaz\Documents\Trabajo\Alpine Sloths\VVVV PLAY\Games\VL.Breakout\log\shader_WireframeShader_335ecf8a363984f3ceefd977db0fd3ae.hlsl"
add r0.xyz, cb0[24].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mul r0.xyz, r0.xyzx, v1.xyzx  // r0.x <- scaling.x; r0.y <- scaling.y; r0.z <- scaling.z

#line 213
mov r0.w, l(0)
add r0.xyzw, r0.xyzw, v0.xyzw
dp4 o0.x, r0.xyzw, cb0[20].xyzw
dp4 o0.y, r0.xyzw, cb0[21].xyzw
dp4 o0.z, r0.xyzw, cb0[22].xyzw
dp4 o0.w, r0.xyzw, cb0[23].xyzw

#line 393
mov o1.xyzw, v0.xyzw
mov o2.xyz, v1.xyzx
ret 
// Approximately 11 instruction slots used
@G    Geometry => f8985f2f8a86e525702dacfeb7c3228c
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id21;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id22;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id23;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id24;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id25;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id26; // Offset:  320 Size:    64
//   float3 WorldScale_id27;            // Offset:  384 Size:    12
//   float4 EyeMS_id28;                 // Offset:  400 Size:    16 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id14;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id15;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id16;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id17;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id18;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id19;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id20;                   // Offset:  336 Size:    16 [unused]
//   float4 Viewport_id101;             // Offset:  352 Size:    16
//
// }
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id30;     // Offset:    0 Size:     8 [unused]
//   float2 Texture1TexelSize_id32;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id34;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id36;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id38;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id40;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id42;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id44;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id46;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id48;     // Offset:   72 Size:     8 [unused]
//   float LineWidth_id99;              // Offset:   80 Size:     4
//   float4 LineColor_id100;            // Offset:   96 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
// PerView                           cbuffer      NA          NA            cb1      1 
// Globals                           cbuffer      NA          NA            cb2      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// POSITION                 0   xyzw        1     NONE   float   xyzw
// NORMAL                   0   xyz         2     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// EDGEA_ID90_SEM           0   xyzw        0     NONE   float   xyzw
// EDGEB_ID91_SEM           0   xyzw        1     NONE   float   xyzw
// CASE_ID93_SEM            0   x           2     NONE    uint   x   
// POSITION                 0   xyzw        3     NONE   float   xyzw
// SV_Position              0   xyzw        4      POS   float   xyzw
//
gs_5_0
dcl_globalFlags refactoringAllowed
dcl_immediateConstantBuffer { { 0, 1, 2, 2},
                              { 0, 1, 2, 2},
                              { 0, 2, 1, 1},
                              { 0, 0, 1, 2},
                              { 1, 2, 0, 0},
                              { 1, 1, 0, 2},
                              { 2, 2, 0, 1} }
dcl_constantbuffer CB0[25], immediateIndexed
dcl_constantbuffer CB1[23], immediateIndexed
dcl_constantbuffer CB2[6], immediateIndexed
dcl_input_siv v[3][0].xyzw, position
dcl_input v[3][1].xyzw
dcl_input v[3][2].xyz
dcl_temps 6
dcl_indexableTemp x0[3], 4
dcl_inputprimitive triangle 
dcl_stream m0
dcl_outputtopology trianglestrip 
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.x
dcl_output o3.xyzw
dcl_output_siv o4.xyzw, position
dcl_maxout 3
//
// Initial variable locations:
//   m0 <- triangleStream; 
//   v[0][0].x <- input[0].ShadingPosition_id0.x; v[0][0].y <- input[0].ShadingPosition_id0.y; v[0][0].z <- input[0].ShadingPosition_id0.z; v[0][0].w <- input[0].ShadingPosition_id0.w; 
//   v[0][1].x <- input[0].Position_id87.x; v[0][1].y <- input[0].Position_id87.y; v[0][1].z <- input[0].Position_id87.z; v[0][1].w <- input[0].Position_id87.w; 
//   v[0][2].x <- input[0].Normal_id92.x; v[0][2].y <- input[0].Normal_id92.y; v[0][2].z <- input[0].Normal_id92.z; 
//   v[1][0].x <- input[1].ShadingPosition_id0.x; v[1][0].y <- input[1].ShadingPosition_id0.y; v[1][0].z <- input[1].ShadingPosition_id0.z; v[1][0].w <- input[1].ShadingPosition_id0.w; 
//   v[1][1].x <- input[1].Position_id87.x; v[1][1].y <- input[1].Position_id87.y; v[1][1].z <- input[1].Position_id87.z; v[1][1].w <- input[1].Position_id87.w; 
//   v[1][2].x <- input[1].Normal_id92.x; v[1][2].y <- input[1].Normal_id92.y; v[1][2].z <- input[1].Normal_id92.z; 
//   v[2][0].x <- input[2].ShadingPosition_id0.x; v[2][0].y <- input[2].ShadingPosition_id0.y; v[2][0].z <- input[2].ShadingPosition_id0.z; v[2][0].w <- input[2].ShadingPosition_id0.w; 
//   v[2][1].x <- input[2].Position_id87.x; v[2][1].y <- input[2].Position_id87.y; v[2][1].z <- input[2].Position_id87.z; v[2][1].w <- input[2].Position_id87.w; 
//   v[2][2].x <- input[2].Normal_id92.x; v[2][2].y <- input[2].Normal_id92.y; v[2][2].z <- input[2].Normal_id92.z; 
//   x0 <- points
//
#line 212 "C:\Users\ravaz\Documents\Trabajo\Alpine Sloths\VVVV PLAY\Games\VL.Breakout\log\shader_WireframeShader_335ecf8a363984f3ceefd977db0fd3ae.hlsl"
add r0.xyz, cb0[24].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mul r1.xyz, r0.xyzx, v[0][2].xyzx  // r1.x <- scaling.x; r1.y <- scaling.y; r1.z <- scaling.z

#line 213
mov r1.w, l(0)
add r1.xyzw, r1.xyzw, v[0][1].xyzw
dp4 r0.w, r1.xyzw, cb0[22].xyzw  // r0.w <- <projToWorld_id2 return value>.z

#line 212
mul r2.xyz, r0.xyzx, v[1][2].xyzx  // r2.x <- scaling.x; r2.y <- scaling.y; r2.z <- scaling.z; r2.x <- scaling.x; r2.y <- scaling.y; r2.z <- scaling.z

#line 213
mov r2.w, l(0)
add r2.xyzw, r2.xyzw, v[1][1].xyzw
dp4 r3.x, r2.xyzw, cb0[22].xyzw  // r3.x <- <projToWorld_id2 return value>.z; r3.x <- <projToWorld_id2 return value>.z

#line 212
mul r4.xyz, r0.xyzx, v[2][2].xyzx  // r4.x <- scaling.x; r4.y <- scaling.y; r4.z <- scaling.z; r4.x <- scaling.x; r4.y <- scaling.y; r4.z <- scaling.z; r4.x <- scaling.x; r4.y <- scaling.y; r4.z <- scaling.z

#line 213
mov r4.w, l(0)
add r4.xyzw, r4.xyzw, v[2][1].xyzw
dp4 r0.x, r4.xyzw, cb0[22].xyzw  // r0.x <- <projToWorld_id2 return value>.z; r0.x <- <projToWorld_id2 return value>.z; r0.x <- <projToWorld_id2 return value>.z

#line 240
lt r0.xy, r0.xwxx, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r0.z, r3.x, l(0.000000)
bfi r0.yz, l(0, 1, 1, 0), l(0, 2, 1, 0), r0.yyzy, l(0, 0, 0, 0)
iadd r0.y, r0.y, r0.z
bfi r0.x, l(1), l(0), r0.x, r0.y  // r0.x <- vertexCase

#line 241
ieq r0.y, r0.x, l(7)
if_nz r0.y

#line 243
  ret 

#line 244
endif 

#line 213
dp4 r0.y, r1.xyzw, cb0[20].xyzw  // r0.y <- <projToWorld_id2 return value>.x; r0.y <- <projToWorld_id2 return value>.x; r0.y <- <projToWorld_id2 return value>.x
dp4 r0.z, r1.xyzw, cb0[21].xyzw  // r0.z <- <projToWorld_id2 return value>.y; r0.z <- <projToWorld_id2 return value>.y; r0.z <- <projToWorld_id2 return value>.y
dp4 r0.w, r1.xyzw, cb0[23].xyzw  // r0.w <- <projToWorld_id2 return value>.w; r0.w <- <projToWorld_id2 return value>.w; r0.w <- <projToWorld_id2 return value>.w
dp4 r1.x, r2.xyzw, cb0[20].xyzw  // r1.x <- <projToWorld_id2 return value>.x; r1.x <- <projToWorld_id2 return value>.x
dp4 r1.y, r2.xyzw, cb0[21].xyzw  // r1.y <- <projToWorld_id2 return value>.y; r1.y <- <projToWorld_id2 return value>.y
dp4 r1.z, r2.xyzw, cb0[23].xyzw  // r1.z <- <projToWorld_id2 return value>.w; r1.z <- <projToWorld_id2 return value>.w
dp4 r1.w, r4.xyzw, cb0[20].xyzw  // r1.w <- <projToWorld_id2 return value>.x
dp4 r2.x, r4.xyzw, cb0[21].xyzw  // r2.x <- <projToWorld_id2 return value>.y
dp4 r2.y, r4.xyzw, cb0[23].xyzw  // r2.y <- <projToWorld_id2 return value>.w

#line 208
mul r2.zw, cb1[22].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
div r0.y, r0.y, r0.w
add r0.y, r0.y, l(1.000000)
mad r3.x, r2.z, r0.y, cb1[22].z  // r3.x <- <projToWindow_id3 return value>.x
div r0.y, r0.z, r0.w
add r0.y, -r0.y, l(1.000000)
mad r3.y, r2.w, r0.y, cb1[22].w  // r3.y <- <projToWindow_id3 return value>.y

#line 246
mov x0[0].xy, r3.xyxx

#line 208
div r0.y, r1.x, r1.z
add r0.y, r0.y, l(1.000000)
mad r4.x, r2.z, r0.y, cb1[22].z  // r4.x <- <projToWindow_id3 return value>.x
div r0.y, r1.y, r1.z
add r0.y, -r0.y, l(1.000000)
mad r4.y, r2.w, r0.y, cb1[22].w  // r4.y <- <projToWindow_id3 return value>.y

#line 247
mov x0[1].xy, r4.xyxx

#line 208
div r0.y, r1.w, r2.y
add r0.y, r0.y, l(1.000000)
mad r1.x, r2.z, r0.y, cb1[22].z  // r1.x <- <projToWindow_id3 return value>.x
div r0.y, r2.x, r2.y
add r0.y, -r0.y, l(1.000000)
mad r1.y, r2.w, r0.y, cb1[22].w  // r1.y <- <projToWindow_id3 return value>.y

#line 248
mov x0[2].xy, r1.xyxx

#line 251
if_z r0.x

#line 250
  add r0.y, cb2[5].x, l(100.000000)  // r0.y <- excludeEdgeLength

#line 254
  add r0.zw, -r3.xxxy, r4.xxxy

#line 255
  add r1.zw, -r4.xxxy, r1.xxxy

#line 256
  add r1.xy, -r1.xyxx, r3.xyxx

#line 258
  dp2 r2.x, r0.zwzz, r0.zwzz

#line 259
  dp2 r2.y, r1.zwzz, r1.zwzz

#line 260
  dp2 r2.z, r1.xyxx, r1.xyxx

#line 262
  add r3.xyz, -v[0][1].xyzx, v[1][1].xyzx

#line 263
  add r4.xyz, -v[1][1].xyzx, v[2][1].xyzx

#line 264
  add r5.xyz, -v[2][1].xyzx, v[0][1].xyzx

#line 266
  dp3 r2.w, r3.xyzx, r3.xyzx

#line 258
  sqrt r2.xyzw, r2.xyzw

#line 267
  dp3 r3.x, r4.xyzx, r4.xyzx

#line 268
  dp3 r3.y, r5.xyzx, r5.xyzx

#line 267
  sqrt r3.xy, r3.xyxx

#line 269
  max r3.z, r2.w, r3.x
  max r3.z, r3.y, r3.z  // r3.z <- maxLength

#line 270
  eq r2.w, r2.w, r3.z
  and r2.w, r2.w, l(0x3f800000)  // r2.w <- vertExclude.x

#line 272
  eq r3.xy, r3.zzzz, r3.xyxx

#line 271
  and r3.xy, r3.xyxx, l(0x3f800000, 0x3f800000, 0, 0)  // r3.x <- vertExclude.y; r3.y <- vertExclude.z

#line 274
  dp2 r3.z, -r1.xyxx, r0.zwzz
  mul r3.w, r2.x, r2.z
  div r3.z, r3.z, r3.w

#line 275
  dp2 r0.w, -r0.zwzz, r1.zwzz
  mul r3.w, r2.y, r2.x
  div r0.w, r0.w, r3.w

#line 276
  dp2 r1.y, -r1.zwzz, r1.xyxx
  mul r1.w, r2.z, r2.y
  div r1.y, r1.y, r1.w

#line 278
  mad r1.w, -r3.z, r3.z, l(1.000000)
  sqrt r1.w, r1.w
  mul r1.w, r1.w, r2.x  // r1.w <- streams.EdgeA_id90.z

#line 279
  mad r3.w, -r0.w, r0.w, l(1.000000)
  sqrt r3.w, r3.w
  mul r3.w, r2.y, r3.w  // r3.w <- streams.EdgeA_id90.x

#line 280
  mad r4.x, -r1.y, r1.y, l(1.000000)
  sqrt r4.x, r4.x

#line 282
  lt r0.z, l(0.000000), r0.z

#line 283
  lt r1.xz, l(0.000000, 0.000000, 0.000000, 0.000000), r1.xxzx

#line 286
  movc r4.yz, r0.zzzz, l(0,0,1.000000,0), l(0,1.000000,-1.000000,0)

#line 280
  mul r4.xyw, r2.zxzx, r4.xyxz  // r4.x <- streams.EdgeA_id90.y; r4.y <- streams.EdgeB_id91.x

#line 287
  movc r5.xy, r1.zzzz, l(0,1.000000,0,0), l(1.000000,-1.000000,0,0)

#line 340
  mul r5.xz, r2.yyyy, r5.xxyx  // r5.x <- streams.EdgeB_id91.y

#line 288
  movc r1.xz, r1.xxxx, l(0,0,1.000000,0), l(1.000000,0,-1.000000,0)

#line 294
  mul r0.z, r0.y, r2.w  // r0.z <- streams.EdgeA_id90.x

#line 296
  mul r2.w, r0.y, r3.y  // r2.w <- streams.EdgeA_id90.z

#line 298
  mul r0.w, r0.w, r5.y
  mad r0.w, r0.w, r2.x, r5.x  // r0.w <- streams.EdgeB_id91.y

#line 299
  mul r5.yw, r1.xxxz, r2.zzzz  // r5.y <- streams.EdgeB_id91.z
  add r1.x, r5.w, r5.y  // r1.x <- streams.EdgeB_id91.z

#line 308
  mov o0.x, r0.z
  mov o0.y, r4.x
  mov o0.z, r2.w
  mov o0.w, l(0)
  mov o1.x, r4.y
  mov o1.y, r0.w
  mov o1.z, r1.x
  mov o1.w, l(0)
  mov o2.x, l(0)
  mov o3.xyzw, v[0][1].xyzw
  mov o4.xyzw, v[0][0].xyzw
  emit_stream m0

#line 316
  mul r0.y, r0.y, r3.x  // r0.y <- streams.EdgeA_id90.y

#line 318
  add r0.w, r4.w, r4.y  // r0.w <- streams.EdgeB_id91.x

#line 320
  mul r1.x, r1.z, r5.y
  mul r1.x, r1.y, r1.x
  mul r1.x, r2.y, r1.x  // r1.x <- streams.EdgeB_id91.z

#line 329
  mov o0.x, r0.z
  mov o0.y, r0.y
  mov o0.z, r1.w
  mov o0.w, l(0)
  mov o1.x, r0.w
  mov o1.y, r5.x
  mov o1.z, r1.x
  mov o1.w, l(0)
  mov o2.x, l(0)
  mov o3.xyzw, v[1][1].xyzw
  mov o4.xyzw, v[1][0].xyzw
  emit_stream m0

#line 339
  mul r0.z, r3.z, r4.z
  mad r0.z, r0.z, r2.z, r4.y  // r0.z <- streams.EdgeB_id91.x

#line 340
  add r0.w, r5.z, r5.x  // r0.w <- streams.EdgeB_id91.y

#line 350
  mov o0.x, r3.w
  mov o0.y, r0.y
  mov o0.z, r2.w
  mov o0.w, l(0)
  mov o1.x, r0.z
  mov o1.y, r0.w
  mov o1.z, r5.y
  mov o1.w, l(0)
  mov o2.x, l(0)
  mov o3.xyzw, v[2][1].xyzw
  mov o4.xyzw, v[2][0].xyzw
  emit_stream m0

#line 352
  cut_stream m0

#line 353
else 

#line 366
  mov r0.yw, icb[r0.x + 0].xxxy

#line 365
  mov r0.yz, x0[r0.y + 0].xxyx  // r0.y <- streams.EdgeA_id90.x; r0.z <- streams.EdgeA_id90.y

#line 366
  mov r1.xy, x0[r0.w + 0].xyxx  // r1.x <- streams.EdgeB_id91.x; r1.y <- streams.EdgeB_id91.y

#line 367
  mov r0.w, icb[r0.x + 0].z
  mov r1.zw, x0[r0.w + 0].xxxy
  add r1.zw, r0.yyyz, -r1.zzzw
  dp2 r0.w, r1.zwzz, r1.zwzz
  rsq r0.w, r0.w
  mul r1.zw, r0.wwww, r1.zzzw  // r1.z <- streams.EdgeA_id90.z; r1.w <- streams.EdgeA_id90.w

#line 368
  mov r0.w, icb[r0.x + 0].w
  mov r2.xy, x0[r0.w + 0].xyxx
  add r2.xy, r1.xyxx, -r2.xyxx
  dp2 r0.w, r2.xyxx, r2.xyxx
  rsq r0.w, r0.w
  mul r2.xy, r0.wwww, r2.xyxx  // r2.x <- streams.EdgeB_id91.z; r2.y <- streams.EdgeB_id91.w

#line 357
  mov r0.w, l(0)  // r0.w <- i
  loop 
    ige r2.z, r0.w, l(3)
    breakc_nz r2.z

#line 377
    mov o0.xy, r0.yzyy
    mov o0.zw, r1.zzzw
    mov o1.xy, r1.xyxx
    mov o1.zw, r2.xxxy
    mov o2.x, r0.x
    mov o3.xyzw, v[r0.w + 0][1].xyzw
    mov o4.xyzw, v[r0.w + 0][0].xyzw
    emit_stream m0

#line 379
    iadd r0.w, r0.w, l(1)
  endloop 

#line 380
  cut_stream m0

#line 381
endif 

#line 382
ret 
// Approximately 183 instruction slots used
@G    Pixel => 95019a4509a457cc6b04449a0f4d33cc
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id30;     // Offset:    0 Size:     8 [unused]
//   float2 Texture1TexelSize_id32;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id34;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id36;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id38;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id40;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id42;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id44;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id46;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id48;     // Offset:   72 Size:     8 [unused]
//   float LineWidth_id99;              // Offset:   80 Size:     4
//   float4 LineColor_id100;            // Offset:   96 Size:    16
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// Globals                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// EDGEA_ID90_SEM           0   xyzw        0     NONE   float   xyzw
// EDGEB_ID91_SEM           0   xyzw        1     NONE   float   xyzw
// CASE_ID93_SEM            0   x           2     NONE    uint   x   
// POSITION                 0   xyzw        3     NONE   float   xy  
// SV_Position              0   xyzw        4      POS   float       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[7], immediateIndexed
dcl_input_ps linear noperspective v0.xyzw
dcl_input_ps linear noperspective v1.xyzw
dcl_input_ps constant v2.x
dcl_input_ps linear v3.xy
dcl_output o0.xyzw
dcl_temps 3
//
// Initial variable locations:
//   v0.x <- __input__.EdgeA_id90.x; v0.y <- __input__.EdgeA_id90.y; v0.z <- __input__.EdgeA_id90.z; v0.w <- __input__.EdgeA_id90.w; 
//   v1.x <- __input__.EdgeB_id91.x; v1.y <- __input__.EdgeB_id91.y; v1.z <- __input__.EdgeB_id91.z; v1.w <- __input__.EdgeB_id91.w; 
//   v2.x <- __input__.Case_id93; 
//   v3.x <- __input__.Position_id87.x; v3.y <- __input__.Position_id87.y; v3.z <- __input__.Position_id87.z; v3.w <- __input__.Position_id87.w; 
//   v4.x <- __input__.ShadingPosition_id0.x; v4.y <- __input__.ShadingPosition_id0.y; v4.z <- __input__.ShadingPosition_id0.z; v4.w <- __input__.ShadingPosition_id0.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 185 "C:\Users\ravaz\Documents\Trabajo\Alpine Sloths\VVVV PLAY\Games\VL.Breakout\log\shader_WireframeShader_335ecf8a363984f3ceefd977db0fd3ae.hlsl"
min r0.x, v0.y, v0.x
min r0.x, r0.x, v0.z  // r0.x <- dist

#line 189
add r0.yz, -v0.xxyx, v3.xxyx  // r0.y <- af.x; r0.z <- af.y

#line 190
dp2 r0.w, r0.yzyy, r0.yzyy  // r0.w <- sqaf

#line 191
dp2 r1.x, r0.yzyy, v0.zwzz  // r1.x <- afCosA

#line 192
mad r1.x, -r1.x, r1.x, r0.w

#line 193
add r1.yz, -v1.xxyx, v3.xxyx  // r1.y <- bf.x; r1.z <- bf.y

#line 194
dp2 r1.w, r1.yzyy, r1.yzyy  // r1.w <- sqbf

#line 195
dp2 r1.y, r1.yzyy, v1.zwzz  // r1.y <- bfCosB

#line 196
mad r1.y, -r1.y, r1.y, r1.w
min r1.x, |r1.y|, |r1.x|  // r1.x <- dist

#line 197
ieq r1.yzw, v2.xxxx, l(0, 1, 2, 4)
or r1.y, r1.z, r1.y
or r1.y, r1.w, r1.y

#line 199
add r1.zw, -v0.xxxy, v1.xxxy
dp2 r2.x, r1.zwzz, r1.zwzz
rsq r2.x, r2.x
mul r1.zw, r1.zzzw, r2.xxxx
dp2 r0.y, r0.yzyy, r1.zwzz  // r0.y <- afCosA0

#line 200
mad r0.y, -r0.y, r0.y, r0.w
min r0.y, |r0.y|, r1.x  // r0.y <- dist

#line 201
movc r0.y, r1.y, r0.y, r1.x

#line 202
sqrt r0.y, r0.y

#line 203
movc r0.x, v2.x, r0.y, r0.x  // r0.x <- dist

#line 223
mul r0.y, cb0[5].x, l(0.500000)
lt r0.x, r0.y, r0.x

#line 225
discard_nz r0.x

#line 230
mov o0.xyzw, cb0[6].xyzw
ret 
// Approximately 29 instruction slots used
***************************
*************************/
static const uint infoA_id94[] = { 0, 0, 0, 0, 1, 1, 2};
static const uint infoB_id95[] = { 1, 1, 2, 0, 2, 1, 2};
static const uint infoAd_id96[] = { 2, 2, 1, 1, 0, 0, 0};
static const uint infoBd_id97[] = { 2, 2, 1, 2, 0, 2, 1};
struct PS_STREAMS 
{
    uint Case_id93;
    float4 Position_id87;
    noperspective float4 EdgeA_id90;
    noperspective float4 EdgeB_id91;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    noperspective float4 EdgeA_id90 : EDGEA_ID90_SEM;
    noperspective float4 EdgeB_id91 : EDGEB_ID91_SEM;
    uint Case_id93 : CASE_ID93_SEM;
    float4 Position_id87 : POSITION;
    float4 ShadingPosition_id0 : SV_Position;
};
struct GS_STREAMS 
{
    float4 Position_id87;
    float3 Normal_id92;
    noperspective float4 EdgeA_id90;
    noperspective float4 EdgeB_id91;
    uint Case_id93;
    float4 ShadingPosition_id0;
};
struct GS_OUTPUT 
{
    noperspective float4 EdgeA_id90 : EDGEA_ID90_SEM;
    noperspective float4 EdgeB_id91 : EDGEB_ID91_SEM;
    uint Case_id93 : CASE_ID93_SEM;
    float4 Position_id87 : POSITION;
    float4 ShadingPosition_id0 : SV_Position;
};
struct GS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float4 Position_id87 : POSITION;
    float3 Normal_id92 : NORMAL;
};
struct VS_STREAMS 
{
    float4 Position_id87;
    float3 Normal_id92;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float4 Position_id87 : POSITION;
    float3 Normal_id92 : NORMAL;
};
struct VS_INPUT 
{
    float4 Position_id87 : POSITION;
    float3 Normal_id92 : NORMAL;
};
cbuffer PerDraw 
{
    float4x4 World_id21;
    float4x4 WorldInverse_id22;
    float4x4 WorldInverseTranspose_id23;
    float4x4 WorldView_id24;
    float4x4 WorldViewInverse_id25;
    float4x4 WorldViewProjection_id26;
    float3 WorldScale_id27;
    float4 EyeMS_id28;
};
cbuffer PerView 
{
    float4x4 View_id14;
    float4x4 ViewInverse_id15;
    float4x4 Projection_id16;
    float4x4 ProjectionInverse_id17;
    float4x4 ViewProjection_id18;
    float2 ProjScreenRay_id19;
    float4 Eye_id20;
    float4 Viewport_id101;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id30;
    float2 Texture1TexelSize_id32;
    float2 Texture2TexelSize_id34;
    float2 Texture3TexelSize_id36;
    float2 Texture4TexelSize_id38;
    float2 Texture5TexelSize_id40;
    float2 Texture6TexelSize_id42;
    float2 Texture7TexelSize_id44;
    float2 Texture8TexelSize_id46;
    float2 Texture9TexelSize_id48;
    float LineWidth_id99;
    float4 LineColor_id100;
};
Texture2D Texture0_id29;
Texture2D Texture1_id31;
Texture2D Texture2_id33;
Texture2D Texture3_id35;
Texture2D Texture4_id37;
Texture2D Texture5_id39;
Texture2D Texture6_id41;
Texture2D Texture7_id43;
Texture2D Texture8_id45;
Texture2D Texture9_id47;
TextureCube TextureCube0_id49;
TextureCube TextureCube1_id50;
TextureCube TextureCube2_id51;
TextureCube TextureCube3_id52;
Texture3D Texture3D0_id53;
Texture3D Texture3D1_id54;
Texture3D Texture3D2_id55;
Texture3D Texture3D3_id56;
SamplerState Sampler_id57;
SamplerState PointSampler_id58 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id59 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id60 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id61 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id62 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id63 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id64 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id65 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id66 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id67;
SamplerState Sampler1_id68;
SamplerState Sampler2_id69;
SamplerState Sampler3_id70;
SamplerState Sampler4_id71;
SamplerState Sampler5_id72;
SamplerState Sampler6_id73;
SamplerState Sampler7_id74;
SamplerState Sampler8_id75;
SamplerState Sampler9_id76;
float evalMinDistanceToEdges_id4(inout PS_STREAMS streams)
{
    float dist;
    if (streams.Case_id93 == 0)
    {
        dist = min(min(streams.EdgeA_id90.x, streams.EdgeA_id90.y), streams.EdgeA_id90.z);
    }
    else
    {
        float2 af = streams.Position_id87.xy - streams.EdgeA_id90.xy;
        float sqaf = dot(af, af);
        float afCosA = dot(af, streams.EdgeA_id90.zw);
        dist = abs(sqaf - afCosA * afCosA);
        float2 bf = streams.Position_id87.xy - streams.EdgeB_id91.xy;
        float sqbf = dot(bf, bf);
        float bfCosB = dot(bf, streams.EdgeB_id91.zw);
        dist = min(dist, abs(sqbf - bfCosB * bfCosB));
        if (streams.Case_id93 == 1 || streams.Case_id93 == 2 || streams.Case_id93 == 4)
        {
            float afCosA0 = dot(af, normalize(streams.EdgeB_id91.xy - streams.EdgeA_id90.xy));
            dist = min(dist, abs(sqaf - afCosA0 * afCosA0));
        }
        dist = sqrt(dist);
    }
    return dist;
}
float2 projToWindow_id3(in float4 pos)
{
    return float2(Viewport_id101.x * 0.5 * (1 + (pos.x / pos.w)) + Viewport_id101.z, Viewport_id101.y * 0.5 * (1 - (pos.y / pos.w)) + Viewport_id101.w);
}
float4 projToWorld_id2(in float4 pos, in float3 normal)
{
    float3 scaling = normal * (WorldScale_id27 - 1);
    return mul(pos + float4(scaling.x, scaling.y, scaling.z, 0), WorldViewProjection_id26);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.EdgeA_id90 = __input__.EdgeA_id90;
    streams.EdgeB_id91 = __input__.EdgeB_id91;
    streams.Case_id93 = __input__.Case_id93;
    streams.Position_id87 = __input__.Position_id87;
    float dist = evalMinDistanceToEdges_id4(streams);
    if (dist > 0.5 * LineWidth_id99)
    {
        discard;
    }
    streams.ColorTarget_id2 = LineColor_id100;
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
[maxvertexcount(3)]
void GSMain(triangle GS_INPUT input[3], inout TriangleStream<GS_OUTPUT> triangleStream)
{
    GS_STREAMS streams = (GS_STREAMS)0;
    float4 positionWS[3];
    positionWS[0] = projToWorld_id2(input[0].Position_id87, input[0].Normal_id92);
    positionWS[1] = projToWorld_id2(input[1].Position_id87, input[1].Normal_id92);
    positionWS[2] = projToWorld_id2(input[2].Position_id87, input[2].Normal_id92);
    uint vertexCase = (positionWS[0].z < 0 ? 1 : 0) * 4 + (positionWS[1].z < 0 ? 1 : 0) * 2 + (positionWS[2].z < 0 ? 1 : 0);
    if (vertexCase == 7)
    {
        return;
    }
    float2 points[3];
    points[0] = projToWindow_id3(positionWS[0]);
    points[1] = projToWindow_id3(positionWS[1]);
    points[2] = projToWindow_id3(positionWS[2]);
    float3 vertExclude = float3(0, 0, 0);
    float excludeEdgeLength = LineWidth_id99 + 100;
    if (vertexCase == 0)
    {
        float2 edges[3];
        edges[0] = points[1] - points[0];
        edges[1] = points[2] - points[1];
        edges[2] = points[0] - points[2];
        float lengths[3];
        lengths[0] = length(edges[0]);
        lengths[1] = length(edges[1]);
        lengths[2] = length(edges[2]);
        float3 edgesWS[3];
        edgesWS[0] = input[1].Position_id87.xyz - input[0].Position_id87.xyz;
        edgesWS[1] = input[2].Position_id87.xyz - input[1].Position_id87.xyz;
        edgesWS[2] = input[0].Position_id87.xyz - input[2].Position_id87.xyz;
        float lengthsWS[3];
        lengthsWS[0] = length(edgesWS[0]);
        lengthsWS[1] = length(edgesWS[1]);
        lengthsWS[2] = length(edgesWS[2]);
        float maxLength = max(max(lengthsWS[0], lengthsWS[1]), lengthsWS[2]);
        vertExclude.x = lengthsWS[0] == maxLength ? 1 : 0;
        vertExclude.y = lengthsWS[1] == maxLength ? 1 : 0;
        vertExclude.z = lengthsWS[2] == maxLength ? 1 : 0;
        float cosAngles[3];
        cosAngles[0] = dot(-edges[2], edges[0]) / (lengths[2] * lengths[0]);
        cosAngles[1] = dot(-edges[0], edges[1]) / (lengths[0] * lengths[1]);
        cosAngles[2] = dot(-edges[1], edges[2]) / (lengths[1] * lengths[2]);
        float heights[3];
        heights[1] = lengths[0] * sqrt(1 - cosAngles[0] * cosAngles[0]);
        heights[2] = lengths[1] * sqrt(1 - cosAngles[1] * cosAngles[1]);
        heights[0] = lengths[2] * sqrt(1 - cosAngles[2] * cosAngles[2]);
        float edgeSigns[3];
        edgeSigns[0] = (edges[0] > 0 ? 1 : -1);
        edgeSigns[1] = (edges[1] > 0 ? 1 : -1);
        edgeSigns[2] = (edges[2] > 0 ? 1 : -1);
        float edgeOffsets[3];
        edgeOffsets[0] = lengths[0] * (0.5 - 0.5 * edgeSigns[0]);
        edgeOffsets[1] = lengths[1] * (0.5 - 0.5 * edgeSigns[1]);
        edgeOffsets[2] = lengths[2] * (0.5 - 0.5 * edgeSigns[2]);
        streams.ShadingPosition_id0 = input[0].ShadingPosition_id0;
        streams.Position_id87 = input[0].Position_id87;
        streams.Normal_id92 = input[0].Normal_id92;
        streams.Case_id93 = vertexCase;
        streams.Position_id87 = input[0].Position_id87;
        streams.EdgeA_id90[0] = vertExclude.x * excludeEdgeLength;
        streams.EdgeA_id90[1] = heights[0];
        streams.EdgeA_id90[2] = vertExclude.z * excludeEdgeLength;
        streams.EdgeB_id91[0] = edgeOffsets[0];
        streams.EdgeB_id91[1] = edgeOffsets[1] + edgeSigns[1] * cosAngles[1] * lengths[0];
        streams.EdgeB_id91[2] = edgeOffsets[2] + edgeSigns[2] * lengths[2];

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.EdgeA_id90 = streams.EdgeA_id90;
            output.EdgeB_id91 = streams.EdgeB_id91;
            output.Case_id93 = streams.Case_id93;
            output.Position_id87 = streams.Position_id87;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            triangleStream.Append(output);
        }
        streams.ShadingPosition_id0 = input[1].ShadingPosition_id0;
        streams.Position_id87 = input[1].Position_id87;
        streams.Normal_id92 = input[1].Normal_id92;
        streams.Case_id93 = vertexCase;
        streams.Position_id87 = input[1].Position_id87;
        streams.EdgeA_id90[0] = vertExclude.x * excludeEdgeLength;
        streams.EdgeA_id90[1] = vertExclude.y * excludeEdgeLength;
        streams.EdgeA_id90[2] = heights[1];
        streams.EdgeB_id91[0] = edgeOffsets[0] + edgeSigns[0] * lengths[0];
        streams.EdgeB_id91[1] = edgeOffsets[1];
        streams.EdgeB_id91[2] = edgeOffsets[2] * edgeSigns[2] * cosAngles[2] * lengths[1];

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.EdgeA_id90 = streams.EdgeA_id90;
            output.EdgeB_id91 = streams.EdgeB_id91;
            output.Case_id93 = streams.Case_id93;
            output.Position_id87 = streams.Position_id87;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            triangleStream.Append(output);
        }
        streams.ShadingPosition_id0 = input[2].ShadingPosition_id0;
        streams.Position_id87 = input[2].Position_id87;
        streams.Normal_id92 = input[2].Normal_id92;
        streams.Case_id93 = vertexCase;
        streams.Position_id87 = input[2].Position_id87;
        streams.EdgeA_id90[0] = heights[2];
        streams.EdgeA_id90[1] = vertExclude.y * excludeEdgeLength;
        streams.EdgeA_id90[2] = vertExclude.z * excludeEdgeLength;
        streams.EdgeB_id91[0] = edgeOffsets[0] + edgeSigns[0] * cosAngles[0] * lengths[2];
        streams.EdgeB_id91[1] = edgeOffsets[1] + edgeSigns[1] * lengths[1];
        streams.EdgeB_id91[2] = edgeOffsets[2];

        {
            GS_OUTPUT output = (GS_OUTPUT)0;
            output.EdgeA_id90 = streams.EdgeA_id90;
            output.EdgeB_id91 = streams.EdgeB_id91;
            output.Case_id93 = streams.Case_id93;
            output.Position_id87 = streams.Position_id87;
            output.ShadingPosition_id0 = streams.ShadingPosition_id0;
            triangleStream.Append(output);
        }
        triangleStream.RestartStrip();
    }
    else
    {

        for (int i = 0; i < 3; i++)
        {
            streams.ShadingPosition_id0 = input[i].ShadingPosition_id0;
            streams.Position_id87 = input[i].Position_id87;
            streams.Normal_id92 = input[i].Normal_id92;
            streams.EdgeA_id90 = float4(0, 0, 0, 0);
            streams.EdgeB_id91 = float4(0, 0, 0, 0);
            streams.Case_id93 = vertexCase;
            streams.EdgeA_id90.xy = points[infoA_id94[vertexCase]];
            streams.EdgeB_id91.xy = points[infoB_id95[vertexCase]];
            streams.EdgeA_id90.zw = normalize(streams.EdgeA_id90.xy - points[infoAd_id96[vertexCase]]);
            streams.EdgeB_id91.zw = normalize(streams.EdgeB_id91.xy - points[infoBd_id97[vertexCase]]);

            {
                GS_OUTPUT output = (GS_OUTPUT)0;
                output.EdgeA_id90 = streams.EdgeA_id90;
                output.EdgeB_id91 = streams.EdgeB_id91;
                output.Case_id93 = streams.Case_id93;
                output.Position_id87 = streams.Position_id87;
                output.ShadingPosition_id0 = streams.ShadingPosition_id0;
                triangleStream.Append(output);
            }
        }
        triangleStream.RestartStrip();
    }
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id87 = __input__.Position_id87;
    streams.Normal_id92 = __input__.Normal_id92;
    streams.ShadingPosition_id0 = projToWorld_id2(streams.Position_id87, streams.Normal_id92);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.Position_id87 = streams.Position_id87;
    __output__.Normal_id92 = streams.Normal_id92;
    return __output__;
}
