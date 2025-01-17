/**************************
***** Compiler Parameters *****
***************************
@P EffectName: MSAAResolverEffect
@P   - MSAAResolverParams.MSAASamples: 4
@P MSAAResolverParams.ResolveFilterDiameter: 2
@P MSAAResolverParams.ResolveFilterType: 6
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer Globals [Size: 112]
@C    Texture0TexelSize_id15 => Texturing.Texture0TexelSize
@C    Texture1TexelSize_id17 => Texturing.Texture1TexelSize
@C    Texture2TexelSize_id19 => Texturing.Texture2TexelSize
@C    Texture3TexelSize_id21 => Texturing.Texture3TexelSize
@C    Texture4TexelSize_id23 => Texturing.Texture4TexelSize
@C    Texture5TexelSize_id25 => Texturing.Texture5TexelSize
@C    Texture6TexelSize_id27 => Texturing.Texture6TexelSize
@C    Texture7TexelSize_id29 => Texturing.Texture7TexelSize
@C    Texture8TexelSize_id31 => Texturing.Texture8TexelSize
@C    Texture9TexelSize_id33 => Texturing.Texture9TexelSize
@C    SvPosUnpack_id78 => MSAAResolverShader.SvPosUnpack
@C    TextureSizeLess1_id79 => MSAAResolverShader.TextureSizeLess1
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    InputTexture_id80 => MSAAResolverShader.InputTexture [Stage: Pixel, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    MSAAResolverShader => 85c1fa7832f074d67f734bbdc26658c6
@S    ImageEffectShader => 8064e30cc02e5eb4052f420259dbf05e
@S    SpriteBase => 5a7aa9dfd5b5c7613053f4f66c79ca0d
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    Math => 9787fbb9c5fc970c8a2b04e18943e1bd
@S    LuminanceUtils => 39cb56630d44d77f1ff5a3ebade5ba1c
***************************
*****     Stages      *****
***************************
@G    Vertex => 114d005f3bc6df18a0edb1ea1aca5522
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 MatrixTransform_id73;     // Offset:    0 Size:    64
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
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// POSITION                 0   xyzw        1     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[4], immediateIndexed
dcl_input v0.xyzw
dcl_output_siv o0.xyzw, position
dcl_output o1.xyzw
//
// Initial variable locations:
//   v0.x <- __input__.Position_id72.x; v0.y <- __input__.Position_id72.y; v0.z <- __input__.Position_id72.z; v0.w <- __input__.Position_id72.w; 
//   o1.x <- <VSMain return value>.Position_id72.x; o1.y <- <VSMain return value>.Position_id72.y; o1.z <- <VSMain return value>.Position_id72.z; o1.w <- <VSMain return value>.Position_id72.w; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 260 "C:\Users\ravaz\Documents\Trabajo\Alpine Sloths\VVVV PLAY\Games\VL.Breakout\log\shader_MSAAResolverEffect_5058a3f327195ca4eccb88feadbcf844.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 264
mov o1.xyzw, v0.xyzw
ret 
// Approximately 6 instruction slots used
@G    Pixel => 29afbae0f9e4e2953688d391a4ff5fa7
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id15;     // Offset:    0 Size:     8 [unused]
//   float2 Texture1TexelSize_id17;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id19;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id21;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id23;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id25;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id27;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id29;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id31;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id33;     // Offset:   72 Size:     8 [unused]
//   float4 SvPosUnpack_id78;           // Offset:   80 Size:    16
//   float2 TextureSizeLess1_id79;      // Offset:   96 Size:     8
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// InputTexture_id80                 texture  float4       2dMS4             t0      1 
// Globals                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// POSITION                 0   xyzw        1     NONE   float   xy  
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
dcl_resource_texture2dms(4) (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 13
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.Position_id72.x; v1.y <- __input__.Position_id72.y; v1.z <- __input__.Position_id72.z; v1.w <- __input__.Position_id72.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 203 "C:\Users\ravaz\Documents\Trabajo\Alpine Sloths\VVVV PLAY\Games\VL.Breakout\log\shader_MSAAResolverEffect_5058a3f327195ca4eccb88feadbcf844.hlsl"
mad r0.xy, v1.xyxx, cb0[5].xyxx, cb0[5].zwzz

#line 221
round_z r0.xy, r0.xyxx

#line 233
mov r1.zw, l(0,0,0,0)
mov r2.zw, l(0,0,0,0)
mov r3.zw, l(0,0,0,0)
mov r4.zw, l(0,0,0,0)

#line 215
mov r5.xyzw, l(0,0,0,0)  // r5.x <- sum.x; r5.y <- sum.y; r5.z <- sum.z; r5.w <- sum.w
mov r0.zw, l(0,0,0,-1)  // r0.z <- totalWeight; r0.w <- y
loop 
  ilt r6.x, l(1), r0.w
  breakc_nz r6.x

#line 220
  itof r6.yw, r0.wwww  // r6.w <- sampleOffset.y

#line 218
  mov r7.xyzw, r5.xyzw  // r7.x <- sum.x; r7.y <- sum.y; r7.z <- sum.z; r7.w <- sum.w
  mov r8.x, r0.z  // r8.x <- totalWeight
  mov r8.y, l(-1)  // r8.y <- x
  loop 
    ilt r8.z, l(1), r8.y
    breakc_nz r8.z

#line 220
    itof r6.xz, r8.yyyy  // r6.z <- sampleOffset.x

#line 221
    add r8.zw, r0.xxxy, r6.xxxy  // r8.z <- samplePos.x; r8.w <- samplePos.y

#line 222
    max r8.zw, r8.zzzw, l(0.000000, 0.000000, 0.000000, 0.000000)
    min r8.zw, r8.zzzw, cb0[6].xxxy  // r8.z <- samplePos.x; r8.w <- samplePos.y

#line 229
    add r9.xyzw, r6.zwzw, l(-0.125000, -0.375000, 0.375000, -0.125000)

#line 230
    ge r10.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000), |r9.xyzw|
    and r10.xy, r10.ywyy, r10.xzxx  // r10.y <- useSample

#line 231
    if_nz r10.x

#line 233
      ftoi r1.xy, r8.zwzz
      ldms_indexable(texture2dms)(float,float,float,float) r11.xyzw, r1.xyzw, t0.xyzw, l(0)  // r11.x <- sampleValue.x; r11.y <- sampleValue.y; r11.z <- sampleValue.z; r11.w <- sampleValue.w

#line 198
      add r1.xy, |r9.xyxx|, |r9.xyxx|  // r1.y <- cubicX

#line 174
      mul r12.xyzw, r1.xxyy, r1.xxyy  // r12.w <- x2

#line 175
      mul r1.xy, r1.xyxx, r12.ywyy  // r1.y <- x3

#line 176
      lt r10.xz, |r9.xxyx|, l(0.500000, 0.000000, 0.500000, 0.000000)

#line 179
      mul r12.xz, r12.xxzx, l(-6.000000, 0.000000, -6.000000, 0.000000)

#line 177
      mad r12.xz, r1.xxyx, l(3.000000, 0.000000, 3.000000, 0.000000), r12.xxzx
      add r12.xz, r12.xxzx, l(4.000000, 0.000000, 4.000000, 0.000000)  // r12.z <- y

#line 179
      mad r1.xy, r12.ywyy, l(6.000000, 6.000000, 0.000000, 0.000000), -r1.xyxx
      mad r1.xy, |r9.xyxx|, l(-24.000000, -24.000000, 0.000000, 0.000000), r1.xyxx
      add r1.xy, r1.xyxx, l(8.000000, 8.000000, 0.000000, 0.000000)  // r1.y <- y
      movc r1.xy, r10.xzxx, r12.xzxx, r1.xyxx

#line 180
      mul r1.x, r1.x, l(0.166667)  // r1.x <- <FilterCubic_id21 return value>; r1.x <- <FilterCubic_id21 return value>
      mul r1.x, r1.x, r1.y

#line 234
      mul r1.x, r1.x, l(0.166667)  // r1.x <- weight

#line 194
      dp3 r1.y, r11.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
      max r1.y, r1.y, l(0.000100)  // r1.y <- <Luma_id28 return value>

#line 236
      add r1.y, r1.y, l(1.000000)
      div r1.y, l(1.000000, 1.000000, 1.000000, 1.000000), r1.y
      mul r9.x, r1.y, r1.x  // r9.x <- weight

#line 237
      mad r7.xyzw, r11.xyzw, r9.xxxx, r7.xyzw

#line 238
      mad r8.x, r1.x, r1.y, r8.x

#line 239
    endif 

#line 231
    if_nz r10.y

#line 233
      ftoi r2.xy, r8.zwzz
      ldms_indexable(texture2dms)(float,float,float,float) r10.xyzw, r2.xyzw, t0.xyzw, l(1)  // r10.x <- sampleValue.x; r10.y <- sampleValue.y; r10.z <- sampleValue.z; r10.w <- sampleValue.w

#line 198
      add r1.xy, |r9.zwzz|, |r9.zwzz|  // r1.y <- cubicX; r1.y <- cubicX

#line 174
      mul r11.xyzw, r1.xxyy, r1.xxyy  // r11.w <- x2; r11.w <- x2

#line 175
      mul r1.xy, r1.xyxx, r11.ywyy  // r1.y <- x3; r1.y <- x3

#line 176
      lt r2.xy, |r9.zwzz|, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 179
      mul r9.xy, r11.xzxx, l(-6.000000, -6.000000, 0.000000, 0.000000)

#line 177
      mad r9.xy, r1.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), r9.xyxx
      add r9.xy, r9.xyxx, l(4.000000, 4.000000, 0.000000, 0.000000)  // r9.y <- y; r9.y <- y

#line 179
      mad r1.xy, r11.ywyy, l(6.000000, 6.000000, 0.000000, 0.000000), -r1.xyxx
      mad r1.xy, |r9.zwzz|, l(-24.000000, -24.000000, 0.000000, 0.000000), r1.xyxx
      add r1.xy, r1.xyxx, l(8.000000, 8.000000, 0.000000, 0.000000)  // r1.y <- y; r1.y <- y
      movc r1.xy, r2.xyxx, r9.xyxx, r1.xyxx

#line 180
      mul r1.x, r1.x, l(0.166667)  // r1.x <- <FilterCubic_id21 return value>; r1.x <- <FilterCubic_id21 return value>
      mul r1.x, r1.x, r1.y

#line 234
      mul r1.x, r1.x, l(0.166667)  // r1.x <- weight

#line 194
      dp3 r1.y, r10.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
      max r1.y, r1.y, l(0.000100)  // r1.y <- <Luma_id28 return value>

#line 236
      add r1.y, r1.y, l(1.000000)
      div r1.y, l(1.000000, 1.000000, 1.000000, 1.000000), r1.y
      mul r2.x, r1.y, r1.x  // r2.x <- weight

#line 237
      mad r7.xyzw, r10.xyzw, r2.xxxx, r7.xyzw

#line 238
      mad r8.x, r1.x, r1.y, r8.x

#line 239
    endif 

#line 229
    add r9.xyzw, r6.xyzw, l(-0.375000, 0.125000, 0.125000, 0.375000)

#line 230
    ge r10.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000), |r9.xyzw|
    and r1.xy, r10.ywyy, r10.xzxx  // r1.y <- useSample

#line 231
    if_nz r1.x

#line 233
      ftoi r3.xy, r8.zwzz
      ldms_indexable(texture2dms)(float,float,float,float) r10.xyzw, r3.xyzw, t0.xyzw, l(2)  // r10.x <- sampleValue.x; r10.y <- sampleValue.y; r10.z <- sampleValue.z; r10.w <- sampleValue.w

#line 198
      add r2.xy, |r9.xyxx|, |r9.xyxx|  // r2.y <- cubicX; r2.y <- cubicX

#line 174
      mul r11.xyzw, r2.xxyy, r2.xxyy  // r11.w <- x2; r11.w <- x2

#line 175
      mul r2.xy, r2.xyxx, r11.ywyy  // r2.y <- x3; r2.y <- x3

#line 176
      lt r3.xy, |r9.xyxx|, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 179
      mul r6.xz, r11.xxzx, l(-6.000000, 0.000000, -6.000000, 0.000000)

#line 177
      mad r6.xz, r2.xxyx, l(3.000000, 0.000000, 3.000000, 0.000000), r6.xxzx
      add r6.xz, r6.xxzx, l(4.000000, 0.000000, 4.000000, 0.000000)  // r6.z <- y; r6.z <- y

#line 179
      mad r2.xy, r11.ywyy, l(6.000000, 6.000000, 0.000000, 0.000000), -r2.xyxx
      mad r2.xy, |r9.xyxx|, l(-24.000000, -24.000000, 0.000000, 0.000000), r2.xyxx
      add r2.xy, r2.xyxx, l(8.000000, 8.000000, 0.000000, 0.000000)  // r2.y <- y; r2.y <- y
      movc r2.xy, r3.xyxx, r6.xzxx, r2.xyxx

#line 180
      mul r1.x, r2.x, l(0.166667)  // r1.x <- <FilterCubic_id21 return value>; r1.x <- <FilterCubic_id21 return value>
      mul r1.x, r1.x, r2.y

#line 234
      mul r1.x, r1.x, l(0.166667)  // r1.x <- weight

#line 194
      dp3 r2.x, r10.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
      max r2.x, r2.x, l(0.000100)  // r2.x <- <Luma_id28 return value>

#line 236
      add r2.x, r2.x, l(1.000000)
      div r2.x, l(1.000000, 1.000000, 1.000000, 1.000000), r2.x
      mul r2.y, r1.x, r2.x  // r2.y <- weight

#line 237
      mad r7.xyzw, r10.xyzw, r2.yyyy, r7.xyzw

#line 238
      mad r8.x, r1.x, r2.x, r8.x

#line 239
    endif 

#line 231
    if_nz r1.y

#line 233
      ftoi r4.xy, r8.zwzz
      ldms_indexable(texture2dms)(float,float,float,float) r10.xyzw, r4.xyzw, t0.xyzw, l(3)  // r10.x <- sampleValue.x; r10.y <- sampleValue.y; r10.z <- sampleValue.z; r10.w <- sampleValue.w

#line 198
      add r1.xy, |r9.zwzz|, |r9.zwzz|  // r1.y <- cubicX; r1.y <- cubicX

#line 174
      mul r11.xyzw, r1.xxyy, r1.xxyy  // r11.w <- x2; r11.w <- x2

#line 175
      mul r1.xy, r1.xyxx, r11.ywyy  // r1.y <- x3; r1.y <- x3

#line 176
      lt r2.xy, |r9.zwzz|, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 179
      mul r3.xy, r11.xzxx, l(-6.000000, -6.000000, 0.000000, 0.000000)

#line 177
      mad r3.xy, r1.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), r3.xyxx
      add r3.xy, r3.xyxx, l(4.000000, 4.000000, 0.000000, 0.000000)  // r3.y <- y; r3.y <- y

#line 179
      mad r1.xy, r11.ywyy, l(6.000000, 6.000000, 0.000000, 0.000000), -r1.xyxx
      mad r1.xy, |r9.zwzz|, l(-24.000000, -24.000000, 0.000000, 0.000000), r1.xyxx
      add r1.xy, r1.xyxx, l(8.000000, 8.000000, 0.000000, 0.000000)  // r1.y <- y; r1.y <- y
      movc r1.xy, r2.xyxx, r3.xyxx, r1.xyxx

#line 180
      mul r1.x, r1.x, l(0.166667)  // r1.x <- <FilterCubic_id21 return value>; r1.x <- <FilterCubic_id21 return value>
      mul r1.x, r1.x, r1.y

#line 234
      mul r1.x, r1.x, l(0.166667)  // r1.x <- weight

#line 194
      dp3 r1.y, r10.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
      max r1.y, r1.y, l(0.000100)  // r1.y <- <Luma_id28 return value>

#line 236
      add r1.y, r1.y, l(1.000000)
      div r1.y, l(1.000000, 1.000000, 1.000000, 1.000000), r1.y
      mul r2.x, r1.y, r1.x  // r2.x <- weight

#line 237
      mad r7.xyzw, r10.xyzw, r2.xxxx, r7.xyzw

#line 238
      mad r8.x, r1.x, r1.y, r8.x

#line 239
    endif 

#line 241
    iadd r8.y, r8.y, l(1)
  endloop 
  mov r5.xyzw, r7.xyzw  // r5.x <- sum.x; r5.y <- sum.y; r5.z <- sum.z; r5.w <- sum.w
  mov r0.z, r8.x  // r0.z <- totalWeight

#line 242
  iadd r0.w, r0.w, l(1)
endloop 

#line 243
max r0.x, r0.z, l(0.000010)
div o0.xyzw, r5.xyzw, r0.xxxx

#line 254
ret 
// Approximately 137 instruction slots used
***************************
*************************/
static const float PI_id74 = 3.14159265358979323846;
const static int MSAASamples_id75 = 4;
const static int ResolveFilterType_id76 = 6;
const static float ResolveFilterDiameter_id77 = 2;
static const int FilterTypes_Box_id81 = 1;
static const int FilterTypes_Triangle_id82 = 2;
static const int FilterTypes_Gaussian_id83 = 3;
static const int FilterTypes_BlackmanHarris_id84 = 4;
static const int FilterTypes_Smoothstep_id85 = 5;
static const int FilterTypes_BSpline_id86 = 6;
static const int FilterTypes_CatmullRom_id87 = 7;
static const int FilterTypes_Mitchell_id88 = 8;
static const int FilterTypes_Sinc_id89 = 9;
static const float2 SubSampleOffsets8_id90[8] = { float2(0.0625f, -0.1875f), float2(-0.0625f, 0.1875f), float2(0.3125f, 0.0625f), float2(-0.1875f, -0.3125f), float2(-0.3125f, 0.3125f), float2(-0.4375f, -0.0625f), float2(0.1875f, 0.4375f), float2(0.4375f, -0.4375f)};
static const float2 SubSampleOffsets4_id91[4] = { float2(-0.125f, -0.375f), float2(0.375f, -0.125f), float2(-0.375f, 0.125f), float2(0.125f, 0.375f)};
static const float2 SubSampleOffsets2_id92[2] = { float2(0.25f, 0.25f), float2(-0.25f, -0.25f)};
static const float2 SubSampleOffsets1_id93[1] = { float2(0.0f, 0.0f)};
struct PS_STREAMS 
{
    float4 Position_id72;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float4 Position_id72 : POSITION;
};
struct VS_STREAMS 
{
    float4 Position_id72;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float4 Position_id72 : POSITION;
};
struct VS_INPUT 
{
    float4 Position_id72 : POSITION;
};
cbuffer PerDraw 
{
    float4x4 MatrixTransform_id73;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id15;
    float2 Texture1TexelSize_id17;
    float2 Texture2TexelSize_id19;
    float2 Texture3TexelSize_id21;
    float2 Texture4TexelSize_id23;
    float2 Texture5TexelSize_id25;
    float2 Texture6TexelSize_id27;
    float2 Texture7TexelSize_id29;
    float2 Texture8TexelSize_id31;
    float2 Texture9TexelSize_id33;
    float4 SvPosUnpack_id78;
    float2 TextureSizeLess1_id79;
};
Texture2D Texture0_id14;
Texture2D Texture1_id16;
Texture2D Texture2_id18;
Texture2D Texture3_id20;
Texture2D Texture4_id22;
Texture2D Texture5_id24;
Texture2D Texture6_id26;
Texture2D Texture7_id28;
Texture2D Texture8_id30;
Texture2D Texture9_id32;
TextureCube TextureCube0_id34;
TextureCube TextureCube1_id35;
TextureCube TextureCube2_id36;
TextureCube TextureCube3_id37;
Texture3D Texture3D0_id38;
Texture3D Texture3D1_id39;
Texture3D Texture3D2_id40;
Texture3D Texture3D3_id41;
SamplerState Sampler_id42;
SamplerState PointSampler_id43 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id44 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id45 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id46 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id47 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id48 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id49 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id50 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id51 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id52;
SamplerState Sampler1_id53;
SamplerState Sampler2_id54;
SamplerState Sampler3_id55;
SamplerState Sampler4_id56;
SamplerState Sampler5_id57;
SamplerState Sampler6_id58;
SamplerState Sampler7_id59;
SamplerState Sampler8_id60;
SamplerState Sampler9_id61;
Texture2DMS<float4, 4> InputTexture_id80;
float FilterBox_id18(in float x)
{
    return x <= 1.0f;
}
static float FilterTriangle_id19(in float x)
{
    return saturate(1.0f - x);
}
static float FilterGaussian_id20(in float x)
{
    static const float sigma = 0.5f;
    static const float g = 1.0f / sqrt(2.0f * 3.14159f * sigma * sigma);
    return (g * exp(-(x * x) / (2 * sigma * sigma)));
}
float FilterBlackmanHarris_id23(in float x)
{
    x = 1.0f - x;
    static const float a0 = 0.35875f;
    static const float a1 = 0.48829f;
    static const float a2 = 0.14128f;
    static const float a3 = 0.01168f;
    return saturate(a0 - a1 * cos(PI_id74 * x) + a2 * cos(2 * PI_id74 * x) - a3 * cos(3 * PI_id74 * x));
}
float FilterSmoothstep_id24(in float x)
{
    return 1.0f - smoothstep(0.0f, 1.0f, x);
}
float FilterCubic_id21(in float x, in float B, in float C)
{
    float y = 0.0f;
    float x2 = x * x;
    float x3 = x * x * x;
    if (x < 1)
        y = (12 - 9 * B - 6 * C) * x3 + (-18 + 12 * B + 6 * C) * x2 + (6 - 2 * B);
    else if (x <= 2)
        y = (-B - 6 * C) * x3 + (6 * B + 30 * C) * x2 + (-12 * B - 48 * C) * x + (8 * B + 24 * C);
    return y / 6.0f;
}
float FilterSinc_id22(in float x)
{
    float s;
    x *= ResolveFilterDiameter_id77;
    if (x < 0.001f)
        s = 1.0f;
    else
        s = sin(x * PI_id74) / (x * PI_id74);
    return s;
}
static float Luma_id28(float3 color)
{
    return max(dot(color, float3(0.299, 0.587, 0.114)), 0.0001);
}
float Filter_id25(in float x)
{
    float cubicX = x * 2.0f;
    return FilterCubic_id21(cubicX, 1.0, 0.0f);
}
int2 ClipPosToUvPos_id26(float2 clipPos)
{
    return (int2)(clipPos * SvPosUnpack_id78.xy + SvPosUnpack_id78.zw);
}
float4 Shading_id27(inout PS_STREAMS streams)
{
    float4 output = 0;
    int2 pixelPos = ClipPosToUvPos_id26(streams.Position_id72.xy);

    {
        float4 sum = 0.0f;
        float totalWeight = 0.0f;
        static const int SampleRadius = (int)((ResolveFilterDiameter_id77 / 2.0f) + 0.499f);

        for (int y = -SampleRadius; y <= SampleRadius; y++)
        {

            for (int x = -SampleRadius; x <= SampleRadius; x++)
            {
                float2 sampleOffset = float2(x, y);
                float2 samplePos = pixelPos + sampleOffset;
                samplePos = clamp(samplePos, 0, TextureSizeLess1_id79);

                [unroll]
                for (uint subSampleIdx = 0; subSampleIdx < MSAASamples_id75; subSampleIdx++)
                {
                    float2 subSampleOffset;
                    subSampleOffset = SubSampleOffsets4_id91[subSampleIdx].xy;
                    float2 sampleDist = abs(sampleOffset + subSampleOffset) / (ResolveFilterDiameter_id77 / 2.0f);
                    bool useSample = all(sampleDist <= 1.0f);
                    if (useSample)
                    {
                        float4 sampleValue = InputTexture_id80.Load(samplePos, subSampleIdx);
                        float weight = Filter_id25(sampleDist.x) * Filter_id25(sampleDist.y);
                        float sampleLum = Luma_id28(sampleValue.rgb);
                        weight *= 1.0f / (1.0f + sampleLum);
                        sum += sampleValue * weight;
                        totalWeight += weight;
                    }
                }
            }
        }
        output = sum / max(totalWeight, 0.00001f);
    }
    return output;
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.Position_id72 = __input__.Position_id72;
    streams.ColorTarget_id2 = Shading_id27(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id72 = __input__.Position_id72;
    streams.ShadingPosition_id0 = mul(streams.Position_id72, MatrixTransform_id73);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.Position_id72 = streams.Position_id72;
    return __output__;
}
