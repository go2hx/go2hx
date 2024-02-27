package stdgo._internal.compress.flate;
private var __go2hxdoc__package : Bool;
var _levels : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_compressionLevel> = (new stdgo.Slice<stdgo._internal.compress.flate.Flate.T_compressionLevel>(
10,
10,
(new stdgo._internal.compress.flate.Flate.T_compressionLevel((0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.compress.flate.Flate.T_compressionLevel),
(new stdgo._internal.compress.flate.Flate.T_compressionLevel((1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.compress.flate.Flate.T_compressionLevel),
(new stdgo._internal.compress.flate.Flate.T_compressionLevel((2 : stdgo.GoInt), (4 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (8 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo._internal.compress.flate.Flate.T_compressionLevel),
(new stdgo._internal.compress.flate.Flate.T_compressionLevel((3 : stdgo.GoInt), (4 : stdgo.GoInt), (0 : stdgo.GoInt), (32 : stdgo.GoInt), (32 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo._internal.compress.flate.Flate.T_compressionLevel),
(new stdgo._internal.compress.flate.Flate.T_compressionLevel((4 : stdgo.GoInt), (4 : stdgo.GoInt), (4 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt), (2147483647 : stdgo.GoInt)) : stdgo._internal.compress.flate.Flate.T_compressionLevel),
(new stdgo._internal.compress.flate.Flate.T_compressionLevel((5 : stdgo.GoInt), (8 : stdgo.GoInt), (16 : stdgo.GoInt), (32 : stdgo.GoInt), (32 : stdgo.GoInt), (2147483647 : stdgo.GoInt)) : stdgo._internal.compress.flate.Flate.T_compressionLevel),
(new stdgo._internal.compress.flate.Flate.T_compressionLevel((6 : stdgo.GoInt), (8 : stdgo.GoInt), (16 : stdgo.GoInt), (128 : stdgo.GoInt), (128 : stdgo.GoInt), (2147483647 : stdgo.GoInt)) : stdgo._internal.compress.flate.Flate.T_compressionLevel),
(new stdgo._internal.compress.flate.Flate.T_compressionLevel((7 : stdgo.GoInt), (8 : stdgo.GoInt), (32 : stdgo.GoInt), (128 : stdgo.GoInt), (256 : stdgo.GoInt), (2147483647 : stdgo.GoInt)) : stdgo._internal.compress.flate.Flate.T_compressionLevel),
(new stdgo._internal.compress.flate.Flate.T_compressionLevel((8 : stdgo.GoInt), (32 : stdgo.GoInt), (128 : stdgo.GoInt), (258 : stdgo.GoInt), (1024 : stdgo.GoInt), (2147483647 : stdgo.GoInt)) : stdgo._internal.compress.flate.Flate.T_compressionLevel),
(new stdgo._internal.compress.flate.Flate.T_compressionLevel((9 : stdgo.GoInt), (32 : stdgo.GoInt), (258 : stdgo.GoInt), (258 : stdgo.GoInt), (4096 : stdgo.GoInt), (2147483647 : stdgo.GoInt)) : stdgo._internal.compress.flate.Flate.T_compressionLevel)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_compressionLevel>);
var _errWriterClosed : stdgo.Error = stdgo._internal.errors.Errors.new_(("flate: closed writer" : stdgo.GoString));
var _lengthExtraBits : stdgo.Slice<stdgo.GoInt8> = (new stdgo.Slice<stdgo.GoInt8>(
29,
29,
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(1 : stdgo.GoInt8),
(1 : stdgo.GoInt8),
(1 : stdgo.GoInt8),
(1 : stdgo.GoInt8),
(2 : stdgo.GoInt8),
(2 : stdgo.GoInt8),
(2 : stdgo.GoInt8),
(2 : stdgo.GoInt8),
(3 : stdgo.GoInt8),
(3 : stdgo.GoInt8),
(3 : stdgo.GoInt8),
(3 : stdgo.GoInt8),
(4 : stdgo.GoInt8),
(4 : stdgo.GoInt8),
(4 : stdgo.GoInt8),
(4 : stdgo.GoInt8),
(5 : stdgo.GoInt8),
(5 : stdgo.GoInt8),
(5 : stdgo.GoInt8),
(5 : stdgo.GoInt8),
(0 : stdgo.GoInt8)) : stdgo.Slice<stdgo.GoInt8>);
var _lengthBase : stdgo.Slice<stdgo.GoUInt32> = (new stdgo.Slice<stdgo.GoUInt32>(
29,
29,
(0u32 : stdgo.GoUInt32),
(1u32 : stdgo.GoUInt32),
(2u32 : stdgo.GoUInt32),
(3u32 : stdgo.GoUInt32),
(4u32 : stdgo.GoUInt32),
(5u32 : stdgo.GoUInt32),
(6u32 : stdgo.GoUInt32),
(7u32 : stdgo.GoUInt32),
(8u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(16u32 : stdgo.GoUInt32),
(20u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(28u32 : stdgo.GoUInt32),
(32u32 : stdgo.GoUInt32),
(40u32 : stdgo.GoUInt32),
(48u32 : stdgo.GoUInt32),
(56u32 : stdgo.GoUInt32),
(64u32 : stdgo.GoUInt32),
(80u32 : stdgo.GoUInt32),
(96u32 : stdgo.GoUInt32),
(112u32 : stdgo.GoUInt32),
(128u32 : stdgo.GoUInt32),
(160u32 : stdgo.GoUInt32),
(192u32 : stdgo.GoUInt32),
(224u32 : stdgo.GoUInt32),
(255u32 : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt32>);
var _offsetExtraBits : stdgo.Slice<stdgo.GoInt8> = (new stdgo.Slice<stdgo.GoInt8>(
30,
30,
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(0 : stdgo.GoInt8),
(1 : stdgo.GoInt8),
(1 : stdgo.GoInt8),
(2 : stdgo.GoInt8),
(2 : stdgo.GoInt8),
(3 : stdgo.GoInt8),
(3 : stdgo.GoInt8),
(4 : stdgo.GoInt8),
(4 : stdgo.GoInt8),
(5 : stdgo.GoInt8),
(5 : stdgo.GoInt8),
(6 : stdgo.GoInt8),
(6 : stdgo.GoInt8),
(7 : stdgo.GoInt8),
(7 : stdgo.GoInt8),
(8 : stdgo.GoInt8),
(8 : stdgo.GoInt8),
(9 : stdgo.GoInt8),
(9 : stdgo.GoInt8),
(10 : stdgo.GoInt8),
(10 : stdgo.GoInt8),
(11 : stdgo.GoInt8),
(11 : stdgo.GoInt8),
(12 : stdgo.GoInt8),
(12 : stdgo.GoInt8),
(13 : stdgo.GoInt8),
(13 : stdgo.GoInt8)) : stdgo.Slice<stdgo.GoInt8>);
var _offsetBase : stdgo.Slice<stdgo.GoUInt32> = (new stdgo.Slice<stdgo.GoUInt32>(
30,
30,
(0u32 : stdgo.GoUInt32),
(1u32 : stdgo.GoUInt32),
(2u32 : stdgo.GoUInt32),
(3u32 : stdgo.GoUInt32),
(4u32 : stdgo.GoUInt32),
(6u32 : stdgo.GoUInt32),
(8u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(16u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(32u32 : stdgo.GoUInt32),
(48u32 : stdgo.GoUInt32),
(64u32 : stdgo.GoUInt32),
(96u32 : stdgo.GoUInt32),
(128u32 : stdgo.GoUInt32),
(192u32 : stdgo.GoUInt32),
(256u32 : stdgo.GoUInt32),
(384u32 : stdgo.GoUInt32),
(512u32 : stdgo.GoUInt32),
(768u32 : stdgo.GoUInt32),
(1024u32 : stdgo.GoUInt32),
(1536u32 : stdgo.GoUInt32),
(2048u32 : stdgo.GoUInt32),
(3072u32 : stdgo.GoUInt32),
(4096u32 : stdgo.GoUInt32),
(6144u32 : stdgo.GoUInt32),
(8192u32 : stdgo.GoUInt32),
(12288u32 : stdgo.GoUInt32),
(16384u32 : stdgo.GoUInt32),
(24576u32 : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt32>);
var _codegenOrder : stdgo.Slice<stdgo.GoUInt32> = (new stdgo.Slice<stdgo.GoUInt32>(
19,
19,
(16u32 : stdgo.GoUInt32),
(17u32 : stdgo.GoUInt32),
(18u32 : stdgo.GoUInt32),
(0u32 : stdgo.GoUInt32),
(8u32 : stdgo.GoUInt32),
(7u32 : stdgo.GoUInt32),
(9u32 : stdgo.GoUInt32),
(6u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(5u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(4u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(3u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(2u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(1u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt32>);
var _fixedOffsetEncoding : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanEncoder> = _generateFixedOffsetEncoding();
var _fixedLiteralEncoding : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanEncoder> = _generateFixedLiteralEncoding();
var _codeOrder : stdgo.GoArray<stdgo.GoInt> = (new stdgo.GoArray<stdgo.GoInt>(
(16 : stdgo.GoInt),
(17 : stdgo.GoInt),
(18 : stdgo.GoInt),
(0 : stdgo.GoInt),
(8 : stdgo.GoInt),
(7 : stdgo.GoInt),
(9 : stdgo.GoInt),
(6 : stdgo.GoInt),
(10 : stdgo.GoInt),
(5 : stdgo.GoInt),
(11 : stdgo.GoInt),
(4 : stdgo.GoInt),
(12 : stdgo.GoInt),
(3 : stdgo.GoInt),
(13 : stdgo.GoInt),
(2 : stdgo.GoInt),
(14 : stdgo.GoInt),
(1 : stdgo.GoInt),
(15 : stdgo.GoInt)) : stdgo.GoArray<stdgo.GoInt>);
var _lengthCodes : stdgo.GoArray<stdgo.GoUInt32> = (new stdgo.GoArray<stdgo.GoUInt32>(
(0u32 : stdgo.GoUInt32),
(1u32 : stdgo.GoUInt32),
(2u32 : stdgo.GoUInt32),
(3u32 : stdgo.GoUInt32),
(4u32 : stdgo.GoUInt32),
(5u32 : stdgo.GoUInt32),
(6u32 : stdgo.GoUInt32),
(7u32 : stdgo.GoUInt32),
(8u32 : stdgo.GoUInt32),
(8u32 : stdgo.GoUInt32),
(9u32 : stdgo.GoUInt32),
(9u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(16u32 : stdgo.GoUInt32),
(16u32 : stdgo.GoUInt32),
(16u32 : stdgo.GoUInt32),
(16u32 : stdgo.GoUInt32),
(16u32 : stdgo.GoUInt32),
(16u32 : stdgo.GoUInt32),
(16u32 : stdgo.GoUInt32),
(16u32 : stdgo.GoUInt32),
(17u32 : stdgo.GoUInt32),
(17u32 : stdgo.GoUInt32),
(17u32 : stdgo.GoUInt32),
(17u32 : stdgo.GoUInt32),
(17u32 : stdgo.GoUInt32),
(17u32 : stdgo.GoUInt32),
(17u32 : stdgo.GoUInt32),
(17u32 : stdgo.GoUInt32),
(18u32 : stdgo.GoUInt32),
(18u32 : stdgo.GoUInt32),
(18u32 : stdgo.GoUInt32),
(18u32 : stdgo.GoUInt32),
(18u32 : stdgo.GoUInt32),
(18u32 : stdgo.GoUInt32),
(18u32 : stdgo.GoUInt32),
(18u32 : stdgo.GoUInt32),
(19u32 : stdgo.GoUInt32),
(19u32 : stdgo.GoUInt32),
(19u32 : stdgo.GoUInt32),
(19u32 : stdgo.GoUInt32),
(19u32 : stdgo.GoUInt32),
(19u32 : stdgo.GoUInt32),
(19u32 : stdgo.GoUInt32),
(19u32 : stdgo.GoUInt32),
(20u32 : stdgo.GoUInt32),
(20u32 : stdgo.GoUInt32),
(20u32 : stdgo.GoUInt32),
(20u32 : stdgo.GoUInt32),
(20u32 : stdgo.GoUInt32),
(20u32 : stdgo.GoUInt32),
(20u32 : stdgo.GoUInt32),
(20u32 : stdgo.GoUInt32),
(20u32 : stdgo.GoUInt32),
(20u32 : stdgo.GoUInt32),
(20u32 : stdgo.GoUInt32),
(20u32 : stdgo.GoUInt32),
(20u32 : stdgo.GoUInt32),
(20u32 : stdgo.GoUInt32),
(20u32 : stdgo.GoUInt32),
(20u32 : stdgo.GoUInt32),
(21u32 : stdgo.GoUInt32),
(21u32 : stdgo.GoUInt32),
(21u32 : stdgo.GoUInt32),
(21u32 : stdgo.GoUInt32),
(21u32 : stdgo.GoUInt32),
(21u32 : stdgo.GoUInt32),
(21u32 : stdgo.GoUInt32),
(21u32 : stdgo.GoUInt32),
(21u32 : stdgo.GoUInt32),
(21u32 : stdgo.GoUInt32),
(21u32 : stdgo.GoUInt32),
(21u32 : stdgo.GoUInt32),
(21u32 : stdgo.GoUInt32),
(21u32 : stdgo.GoUInt32),
(21u32 : stdgo.GoUInt32),
(21u32 : stdgo.GoUInt32),
(22u32 : stdgo.GoUInt32),
(22u32 : stdgo.GoUInt32),
(22u32 : stdgo.GoUInt32),
(22u32 : stdgo.GoUInt32),
(22u32 : stdgo.GoUInt32),
(22u32 : stdgo.GoUInt32),
(22u32 : stdgo.GoUInt32),
(22u32 : stdgo.GoUInt32),
(22u32 : stdgo.GoUInt32),
(22u32 : stdgo.GoUInt32),
(22u32 : stdgo.GoUInt32),
(22u32 : stdgo.GoUInt32),
(22u32 : stdgo.GoUInt32),
(22u32 : stdgo.GoUInt32),
(22u32 : stdgo.GoUInt32),
(22u32 : stdgo.GoUInt32),
(23u32 : stdgo.GoUInt32),
(23u32 : stdgo.GoUInt32),
(23u32 : stdgo.GoUInt32),
(23u32 : stdgo.GoUInt32),
(23u32 : stdgo.GoUInt32),
(23u32 : stdgo.GoUInt32),
(23u32 : stdgo.GoUInt32),
(23u32 : stdgo.GoUInt32),
(23u32 : stdgo.GoUInt32),
(23u32 : stdgo.GoUInt32),
(23u32 : stdgo.GoUInt32),
(23u32 : stdgo.GoUInt32),
(23u32 : stdgo.GoUInt32),
(23u32 : stdgo.GoUInt32),
(23u32 : stdgo.GoUInt32),
(23u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(24u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(25u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(26u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(27u32 : stdgo.GoUInt32),
(28u32 : stdgo.GoUInt32)) : stdgo.GoArray<stdgo.GoUInt32>);
var _offsetCodes : stdgo.GoArray<stdgo.GoUInt32> = (new stdgo.GoArray<stdgo.GoUInt32>(
(0u32 : stdgo.GoUInt32),
(1u32 : stdgo.GoUInt32),
(2u32 : stdgo.GoUInt32),
(3u32 : stdgo.GoUInt32),
(4u32 : stdgo.GoUInt32),
(4u32 : stdgo.GoUInt32),
(5u32 : stdgo.GoUInt32),
(5u32 : stdgo.GoUInt32),
(6u32 : stdgo.GoUInt32),
(6u32 : stdgo.GoUInt32),
(6u32 : stdgo.GoUInt32),
(6u32 : stdgo.GoUInt32),
(7u32 : stdgo.GoUInt32),
(7u32 : stdgo.GoUInt32),
(7u32 : stdgo.GoUInt32),
(7u32 : stdgo.GoUInt32),
(8u32 : stdgo.GoUInt32),
(8u32 : stdgo.GoUInt32),
(8u32 : stdgo.GoUInt32),
(8u32 : stdgo.GoUInt32),
(8u32 : stdgo.GoUInt32),
(8u32 : stdgo.GoUInt32),
(8u32 : stdgo.GoUInt32),
(8u32 : stdgo.GoUInt32),
(9u32 : stdgo.GoUInt32),
(9u32 : stdgo.GoUInt32),
(9u32 : stdgo.GoUInt32),
(9u32 : stdgo.GoUInt32),
(9u32 : stdgo.GoUInt32),
(9u32 : stdgo.GoUInt32),
(9u32 : stdgo.GoUInt32),
(9u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(10u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(11u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(12u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(13u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(14u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32),
(15u32 : stdgo.GoUInt32)) : stdgo.GoArray<stdgo.GoUInt32>);
var _deflateTests : stdgo.Slice<stdgo.Ref<stdgo._internal.compress.flate.Flate.T_deflateTest>> = (new stdgo.Slice<stdgo.Ref<stdgo._internal.compress.flate.Flate.T_deflateTest>>(
15,
15,
(new stdgo._internal.compress.flate.Flate.T_deflateTest((new stdgo.Slice<stdgo.GoUInt8>(0, 0) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoUInt8>(5, 5, (1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateTest),
(new stdgo._internal.compress.flate.Flate.T_deflateTest((new stdgo.Slice<stdgo.GoUInt8>(1, 1, (17 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoUInt8>(7, 7, (18 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateTest),
(new stdgo._internal.compress.flate.Flate.T_deflateTest((new stdgo.Slice<stdgo.GoUInt8>(1, 1, (17 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (-1 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoUInt8>(7, 7, (18 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateTest),
(new stdgo._internal.compress.flate.Flate.T_deflateTest((new stdgo.Slice<stdgo.GoUInt8>(1, 1, (17 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (4 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoUInt8>(7, 7, (18 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateTest),
(new stdgo._internal.compress.flate.Flate.T_deflateTest((new stdgo.Slice<stdgo.GoUInt8>(1, 1, (17 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoUInt8>(
11,
11,
(0 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(254 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(17 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateTest),
(new stdgo._internal.compress.flate.Flate.T_deflateTest((new stdgo.Slice<stdgo.GoUInt8>(2, 2, (17 : stdgo.GoUInt8), (18 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoUInt8>(
12,
12,
(0 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(253 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(17 : stdgo.GoUInt8),
(18 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateTest),
(new stdgo._internal.compress.flate.Flate.T_deflateTest((new stdgo.Slice<stdgo.GoUInt8>(8, 8, (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoUInt8>(
18,
18,
(0 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(247 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(17 : stdgo.GoUInt8),
(17 : stdgo.GoUInt8),
(17 : stdgo.GoUInt8),
(17 : stdgo.GoUInt8),
(17 : stdgo.GoUInt8),
(17 : stdgo.GoUInt8),
(17 : stdgo.GoUInt8),
(17 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateTest),
(new stdgo._internal.compress.flate.Flate.T_deflateTest((new stdgo.Slice<stdgo.GoUInt8>(0, 0) : stdgo.Slice<stdgo.GoUInt8>), (2 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoUInt8>(5, 5, (1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateTest),
(new stdgo._internal.compress.flate.Flate.T_deflateTest((new stdgo.Slice<stdgo.GoUInt8>(1, 1, (17 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (2 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoUInt8>(7, 7, (18 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateTest),
(new stdgo._internal.compress.flate.Flate.T_deflateTest((new stdgo.Slice<stdgo.GoUInt8>(2, 2, (17 : stdgo.GoUInt8), (18 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (2 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoUInt8>(8, 8, (18 : stdgo.GoUInt8), (20 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateTest),
(new stdgo._internal.compress.flate.Flate.T_deflateTest((new stdgo.Slice<stdgo.GoUInt8>(8, 8, (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (2 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoUInt8>(
9,
9,
(18 : stdgo.GoUInt8),
(132 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(64 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateTest),
(new stdgo._internal.compress.flate.Flate.T_deflateTest((new stdgo.Slice<stdgo.GoUInt8>(0, 0) : stdgo.Slice<stdgo.GoUInt8>), (9 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoUInt8>(5, 5, (1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateTest),
(new stdgo._internal.compress.flate.Flate.T_deflateTest((new stdgo.Slice<stdgo.GoUInt8>(1, 1, (17 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (9 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoUInt8>(7, 7, (18 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateTest),
(new stdgo._internal.compress.flate.Flate.T_deflateTest((new stdgo.Slice<stdgo.GoUInt8>(2, 2, (17 : stdgo.GoUInt8), (18 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (9 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoUInt8>(8, 8, (18 : stdgo.GoUInt8), (20 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateTest),
(new stdgo._internal.compress.flate.Flate.T_deflateTest((new stdgo.Slice<stdgo.GoUInt8>(8, 8, (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (9 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoUInt8>(
9,
9,
(18 : stdgo.GoUInt8),
(132 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(64 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateTest)) : stdgo.Slice<stdgo.Ref<stdgo._internal.compress.flate.Flate.T_deflateTest>>);
var _deflateInflateTests : stdgo.Slice<stdgo.Ref<stdgo._internal.compress.flate.Flate.T_deflateInflateTest>> = (new stdgo.Slice<stdgo.Ref<stdgo._internal.compress.flate.Flate.T_deflateInflateTest>>(6, 6, (new stdgo._internal.compress.flate.Flate.T_deflateInflateTest((new stdgo.Slice<stdgo.GoUInt8>(0, 0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateInflateTest), (new stdgo._internal.compress.flate.Flate.T_deflateInflateTest((new stdgo.Slice<stdgo.GoUInt8>(1, 1, (17 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateInflateTest), (new stdgo._internal.compress.flate.Flate.T_deflateInflateTest((new stdgo.Slice<stdgo.GoUInt8>(2, 2, (17 : stdgo.GoUInt8), (18 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateInflateTest), (new stdgo._internal.compress.flate.Flate.T_deflateInflateTest((new stdgo.Slice<stdgo.GoUInt8>(8, 8, (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (17 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateInflateTest), (new stdgo._internal.compress.flate.Flate.T_deflateInflateTest((new stdgo.Slice<stdgo.GoUInt8>(
11,
11,
(17 : stdgo.GoUInt8),
(16 : stdgo.GoUInt8),
(19 : stdgo.GoUInt8),
(65 : stdgo.GoUInt8),
(33 : stdgo.GoUInt8),
(33 : stdgo.GoUInt8),
(65 : stdgo.GoUInt8),
(19 : stdgo.GoUInt8),
(135 : stdgo.GoUInt8),
(120 : stdgo.GoUInt8),
(19 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.compress.flate.Flate.T_deflateInflateTest), (new stdgo._internal.compress.flate.Flate.T_deflateInflateTest(_largeDataChunk()) : stdgo._internal.compress.flate.Flate.T_deflateInflateTest)) : stdgo.Slice<stdgo.Ref<stdgo._internal.compress.flate.Flate.T_deflateInflateTest>>);
var _reverseBitsTests : stdgo.Slice<stdgo.Ref<stdgo._internal.compress.flate.Flate.T_reverseBitsTest>> = (new stdgo.Slice<stdgo.Ref<stdgo._internal.compress.flate.Flate.T_reverseBitsTest>>(8, 8, (new stdgo._internal.compress.flate.Flate.T_reverseBitsTest((1 : stdgo.GoUInt16), (1 : stdgo.GoUInt8), (1 : stdgo.GoUInt16)) : stdgo._internal.compress.flate.Flate.T_reverseBitsTest), (new stdgo._internal.compress.flate.Flate.T_reverseBitsTest((1 : stdgo.GoUInt16), (2 : stdgo.GoUInt8), (2 : stdgo.GoUInt16)) : stdgo._internal.compress.flate.Flate.T_reverseBitsTest), (new stdgo._internal.compress.flate.Flate.T_reverseBitsTest((1 : stdgo.GoUInt16), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt16)) : stdgo._internal.compress.flate.Flate.T_reverseBitsTest), (new stdgo._internal.compress.flate.Flate.T_reverseBitsTest((1 : stdgo.GoUInt16), (4 : stdgo.GoUInt8), (8 : stdgo.GoUInt16)) : stdgo._internal.compress.flate.Flate.T_reverseBitsTest), (new stdgo._internal.compress.flate.Flate.T_reverseBitsTest((1 : stdgo.GoUInt16), (5 : stdgo.GoUInt8), (16 : stdgo.GoUInt16)) : stdgo._internal.compress.flate.Flate.T_reverseBitsTest), (new stdgo._internal.compress.flate.Flate.T_reverseBitsTest((17 : stdgo.GoUInt16), (5 : stdgo.GoUInt8), (17 : stdgo.GoUInt16)) : stdgo._internal.compress.flate.Flate.T_reverseBitsTest), (new stdgo._internal.compress.flate.Flate.T_reverseBitsTest((257 : stdgo.GoUInt16), (9 : stdgo.GoUInt8), (257 : stdgo.GoUInt16)) : stdgo._internal.compress.flate.Flate.T_reverseBitsTest), (new stdgo._internal.compress.flate.Flate.T_reverseBitsTest((29 : stdgo.GoUInt16), (5 : stdgo.GoUInt8), (23 : stdgo.GoUInt16)) : stdgo._internal.compress.flate.Flate.T_reverseBitsTest)) : stdgo.Slice<stdgo.Ref<stdgo._internal.compress.flate.Flate.T_reverseBitsTest>>);
var _deflateInflateStringTests : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_deflateInflateStringTest> = (new stdgo.Slice<stdgo._internal.compress.flate.Flate.T_deflateInflateStringTest>(2, 2, (new stdgo._internal.compress.flate.Flate.T_deflateInflateStringTest(("../testdata/e.txt" : stdgo.GoString), ("2.718281828..." : stdgo.GoString), (new stdgo.GoArray<stdgo.GoInt>(
(100018 : stdgo.GoInt),
(50650 : stdgo.GoInt),
(50960 : stdgo.GoInt),
(51150 : stdgo.GoInt),
(50930 : stdgo.GoInt),
(50790 : stdgo.GoInt),
(50790 : stdgo.GoInt),
(50790 : stdgo.GoInt),
(50790 : stdgo.GoInt),
(50790 : stdgo.GoInt),
(43683 : stdgo.GoInt)) : stdgo.GoArray<stdgo.GoInt>)) : stdgo._internal.compress.flate.Flate.T_deflateInflateStringTest), (new stdgo._internal.compress.flate.Flate.T_deflateInflateStringTest(("../../testdata/Isaac.Newton-Opticks.txt" : stdgo.GoString), ("Isaac.Newton-Opticks" : stdgo.GoString), (new stdgo.GoArray<stdgo.GoInt>(
(567248 : stdgo.GoInt),
(218338 : stdgo.GoInt),
(198211 : stdgo.GoInt),
(193152 : stdgo.GoInt),
(181100 : stdgo.GoInt),
(175427 : stdgo.GoInt),
(175427 : stdgo.GoInt),
(173597 : stdgo.GoInt),
(173422 : stdgo.GoInt),
(173422 : stdgo.GoInt),
(325240 : stdgo.GoInt)) : stdgo.GoArray<stdgo.GoInt>)) : stdgo._internal.compress.flate.Flate.T_deflateInflateStringTest)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_deflateInflateStringTest>);
var _errIO : stdgo.Error = stdgo._internal.errors.Errors.new_(("IO error" : stdgo.GoString));
var _update : stdgo.Pointer<Bool> = stdgo._internal.flag.Flag.bool_(("update" : stdgo.GoString), false, ("update reference files" : stdgo.GoString));
var _writeBlockTests : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_huffTest> = (new stdgo.Slice<stdgo._internal.compress.flate.Flate.T_huffTest>(
9,
9,
({ _tokens : (new stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>(
257,
257,
(0u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(0u32 : stdgo._internal.compress.flate.Flate.T_token),
(0u32 : stdgo._internal.compress.flate.Flate.T_token)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>), _input : ("testdata/huffman-null-max.in" : stdgo.GoString), _want : ("testdata/huffman-null-max.%s.expect" : stdgo.GoString), _wantNoInput : ("testdata/huffman-null-max.%s.expect-noinput" : stdgo.GoString) } : stdgo._internal.compress.flate.Flate.T_huffTest),
({ _tokens : (new stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>(
2582,
2582,
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936254u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936146u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936199u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936154u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936306u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936178u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936361u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936137u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936398u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082130585u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082130994u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936134u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936615u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936425u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936330u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936467u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936585u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936244u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082130432u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936858u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936522u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936897u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936872u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936867u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936743u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936658u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936448u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936427u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082131246u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936981u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082131327u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936442u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936456u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936522u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936695u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082130724u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936282u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936672u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082130780u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936497u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936245u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936724u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936350u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936447u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936951u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936397u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936747u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936949u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936498u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082131486u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936367u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936779u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937320u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082130953u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936174u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936593u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937333u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937037u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937064u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1086325535u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936226u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937169u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937271u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937304u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936649u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937214u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937227u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1086325445u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936598u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937469u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937181u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936557u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936170u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936542u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936437u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936581u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936209u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936620u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936473u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936394u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936411u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936686u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937176u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936411u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937232u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936868u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937114u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082131539u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937661u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937375u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937129u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937182u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936791u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937731u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937327u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937412u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936219u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937275u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937639u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936706u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936702u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936314u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936213u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082130694u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937127u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937884u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936243u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082131196u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936829u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937720u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937829u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937531u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936791u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937268u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082132147u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936613u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936281u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937052u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936574u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082130772u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937547u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936828u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937196u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937424u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937720u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936497u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936385u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937992u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937831u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936606u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936936u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936173u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936270u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936431u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937256u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936840u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937691u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936921u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937384u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936767u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936389u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937077u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936770u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937177u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936250u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937422u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082131813u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937497u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937531u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937309u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936702u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937754u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936268u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936218u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937591u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936146u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936871u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938206u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937896u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936370u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937334u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936442u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936139u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936911u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936961u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937563u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937266u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936759u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936223u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938406u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936472u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082130947u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936645u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936638u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936762u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936792u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1086325910u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937546u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936874u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937031u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937435u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937348u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082131027u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938193u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938349u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937246u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938011u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937275u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937339u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936190u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937830u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938416u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936731u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936638u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937471u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937256u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938177u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938380u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082132382u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938554u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936731u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937903u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936436u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936220u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937989u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938486u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937534u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937681u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936713u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938206u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937661u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937630u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936188u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937443u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082132710u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937450u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936900u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082132545u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938354u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937663u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938017u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938495u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082131097u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936965u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082131410u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936772u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938038u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938472u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937256u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938364u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082131869u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082132353u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937497u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936923u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938156u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937164u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082132444u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938545u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082131278u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082131445u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082131757u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082132615u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936519u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938382u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937707u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1086325161u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936620u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937852u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938470u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937257u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936411u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938725u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936495u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937028u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937242u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938252u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938373u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936376u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937623u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938143u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937878u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082132094u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937894u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936164u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938867u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082131428u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937362u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937561u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936532u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936263u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938027u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938518u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938148u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937195u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936500u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936448u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937443u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937937u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938712u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938355u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938060u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936692u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077939175u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077939316u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937091u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938986u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936402u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937072u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082133490u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077939138u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936961u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938069u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938863u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077939298u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938528u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937531u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938500u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936562u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077939046u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936760u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082132603u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082132200u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082133336u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938395u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936929u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938340u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936449u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936316u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077939291u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936689u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938452u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937011u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937545u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937739u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936233u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938042u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077939546u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936642u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936540u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077939329u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936137u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936166u32 : stdgo._internal.compress.flate.Flate.T_token),
(1086326274u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937625u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082132611u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938474u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082133570u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937669u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936237u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937081u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936591u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938618u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936492u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937214u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938627u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082134021u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936391u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936901u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936586u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937179u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077938301u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077939384u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937739u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936357u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077937465u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077939145u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>), _input : ("testdata/huffman-pi.in" : stdgo.GoString), _want : ("testdata/huffman-pi.%s.expect" : stdgo.GoString), _wantNoInput : ("testdata/huffman-pi.%s.expect-noinput" : stdgo.GoString) } : stdgo._internal.compress.flate.Flate.T_huffTest),
({ _tokens : (new stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>(
1000,
1000,
(248u32 : stdgo._internal.compress.flate.Flate.T_token),
(139u32 : stdgo._internal.compress.flate.Flate.T_token),
(150u32 : stdgo._internal.compress.flate.Flate.T_token),
(118u32 : stdgo._internal.compress.flate.Flate.T_token),
(72u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(133u32 : stdgo._internal.compress.flate.Flate.T_token),
(148u32 : stdgo._internal.compress.flate.Flate.T_token),
(37u32 : stdgo._internal.compress.flate.Flate.T_token),
(128u32 : stdgo._internal.compress.flate.Flate.T_token),
(175u32 : stdgo._internal.compress.flate.Flate.T_token),
(194u32 : stdgo._internal.compress.flate.Flate.T_token),
(254u32 : stdgo._internal.compress.flate.Flate.T_token),
(141u32 : stdgo._internal.compress.flate.Flate.T_token),
(232u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(235u32 : stdgo._internal.compress.flate.Flate.T_token),
(23u32 : stdgo._internal.compress.flate.Flate.T_token),
(134u32 : stdgo._internal.compress.flate.Flate.T_token),
(201u32 : stdgo._internal.compress.flate.Flate.T_token),
(183u32 : stdgo._internal.compress.flate.Flate.T_token),
(197u32 : stdgo._internal.compress.flate.Flate.T_token),
(222u32 : stdgo._internal.compress.flate.Flate.T_token),
(6u32 : stdgo._internal.compress.flate.Flate.T_token),
(234u32 : stdgo._internal.compress.flate.Flate.T_token),
(125u32 : stdgo._internal.compress.flate.Flate.T_token),
(24u32 : stdgo._internal.compress.flate.Flate.T_token),
(139u32 : stdgo._internal.compress.flate.Flate.T_token),
(231u32 : stdgo._internal.compress.flate.Flate.T_token),
(62u32 : stdgo._internal.compress.flate.Flate.T_token),
(7u32 : stdgo._internal.compress.flate.Flate.T_token),
(218u32 : stdgo._internal.compress.flate.Flate.T_token),
(223u32 : stdgo._internal.compress.flate.Flate.T_token),
(255u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(115u32 : stdgo._internal.compress.flate.Flate.T_token),
(222u32 : stdgo._internal.compress.flate.Flate.T_token),
(204u32 : stdgo._internal.compress.flate.Flate.T_token),
(231u32 : stdgo._internal.compress.flate.Flate.T_token),
(109u32 : stdgo._internal.compress.flate.Flate.T_token),
(141u32 : stdgo._internal.compress.flate.Flate.T_token),
(4u32 : stdgo._internal.compress.flate.Flate.T_token),
(25u32 : stdgo._internal.compress.flate.Flate.T_token),
(73u32 : stdgo._internal.compress.flate.Flate.T_token),
(127u32 : stdgo._internal.compress.flate.Flate.T_token),
(71u32 : stdgo._internal.compress.flate.Flate.T_token),
(31u32 : stdgo._internal.compress.flate.Flate.T_token),
(72u32 : stdgo._internal.compress.flate.Flate.T_token),
(21u32 : stdgo._internal.compress.flate.Flate.T_token),
(176u32 : stdgo._internal.compress.flate.Flate.T_token),
(232u32 : stdgo._internal.compress.flate.Flate.T_token),
(158u32 : stdgo._internal.compress.flate.Flate.T_token),
(242u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(89u32 : stdgo._internal.compress.flate.Flate.T_token),
(222u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(180u32 : stdgo._internal.compress.flate.Flate.T_token),
(91u32 : stdgo._internal.compress.flate.Flate.T_token),
(229u32 : stdgo._internal.compress.flate.Flate.T_token),
(224u32 : stdgo._internal.compress.flate.Flate.T_token),
(9u32 : stdgo._internal.compress.flate.Flate.T_token),
(17u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(194u32 : stdgo._internal.compress.flate.Flate.T_token),
(136u32 : stdgo._internal.compress.flate.Flate.T_token),
(91u32 : stdgo._internal.compress.flate.Flate.T_token),
(124u32 : stdgo._internal.compress.flate.Flate.T_token),
(93u32 : stdgo._internal.compress.flate.Flate.T_token),
(20u32 : stdgo._internal.compress.flate.Flate.T_token),
(19u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(35u32 : stdgo._internal.compress.flate.Flate.T_token),
(169u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(188u32 : stdgo._internal.compress.flate.Flate.T_token),
(45u32 : stdgo._internal.compress.flate.Flate.T_token),
(35u32 : stdgo._internal.compress.flate.Flate.T_token),
(190u32 : stdgo._internal.compress.flate.Flate.T_token),
(217u32 : stdgo._internal.compress.flate.Flate.T_token),
(237u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(4u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(153u32 : stdgo._internal.compress.flate.Flate.T_token),
(223u32 : stdgo._internal.compress.flate.Flate.T_token),
(253u32 : stdgo._internal.compress.flate.Flate.T_token),
(112u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(230u32 : stdgo._internal.compress.flate.Flate.T_token),
(238u32 : stdgo._internal.compress.flate.Flate.T_token),
(217u32 : stdgo._internal.compress.flate.Flate.T_token),
(177u32 : stdgo._internal.compress.flate.Flate.T_token),
(158u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(131u32 : stdgo._internal.compress.flate.Flate.T_token),
(89u32 : stdgo._internal.compress.flate.Flate.T_token),
(213u32 : stdgo._internal.compress.flate.Flate.T_token),
(212u32 : stdgo._internal.compress.flate.Flate.T_token),
(128u32 : stdgo._internal.compress.flate.Flate.T_token),
(89u32 : stdgo._internal.compress.flate.Flate.T_token),
(152u32 : stdgo._internal.compress.flate.Flate.T_token),
(119u32 : stdgo._internal.compress.flate.Flate.T_token),
(137u32 : stdgo._internal.compress.flate.Flate.T_token),
(67u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(201u32 : stdgo._internal.compress.flate.Flate.T_token),
(175u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(154u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(27u32 : stdgo._internal.compress.flate.Flate.T_token),
(70u32 : stdgo._internal.compress.flate.Flate.T_token),
(61u32 : stdgo._internal.compress.flate.Flate.T_token),
(103u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(215u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(158u32 : stdgo._internal.compress.flate.Flate.T_token),
(78u32 : stdgo._internal.compress.flate.Flate.T_token),
(33u32 : stdgo._internal.compress.flate.Flate.T_token),
(79u32 : stdgo._internal.compress.flate.Flate.T_token),
(198u32 : stdgo._internal.compress.flate.Flate.T_token),
(224u32 : stdgo._internal.compress.flate.Flate.T_token),
(212u32 : stdgo._internal.compress.flate.Flate.T_token),
(123u32 : stdgo._internal.compress.flate.Flate.T_token),
(4u32 : stdgo._internal.compress.flate.Flate.T_token),
(141u32 : stdgo._internal.compress.flate.Flate.T_token),
(165u32 : stdgo._internal.compress.flate.Flate.T_token),
(3u32 : stdgo._internal.compress.flate.Flate.T_token),
(246u32 : stdgo._internal.compress.flate.Flate.T_token),
(5u32 : stdgo._internal.compress.flate.Flate.T_token),
(155u32 : stdgo._internal.compress.flate.Flate.T_token),
(107u32 : stdgo._internal.compress.flate.Flate.T_token),
(220u32 : stdgo._internal.compress.flate.Flate.T_token),
(42u32 : stdgo._internal.compress.flate.Flate.T_token),
(147u32 : stdgo._internal.compress.flate.Flate.T_token),
(119u32 : stdgo._internal.compress.flate.Flate.T_token),
(40u32 : stdgo._internal.compress.flate.Flate.T_token),
(253u32 : stdgo._internal.compress.flate.Flate.T_token),
(180u32 : stdgo._internal.compress.flate.Flate.T_token),
(98u32 : stdgo._internal.compress.flate.Flate.T_token),
(218u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(231u32 : stdgo._internal.compress.flate.Flate.T_token),
(31u32 : stdgo._internal.compress.flate.Flate.T_token),
(171u32 : stdgo._internal.compress.flate.Flate.T_token),
(107u32 : stdgo._internal.compress.flate.Flate.T_token),
(81u32 : stdgo._internal.compress.flate.Flate.T_token),
(67u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(47u32 : stdgo._internal.compress.flate.Flate.T_token),
(160u32 : stdgo._internal.compress.flate.Flate.T_token),
(146u32 : stdgo._internal.compress.flate.Flate.T_token),
(1u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(62u32 : stdgo._internal.compress.flate.Flate.T_token),
(244u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(253u32 : stdgo._internal.compress.flate.Flate.T_token),
(67u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(247u32 : stdgo._internal.compress.flate.Flate.T_token),
(164u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(218u32 : stdgo._internal.compress.flate.Flate.T_token),
(234u32 : stdgo._internal.compress.flate.Flate.T_token),
(155u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(100u32 : stdgo._internal.compress.flate.Flate.T_token),
(11u32 : stdgo._internal.compress.flate.Flate.T_token),
(224u32 : stdgo._internal.compress.flate.Flate.T_token),
(35u32 : stdgo._internal.compress.flate.Flate.T_token),
(41u32 : stdgo._internal.compress.flate.Flate.T_token),
(189u32 : stdgo._internal.compress.flate.Flate.T_token),
(247u32 : stdgo._internal.compress.flate.Flate.T_token),
(231u32 : stdgo._internal.compress.flate.Flate.T_token),
(131u32 : stdgo._internal.compress.flate.Flate.T_token),
(60u32 : stdgo._internal.compress.flate.Flate.T_token),
(251u32 : stdgo._internal.compress.flate.Flate.T_token),
(223u32 : stdgo._internal.compress.flate.Flate.T_token),
(179u32 : stdgo._internal.compress.flate.Flate.T_token),
(174u32 : stdgo._internal.compress.flate.Flate.T_token),
(79u32 : stdgo._internal.compress.flate.Flate.T_token),
(164u32 : stdgo._internal.compress.flate.Flate.T_token),
(71u32 : stdgo._internal.compress.flate.Flate.T_token),
(85u32 : stdgo._internal.compress.flate.Flate.T_token),
(153u32 : stdgo._internal.compress.flate.Flate.T_token),
(222u32 : stdgo._internal.compress.flate.Flate.T_token),
(47u32 : stdgo._internal.compress.flate.Flate.T_token),
(150u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(28u32 : stdgo._internal.compress.flate.Flate.T_token),
(67u32 : stdgo._internal.compress.flate.Flate.T_token),
(76u32 : stdgo._internal.compress.flate.Flate.T_token),
(135u32 : stdgo._internal.compress.flate.Flate.T_token),
(226u32 : stdgo._internal.compress.flate.Flate.T_token),
(124u32 : stdgo._internal.compress.flate.Flate.T_token),
(217u32 : stdgo._internal.compress.flate.Flate.T_token),
(95u32 : stdgo._internal.compress.flate.Flate.T_token),
(76u32 : stdgo._internal.compress.flate.Flate.T_token),
(124u32 : stdgo._internal.compress.flate.Flate.T_token),
(232u32 : stdgo._internal.compress.flate.Flate.T_token),
(144u32 : stdgo._internal.compress.flate.Flate.T_token),
(3u32 : stdgo._internal.compress.flate.Flate.T_token),
(219u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(149u32 : stdgo._internal.compress.flate.Flate.T_token),
(214u32 : stdgo._internal.compress.flate.Flate.T_token),
(34u32 : stdgo._internal.compress.flate.Flate.T_token),
(12u32 : stdgo._internal.compress.flate.Flate.T_token),
(71u32 : stdgo._internal.compress.flate.Flate.T_token),
(184u32 : stdgo._internal.compress.flate.Flate.T_token),
(77u32 : stdgo._internal.compress.flate.Flate.T_token),
(107u32 : stdgo._internal.compress.flate.Flate.T_token),
(189u32 : stdgo._internal.compress.flate.Flate.T_token),
(36u32 : stdgo._internal.compress.flate.Flate.T_token),
(17u32 : stdgo._internal.compress.flate.Flate.T_token),
(171u32 : stdgo._internal.compress.flate.Flate.T_token),
(44u32 : stdgo._internal.compress.flate.Flate.T_token),
(215u32 : stdgo._internal.compress.flate.Flate.T_token),
(190u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(122u32 : stdgo._internal.compress.flate.Flate.T_token),
(214u32 : stdgo._internal.compress.flate.Flate.T_token),
(8u32 : stdgo._internal.compress.flate.Flate.T_token),
(163u32 : stdgo._internal.compress.flate.Flate.T_token),
(152u32 : stdgo._internal.compress.flate.Flate.T_token),
(216u32 : stdgo._internal.compress.flate.Flate.T_token),
(221u32 : stdgo._internal.compress.flate.Flate.T_token),
(21u32 : stdgo._internal.compress.flate.Flate.T_token),
(106u32 : stdgo._internal.compress.flate.Flate.T_token),
(250u32 : stdgo._internal.compress.flate.Flate.T_token),
(147u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(1u32 : stdgo._internal.compress.flate.Flate.T_token),
(37u32 : stdgo._internal.compress.flate.Flate.T_token),
(29u32 : stdgo._internal.compress.flate.Flate.T_token),
(162u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(134u32 : stdgo._internal.compress.flate.Flate.T_token),
(75u32 : stdgo._internal.compress.flate.Flate.T_token),
(106u32 : stdgo._internal.compress.flate.Flate.T_token),
(149u32 : stdgo._internal.compress.flate.Flate.T_token),
(232u32 : stdgo._internal.compress.flate.Flate.T_token),
(225u32 : stdgo._internal.compress.flate.Flate.T_token),
(78u32 : stdgo._internal.compress.flate.Flate.T_token),
(14u32 : stdgo._internal.compress.flate.Flate.T_token),
(118u32 : stdgo._internal.compress.flate.Flate.T_token),
(185u32 : stdgo._internal.compress.flate.Flate.T_token),
(73u32 : stdgo._internal.compress.flate.Flate.T_token),
(169u32 : stdgo._internal.compress.flate.Flate.T_token),
(95u32 : stdgo._internal.compress.flate.Flate.T_token),
(160u32 : stdgo._internal.compress.flate.Flate.T_token),
(166u32 : stdgo._internal.compress.flate.Flate.T_token),
(99u32 : stdgo._internal.compress.flate.Flate.T_token),
(60u32 : stdgo._internal.compress.flate.Flate.T_token),
(126u32 : stdgo._internal.compress.flate.Flate.T_token),
(126u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(19u32 : stdgo._internal.compress.flate.Flate.T_token),
(79u32 : stdgo._internal.compress.flate.Flate.T_token),
(187u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(146u32 : stdgo._internal.compress.flate.Flate.T_token),
(184u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(164u32 : stdgo._internal.compress.flate.Flate.T_token),
(250u32 : stdgo._internal.compress.flate.Flate.T_token),
(72u32 : stdgo._internal.compress.flate.Flate.T_token),
(203u32 : stdgo._internal.compress.flate.Flate.T_token),
(174u32 : stdgo._internal.compress.flate.Flate.T_token),
(185u32 : stdgo._internal.compress.flate.Flate.T_token),
(60u32 : stdgo._internal.compress.flate.Flate.T_token),
(175u32 : stdgo._internal.compress.flate.Flate.T_token),
(211u32 : stdgo._internal.compress.flate.Flate.T_token),
(31u32 : stdgo._internal.compress.flate.Flate.T_token),
(225u32 : stdgo._internal.compress.flate.Flate.T_token),
(213u32 : stdgo._internal.compress.flate.Flate.T_token),
(141u32 : stdgo._internal.compress.flate.Flate.T_token),
(66u32 : stdgo._internal.compress.flate.Flate.T_token),
(109u32 : stdgo._internal.compress.flate.Flate.T_token),
(240u32 : stdgo._internal.compress.flate.Flate.T_token),
(252u32 : stdgo._internal.compress.flate.Flate.T_token),
(140u32 : stdgo._internal.compress.flate.Flate.T_token),
(12u32 : stdgo._internal.compress.flate.Flate.T_token),
(0u32 : stdgo._internal.compress.flate.Flate.T_token),
(222u32 : stdgo._internal.compress.flate.Flate.T_token),
(64u32 : stdgo._internal.compress.flate.Flate.T_token),
(171u32 : stdgo._internal.compress.flate.Flate.T_token),
(139u32 : stdgo._internal.compress.flate.Flate.T_token),
(71u32 : stdgo._internal.compress.flate.Flate.T_token),
(151u32 : stdgo._internal.compress.flate.Flate.T_token),
(78u32 : stdgo._internal.compress.flate.Flate.T_token),
(168u32 : stdgo._internal.compress.flate.Flate.T_token),
(207u32 : stdgo._internal.compress.flate.Flate.T_token),
(142u32 : stdgo._internal.compress.flate.Flate.T_token),
(219u32 : stdgo._internal.compress.flate.Flate.T_token),
(166u32 : stdgo._internal.compress.flate.Flate.T_token),
(139u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(9u32 : stdgo._internal.compress.flate.Flate.T_token),
(132u32 : stdgo._internal.compress.flate.Flate.T_token),
(122u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(229u32 : stdgo._internal.compress.flate.Flate.T_token),
(152u32 : stdgo._internal.compress.flate.Flate.T_token),
(41u32 : stdgo._internal.compress.flate.Flate.T_token),
(2u32 : stdgo._internal.compress.flate.Flate.T_token),
(149u32 : stdgo._internal.compress.flate.Flate.T_token),
(230u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(96u32 : stdgo._internal.compress.flate.Flate.T_token),
(3u32 : stdgo._internal.compress.flate.Flate.T_token),
(227u32 : stdgo._internal.compress.flate.Flate.T_token),
(154u32 : stdgo._internal.compress.flate.Flate.T_token),
(30u32 : stdgo._internal.compress.flate.Flate.T_token),
(84u32 : stdgo._internal.compress.flate.Flate.T_token),
(232u32 : stdgo._internal.compress.flate.Flate.T_token),
(99u32 : stdgo._internal.compress.flate.Flate.T_token),
(128u32 : stdgo._internal.compress.flate.Flate.T_token),
(72u32 : stdgo._internal.compress.flate.Flate.T_token),
(156u32 : stdgo._internal.compress.flate.Flate.T_token),
(231u32 : stdgo._internal.compress.flate.Flate.T_token),
(99u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(160u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(131u32 : stdgo._internal.compress.flate.Flate.T_token),
(250u32 : stdgo._internal.compress.flate.Flate.T_token),
(198u32 : stdgo._internal.compress.flate.Flate.T_token),
(186u32 : stdgo._internal.compress.flate.Flate.T_token),
(122u32 : stdgo._internal.compress.flate.Flate.T_token),
(67u32 : stdgo._internal.compress.flate.Flate.T_token),
(113u32 : stdgo._internal.compress.flate.Flate.T_token),
(5u32 : stdgo._internal.compress.flate.Flate.T_token),
(245u32 : stdgo._internal.compress.flate.Flate.T_token),
(104u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(133u32 : stdgo._internal.compress.flate.Flate.T_token),
(156u32 : stdgo._internal.compress.flate.Flate.T_token),
(186u32 : stdgo._internal.compress.flate.Flate.T_token),
(69u32 : stdgo._internal.compress.flate.Flate.T_token),
(205u32 : stdgo._internal.compress.flate.Flate.T_token),
(107u32 : stdgo._internal.compress.flate.Flate.T_token),
(11u32 : stdgo._internal.compress.flate.Flate.T_token),
(25u32 : stdgo._internal.compress.flate.Flate.T_token),
(209u32 : stdgo._internal.compress.flate.Flate.T_token),
(187u32 : stdgo._internal.compress.flate.Flate.T_token),
(127u32 : stdgo._internal.compress.flate.Flate.T_token),
(112u32 : stdgo._internal.compress.flate.Flate.T_token),
(133u32 : stdgo._internal.compress.flate.Flate.T_token),
(146u32 : stdgo._internal.compress.flate.Flate.T_token),
(209u32 : stdgo._internal.compress.flate.Flate.T_token),
(180u32 : stdgo._internal.compress.flate.Flate.T_token),
(100u32 : stdgo._internal.compress.flate.Flate.T_token),
(130u32 : stdgo._internal.compress.flate.Flate.T_token),
(177u32 : stdgo._internal.compress.flate.Flate.T_token),
(228u32 : stdgo._internal.compress.flate.Flate.T_token),
(98u32 : stdgo._internal.compress.flate.Flate.T_token),
(197u32 : stdgo._internal.compress.flate.Flate.T_token),
(60u32 : stdgo._internal.compress.flate.Flate.T_token),
(70u32 : stdgo._internal.compress.flate.Flate.T_token),
(31u32 : stdgo._internal.compress.flate.Flate.T_token),
(146u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(28u32 : stdgo._internal.compress.flate.Flate.T_token),
(78u32 : stdgo._internal.compress.flate.Flate.T_token),
(65u32 : stdgo._internal.compress.flate.Flate.T_token),
(119u32 : stdgo._internal.compress.flate.Flate.T_token),
(247u32 : stdgo._internal.compress.flate.Flate.T_token),
(231u32 : stdgo._internal.compress.flate.Flate.T_token),
(135u32 : stdgo._internal.compress.flate.Flate.T_token),
(162u32 : stdgo._internal.compress.flate.Flate.T_token),
(15u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(232u32 : stdgo._internal.compress.flate.Flate.T_token),
(146u32 : stdgo._internal.compress.flate.Flate.T_token),
(3u32 : stdgo._internal.compress.flate.Flate.T_token),
(107u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(231u32 : stdgo._internal.compress.flate.Flate.T_token),
(169u32 : stdgo._internal.compress.flate.Flate.T_token),
(59u32 : stdgo._internal.compress.flate.Flate.T_token),
(17u32 : stdgo._internal.compress.flate.Flate.T_token),
(218u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(138u32 : stdgo._internal.compress.flate.Flate.T_token),
(41u32 : stdgo._internal.compress.flate.Flate.T_token),
(218u32 : stdgo._internal.compress.flate.Flate.T_token),
(121u32 : stdgo._internal.compress.flate.Flate.T_token),
(225u32 : stdgo._internal.compress.flate.Flate.T_token),
(100u32 : stdgo._internal.compress.flate.Flate.T_token),
(141u32 : stdgo._internal.compress.flate.Flate.T_token),
(227u32 : stdgo._internal.compress.flate.Flate.T_token),
(84u32 : stdgo._internal.compress.flate.Flate.T_token),
(212u32 : stdgo._internal.compress.flate.Flate.T_token),
(245u32 : stdgo._internal.compress.flate.Flate.T_token),
(239u32 : stdgo._internal.compress.flate.Flate.T_token),
(100u32 : stdgo._internal.compress.flate.Flate.T_token),
(135u32 : stdgo._internal.compress.flate.Flate.T_token),
(59u32 : stdgo._internal.compress.flate.Flate.T_token),
(244u32 : stdgo._internal.compress.flate.Flate.T_token),
(194u32 : stdgo._internal.compress.flate.Flate.T_token),
(244u32 : stdgo._internal.compress.flate.Flate.T_token),
(113u32 : stdgo._internal.compress.flate.Flate.T_token),
(19u32 : stdgo._internal.compress.flate.Flate.T_token),
(169u32 : stdgo._internal.compress.flate.Flate.T_token),
(233u32 : stdgo._internal.compress.flate.Flate.T_token),
(224u32 : stdgo._internal.compress.flate.Flate.T_token),
(162u32 : stdgo._internal.compress.flate.Flate.T_token),
(6u32 : stdgo._internal.compress.flate.Flate.T_token),
(20u32 : stdgo._internal.compress.flate.Flate.T_token),
(171u32 : stdgo._internal.compress.flate.Flate.T_token),
(93u32 : stdgo._internal.compress.flate.Flate.T_token),
(167u32 : stdgo._internal.compress.flate.Flate.T_token),
(150u32 : stdgo._internal.compress.flate.Flate.T_token),
(0u32 : stdgo._internal.compress.flate.Flate.T_token),
(214u32 : stdgo._internal.compress.flate.Flate.T_token),
(195u32 : stdgo._internal.compress.flate.Flate.T_token),
(204u32 : stdgo._internal.compress.flate.Flate.T_token),
(87u32 : stdgo._internal.compress.flate.Flate.T_token),
(237u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(106u32 : stdgo._internal.compress.flate.Flate.T_token),
(37u32 : stdgo._internal.compress.flate.Flate.T_token),
(205u32 : stdgo._internal.compress.flate.Flate.T_token),
(118u32 : stdgo._internal.compress.flate.Flate.T_token),
(234u32 : stdgo._internal.compress.flate.Flate.T_token),
(186u32 : stdgo._internal.compress.flate.Flate.T_token),
(58u32 : stdgo._internal.compress.flate.Flate.T_token),
(242u32 : stdgo._internal.compress.flate.Flate.T_token),
(161u32 : stdgo._internal.compress.flate.Flate.T_token),
(149u32 : stdgo._internal.compress.flate.Flate.T_token),
(93u32 : stdgo._internal.compress.flate.Flate.T_token),
(229u32 : stdgo._internal.compress.flate.Flate.T_token),
(113u32 : stdgo._internal.compress.flate.Flate.T_token),
(207u32 : stdgo._internal.compress.flate.Flate.T_token),
(156u32 : stdgo._internal.compress.flate.Flate.T_token),
(98u32 : stdgo._internal.compress.flate.Flate.T_token),
(158u32 : stdgo._internal.compress.flate.Flate.T_token),
(106u32 : stdgo._internal.compress.flate.Flate.T_token),
(250u32 : stdgo._internal.compress.flate.Flate.T_token),
(213u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(209u32 : stdgo._internal.compress.flate.Flate.T_token),
(168u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(170u32 : stdgo._internal.compress.flate.Flate.T_token),
(81u32 : stdgo._internal.compress.flate.Flate.T_token),
(23u32 : stdgo._internal.compress.flate.Flate.T_token),
(19u32 : stdgo._internal.compress.flate.Flate.T_token),
(130u32 : stdgo._internal.compress.flate.Flate.T_token),
(153u32 : stdgo._internal.compress.flate.Flate.T_token),
(200u32 : stdgo._internal.compress.flate.Flate.T_token),
(20u32 : stdgo._internal.compress.flate.Flate.T_token),
(96u32 : stdgo._internal.compress.flate.Flate.T_token),
(159u32 : stdgo._internal.compress.flate.Flate.T_token),
(77u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(109u32 : stdgo._internal.compress.flate.Flate.T_token),
(218u32 : stdgo._internal.compress.flate.Flate.T_token),
(25u32 : stdgo._internal.compress.flate.Flate.T_token),
(38u32 : stdgo._internal.compress.flate.Flate.T_token),
(33u32 : stdgo._internal.compress.flate.Flate.T_token),
(220u32 : stdgo._internal.compress.flate.Flate.T_token),
(126u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(37u32 : stdgo._internal.compress.flate.Flate.T_token),
(103u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(202u32 : stdgo._internal.compress.flate.Flate.T_token),
(15u32 : stdgo._internal.compress.flate.Flate.T_token),
(146u32 : stdgo._internal.compress.flate.Flate.T_token),
(205u32 : stdgo._internal.compress.flate.Flate.T_token),
(246u32 : stdgo._internal.compress.flate.Flate.T_token),
(214u32 : stdgo._internal.compress.flate.Flate.T_token),
(203u32 : stdgo._internal.compress.flate.Flate.T_token),
(151u32 : stdgo._internal.compress.flate.Flate.T_token),
(138u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(88u32 : stdgo._internal.compress.flate.Flate.T_token),
(115u32 : stdgo._internal.compress.flate.Flate.T_token),
(112u32 : stdgo._internal.compress.flate.Flate.T_token),
(145u32 : stdgo._internal.compress.flate.Flate.T_token),
(29u32 : stdgo._internal.compress.flate.Flate.T_token),
(191u32 : stdgo._internal.compress.flate.Flate.T_token),
(40u32 : stdgo._internal.compress.flate.Flate.T_token),
(35u32 : stdgo._internal.compress.flate.Flate.T_token),
(163u32 : stdgo._internal.compress.flate.Flate.T_token),
(12u32 : stdgo._internal.compress.flate.Flate.T_token),
(241u32 : stdgo._internal.compress.flate.Flate.T_token),
(131u32 : stdgo._internal.compress.flate.Flate.T_token),
(195u32 : stdgo._internal.compress.flate.Flate.T_token),
(200u32 : stdgo._internal.compress.flate.Flate.T_token),
(86u32 : stdgo._internal.compress.flate.Flate.T_token),
(119u32 : stdgo._internal.compress.flate.Flate.T_token),
(104u32 : stdgo._internal.compress.flate.Flate.T_token),
(227u32 : stdgo._internal.compress.flate.Flate.T_token),
(130u32 : stdgo._internal.compress.flate.Flate.T_token),
(186u32 : stdgo._internal.compress.flate.Flate.T_token),
(185u32 : stdgo._internal.compress.flate.Flate.T_token),
(87u32 : stdgo._internal.compress.flate.Flate.T_token),
(86u32 : stdgo._internal.compress.flate.Flate.T_token),
(87u32 : stdgo._internal.compress.flate.Flate.T_token),
(156u32 : stdgo._internal.compress.flate.Flate.T_token),
(195u32 : stdgo._internal.compress.flate.Flate.T_token),
(214u32 : stdgo._internal.compress.flate.Flate.T_token),
(20u32 : stdgo._internal.compress.flate.Flate.T_token),
(5u32 : stdgo._internal.compress.flate.Flate.T_token),
(60u32 : stdgo._internal.compress.flate.Flate.T_token),
(177u32 : stdgo._internal.compress.flate.Flate.T_token),
(175u32 : stdgo._internal.compress.flate.Flate.T_token),
(147u32 : stdgo._internal.compress.flate.Flate.T_token),
(200u32 : stdgo._internal.compress.flate.Flate.T_token),
(138u32 : stdgo._internal.compress.flate.Flate.T_token),
(87u32 : stdgo._internal.compress.flate.Flate.T_token),
(127u32 : stdgo._internal.compress.flate.Flate.T_token),
(83u32 : stdgo._internal.compress.flate.Flate.T_token),
(250u32 : stdgo._internal.compress.flate.Flate.T_token),
(47u32 : stdgo._internal.compress.flate.Flate.T_token),
(170u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(131u32 : stdgo._internal.compress.flate.Flate.T_token),
(250u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(209u32 : stdgo._internal.compress.flate.Flate.T_token),
(33u32 : stdgo._internal.compress.flate.Flate.T_token),
(171u32 : stdgo._internal.compress.flate.Flate.T_token),
(27u32 : stdgo._internal.compress.flate.Flate.T_token),
(113u32 : stdgo._internal.compress.flate.Flate.T_token),
(180u32 : stdgo._internal.compress.flate.Flate.T_token),
(124u32 : stdgo._internal.compress.flate.Flate.T_token),
(218u32 : stdgo._internal.compress.flate.Flate.T_token),
(253u32 : stdgo._internal.compress.flate.Flate.T_token),
(251u32 : stdgo._internal.compress.flate.Flate.T_token),
(127u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(171u32 : stdgo._internal.compress.flate.Flate.T_token),
(94u32 : stdgo._internal.compress.flate.Flate.T_token),
(213u32 : stdgo._internal.compress.flate.Flate.T_token),
(202u32 : stdgo._internal.compress.flate.Flate.T_token),
(253u32 : stdgo._internal.compress.flate.Flate.T_token),
(221u32 : stdgo._internal.compress.flate.Flate.T_token),
(224u32 : stdgo._internal.compress.flate.Flate.T_token),
(238u32 : stdgo._internal.compress.flate.Flate.T_token),
(218u32 : stdgo._internal.compress.flate.Flate.T_token),
(186u32 : stdgo._internal.compress.flate.Flate.T_token),
(168u32 : stdgo._internal.compress.flate.Flate.T_token),
(39u32 : stdgo._internal.compress.flate.Flate.T_token),
(153u32 : stdgo._internal.compress.flate.Flate.T_token),
(151u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(193u32 : stdgo._internal.compress.flate.Flate.T_token),
(60u32 : stdgo._internal.compress.flate.Flate.T_token),
(130u32 : stdgo._internal.compress.flate.Flate.T_token),
(140u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(92u32 : stdgo._internal.compress.flate.Flate.T_token),
(45u32 : stdgo._internal.compress.flate.Flate.T_token),
(91u32 : stdgo._internal.compress.flate.Flate.T_token),
(136u32 : stdgo._internal.compress.flate.Flate.T_token),
(62u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(134u32 : stdgo._internal.compress.flate.Flate.T_token),
(55u32 : stdgo._internal.compress.flate.Flate.T_token),
(70u32 : stdgo._internal.compress.flate.Flate.T_token),
(121u32 : stdgo._internal.compress.flate.Flate.T_token),
(225u32 : stdgo._internal.compress.flate.Flate.T_token),
(170u32 : stdgo._internal.compress.flate.Flate.T_token),
(25u32 : stdgo._internal.compress.flate.Flate.T_token),
(251u32 : stdgo._internal.compress.flate.Flate.T_token),
(170u32 : stdgo._internal.compress.flate.Flate.T_token),
(222u32 : stdgo._internal.compress.flate.Flate.T_token),
(21u32 : stdgo._internal.compress.flate.Flate.T_token),
(9u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(26u32 : stdgo._internal.compress.flate.Flate.T_token),
(87u32 : stdgo._internal.compress.flate.Flate.T_token),
(255u32 : stdgo._internal.compress.flate.Flate.T_token),
(181u32 : stdgo._internal.compress.flate.Flate.T_token),
(15u32 : stdgo._internal.compress.flate.Flate.T_token),
(243u32 : stdgo._internal.compress.flate.Flate.T_token),
(43u32 : stdgo._internal.compress.flate.Flate.T_token),
(90u32 : stdgo._internal.compress.flate.Flate.T_token),
(106u32 : stdgo._internal.compress.flate.Flate.T_token),
(77u32 : stdgo._internal.compress.flate.Flate.T_token),
(25u32 : stdgo._internal.compress.flate.Flate.T_token),
(119u32 : stdgo._internal.compress.flate.Flate.T_token),
(113u32 : stdgo._internal.compress.flate.Flate.T_token),
(69u32 : stdgo._internal.compress.flate.Flate.T_token),
(223u32 : stdgo._internal.compress.flate.Flate.T_token),
(79u32 : stdgo._internal.compress.flate.Flate.T_token),
(179u32 : stdgo._internal.compress.flate.Flate.T_token),
(236u32 : stdgo._internal.compress.flate.Flate.T_token),
(241u32 : stdgo._internal.compress.flate.Flate.T_token),
(235u32 : stdgo._internal.compress.flate.Flate.T_token),
(24u32 : stdgo._internal.compress.flate.Flate.T_token),
(83u32 : stdgo._internal.compress.flate.Flate.T_token),
(62u32 : stdgo._internal.compress.flate.Flate.T_token),
(59u32 : stdgo._internal.compress.flate.Flate.T_token),
(71u32 : stdgo._internal.compress.flate.Flate.T_token),
(8u32 : stdgo._internal.compress.flate.Flate.T_token),
(154u32 : stdgo._internal.compress.flate.Flate.T_token),
(115u32 : stdgo._internal.compress.flate.Flate.T_token),
(160u32 : stdgo._internal.compress.flate.Flate.T_token),
(92u32 : stdgo._internal.compress.flate.Flate.T_token),
(140u32 : stdgo._internal.compress.flate.Flate.T_token),
(95u32 : stdgo._internal.compress.flate.Flate.T_token),
(235u32 : stdgo._internal.compress.flate.Flate.T_token),
(15u32 : stdgo._internal.compress.flate.Flate.T_token),
(58u32 : stdgo._internal.compress.flate.Flate.T_token),
(194u32 : stdgo._internal.compress.flate.Flate.T_token),
(67u32 : stdgo._internal.compress.flate.Flate.T_token),
(103u32 : stdgo._internal.compress.flate.Flate.T_token),
(180u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(103u32 : stdgo._internal.compress.flate.Flate.T_token),
(128u32 : stdgo._internal.compress.flate.Flate.T_token),
(88u32 : stdgo._internal.compress.flate.Flate.T_token),
(14u32 : stdgo._internal.compress.flate.Flate.T_token),
(193u32 : stdgo._internal.compress.flate.Flate.T_token),
(236u32 : stdgo._internal.compress.flate.Flate.T_token),
(64u32 : stdgo._internal.compress.flate.Flate.T_token),
(212u32 : stdgo._internal.compress.flate.Flate.T_token),
(34u32 : stdgo._internal.compress.flate.Flate.T_token),
(148u32 : stdgo._internal.compress.flate.Flate.T_token),
(202u32 : stdgo._internal.compress.flate.Flate.T_token),
(249u32 : stdgo._internal.compress.flate.Flate.T_token),
(232u32 : stdgo._internal.compress.flate.Flate.T_token),
(146u32 : stdgo._internal.compress.flate.Flate.T_token),
(228u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(190u32 : stdgo._internal.compress.flate.Flate.T_token),
(103u32 : stdgo._internal.compress.flate.Flate.T_token),
(100u32 : stdgo._internal.compress.flate.Flate.T_token),
(202u32 : stdgo._internal.compress.flate.Flate.T_token),
(80u32 : stdgo._internal.compress.flate.Flate.T_token),
(199u32 : stdgo._internal.compress.flate.Flate.T_token),
(6u32 : stdgo._internal.compress.flate.Flate.T_token),
(103u32 : stdgo._internal.compress.flate.Flate.T_token),
(66u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(163u32 : stdgo._internal.compress.flate.Flate.T_token),
(240u32 : stdgo._internal.compress.flate.Flate.T_token),
(183u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(242u32 : stdgo._internal.compress.flate.Flate.T_token),
(232u32 : stdgo._internal.compress.flate.Flate.T_token),
(95u32 : stdgo._internal.compress.flate.Flate.T_token),
(177u32 : stdgo._internal.compress.flate.Flate.T_token),
(175u32 : stdgo._internal.compress.flate.Flate.T_token),
(231u32 : stdgo._internal.compress.flate.Flate.T_token),
(219u32 : stdgo._internal.compress.flate.Flate.T_token),
(187u32 : stdgo._internal.compress.flate.Flate.T_token),
(119u32 : stdgo._internal.compress.flate.Flate.T_token),
(181u32 : stdgo._internal.compress.flate.Flate.T_token),
(248u32 : stdgo._internal.compress.flate.Flate.T_token),
(203u32 : stdgo._internal.compress.flate.Flate.T_token),
(8u32 : stdgo._internal.compress.flate.Flate.T_token),
(196u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(126u32 : stdgo._internal.compress.flate.Flate.T_token),
(192u32 : stdgo._internal.compress.flate.Flate.T_token),
(249u32 : stdgo._internal.compress.flate.Flate.T_token),
(28u32 : stdgo._internal.compress.flate.Flate.T_token),
(127u32 : stdgo._internal.compress.flate.Flate.T_token),
(60u32 : stdgo._internal.compress.flate.Flate.T_token),
(137u32 : stdgo._internal.compress.flate.Flate.T_token),
(47u32 : stdgo._internal.compress.flate.Flate.T_token),
(210u32 : stdgo._internal.compress.flate.Flate.T_token),
(88u32 : stdgo._internal.compress.flate.Flate.T_token),
(58u32 : stdgo._internal.compress.flate.Flate.T_token),
(226u32 : stdgo._internal.compress.flate.Flate.T_token),
(248u32 : stdgo._internal.compress.flate.Flate.T_token),
(145u32 : stdgo._internal.compress.flate.Flate.T_token),
(182u32 : stdgo._internal.compress.flate.Flate.T_token),
(123u32 : stdgo._internal.compress.flate.Flate.T_token),
(36u32 : stdgo._internal.compress.flate.Flate.T_token),
(39u32 : stdgo._internal.compress.flate.Flate.T_token),
(233u32 : stdgo._internal.compress.flate.Flate.T_token),
(174u32 : stdgo._internal.compress.flate.Flate.T_token),
(132u32 : stdgo._internal.compress.flate.Flate.T_token),
(139u32 : stdgo._internal.compress.flate.Flate.T_token),
(222u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(172u32 : stdgo._internal.compress.flate.Flate.T_token),
(253u32 : stdgo._internal.compress.flate.Flate.T_token),
(217u32 : stdgo._internal.compress.flate.Flate.T_token),
(183u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(42u32 : stdgo._internal.compress.flate.Flate.T_token),
(236u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(240u32 : stdgo._internal.compress.flate.Flate.T_token),
(146u32 : stdgo._internal.compress.flate.Flate.T_token),
(132u32 : stdgo._internal.compress.flate.Flate.T_token),
(241u32 : stdgo._internal.compress.flate.Flate.T_token),
(64u32 : stdgo._internal.compress.flate.Flate.T_token),
(12u32 : stdgo._internal.compress.flate.Flate.T_token),
(138u32 : stdgo._internal.compress.flate.Flate.T_token),
(188u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(115u32 : stdgo._internal.compress.flate.Flate.T_token),
(212u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(138u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(42u32 : stdgo._internal.compress.flate.Flate.T_token),
(220u32 : stdgo._internal.compress.flate.Flate.T_token),
(96u32 : stdgo._internal.compress.flate.Flate.T_token),
(31u32 : stdgo._internal.compress.flate.Flate.T_token),
(163u32 : stdgo._internal.compress.flate.Flate.T_token),
(7u32 : stdgo._internal.compress.flate.Flate.T_token),
(222u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(139u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(200u32 : stdgo._internal.compress.flate.Flate.T_token),
(254u32 : stdgo._internal.compress.flate.Flate.T_token),
(99u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(246u32 : stdgo._internal.compress.flate.Flate.T_token),
(61u32 : stdgo._internal.compress.flate.Flate.T_token),
(99u32 : stdgo._internal.compress.flate.Flate.T_token),
(172u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(137u32 : stdgo._internal.compress.flate.Flate.T_token),
(195u32 : stdgo._internal.compress.flate.Flate.T_token),
(240u32 : stdgo._internal.compress.flate.Flate.T_token),
(248u32 : stdgo._internal.compress.flate.Flate.T_token),
(45u32 : stdgo._internal.compress.flate.Flate.T_token),
(107u32 : stdgo._internal.compress.flate.Flate.T_token),
(180u32 : stdgo._internal.compress.flate.Flate.T_token),
(158u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(139u32 : stdgo._internal.compress.flate.Flate.T_token),
(92u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(180u32 : stdgo._internal.compress.flate.Flate.T_token),
(202u32 : stdgo._internal.compress.flate.Flate.T_token),
(168u32 : stdgo._internal.compress.flate.Flate.T_token),
(228u32 : stdgo._internal.compress.flate.Flate.T_token),
(153u32 : stdgo._internal.compress.flate.Flate.T_token),
(182u32 : stdgo._internal.compress.flate.Flate.T_token),
(144u32 : stdgo._internal.compress.flate.Flate.T_token),
(161u32 : stdgo._internal.compress.flate.Flate.T_token),
(239u32 : stdgo._internal.compress.flate.Flate.T_token),
(15u32 : stdgo._internal.compress.flate.Flate.T_token),
(211u32 : stdgo._internal.compress.flate.Flate.T_token),
(97u32 : stdgo._internal.compress.flate.Flate.T_token),
(178u32 : stdgo._internal.compress.flate.Flate.T_token),
(198u32 : stdgo._internal.compress.flate.Flate.T_token),
(26u32 : stdgo._internal.compress.flate.Flate.T_token),
(148u32 : stdgo._internal.compress.flate.Flate.T_token),
(124u32 : stdgo._internal.compress.flate.Flate.T_token),
(68u32 : stdgo._internal.compress.flate.Flate.T_token),
(85u32 : stdgo._internal.compress.flate.Flate.T_token),
(244u32 : stdgo._internal.compress.flate.Flate.T_token),
(69u32 : stdgo._internal.compress.flate.Flate.T_token),
(255u32 : stdgo._internal.compress.flate.Flate.T_token),
(158u32 : stdgo._internal.compress.flate.Flate.T_token),
(165u32 : stdgo._internal.compress.flate.Flate.T_token),
(90u32 : stdgo._internal.compress.flate.Flate.T_token),
(198u32 : stdgo._internal.compress.flate.Flate.T_token),
(160u32 : stdgo._internal.compress.flate.Flate.T_token),
(232u32 : stdgo._internal.compress.flate.Flate.T_token),
(42u32 : stdgo._internal.compress.flate.Flate.T_token),
(193u32 : stdgo._internal.compress.flate.Flate.T_token),
(141u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(17u32 : stdgo._internal.compress.flate.Flate.T_token),
(185u32 : stdgo._internal.compress.flate.Flate.T_token),
(190u32 : stdgo._internal.compress.flate.Flate.T_token),
(78u32 : stdgo._internal.compress.flate.Flate.T_token),
(217u32 : stdgo._internal.compress.flate.Flate.T_token),
(135u32 : stdgo._internal.compress.flate.Flate.T_token),
(151u32 : stdgo._internal.compress.flate.Flate.T_token),
(115u32 : stdgo._internal.compress.flate.Flate.T_token),
(207u32 : stdgo._internal.compress.flate.Flate.T_token),
(61u32 : stdgo._internal.compress.flate.Flate.T_token),
(35u32 : stdgo._internal.compress.flate.Flate.T_token),
(174u32 : stdgo._internal.compress.flate.Flate.T_token),
(213u32 : stdgo._internal.compress.flate.Flate.T_token),
(26u32 : stdgo._internal.compress.flate.Flate.T_token),
(94u32 : stdgo._internal.compress.flate.Flate.T_token),
(174u32 : stdgo._internal.compress.flate.Flate.T_token),
(93u32 : stdgo._internal.compress.flate.Flate.T_token),
(106u32 : stdgo._internal.compress.flate.Flate.T_token),
(3u32 : stdgo._internal.compress.flate.Flate.T_token),
(249u32 : stdgo._internal.compress.flate.Flate.T_token),
(34u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(16u32 : stdgo._internal.compress.flate.Flate.T_token),
(217u32 : stdgo._internal.compress.flate.Flate.T_token),
(71u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(21u32 : stdgo._internal.compress.flate.Flate.T_token),
(63u32 : stdgo._internal.compress.flate.Flate.T_token),
(238u32 : stdgo._internal.compress.flate.Flate.T_token),
(82u32 : stdgo._internal.compress.flate.Flate.T_token),
(163u32 : stdgo._internal.compress.flate.Flate.T_token),
(8u32 : stdgo._internal.compress.flate.Flate.T_token),
(210u32 : stdgo._internal.compress.flate.Flate.T_token),
(60u32 : stdgo._internal.compress.flate.Flate.T_token),
(81u32 : stdgo._internal.compress.flate.Flate.T_token),
(244u32 : stdgo._internal.compress.flate.Flate.T_token),
(248u32 : stdgo._internal.compress.flate.Flate.T_token),
(157u32 : stdgo._internal.compress.flate.Flate.T_token),
(228u32 : stdgo._internal.compress.flate.Flate.T_token),
(152u32 : stdgo._internal.compress.flate.Flate.T_token),
(137u32 : stdgo._internal.compress.flate.Flate.T_token),
(200u32 : stdgo._internal.compress.flate.Flate.T_token),
(103u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(213u32 : stdgo._internal.compress.flate.Flate.T_token),
(94u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(120u32 : stdgo._internal.compress.flate.Flate.T_token),
(39u32 : stdgo._internal.compress.flate.Flate.T_token),
(232u32 : stdgo._internal.compress.flate.Flate.T_token),
(60u32 : stdgo._internal.compress.flate.Flate.T_token),
(128u32 : stdgo._internal.compress.flate.Flate.T_token),
(174u32 : stdgo._internal.compress.flate.Flate.T_token),
(121u32 : stdgo._internal.compress.flate.Flate.T_token),
(113u32 : stdgo._internal.compress.flate.Flate.T_token),
(210u32 : stdgo._internal.compress.flate.Flate.T_token),
(147u32 : stdgo._internal.compress.flate.Flate.T_token),
(244u32 : stdgo._internal.compress.flate.Flate.T_token),
(170u32 : stdgo._internal.compress.flate.Flate.T_token),
(81u32 : stdgo._internal.compress.flate.Flate.T_token),
(18u32 : stdgo._internal.compress.flate.Flate.T_token),
(28u32 : stdgo._internal.compress.flate.Flate.T_token),
(75u32 : stdgo._internal.compress.flate.Flate.T_token),
(27u32 : stdgo._internal.compress.flate.Flate.T_token),
(229u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(21u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(228u32 : stdgo._internal.compress.flate.Flate.T_token),
(187u32 : stdgo._internal.compress.flate.Flate.T_token),
(81u32 : stdgo._internal.compress.flate.Flate.T_token),
(155u32 : stdgo._internal.compress.flate.Flate.T_token),
(69u32 : stdgo._internal.compress.flate.Flate.T_token),
(159u32 : stdgo._internal.compress.flate.Flate.T_token),
(249u32 : stdgo._internal.compress.flate.Flate.T_token),
(196u32 : stdgo._internal.compress.flate.Flate.T_token),
(140u32 : stdgo._internal.compress.flate.Flate.T_token),
(42u32 : stdgo._internal.compress.flate.Flate.T_token),
(251u32 : stdgo._internal.compress.flate.Flate.T_token),
(26u32 : stdgo._internal.compress.flate.Flate.T_token),
(223u32 : stdgo._internal.compress.flate.Flate.T_token),
(85u32 : stdgo._internal.compress.flate.Flate.T_token),
(211u32 : stdgo._internal.compress.flate.Flate.T_token),
(72u32 : stdgo._internal.compress.flate.Flate.T_token),
(147u32 : stdgo._internal.compress.flate.Flate.T_token),
(39u32 : stdgo._internal.compress.flate.Flate.T_token),
(1u32 : stdgo._internal.compress.flate.Flate.T_token),
(38u32 : stdgo._internal.compress.flate.Flate.T_token),
(194u32 : stdgo._internal.compress.flate.Flate.T_token),
(107u32 : stdgo._internal.compress.flate.Flate.T_token),
(85u32 : stdgo._internal.compress.flate.Flate.T_token),
(109u32 : stdgo._internal.compress.flate.Flate.T_token),
(162u32 : stdgo._internal.compress.flate.Flate.T_token),
(251u32 : stdgo._internal.compress.flate.Flate.T_token),
(132u32 : stdgo._internal.compress.flate.Flate.T_token),
(139u32 : stdgo._internal.compress.flate.Flate.T_token),
(201u32 : stdgo._internal.compress.flate.Flate.T_token),
(158u32 : stdgo._internal.compress.flate.Flate.T_token),
(40u32 : stdgo._internal.compress.flate.Flate.T_token),
(194u32 : stdgo._internal.compress.flate.Flate.T_token),
(239u32 : stdgo._internal.compress.flate.Flate.T_token),
(26u32 : stdgo._internal.compress.flate.Flate.T_token),
(36u32 : stdgo._internal.compress.flate.Flate.T_token),
(236u32 : stdgo._internal.compress.flate.Flate.T_token),
(155u32 : stdgo._internal.compress.flate.Flate.T_token),
(174u32 : stdgo._internal.compress.flate.Flate.T_token),
(189u32 : stdgo._internal.compress.flate.Flate.T_token),
(96u32 : stdgo._internal.compress.flate.Flate.T_token),
(233u32 : stdgo._internal.compress.flate.Flate.T_token),
(21u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(238u32 : stdgo._internal.compress.flate.Flate.T_token),
(66u32 : stdgo._internal.compress.flate.Flate.T_token),
(164u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(91u32 : stdgo._internal.compress.flate.Flate.T_token),
(250u32 : stdgo._internal.compress.flate.Flate.T_token),
(15u32 : stdgo._internal.compress.flate.Flate.T_token),
(182u32 : stdgo._internal.compress.flate.Flate.T_token),
(247u32 : stdgo._internal.compress.flate.Flate.T_token),
(1u32 : stdgo._internal.compress.flate.Flate.T_token),
(166u32 : stdgo._internal.compress.flate.Flate.T_token),
(2u32 : stdgo._internal.compress.flate.Flate.T_token),
(76u32 : stdgo._internal.compress.flate.Flate.T_token),
(202u32 : stdgo._internal.compress.flate.Flate.T_token),
(144u32 : stdgo._internal.compress.flate.Flate.T_token),
(88u32 : stdgo._internal.compress.flate.Flate.T_token),
(58u32 : stdgo._internal.compress.flate.Flate.T_token),
(150u32 : stdgo._internal.compress.flate.Flate.T_token),
(65u32 : stdgo._internal.compress.flate.Flate.T_token),
(231u32 : stdgo._internal.compress.flate.Flate.T_token),
(203u32 : stdgo._internal.compress.flate.Flate.T_token),
(9u32 : stdgo._internal.compress.flate.Flate.T_token),
(140u32 : stdgo._internal.compress.flate.Flate.T_token),
(219u32 : stdgo._internal.compress.flate.Flate.T_token),
(133u32 : stdgo._internal.compress.flate.Flate.T_token),
(77u32 : stdgo._internal.compress.flate.Flate.T_token),
(168u32 : stdgo._internal.compress.flate.Flate.T_token),
(137u32 : stdgo._internal.compress.flate.Flate.T_token),
(243u32 : stdgo._internal.compress.flate.Flate.T_token),
(181u32 : stdgo._internal.compress.flate.Flate.T_token),
(142u32 : stdgo._internal.compress.flate.Flate.T_token),
(253u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(91u32 : stdgo._internal.compress.flate.Flate.T_token),
(79u32 : stdgo._internal.compress.flate.Flate.T_token),
(237u32 : stdgo._internal.compress.flate.Flate.T_token),
(222u32 : stdgo._internal.compress.flate.Flate.T_token),
(63u32 : stdgo._internal.compress.flate.Flate.T_token),
(235u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(163u32 : stdgo._internal.compress.flate.Flate.T_token),
(190u32 : stdgo._internal.compress.flate.Flate.T_token),
(176u32 : stdgo._internal.compress.flate.Flate.T_token),
(115u32 : stdgo._internal.compress.flate.Flate.T_token),
(252u32 : stdgo._internal.compress.flate.Flate.T_token),
(184u32 : stdgo._internal.compress.flate.Flate.T_token),
(84u32 : stdgo._internal.compress.flate.Flate.T_token),
(247u32 : stdgo._internal.compress.flate.Flate.T_token),
(76u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(103u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(162u32 : stdgo._internal.compress.flate.Flate.T_token),
(84u32 : stdgo._internal.compress.flate.Flate.T_token),
(24u32 : stdgo._internal.compress.flate.Flate.T_token),
(186u32 : stdgo._internal.compress.flate.Flate.T_token),
(8u32 : stdgo._internal.compress.flate.Flate.T_token),
(191u32 : stdgo._internal.compress.flate.Flate.T_token),
(242u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(213u32 : stdgo._internal.compress.flate.Flate.T_token),
(254u32 : stdgo._internal.compress.flate.Flate.T_token),
(165u32 : stdgo._internal.compress.flate.Flate.T_token),
(65u32 : stdgo._internal.compress.flate.Flate.T_token),
(198u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(186u32 : stdgo._internal.compress.flate.Flate.T_token),
(129u32 : stdgo._internal.compress.flate.Flate.T_token),
(239u32 : stdgo._internal.compress.flate.Flate.T_token),
(103u32 : stdgo._internal.compress.flate.Flate.T_token),
(228u32 : stdgo._internal.compress.flate.Flate.T_token),
(230u32 : stdgo._internal.compress.flate.Flate.T_token),
(60u32 : stdgo._internal.compress.flate.Flate.T_token),
(12u32 : stdgo._internal.compress.flate.Flate.T_token),
(202u32 : stdgo._internal.compress.flate.Flate.T_token),
(164u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(121u32 : stdgo._internal.compress.flate.Flate.T_token),
(179u32 : stdgo._internal.compress.flate.Flate.T_token),
(87u32 : stdgo._internal.compress.flate.Flate.T_token),
(139u32 : stdgo._internal.compress.flate.Flate.T_token),
(138u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(152u32 : stdgo._internal.compress.flate.Flate.T_token),
(24u32 : stdgo._internal.compress.flate.Flate.T_token),
(66u32 : stdgo._internal.compress.flate.Flate.T_token),
(47u32 : stdgo._internal.compress.flate.Flate.T_token),
(41u32 : stdgo._internal.compress.flate.Flate.T_token),
(163u32 : stdgo._internal.compress.flate.Flate.T_token),
(130u32 : stdgo._internal.compress.flate.Flate.T_token),
(239u32 : stdgo._internal.compress.flate.Flate.T_token),
(159u32 : stdgo._internal.compress.flate.Flate.T_token),
(134u32 : stdgo._internal.compress.flate.Flate.T_token),
(6u32 : stdgo._internal.compress.flate.Flate.T_token),
(35u32 : stdgo._internal.compress.flate.Flate.T_token),
(225u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(250u32 : stdgo._internal.compress.flate.Flate.T_token),
(8u32 : stdgo._internal.compress.flate.Flate.T_token),
(177u32 : stdgo._internal.compress.flate.Flate.T_token),
(222u32 : stdgo._internal.compress.flate.Flate.T_token),
(23u32 : stdgo._internal.compress.flate.Flate.T_token),
(74u32 : stdgo._internal.compress.flate.Flate.T_token)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>), _input : ("testdata/huffman-rand-1k.in" : stdgo.GoString), _want : ("testdata/huffman-rand-1k.%s.expect" : stdgo.GoString), _wantNoInput : ("testdata/huffman-rand-1k.%s.expect-noinput" : stdgo.GoString) } : stdgo._internal.compress.flate.Flate.T_huffTest),
({ _tokens : (new stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>(
174,
174,
(97u32 : stdgo._internal.compress.flate.Flate.T_token),
(1371537408u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(248u32 : stdgo._internal.compress.flate.Flate.T_token),
(139u32 : stdgo._internal.compress.flate.Flate.T_token),
(150u32 : stdgo._internal.compress.flate.Flate.T_token),
(118u32 : stdgo._internal.compress.flate.Flate.T_token),
(72u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(133u32 : stdgo._internal.compress.flate.Flate.T_token),
(148u32 : stdgo._internal.compress.flate.Flate.T_token),
(37u32 : stdgo._internal.compress.flate.Flate.T_token),
(128u32 : stdgo._internal.compress.flate.Flate.T_token),
(175u32 : stdgo._internal.compress.flate.Flate.T_token),
(194u32 : stdgo._internal.compress.flate.Flate.T_token),
(254u32 : stdgo._internal.compress.flate.Flate.T_token),
(141u32 : stdgo._internal.compress.flate.Flate.T_token),
(232u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(235u32 : stdgo._internal.compress.flate.Flate.T_token),
(23u32 : stdgo._internal.compress.flate.Flate.T_token),
(134u32 : stdgo._internal.compress.flate.Flate.T_token),
(201u32 : stdgo._internal.compress.flate.Flate.T_token),
(183u32 : stdgo._internal.compress.flate.Flate.T_token),
(197u32 : stdgo._internal.compress.flate.Flate.T_token),
(222u32 : stdgo._internal.compress.flate.Flate.T_token),
(6u32 : stdgo._internal.compress.flate.Flate.T_token),
(234u32 : stdgo._internal.compress.flate.Flate.T_token),
(125u32 : stdgo._internal.compress.flate.Flate.T_token),
(24u32 : stdgo._internal.compress.flate.Flate.T_token),
(139u32 : stdgo._internal.compress.flate.Flate.T_token),
(231u32 : stdgo._internal.compress.flate.Flate.T_token),
(62u32 : stdgo._internal.compress.flate.Flate.T_token),
(7u32 : stdgo._internal.compress.flate.Flate.T_token),
(218u32 : stdgo._internal.compress.flate.Flate.T_token),
(223u32 : stdgo._internal.compress.flate.Flate.T_token),
(255u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(115u32 : stdgo._internal.compress.flate.Flate.T_token),
(222u32 : stdgo._internal.compress.flate.Flate.T_token),
(204u32 : stdgo._internal.compress.flate.Flate.T_token),
(231u32 : stdgo._internal.compress.flate.Flate.T_token),
(109u32 : stdgo._internal.compress.flate.Flate.T_token),
(141u32 : stdgo._internal.compress.flate.Flate.T_token),
(4u32 : stdgo._internal.compress.flate.Flate.T_token),
(25u32 : stdgo._internal.compress.flate.Flate.T_token),
(73u32 : stdgo._internal.compress.flate.Flate.T_token),
(127u32 : stdgo._internal.compress.flate.Flate.T_token),
(71u32 : stdgo._internal.compress.flate.Flate.T_token),
(31u32 : stdgo._internal.compress.flate.Flate.T_token),
(72u32 : stdgo._internal.compress.flate.Flate.T_token),
(21u32 : stdgo._internal.compress.flate.Flate.T_token),
(176u32 : stdgo._internal.compress.flate.Flate.T_token),
(232u32 : stdgo._internal.compress.flate.Flate.T_token),
(158u32 : stdgo._internal.compress.flate.Flate.T_token),
(242u32 : stdgo._internal.compress.flate.Flate.T_token),
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(89u32 : stdgo._internal.compress.flate.Flate.T_token),
(222u32 : stdgo._internal.compress.flate.Flate.T_token),
(52u32 : stdgo._internal.compress.flate.Flate.T_token),
(180u32 : stdgo._internal.compress.flate.Flate.T_token),
(91u32 : stdgo._internal.compress.flate.Flate.T_token),
(229u32 : stdgo._internal.compress.flate.Flate.T_token),
(224u32 : stdgo._internal.compress.flate.Flate.T_token),
(9u32 : stdgo._internal.compress.flate.Flate.T_token),
(17u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(194u32 : stdgo._internal.compress.flate.Flate.T_token),
(136u32 : stdgo._internal.compress.flate.Flate.T_token),
(91u32 : stdgo._internal.compress.flate.Flate.T_token),
(124u32 : stdgo._internal.compress.flate.Flate.T_token),
(93u32 : stdgo._internal.compress.flate.Flate.T_token),
(20u32 : stdgo._internal.compress.flate.Flate.T_token),
(19u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(35u32 : stdgo._internal.compress.flate.Flate.T_token),
(169u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(188u32 : stdgo._internal.compress.flate.Flate.T_token),
(45u32 : stdgo._internal.compress.flate.Flate.T_token),
(35u32 : stdgo._internal.compress.flate.Flate.T_token),
(190u32 : stdgo._internal.compress.flate.Flate.T_token),
(217u32 : stdgo._internal.compress.flate.Flate.T_token),
(237u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(4u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(153u32 : stdgo._internal.compress.flate.Flate.T_token),
(223u32 : stdgo._internal.compress.flate.Flate.T_token),
(253u32 : stdgo._internal.compress.flate.Flate.T_token),
(112u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(230u32 : stdgo._internal.compress.flate.Flate.T_token),
(238u32 : stdgo._internal.compress.flate.Flate.T_token),
(217u32 : stdgo._internal.compress.flate.Flate.T_token),
(177u32 : stdgo._internal.compress.flate.Flate.T_token),
(158u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(131u32 : stdgo._internal.compress.flate.Flate.T_token),
(89u32 : stdgo._internal.compress.flate.Flate.T_token),
(213u32 : stdgo._internal.compress.flate.Flate.T_token),
(212u32 : stdgo._internal.compress.flate.Flate.T_token),
(128u32 : stdgo._internal.compress.flate.Flate.T_token),
(89u32 : stdgo._internal.compress.flate.Flate.T_token),
(152u32 : stdgo._internal.compress.flate.Flate.T_token),
(119u32 : stdgo._internal.compress.flate.Flate.T_token),
(137u32 : stdgo._internal.compress.flate.Flate.T_token),
(67u32 : stdgo._internal.compress.flate.Flate.T_token),
(56u32 : stdgo._internal.compress.flate.Flate.T_token),
(201u32 : stdgo._internal.compress.flate.Flate.T_token),
(175u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(154u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(27u32 : stdgo._internal.compress.flate.Flate.T_token),
(70u32 : stdgo._internal.compress.flate.Flate.T_token),
(61u32 : stdgo._internal.compress.flate.Flate.T_token),
(103u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(215u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(158u32 : stdgo._internal.compress.flate.Flate.T_token),
(78u32 : stdgo._internal.compress.flate.Flate.T_token),
(33u32 : stdgo._internal.compress.flate.Flate.T_token),
(79u32 : stdgo._internal.compress.flate.Flate.T_token),
(198u32 : stdgo._internal.compress.flate.Flate.T_token),
(224u32 : stdgo._internal.compress.flate.Flate.T_token),
(212u32 : stdgo._internal.compress.flate.Flate.T_token),
(123u32 : stdgo._internal.compress.flate.Flate.T_token),
(4u32 : stdgo._internal.compress.flate.Flate.T_token),
(141u32 : stdgo._internal.compress.flate.Flate.T_token),
(165u32 : stdgo._internal.compress.flate.Flate.T_token),
(3u32 : stdgo._internal.compress.flate.Flate.T_token),
(246u32 : stdgo._internal.compress.flate.Flate.T_token),
(5u32 : stdgo._internal.compress.flate.Flate.T_token),
(155u32 : stdgo._internal.compress.flate.Flate.T_token),
(107u32 : stdgo._internal.compress.flate.Flate.T_token),
(220u32 : stdgo._internal.compress.flate.Flate.T_token),
(42u32 : stdgo._internal.compress.flate.Flate.T_token),
(147u32 : stdgo._internal.compress.flate.Flate.T_token),
(119u32 : stdgo._internal.compress.flate.Flate.T_token),
(40u32 : stdgo._internal.compress.flate.Flate.T_token),
(253u32 : stdgo._internal.compress.flate.Flate.T_token),
(180u32 : stdgo._internal.compress.flate.Flate.T_token),
(98u32 : stdgo._internal.compress.flate.Flate.T_token),
(218u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(231u32 : stdgo._internal.compress.flate.Flate.T_token),
(31u32 : stdgo._internal.compress.flate.Flate.T_token),
(171u32 : stdgo._internal.compress.flate.Flate.T_token),
(107u32 : stdgo._internal.compress.flate.Flate.T_token),
(81u32 : stdgo._internal.compress.flate.Flate.T_token),
(67u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(47u32 : stdgo._internal.compress.flate.Flate.T_token),
(160u32 : stdgo._internal.compress.flate.Flate.T_token),
(146u32 : stdgo._internal.compress.flate.Flate.T_token),
(1u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(62u32 : stdgo._internal.compress.flate.Flate.T_token),
(244u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(253u32 : stdgo._internal.compress.flate.Flate.T_token),
(67u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(247u32 : stdgo._internal.compress.flate.Flate.T_token),
(164u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(218u32 : stdgo._internal.compress.flate.Flate.T_token),
(234u32 : stdgo._internal.compress.flate.Flate.T_token),
(155u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>), _input : ("testdata/huffman-rand-limit.in" : stdgo.GoString), _want : ("testdata/huffman-rand-limit.%s.expect" : stdgo.GoString), _wantNoInput : ("testdata/huffman-rand-limit.%s.expect-noinput" : stdgo.GoString) } : stdgo._internal.compress.flate.Flate.T_huffTest),
({ _tokens : (new stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>(
32,
32,
(49u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(1379926017u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289345u32 : stdgo._internal.compress.flate.Flate.T_token),
(2134900737u32 : stdgo._internal.compress.flate.Flate.T_token)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>), _input : ("testdata/huffman-shifts.in" : stdgo.GoString), _want : ("testdata/huffman-shifts.%s.expect" : stdgo.GoString), _wantNoInput : ("testdata/huffman-shifts.%s.expect-noinput" : stdgo.GoString) } : stdgo._internal.compress.flate.Flate.T_huffTest),
({ _tokens : (new stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>(
236,
236,
(47u32 : stdgo._internal.compress.flate.Flate.T_token),
(47u32 : stdgo._internal.compress.flate.Flate.T_token),
(67u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(112u32 : stdgo._internal.compress.flate.Flate.T_token),
(121u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(103u32 : stdgo._internal.compress.flate.Flate.T_token),
(104u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(84u32 : stdgo._internal.compress.flate.Flate.T_token),
(104u32 : stdgo._internal.compress.flate.Flate.T_token),
(71u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(65u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(104u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(65u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082130454u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(118u32 : stdgo._internal.compress.flate.Flate.T_token),
(100u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(47u32 : stdgo._internal.compress.flate.Flate.T_token),
(47u32 : stdgo._internal.compress.flate.Flate.T_token),
(85u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(104u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(99u32 : stdgo._internal.compress.flate.Flate.T_token),
(99u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(100u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(103u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(118u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(100u32 : stdgo._internal.compress.flate.Flate.T_token),
(98u32 : stdgo._internal.compress.flate.Flate.T_token),
(121u32 : stdgo._internal.compress.flate.Flate.T_token),
(66u32 : stdgo._internal.compress.flate.Flate.T_token),
(83u32 : stdgo._internal.compress.flate.Flate.T_token),
(68u32 : stdgo._internal.compress.flate.Flate.T_token),
(45u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(121u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936160u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(99u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(104u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(99u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(98u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(100u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(104u32 : stdgo._internal.compress.flate.Flate.T_token),
(76u32 : stdgo._internal.compress.flate.Flate.T_token),
(73u32 : stdgo._internal.compress.flate.Flate.T_token),
(67u32 : stdgo._internal.compress.flate.Flate.T_token),
(69u32 : stdgo._internal.compress.flate.Flate.T_token),
(78u32 : stdgo._internal.compress.flate.Flate.T_token),
(83u32 : stdgo._internal.compress.flate.Flate.T_token),
(69u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(112u32 : stdgo._internal.compress.flate.Flate.T_token),
(99u32 : stdgo._internal.compress.flate.Flate.T_token),
(107u32 : stdgo._internal.compress.flate.Flate.T_token),
(103u32 : stdgo._internal.compress.flate.Flate.T_token),
(109u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936138u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(109u32 : stdgo._internal.compress.flate.Flate.T_token),
(112u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(34u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(34u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936140u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(99u32 : stdgo._internal.compress.flate.Flate.T_token),
(109u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(40u32 : stdgo._internal.compress.flate.Flate.T_token),
(41u32 : stdgo._internal.compress.flate.Flate.T_token),
(123u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(9u32 : stdgo._internal.compress.flate.Flate.T_token),
(118u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(98u32 : stdgo._internal.compress.flate.Flate.T_token),
(61u32 : stdgo._internal.compress.flate.Flate.T_token),
(109u32 : stdgo._internal.compress.flate.Flate.T_token),
(107u32 : stdgo._internal.compress.flate.Flate.T_token),
(40u32 : stdgo._internal.compress.flate.Flate.T_token),
(91u32 : stdgo._internal.compress.flate.Flate.T_token),
(93u32 : stdgo._internal.compress.flate.Flate.T_token),
(98u32 : stdgo._internal.compress.flate.Flate.T_token),
(121u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(44u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(41u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(9u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(44u32 : stdgo._internal.compress.flate.Flate.T_token),
(95u32 : stdgo._internal.compress.flate.Flate.T_token),
(58u32 : stdgo._internal.compress.flate.Flate.T_token),
(61u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(67u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(40u32 : stdgo._internal.compress.flate.Flate.T_token),
(34u32 : stdgo._internal.compress.flate.Flate.T_token),
(104u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(109u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(45u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(45u32 : stdgo._internal.compress.flate.Flate.T_token),
(109u32 : stdgo._internal.compress.flate.Flate.T_token),
(120u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(34u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082130465u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(87u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(40u32 : stdgo._internal.compress.flate.Flate.T_token),
(98u32 : stdgo._internal.compress.flate.Flate.T_token),
(41u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(125u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(65u32 : stdgo._internal.compress.flate.Flate.T_token),
(66u32 : stdgo._internal.compress.flate.Flate.T_token),
(67u32 : stdgo._internal.compress.flate.Flate.T_token),
(68u32 : stdgo._internal.compress.flate.Flate.T_token),
(69u32 : stdgo._internal.compress.flate.Flate.T_token),
(70u32 : stdgo._internal.compress.flate.Flate.T_token),
(71u32 : stdgo._internal.compress.flate.Flate.T_token),
(72u32 : stdgo._internal.compress.flate.Flate.T_token),
(73u32 : stdgo._internal.compress.flate.Flate.T_token),
(74u32 : stdgo._internal.compress.flate.Flate.T_token),
(75u32 : stdgo._internal.compress.flate.Flate.T_token),
(76u32 : stdgo._internal.compress.flate.Flate.T_token),
(77u32 : stdgo._internal.compress.flate.Flate.T_token),
(78u32 : stdgo._internal.compress.flate.Flate.T_token),
(79u32 : stdgo._internal.compress.flate.Flate.T_token),
(80u32 : stdgo._internal.compress.flate.Flate.T_token),
(81u32 : stdgo._internal.compress.flate.Flate.T_token),
(82u32 : stdgo._internal.compress.flate.Flate.T_token),
(83u32 : stdgo._internal.compress.flate.Flate.T_token),
(84u32 : stdgo._internal.compress.flate.Flate.T_token),
(85u32 : stdgo._internal.compress.flate.Flate.T_token),
(86u32 : stdgo._internal.compress.flate.Flate.T_token),
(88u32 : stdgo._internal.compress.flate.Flate.T_token),
(120u32 : stdgo._internal.compress.flate.Flate.T_token),
(121u32 : stdgo._internal.compress.flate.Flate.T_token),
(122u32 : stdgo._internal.compress.flate.Flate.T_token),
(33u32 : stdgo._internal.compress.flate.Flate.T_token),
(34u32 : stdgo._internal.compress.flate.Flate.T_token),
(35u32 : stdgo._internal.compress.flate.Flate.T_token),
(194u32 : stdgo._internal.compress.flate.Flate.T_token),
(164u32 : stdgo._internal.compress.flate.Flate.T_token),
(37u32 : stdgo._internal.compress.flate.Flate.T_token),
(38u32 : stdgo._internal.compress.flate.Flate.T_token),
(47u32 : stdgo._internal.compress.flate.Flate.T_token),
(63u32 : stdgo._internal.compress.flate.Flate.T_token),
(34u32 : stdgo._internal.compress.flate.Flate.T_token)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>), _input : ("testdata/huffman-text-shift.in" : stdgo.GoString), _want : ("testdata/huffman-text-shift.%s.expect" : stdgo.GoString), _wantNoInput : ("testdata/huffman-text-shift.%s.expect-noinput" : stdgo.GoString) } : stdgo._internal.compress.flate.Flate.T_huffTest),
({ _tokens : (new stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>(
277,
277,
(47u32 : stdgo._internal.compress.flate.Flate.T_token),
(47u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(67u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(112u32 : stdgo._internal.compress.flate.Flate.T_token),
(121u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(103u32 : stdgo._internal.compress.flate.Flate.T_token),
(104u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(50u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(48u32 : stdgo._internal.compress.flate.Flate.T_token),
(57u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(84u32 : stdgo._internal.compress.flate.Flate.T_token),
(104u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(71u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(65u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(104u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(115u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(65u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082130462u32 : stdgo._internal.compress.flate.Flate.T_token),
(115u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(115u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(118u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(100u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(47u32 : stdgo._internal.compress.flate.Flate.T_token),
(47u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(85u32 : stdgo._internal.compress.flate.Flate.T_token),
(115u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(104u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(115u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(115u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(99u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(99u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(100u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(115u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(103u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(118u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(100u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(98u32 : stdgo._internal.compress.flate.Flate.T_token),
(121u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(97u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(66u32 : stdgo._internal.compress.flate.Flate.T_token),
(83u32 : stdgo._internal.compress.flate.Flate.T_token),
(68u32 : stdgo._internal.compress.flate.Flate.T_token),
(45u32 : stdgo._internal.compress.flate.Flate.T_token),
(115u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(121u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082130486u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(99u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(115u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(104u32 : stdgo._internal.compress.flate.Flate.T_token),
(97u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(99u32 : stdgo._internal.compress.flate.Flate.T_token),
(97u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(98u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(100u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(104u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(76u32 : stdgo._internal.compress.flate.Flate.T_token),
(73u32 : stdgo._internal.compress.flate.Flate.T_token),
(67u32 : stdgo._internal.compress.flate.Flate.T_token),
(69u32 : stdgo._internal.compress.flate.Flate.T_token),
(78u32 : stdgo._internal.compress.flate.Flate.T_token),
(83u32 : stdgo._internal.compress.flate.Flate.T_token),
(69u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(112u32 : stdgo._internal.compress.flate.Flate.T_token),
(97u32 : stdgo._internal.compress.flate.Flate.T_token),
(99u32 : stdgo._internal.compress.flate.Flate.T_token),
(107u32 : stdgo._internal.compress.flate.Flate.T_token),
(97u32 : stdgo._internal.compress.flate.Flate.T_token),
(103u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(109u32 : stdgo._internal.compress.flate.Flate.T_token),
(97u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936143u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(109u32 : stdgo._internal.compress.flate.Flate.T_token),
(112u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(34u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(115u32 : stdgo._internal.compress.flate.Flate.T_token),
(34u32 : stdgo._internal.compress.flate.Flate.T_token),
(1077936142u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(99u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082130459u32 : stdgo._internal.compress.flate.Flate.T_token),
(40u32 : stdgo._internal.compress.flate.Flate.T_token),
(41u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(123u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(9u32 : stdgo._internal.compress.flate.Flate.T_token),
(118u32 : stdgo._internal.compress.flate.Flate.T_token),
(97u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(98u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(61u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(109u32 : stdgo._internal.compress.flate.Flate.T_token),
(97u32 : stdgo._internal.compress.flate.Flate.T_token),
(107u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(40u32 : stdgo._internal.compress.flate.Flate.T_token),
(91u32 : stdgo._internal.compress.flate.Flate.T_token),
(93u32 : stdgo._internal.compress.flate.Flate.T_token),
(98u32 : stdgo._internal.compress.flate.Flate.T_token),
(121u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(44u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(54u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(51u32 : stdgo._internal.compress.flate.Flate.T_token),
(53u32 : stdgo._internal.compress.flate.Flate.T_token),
(41u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(9u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(44u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(95u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(58u32 : stdgo._internal.compress.flate.Flate.T_token),
(61u32 : stdgo._internal.compress.flate.Flate.T_token),
(32u32 : stdgo._internal.compress.flate.Flate.T_token),
(111u32 : stdgo._internal.compress.flate.Flate.T_token),
(115u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(67u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(97u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(40u32 : stdgo._internal.compress.flate.Flate.T_token),
(34u32 : stdgo._internal.compress.flate.Flate.T_token),
(104u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(102u32 : stdgo._internal.compress.flate.Flate.T_token),
(109u32 : stdgo._internal.compress.flate.Flate.T_token),
(97u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(45u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(117u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(108u32 : stdgo._internal.compress.flate.Flate.T_token),
(45u32 : stdgo._internal.compress.flate.Flate.T_token),
(109u32 : stdgo._internal.compress.flate.Flate.T_token),
(97u32 : stdgo._internal.compress.flate.Flate.T_token),
(120u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(110u32 : stdgo._internal.compress.flate.Flate.T_token),
(34u32 : stdgo._internal.compress.flate.Flate.T_token),
(1082130474u32 : stdgo._internal.compress.flate.Flate.T_token),
(46u32 : stdgo._internal.compress.flate.Flate.T_token),
(87u32 : stdgo._internal.compress.flate.Flate.T_token),
(114u32 : stdgo._internal.compress.flate.Flate.T_token),
(105u32 : stdgo._internal.compress.flate.Flate.T_token),
(116u32 : stdgo._internal.compress.flate.Flate.T_token),
(101u32 : stdgo._internal.compress.flate.Flate.T_token),
(40u32 : stdgo._internal.compress.flate.Flate.T_token),
(98u32 : stdgo._internal.compress.flate.Flate.T_token),
(41u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token),
(125u32 : stdgo._internal.compress.flate.Flate.T_token),
(13u32 : stdgo._internal.compress.flate.Flate.T_token),
(10u32 : stdgo._internal.compress.flate.Flate.T_token)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>), _input : ("testdata/huffman-text.in" : stdgo.GoString), _want : ("testdata/huffman-text.%s.expect" : stdgo.GoString), _wantNoInput : ("testdata/huffman-text.%s.expect-noinput" : stdgo.GoString) } : stdgo._internal.compress.flate.Flate.T_huffTest),
({ _tokens : (new stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>(3, 3, (48u32 : stdgo._internal.compress.flate.Flate.T_token), (2143289344u32 : stdgo._internal.compress.flate.Flate.T_token), (1266679808u32 : stdgo._internal.compress.flate.Flate.T_token)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>), _input : ("testdata/huffman-zero.in" : stdgo.GoString), _want : ("testdata/huffman-zero.%s.expect" : stdgo.GoString), _wantNoInput : ("testdata/huffman-zero.%s.expect-noinput" : stdgo.GoString) } : stdgo._internal.compress.flate.Flate.T_huffTest),
({ _tokens : (new stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>(
764,
764,
(0u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(2143289344u32 : stdgo._internal.compress.flate.Flate.T_token),
(1094713344u32 : stdgo._internal.compress.flate.Flate.T_token)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>), _input : stdgo.Go.str()?.__copy__(), _want : stdgo.Go.str()?.__copy__(), _wantNoInput : ("testdata/null-long-match.%s.expect-noinput" : stdgo.GoString) } : stdgo._internal.compress.flate.Flate.T_huffTest)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_huffTest>);
var _suites : stdgo.Slice<T__struct_5> = (new stdgo.Slice<T__struct_5>(2, 2, ({ _name : ("Digits" : stdgo.GoString), _file : ("../testdata/e.txt" : stdgo.GoString) } : T__struct_5), ({ _name : ("Newton" : stdgo.GoString), _file : ("../../testdata/Isaac.Newton-Opticks.txt" : stdgo.GoString) } : T__struct_5)) : stdgo.Slice<T__struct_5>);
var _levelTests : stdgo.Slice<T__struct_6> = (new stdgo.Slice<T__struct_6>(4, 4, ({ _name : ("Huffman" : stdgo.GoString), _level : (-2 : stdgo.GoInt) } : T__struct_6), ({ _name : ("Speed" : stdgo.GoString), _level : (1 : stdgo.GoInt) } : T__struct_6), ({ _name : ("Default" : stdgo.GoString), _level : (-1 : stdgo.GoInt) } : T__struct_6), ({ _name : ("Compression" : stdgo.GoString), _level : (9 : stdgo.GoInt) } : T__struct_6)) : stdgo.Slice<T__struct_6>);
var _sizes : stdgo.Slice<T__struct_7> = (new stdgo.Slice<T__struct_7>(3, 3, ({ _name : ("1e4" : stdgo.GoString), _n : (10000 : stdgo.GoInt) } : T__struct_7), ({ _name : ("1e5" : stdgo.GoString), _n : (100000 : stdgo.GoInt) } : T__struct_7), ({ _name : ("1e6" : stdgo.GoString), _n : (1000000 : stdgo.GoInt) } : T__struct_7)) : stdgo.Slice<T__struct_7>);
final noCompression : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final bestSpeed : stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
final bestCompression : stdgo.GoUInt64 = (9i64 : stdgo.GoUInt64);
final defaultCompression : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final huffmanOnly : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final _logWindowSize : stdgo.GoUInt64 = (15i64 : stdgo.GoUInt64);
final _windowSize : stdgo.GoUInt64 = (32768i64 : stdgo.GoUInt64);
final _windowMask : stdgo.GoUInt64 = (32767i64 : stdgo.GoUInt64);
final _baseMatchLength : stdgo.GoUInt64 = (3i64 : stdgo.GoUInt64);
final _minMatchLength : stdgo.GoUInt64 = (4i64 : stdgo.GoUInt64);
final _maxMatchLength : stdgo.GoUInt64 = (258i64 : stdgo.GoUInt64);
final _baseMatchOffset : stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
final _maxMatchOffset : stdgo.GoUInt64 = (32768i64 : stdgo.GoUInt64);
final _maxFlateBlockTokens : stdgo.GoUInt64 = (16384i64 : stdgo.GoUInt64);
final _maxStoreBlockSize : stdgo.GoUInt64 = (65535i64 : stdgo.GoUInt64);
final _hashBits : stdgo.GoUInt64 = (17i64 : stdgo.GoUInt64);
final _hashSize : stdgo.GoUInt64 = (131072i64 : stdgo.GoUInt64);
final _hashMask : stdgo.GoUInt64 = (131071i64 : stdgo.GoUInt64);
final _maxHashOffset : stdgo.GoUInt64 = (16777216i64 : stdgo.GoUInt64);
final _skipNever : stdgo.GoUInt64 = (2147483647i64 : stdgo.GoUInt64);
final _hashmul : stdgo.GoUInt64 = (506832829i64 : stdgo.GoUInt64);
final _tableBits : stdgo.GoUInt64 = (14i64 : stdgo.GoUInt64);
final _tableSize : stdgo.GoUInt64 = (16384i64 : stdgo.GoUInt64);
final _tableMask : stdgo.GoUInt64 = (16383i64 : stdgo.GoUInt64);
final _tableShift : stdgo.GoUInt64 = (18i64 : stdgo.GoUInt64);
final _bufferReset : stdgo.GoUInt64 = (2147352577i64 : stdgo.GoUInt64);
final _inputMargin : stdgo.GoUInt64 = (15i64 : stdgo.GoUInt64);
final _minNonLiteralBlockSize : stdgo.GoUInt64 = (17i64 : stdgo.GoUInt64);
final _offsetCodeCount : stdgo.GoUInt64 = (30i64 : stdgo.GoUInt64);
final _endBlockMarker : stdgo.GoUInt64 = (256i64 : stdgo.GoUInt64);
final _lengthCodesStart : stdgo.GoUInt64 = (257i64 : stdgo.GoUInt64);
final _codegenCodeCount : stdgo.GoUInt64 = (19i64 : stdgo.GoUInt64);
final _badCode : stdgo.GoUInt64 = (255i64 : stdgo.GoUInt64);
final _bufferFlushSize : stdgo.GoUInt64 = (240i64 : stdgo.GoUInt64);
final _bufferSize : stdgo.GoUInt64 = (248i64 : stdgo.GoUInt64);
var _huffOffset : stdgo.Ref<T_huffmanEncoder> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanEncoder>);
final _ml : stdgo.GoUInt64 = (2143289344i64 : stdgo.GoUInt64);
final _maxBitsLimit : stdgo.GoUInt64 = (16i64 : stdgo.GoUInt64);
final _maxCodeLen : stdgo.GoUInt64 = (16i64 : stdgo.GoUInt64);
final _maxNumLit : stdgo.GoUInt64 = (286i64 : stdgo.GoUInt64);
final _maxNumDist : stdgo.GoUInt64 = (30i64 : stdgo.GoUInt64);
final _numCodes : stdgo.GoUInt64 = (19i64 : stdgo.GoUInt64);
var _fixedOnce : stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
var _fixedHuffmanDecoder : T_huffmanDecoder = ({} : stdgo._internal.compress.flate.Flate.T_huffmanDecoder);
final _huffmanChunkBits : stdgo.GoUInt64 = (9i64 : stdgo.GoUInt64);
final _huffmanNumChunks : stdgo.GoUInt64 = (512i64 : stdgo.GoUInt64);
final _huffmanCountMask : stdgo.GoUInt64 = (15i64 : stdgo.GoUInt64);
final _huffmanValueShift : stdgo.GoUInt64 = (4i64 : stdgo.GoUInt64);
final _lengthShift : stdgo.GoUInt64 = (22i64 : stdgo.GoUInt64);
final _offsetMask : stdgo.GoUInt64 = (4194303i64 : stdgo.GoUInt64);
final _typeMask : stdgo.GoUInt64 = (3221225472i64 : stdgo.GoUInt64);
final _literalType : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final _matchType : stdgo.GoUInt64 = (1073741824i64 : stdgo.GoUInt64);
typedef Resetter = stdgo.StructType & {
    /**
        // Reset discards any buffered data and resets the Resetter as if it was
        // newly initialized with the given reader.
        
        
    **/
    public dynamic function reset(_r:stdgo._internal.io.Io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):stdgo.Error;
};
typedef Reader = stdgo.StructType & {
    > stdgo._internal.io.Io.Reader,
    > stdgo._internal.io.Io.ByteReader,
};
@:structInit @:private class T_compressionLevel {
    public var _level : stdgo.GoInt = 0;
    public var _good : stdgo.GoInt = 0;
    public var _lazy : stdgo.GoInt = 0;
    public var _nice : stdgo.GoInt = 0;
    public var _chain : stdgo.GoInt = 0;
    public var _fastSkipHashing : stdgo.GoInt = 0;
    public function new(?_level:stdgo.GoInt, ?_good:stdgo.GoInt, ?_lazy:stdgo.GoInt, ?_nice:stdgo.GoInt, ?_chain:stdgo.GoInt, ?_fastSkipHashing:stdgo.GoInt) {
        if (_level != null) this._level = _level;
        if (_good != null) this._good = _good;
        if (_lazy != null) this._lazy = _lazy;
        if (_nice != null) this._nice = _nice;
        if (_chain != null) this._chain = _chain;
        if (_fastSkipHashing != null) this._fastSkipHashing = _fastSkipHashing;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_compressionLevel(_level, _good, _lazy, _nice, _chain, _fastSkipHashing);
    }
}
@:structInit @:private @:using(stdgo._internal.compress.flate.Flate.T_compressor_static_extension) class T_compressor {
    @:embedded
    public var _compressionLevel : stdgo._internal.compress.flate.Flate.T_compressionLevel = ({} : stdgo._internal.compress.flate.Flate.T_compressionLevel);
    public var _w : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanBitWriter> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanBitWriter>);
    public var _bulkHasher : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt32>) -> Void = null;
    public var _fill : (stdgo.Ref<stdgo._internal.compress.flate.Flate.T_compressor>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoInt = null;
    public var _step : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_compressor> -> Void = null;
    public var _sync : Bool = false;
    public var _bestSpeed : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_deflateFast> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_deflateFast>);
    public var _chainHead : stdgo.GoInt = 0;
    public var _hashHead : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(...[for (i in 0 ... 131072) (0 : stdgo.GoUInt32)]);
    public var _hashPrev : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(...[for (i in 0 ... 32768) (0 : stdgo.GoUInt32)]);
    public var _hashOffset : stdgo.GoInt = 0;
    public var _index : stdgo.GoInt = 0;
    public var _window : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _windowEnd : stdgo.GoInt = 0;
    public var _blockStart : stdgo.GoInt = 0;
    public var _byteAvailable : Bool = false;
    public var _tokens : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token> = (null : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>);
    public var _length : stdgo.GoInt = 0;
    public var _offset : stdgo.GoInt = 0;
    public var _maxInsertIndex : stdgo.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _hashMatch : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(...[for (i in 0 ... 257) (0 : stdgo.GoUInt32)]);
    public function new(?_compressionLevel:stdgo._internal.compress.flate.Flate.T_compressionLevel, ?_w:stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanBitWriter>, ?_bulkHasher:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt32>) -> Void, ?_fill:(stdgo.Ref<stdgo._internal.compress.flate.Flate.T_compressor>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoInt, ?_step:stdgo.Ref<stdgo._internal.compress.flate.Flate.T_compressor> -> Void, ?_sync:Bool, ?_bestSpeed:stdgo.Ref<stdgo._internal.compress.flate.Flate.T_deflateFast>, ?_chainHead:stdgo.GoInt, ?_hashHead:stdgo.GoArray<stdgo.GoUInt32>, ?_hashPrev:stdgo.GoArray<stdgo.GoUInt32>, ?_hashOffset:stdgo.GoInt, ?_index:stdgo.GoInt, ?_window:stdgo.Slice<stdgo.GoUInt8>, ?_windowEnd:stdgo.GoInt, ?_blockStart:stdgo.GoInt, ?_byteAvailable:Bool, ?_tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>, ?_length:stdgo.GoInt, ?_offset:stdgo.GoInt, ?_maxInsertIndex:stdgo.GoInt, ?_err:stdgo.Error, ?_hashMatch:stdgo.GoArray<stdgo.GoUInt32>) {
        if (_compressionLevel != null) this._compressionLevel = _compressionLevel;
        if (_w != null) this._w = _w;
        if (_bulkHasher != null) this._bulkHasher = _bulkHasher;
        if (_fill != null) this._fill = _fill;
        if (_step != null) this._step = _step;
        if (_sync != null) this._sync = _sync;
        if (_bestSpeed != null) this._bestSpeed = _bestSpeed;
        if (_chainHead != null) this._chainHead = _chainHead;
        if (_hashHead != null) this._hashHead = _hashHead;
        if (_hashPrev != null) this._hashPrev = _hashPrev;
        if (_hashOffset != null) this._hashOffset = _hashOffset;
        if (_index != null) this._index = _index;
        if (_window != null) this._window = _window;
        if (_windowEnd != null) this._windowEnd = _windowEnd;
        if (_blockStart != null) this._blockStart = _blockStart;
        if (_byteAvailable != null) this._byteAvailable = _byteAvailable;
        if (_tokens != null) this._tokens = _tokens;
        if (_length != null) this._length = _length;
        if (_offset != null) this._offset = _offset;
        if (_maxInsertIndex != null) this._maxInsertIndex = _maxInsertIndex;
        if (_err != null) this._err = _err;
        if (_hashMatch != null) this._hashMatch = _hashMatch;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_compressor(
_compressionLevel,
_w,
_bulkHasher,
_fill,
_step,
_sync,
_bestSpeed,
_chainHead,
_hashHead,
_hashPrev,
_hashOffset,
_index,
_window,
_windowEnd,
_blockStart,
_byteAvailable,
_tokens,
_length,
_offset,
_maxInsertIndex,
_err,
_hashMatch);
    }
}
@:structInit @:private @:using(stdgo._internal.compress.flate.Flate.T_dictWriter_static_extension) class T_dictWriter {
    public var _w : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public function new(?_w:stdgo._internal.io.Io.Writer) {
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dictWriter(_w);
    }
}
@:structInit @:using(stdgo._internal.compress.flate.Flate.Writer_static_extension) class Writer {
    public var _d : stdgo._internal.compress.flate.Flate.T_compressor = ({} : stdgo._internal.compress.flate.Flate.T_compressor);
    public var _dict : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_d:stdgo._internal.compress.flate.Flate.T_compressor, ?_dict:stdgo.Slice<stdgo.GoUInt8>) {
        if (_d != null) this._d = _d;
        if (_dict != null) this._dict = _dict;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(_d, _dict);
    }
}
@:structInit @:private class T_deflateTest {
    public var _in : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _level : stdgo.GoInt = 0;
    public var _out : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_in:stdgo.Slice<stdgo.GoUInt8>, ?_level:stdgo.GoInt, ?_out:stdgo.Slice<stdgo.GoUInt8>) {
        if (_in != null) this._in = _in;
        if (_level != null) this._level = _level;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_deflateTest(_in, _level, _out);
    }
}
@:structInit @:private class T_deflateInflateTest {
    public var _in : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_in:stdgo.Slice<stdgo.GoUInt8>) {
        if (_in != null) this._in = _in;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_deflateInflateTest(_in);
    }
}
@:structInit @:private class T_reverseBitsTest {
    public var _in : stdgo.GoUInt16 = 0;
    public var _bitCount : stdgo.GoUInt8 = 0;
    public var _out : stdgo.GoUInt16 = 0;
    public function new(?_in:stdgo.GoUInt16, ?_bitCount:stdgo.GoUInt8, ?_out:stdgo.GoUInt16) {
        if (_in != null) this._in = _in;
        if (_bitCount != null) this._bitCount = _bitCount;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_reverseBitsTest(_in, _bitCount, _out);
    }
}
@:structInit @:private @:using(stdgo._internal.compress.flate.Flate.T_sparseReader_static_extension) class T_sparseReader {
    public var _l : stdgo.GoInt64 = 0;
    public var _cur : stdgo.GoInt64 = 0;
    public function new(?_l:stdgo.GoInt64, ?_cur:stdgo.GoInt64) {
        if (_l != null) this._l = _l;
        if (_cur != null) this._cur = _cur;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sparseReader(_l, _cur);
    }
}
@:structInit @:private @:using(stdgo._internal.compress.flate.Flate.T_syncBuffer_static_extension) class T_syncBuffer {
    public var _buf : stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
    public var _mu : stdgo._internal.sync.Sync.RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
    public var _closed : Bool = false;
    public var _ready : stdgo.Chan<Bool> = (null : stdgo.Chan<Bool>);
    public function new(?_buf:stdgo._internal.bytes.Bytes.Buffer, ?_mu:stdgo._internal.sync.Sync.RWMutex, ?_closed:Bool, ?_ready:stdgo.Chan<Bool>) {
        if (_buf != null) this._buf = _buf;
        if (_mu != null) this._mu = _mu;
        if (_closed != null) this._closed = _closed;
        if (_ready != null) this._ready = _ready;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_syncBuffer(_buf, _mu, _closed, _ready);
    }
}
@:structInit @:private class T_deflateInflateStringTest {
    public var _filename : stdgo.GoString = "";
    public var _label : stdgo.GoString = "";
    public var _limit : stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(...[for (i in 0 ... 11) (0 : stdgo.GoInt)]);
    public function new(?_filename:stdgo.GoString, ?_label:stdgo.GoString, ?_limit:stdgo.GoArray<stdgo.GoInt>) {
        if (_filename != null) this._filename = _filename;
        if (_label != null) this._label = _label;
        if (_limit != null) this._limit = _limit;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_deflateInflateStringTest(_filename, _label, _limit);
    }
}
@:structInit @:private @:using(stdgo._internal.compress.flate.Flate.T_failWriter_static_extension) class T_failWriter {
    public var _n : stdgo.GoInt = 0;
    public function new(?_n:stdgo.GoInt) {
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_failWriter(_n);
    }
}
@:structInit @:private class T_tableEntry {
    public var _val : stdgo.GoUInt32 = 0;
    public var _offset : stdgo.GoInt32 = 0;
    public function new(?_val:stdgo.GoUInt32, ?_offset:stdgo.GoInt32) {
        if (_val != null) this._val = _val;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_tableEntry(_val, _offset);
    }
}
@:structInit @:private @:using(stdgo._internal.compress.flate.Flate.T_deflateFast_static_extension) class T_deflateFast {
    public var _table : stdgo.GoArray<stdgo._internal.compress.flate.Flate.T_tableEntry> = new stdgo.GoArray<stdgo._internal.compress.flate.Flate.T_tableEntry>(...[for (i in 0 ... 16384) ({} : stdgo._internal.compress.flate.Flate.T_tableEntry)]);
    public var _prev : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _cur : stdgo.GoInt32 = 0;
    public function new(?_table:stdgo.GoArray<stdgo._internal.compress.flate.Flate.T_tableEntry>, ?_prev:stdgo.Slice<stdgo.GoUInt8>, ?_cur:stdgo.GoInt32) {
        if (_table != null) this._table = _table;
        if (_prev != null) this._prev = _prev;
        if (_cur != null) this._cur = _cur;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_deflateFast(_table, _prev, _cur);
    }
}
@:structInit @:private @:using(stdgo._internal.compress.flate.Flate.T_dictDecoder_static_extension) class T_dictDecoder {
    public var _hist : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _wrPos : stdgo.GoInt = 0;
    public var _rdPos : stdgo.GoInt = 0;
    public var _full : Bool = false;
    public function new(?_hist:stdgo.Slice<stdgo.GoUInt8>, ?_wrPos:stdgo.GoInt, ?_rdPos:stdgo.GoInt, ?_full:Bool) {
        if (_hist != null) this._hist = _hist;
        if (_wrPos != null) this._wrPos = _wrPos;
        if (_rdPos != null) this._rdPos = _rdPos;
        if (_full != null) this._full = _full;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dictDecoder(_hist, _wrPos, _rdPos, _full);
    }
}
@:structInit @:private @:using(stdgo._internal.compress.flate.Flate.T_huffmanBitWriter_static_extension) class T_huffmanBitWriter {
    public var _writer : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public var _bits : stdgo.GoUInt64 = 0;
    public var _nbits : stdgo.GoUInt = 0;
    public var _bytes : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(...[for (i in 0 ... 248) (0 : stdgo.GoUInt8)]);
    public var _codegenFreq : stdgo.GoArray<stdgo.GoInt32> = new stdgo.GoArray<stdgo.GoInt32>(...[for (i in 0 ... 19) (0 : stdgo.GoInt32)]);
    public var _nbytes : stdgo.GoInt = 0;
    public var _literalFreq : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _offsetFreq : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _codegen : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _literalEncoding : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanEncoder> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanEncoder>);
    public var _offsetEncoding : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanEncoder> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanEncoder>);
    public var _codegenEncoding : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanEncoder> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanEncoder>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_writer:stdgo._internal.io.Io.Writer, ?_bits:stdgo.GoUInt64, ?_nbits:stdgo.GoUInt, ?_bytes:stdgo.GoArray<stdgo.GoUInt8>, ?_codegenFreq:stdgo.GoArray<stdgo.GoInt32>, ?_nbytes:stdgo.GoInt, ?_literalFreq:stdgo.Slice<stdgo.GoInt32>, ?_offsetFreq:stdgo.Slice<stdgo.GoInt32>, ?_codegen:stdgo.Slice<stdgo.GoUInt8>, ?_literalEncoding:stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanEncoder>, ?_offsetEncoding:stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanEncoder>, ?_codegenEncoding:stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanEncoder>, ?_err:stdgo.Error) {
        if (_writer != null) this._writer = _writer;
        if (_bits != null) this._bits = _bits;
        if (_nbits != null) this._nbits = _nbits;
        if (_bytes != null) this._bytes = _bytes;
        if (_codegenFreq != null) this._codegenFreq = _codegenFreq;
        if (_nbytes != null) this._nbytes = _nbytes;
        if (_literalFreq != null) this._literalFreq = _literalFreq;
        if (_offsetFreq != null) this._offsetFreq = _offsetFreq;
        if (_codegen != null) this._codegen = _codegen;
        if (_literalEncoding != null) this._literalEncoding = _literalEncoding;
        if (_offsetEncoding != null) this._offsetEncoding = _offsetEncoding;
        if (_codegenEncoding != null) this._codegenEncoding = _codegenEncoding;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanBitWriter(
_writer,
_bits,
_nbits,
_bytes,
_codegenFreq,
_nbytes,
_literalFreq,
_offsetFreq,
_codegen,
_literalEncoding,
_offsetEncoding,
_codegenEncoding,
_err);
    }
}
@:structInit @:private class T_huffTest {
    public var _tokens : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token> = (null : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>);
    public var _input : stdgo.GoString = "";
    public var _want : stdgo.GoString = "";
    public var _wantNoInput : stdgo.GoString = "";
    public function new(?_tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>, ?_input:stdgo.GoString, ?_want:stdgo.GoString, ?_wantNoInput:stdgo.GoString) {
        if (_tokens != null) this._tokens = _tokens;
        if (_input != null) this._input = _input;
        if (_want != null) this._want = _want;
        if (_wantNoInput != null) this._wantNoInput = _wantNoInput;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_huffTest(_tokens, _input, _want, _wantNoInput);
    }
}
@:structInit @:private @:using(stdgo._internal.compress.flate.Flate.T_hcode_static_extension) class T_hcode {
    public var _code : stdgo.GoUInt16 = 0;
    public var _len : stdgo.GoUInt16 = 0;
    public function new(?_code:stdgo.GoUInt16, ?_len:stdgo.GoUInt16) {
        if (_code != null) this._code = _code;
        if (_len != null) this._len = _len;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_hcode(_code, _len);
    }
}
@:structInit @:private @:using(stdgo._internal.compress.flate.Flate.T_huffmanEncoder_static_extension) class T_huffmanEncoder {
    public var _codes : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_hcode> = (null : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_hcode>);
    public var _freqcache : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_literalNode> = (null : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_literalNode>);
    public var _bitCount : stdgo.GoArray<stdgo.GoInt32> = new stdgo.GoArray<stdgo.GoInt32>(...[for (i in 0 ... 17) (0 : stdgo.GoInt32)]);
    public var _lns : stdgo._internal.compress.flate.Flate.T_byLiteral = new stdgo._internal.compress.flate.Flate.T_byLiteral(0, 0);
    public var _lfs : stdgo._internal.compress.flate.Flate.T_byFreq = new stdgo._internal.compress.flate.Flate.T_byFreq(0, 0);
    public function new(?_codes:stdgo.Slice<stdgo._internal.compress.flate.Flate.T_hcode>, ?_freqcache:stdgo.Slice<stdgo._internal.compress.flate.Flate.T_literalNode>, ?_bitCount:stdgo.GoArray<stdgo.GoInt32>, ?_lns:stdgo._internal.compress.flate.Flate.T_byLiteral, ?_lfs:stdgo._internal.compress.flate.Flate.T_byFreq) {
        if (_codes != null) this._codes = _codes;
        if (_freqcache != null) this._freqcache = _freqcache;
        if (_bitCount != null) this._bitCount = _bitCount;
        if (_lns != null) this._lns = _lns;
        if (_lfs != null) this._lfs = _lfs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanEncoder(_codes, _freqcache, _bitCount, _lns, _lfs);
    }
}
@:structInit @:private class T_literalNode {
    public var _literal : stdgo.GoUInt16 = 0;
    public var _freq : stdgo.GoInt32 = 0;
    public function new(?_literal:stdgo.GoUInt16, ?_freq:stdgo.GoInt32) {
        if (_literal != null) this._literal = _literal;
        if (_freq != null) this._freq = _freq;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_literalNode(_literal, _freq);
    }
}
@:structInit @:private class T_levelInfo {
    public var _level : stdgo.GoInt32 = 0;
    public var _lastFreq : stdgo.GoInt32 = 0;
    public var _nextCharFreq : stdgo.GoInt32 = 0;
    public var _nextPairFreq : stdgo.GoInt32 = 0;
    public var _needed : stdgo.GoInt32 = 0;
    public function new(?_level:stdgo.GoInt32, ?_lastFreq:stdgo.GoInt32, ?_nextCharFreq:stdgo.GoInt32, ?_nextPairFreq:stdgo.GoInt32, ?_needed:stdgo.GoInt32) {
        if (_level != null) this._level = _level;
        if (_lastFreq != null) this._lastFreq = _lastFreq;
        if (_nextCharFreq != null) this._nextCharFreq = _nextCharFreq;
        if (_nextPairFreq != null) this._nextPairFreq = _nextPairFreq;
        if (_needed != null) this._needed = _needed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_levelInfo(_level, _lastFreq, _nextCharFreq, _nextPairFreq, _needed);
    }
}
@:structInit @:using(stdgo._internal.compress.flate.Flate.ReadError_static_extension) class ReadError {
    public var offset : stdgo.GoInt64 = 0;
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?offset:stdgo.GoInt64, ?err:stdgo.Error) {
        if (offset != null) this.offset = offset;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ReadError(offset, err);
    }
}
@:structInit @:using(stdgo._internal.compress.flate.Flate.WriteError_static_extension) class WriteError {
    public var offset : stdgo.GoInt64 = 0;
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?offset:stdgo.GoInt64, ?err:stdgo.Error) {
        if (offset != null) this.offset = offset;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new WriteError(offset, err);
    }
}
@:structInit @:private @:using(stdgo._internal.compress.flate.Flate.T_huffmanDecoder_static_extension) class T_huffmanDecoder {
    public var _min : stdgo.GoInt = 0;
    public var _chunks : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(...[for (i in 0 ... 512) (0 : stdgo.GoUInt32)]);
    public var _links : stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>);
    public var _linkMask : stdgo.GoUInt32 = 0;
    public function new(?_min:stdgo.GoInt, ?_chunks:stdgo.GoArray<stdgo.GoUInt32>, ?_links:stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>, ?_linkMask:stdgo.GoUInt32) {
        if (_min != null) this._min = _min;
        if (_chunks != null) this._chunks = _chunks;
        if (_links != null) this._links = _links;
        if (_linkMask != null) this._linkMask = _linkMask;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanDecoder(_min, _chunks, _links, _linkMask);
    }
}
@:structInit @:private @:using(stdgo._internal.compress.flate.Flate.T_decompressor_static_extension) class T_decompressor {
    public var _r : stdgo._internal.compress.flate.Flate.Reader = (null : stdgo._internal.compress.flate.Flate.Reader);
    public var _rBuf : stdgo.Ref<stdgo._internal.bufio.Bufio.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>);
    public var _roffset : stdgo.GoInt64 = 0;
    public var _b : stdgo.GoUInt32 = 0;
    public var _nb : stdgo.GoUInt = 0;
    public var _h1 : stdgo._internal.compress.flate.Flate.T_huffmanDecoder = ({} : stdgo._internal.compress.flate.Flate.T_huffmanDecoder);
    public var _h2 : stdgo._internal.compress.flate.Flate.T_huffmanDecoder = ({} : stdgo._internal.compress.flate.Flate.T_huffmanDecoder);
    public var _bits : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>> = (null : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
    public var _codebits : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>> = (null : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
    public var _dict : stdgo._internal.compress.flate.Flate.T_dictDecoder = ({} : stdgo._internal.compress.flate.Flate.T_dictDecoder);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
    public var _step : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_decompressor> -> Void = null;
    public var _stepState : stdgo.GoInt = 0;
    public var _final : Bool = false;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _toRead : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _hl : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanDecoder> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanDecoder>);
    public var _hd : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanDecoder> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanDecoder>);
    public var _copyLen : stdgo.GoInt = 0;
    public var _copyDist : stdgo.GoInt = 0;
    public function new(?_r:stdgo._internal.compress.flate.Flate.Reader, ?_rBuf:stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>, ?_roffset:stdgo.GoInt64, ?_b:stdgo.GoUInt32, ?_nb:stdgo.GoUInt, ?_h1:stdgo._internal.compress.flate.Flate.T_huffmanDecoder, ?_h2:stdgo._internal.compress.flate.Flate.T_huffmanDecoder, ?_bits:stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>, ?_codebits:stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>, ?_dict:stdgo._internal.compress.flate.Flate.T_dictDecoder, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_step:stdgo.Ref<stdgo._internal.compress.flate.Flate.T_decompressor> -> Void, ?_stepState:stdgo.GoInt, ?_final:Bool, ?_err:stdgo.Error, ?_toRead:stdgo.Slice<stdgo.GoUInt8>, ?_hl:stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanDecoder>, ?_hd:stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanDecoder>, ?_copyLen:stdgo.GoInt, ?_copyDist:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_rBuf != null) this._rBuf = _rBuf;
        if (_roffset != null) this._roffset = _roffset;
        if (_b != null) this._b = _b;
        if (_nb != null) this._nb = _nb;
        if (_h1 != null) this._h1 = _h1;
        if (_h2 != null) this._h2 = _h2;
        if (_bits != null) this._bits = _bits;
        if (_codebits != null) this._codebits = _codebits;
        if (_dict != null) this._dict = _dict;
        if (_buf != null) this._buf = _buf;
        if (_step != null) this._step = _step;
        if (_stepState != null) this._stepState = _stepState;
        if (_final != null) this._final = _final;
        if (_err != null) this._err = _err;
        if (_toRead != null) this._toRead = _toRead;
        if (_hl != null) this._hl = _hl;
        if (_hd != null) this._hd = _hd;
        if (_copyLen != null) this._copyLen = _copyLen;
        if (_copyDist != null) this._copyDist = _copyDist;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decompressor(
_r,
_rBuf,
_roffset,
_b,
_nb,
_h1,
_h2,
_bits,
_codebits,
_dict,
_buf,
_step,
_stepState,
_final,
_err,
_toRead,
_hl,
_hd,
_copyLen,
_copyDist);
    }
}
@:structInit @:private @:using(stdgo._internal.compress.flate.Flate.T_errorWriter_static_extension) class T_errorWriter {
    public var n : stdgo.GoInt = 0;
    public function new(?n:stdgo.GoInt) {
        if (n != null) this.n = n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorWriter(n);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.compress.flate.Flate.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _previous : stdgo.Slice<stdgo.GoUInt8>;
    public var _current : stdgo.Slice<stdgo.GoUInt8>;
    public var _t : stdgo.GoInt32;
    public var _s : stdgo.GoInt32;
    public var _want : stdgo.GoInt32;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.compress.flate.Flate.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _dist : stdgo.GoInt;
    public var _length : stdgo.GoInt;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.compress.flate.Flate.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _desc : stdgo.GoString;
    public var _stream : stdgo.GoString;
    public var _want : stdgo.GoString;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo._internal.compress.flate.Flate.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _input : stdgo.GoString;
    public var _output : stdgo.GoString;
};
class T__struct_4_asInterface {
    @:embedded
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T__struct_4_asInterface) class T__struct_4_static_extension {
    @:embedded
    public static function read( __self__:T__struct_4, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return return __self__.reader.read(_b);
}
@:local @:using(stdgo._internal.compress.flate.Flate.T__struct_4_static_extension) typedef T__struct_4 = {
    @:embedded
    public var reader : stdgo._internal.io.Io.Reader;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo._internal.compress.flate.Flate.T__struct_5_static_extension) typedef T__struct_5 = {
    public var _name : stdgo.GoString;
    public var _file : stdgo.GoString;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_6>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo._internal.compress.flate.Flate.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _name : stdgo.GoString;
    public var _level : stdgo.GoInt;
};
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_7>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo._internal.compress.flate.Flate.T__struct_7_static_extension) typedef T__struct_7 = {
    public var _name : stdgo.GoString;
    public var _n : stdgo.GoInt;
};
@:named @:using(stdgo._internal.compress.flate.Flate.T_byLiteral_static_extension) typedef T_byLiteral = stdgo.Slice<stdgo._internal.compress.flate.Flate.T_literalNode>;
@:named @:using(stdgo._internal.compress.flate.Flate.T_byFreq_static_extension) typedef T_byFreq = stdgo.Slice<stdgo._internal.compress.flate.Flate.T_literalNode>;
@:named @:using(stdgo._internal.compress.flate.Flate.CorruptInputError_static_extension) typedef CorruptInputError = stdgo.GoInt64;
@:named @:using(stdgo._internal.compress.flate.Flate.InternalError_static_extension) typedef InternalError = stdgo.GoString;
@:named @:using(stdgo._internal.compress.flate.Flate.T_token_static_extension) typedef T_token = stdgo.GoUInt32;
function _hash4(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32 {
        return ((((((((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32)) * (506832829u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (15i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
    }
function _bulkHash4(_b:stdgo.Slice<stdgo.GoByte>, _dst:stdgo.Slice<stdgo.GoUInt32>):Void {
        if (((_b.length) < (4 : stdgo.GoInt) : Bool)) {
            return;
        };
        var _hb:stdgo.GoUInt32 = ((((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
        _dst[(0 : stdgo.GoInt)] = (((_hb * (506832829u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (15i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        var _end:stdgo.GoInt = (((_b.length) - (4 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _end : Bool), _i++, {
                _hb = (((_hb << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | (_b[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
                _dst[(_i : stdgo.GoInt)] = (((_hb * (506832829u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (15i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
            });
        };
    }
function _matchLen(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>, _max:stdgo.GoInt):stdgo.GoInt {
        _a = (_a.__slice__(0, _max) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__slice__(0, (_a.length)) : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _av in _a) {
            if (_b[(_i : stdgo.GoInt)] != (_av)) {
                return _i;
            };
        };
        return _max;
    }
function newWriter(_w:stdgo._internal.io.Io.Writer, _level:stdgo.GoInt):{ var _0 : stdgo.Ref<Writer>; var _1 : stdgo.Error; } {
        var _dw:Writer = ({} : stdgo._internal.compress.flate.Flate.Writer);
        {
            var _err:stdgo.Error = _dw._d._init(_w, _level);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : (stdgo.Go.setRef(_dw) : stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer>), _1 : (null : stdgo.Error) };
    }
function newWriterDict(_w:stdgo._internal.io.Io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.Ref<Writer>; var _1 : stdgo.Error; } {
        var _dw = (stdgo.Go.setRef((new stdgo._internal.compress.flate.Flate.T_dictWriter(_w) : stdgo._internal.compress.flate.Flate.T_dictWriter)) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_dictWriter>);
        var __tmp__ = newWriter(stdgo.Go.asInterface(_dw), _level), _zw:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        _zw._d._fillWindow(_dict);
        _zw._dict = (_zw._dict.__append__(..._dict.__toArray__()));
        return { _0 : _zw, _1 : _err };
    }
function _largeDataChunk():stdgo.Slice<stdgo.GoByte> {
        var _result = new stdgo.Slice<stdgo.GoUInt8>((100000 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        for (_i => _ in _result) {
            _result[(_i : stdgo.GoInt)] = (((_i * _i : stdgo.GoInt) & (255 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoByte);
        };
        return _result;
    }
function testBulkHash4(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _x in _deflateTests) {
            var _y = _x._out;
            if (((_y.length) < (4 : stdgo.GoInt) : Bool)) {
                continue;
            };
            _y = (_y.__append__(..._y.__toArray__()));
            {
                var _j:stdgo.GoInt = (4 : stdgo.GoInt);
                stdgo.Go.cfor((_j < (_y.length) : Bool), _j++, {
                    var _y = (_y.__slice__(0, _j) : stdgo.Slice<stdgo.GoUInt8>);
                    var _dst = new stdgo.Slice<stdgo.GoUInt32>((((_y.length) - (4 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__();
                    for (_i => _ in _dst) {
                        _dst[(_i : stdgo.GoInt)] = ((_i + (100 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32);
                    };
                    _bulkHash4(_y, _dst);
                    for (_i => _got in _dst) {
                        var _want:stdgo.GoUInt32 = _hash4((_y.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
                        if (((_got != _want) && (_got == ((_i : stdgo.GoUInt32) + (100u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : Bool)) {
                            _t.errorf(("Len:%d Index:%d, want 0x%08x but not modified" : stdgo.GoString), stdgo.Go.toInterface((_y.length)), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want));
                        } else if (_got != (_want)) {
                            _t.errorf(("Len:%d Index:%d, got 0x%08x want:0x%08x" : stdgo.GoString), stdgo.Go.toInterface((_y.length)), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                        };
                    };
                });
            };
        };
    }
function testDeflate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _h in _deflateTests) {
            var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            var __tmp__ = newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _h._level), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("NewWriter: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                continue;
            };
            _w.write(_h._in);
            _w.close();
            if (!stdgo._internal.bytes.Bytes.equal(_buf.bytes(), _h._out)) {
                _t.errorf(("Deflate(%d, %x) = \n%#v, want \n%#v" : stdgo.GoString), stdgo.Go.toInterface(_h._level), stdgo.Go.toInterface(_h._in), stdgo.Go.toInterface(_buf.bytes()), stdgo.Go.toInterface(_h._out));
            };
        };
    }
function testWriterClose(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var __tmp__ = newWriter(stdgo.Go.asInterface(_b), (6 : stdgo.GoInt)), _zw:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("NewWriter: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _zw.write((("Test" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _c:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_c != (4 : stdgo.GoInt)) : Bool)) {
                _t.fatalf(("Write to not closed writer: %s, %d" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_c));
            };
        };
        {
            var _err:stdgo.Error = _zw.close();
            if (_err != null) {
                _t.fatalf(("Close: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _afterClose:stdgo.GoInt = _b.len();
        {
            var __tmp__ = _zw.write((("Test" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _c:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) || (_c != (0 : stdgo.GoInt)) : Bool)) {
                _t.fatalf(("Write to closed writer: %v, %d" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_c));
            };
        };
        {
            var _err:stdgo.Error = _zw.flush();
            if (_err == null) {
                _t.fatalf(("Flush to closed writer: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _zw.close();
            if (_err != null) {
                _t.fatalf(("Close: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (_afterClose != (_b.len())) {
            _t.fatalf(("Writer wrote data after close. After close: %d. After writes on closed stream: %d" : stdgo.GoString), stdgo.Go.toInterface(_afterClose), stdgo.Go.toInterface(_b.len()));
        };
    }
function testVeryLongSparseChunk(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (stdgo._internal.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping sparse chunk during short test" : stdgo.GoString)));
        };
        var __tmp__ = newWriter(stdgo._internal.io.Io.discard, (1 : stdgo.GoInt)), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("NewWriter: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            return;
        };
        {
            {
                var __tmp__ = stdgo._internal.io.Io.copy(stdgo.Go.asInterface(_w), stdgo.Go.asInterface((stdgo.Go.setRef(({ _l : (2300000000i64 : stdgo.GoInt64) } : stdgo._internal.compress.flate.Flate.T_sparseReader)) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_sparseReader>)));
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.errorf(("Compress failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                return;
            };
        };
    }
function _newSyncBuffer():stdgo.Ref<T_syncBuffer> {
        return (stdgo.Go.setRef(({ _ready : new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) } : stdgo._internal.compress.flate.Flate.T_syncBuffer)) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_syncBuffer>);
    }
function _testSync(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _level:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString):Void {
        if ((_input.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        _t.logf(("--testSync %d, %d, %s" : stdgo.GoString), stdgo.Go.toInterface(_level), stdgo.Go.toInterface((_input.length)), stdgo.Go.toInterface(_name));
        var _buf = _newSyncBuffer();
        var _buf1 = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        _buf.writeMode();
        var __tmp__ = newWriter(stdgo._internal.io.Io.multiWriter(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(_buf1)), _level), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("NewWriter: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            return;
        };
        var _r:stdgo._internal.io.Io.ReadCloser = newReader(stdgo.Go.asInterface(_buf));
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _hi:stdgo.GoInt = __1, _lo:stdgo.GoInt = __0;
                if (_i == ((0 : stdgo.GoInt))) {
                    {
                        final __tmp__0 = (0 : stdgo.GoInt);
                        final __tmp__1 = ((((_input.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
                        _lo = __tmp__0;
                        _hi = __tmp__1;
                    };
                } else {
                    {
                        final __tmp__0 = ((((_input.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
                        final __tmp__1 = (_input.length);
                        _lo = __tmp__0;
                        _hi = __tmp__1;
                    };
                };
                _t.logf(("#%d: write %d-%d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_lo), stdgo.Go.toInterface(_hi));
                {
                    var __tmp__ = _w.write((_input.__slice__(_lo, _hi) : stdgo.Slice<stdgo.GoUInt8>)), __28:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.errorf(("testSync: write: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        return;
                    };
                };
                if (_i == ((0 : stdgo.GoInt))) {
                    {
                        var _err:stdgo.Error = _w.flush();
                        if (_err != null) {
                            _t.errorf(("testSync: flush: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            return;
                        };
                    };
                } else {
                    {
                        var _err:stdgo.Error = _w.close();
                        if (_err != null) {
                            _t.errorf(("testSync: close: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                    };
                };
                _buf.readMode();
                var _out = new stdgo.Slice<stdgo.GoUInt8>(((_hi - _lo : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__();
                var __tmp__ = stdgo._internal.io.Io.readAtLeast(_r, _out, (_hi - _lo : stdgo.GoInt)), _m:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _t.logf(("#%d: read %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_m));
                if (((_m != (_hi - _lo : stdgo.GoInt)) || (_err != null) : Bool)) {
                    _t.errorf(("testSync/%d (%d, %d, %s): read %d: %d, %v (%d left)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_level), stdgo.Go.toInterface((_input.length)), stdgo.Go.toInterface(_name), stdgo.Go.toInterface((_hi - _lo : stdgo.GoInt)), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_buf._buf.len()));
                    return;
                };
                if (!stdgo._internal.bytes.Bytes.equal((_input.__slice__(_lo, _hi) : stdgo.Slice<stdgo.GoUInt8>), (_out.__slice__(0, (_hi - _lo : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
                    _t.errorf(("testSync/%d: read wrong bytes: %x vs %x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_input.__slice__(_lo, _hi) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface((_out.__slice__(0, (_hi - _lo : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
                    return;
                };
                _buf.writeMode();
            });
        };
        _buf.readMode();
        var _out = new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        {
            var __tmp__ = _r.read(_out), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n > (0 : stdgo.GoInt) : Bool) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
                _t.errorf(("testSync (%d, %d, %s): final Read: %d, %v (hex: %x)" : stdgo.GoString), stdgo.Go.toInterface(_level), stdgo.Go.toInterface((_input.length)), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_out.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>)));
            };
        };
        if (_buf._buf.len() != ((0 : stdgo.GoInt))) {
            _t.errorf(("testSync (%d, %d, %s): extra data at end" : stdgo.GoString), stdgo.Go.toInterface(_level), stdgo.Go.toInterface((_input.length)), stdgo.Go.toInterface(_name));
        };
        _r.close();
        _r = newReader(stdgo.Go.asInterface(_buf1));
        {
            var __tmp__ = stdgo._internal.io.Io.readAll(_r);
            _out = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.errorf(("testSync: read: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            return;
        };
        _r.close();
        if (!stdgo._internal.bytes.Bytes.equal(_input, _out)) {
            _t.errorf(("testSync: decompress(compress(data)) != data: level=%d input=%s" : stdgo.GoString), stdgo.Go.toInterface(_level), stdgo.Go.toInterface(_name));
        };
    }
function _testToFromWithLevelAndLimit(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _level:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString, _limit:stdgo.GoInt):Void {
        var _buffer:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var __tmp__ = newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_buffer) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _level), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("NewWriter: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            return;
        };
        _w.write(_input);
        _w.close();
        if (((_limit > (0 : stdgo.GoInt) : Bool) && (_buffer.len() > _limit : Bool) : Bool)) {
            _t.errorf(("level: %d, len(compress(data)) = %d > limit = %d" : stdgo.GoString), stdgo.Go.toInterface(_level), stdgo.Go.toInterface(_buffer.len()), stdgo.Go.toInterface(_limit));
            return;
        };
        if ((_limit > (0 : stdgo.GoInt) : Bool)) {
            _t.logf(("level: %d, size:%.2f%%, %d b\n" : stdgo.GoString), stdgo.Go.toInterface(_level), stdgo.Go.toInterface((((_buffer.len() * (100 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoFloat64) / (_limit : stdgo.GoFloat64) : stdgo.GoFloat64)), stdgo.Go.toInterface(_buffer.len()));
        };
        var _r:stdgo._internal.io.Io.ReadCloser = newReader(stdgo.Go.asInterface((stdgo.Go.setRef(_buffer) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
        var __tmp__ = stdgo._internal.io.Io.readAll(_r), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("read: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            return;
        };
        _r.close();
        if (!stdgo._internal.bytes.Bytes.equal(_input, _out)) {
            _t.errorf(("decompress(compress(data)) != data: level=%d input=%s" : stdgo.GoString), stdgo.Go.toInterface(_level), stdgo.Go.toInterface(_name));
            return;
        };
        _testSync(_t, _level, _input, _name?.__copy__());
    }
function _testToFromWithLimit(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString, _limit:stdgo.GoArray<stdgo.GoInt>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _testToFromWithLevelAndLimit(_t, _i, _input, _name?.__copy__(), _limit[(_i : stdgo.GoInt)]);
            });
        };
        _testToFromWithLevelAndLimit(_t, (-2 : stdgo.GoInt), _input, _name?.__copy__(), _limit[(10 : stdgo.GoInt)]);
    }
function testDeflateInflate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        for (_i => _h in _deflateInflateTests) {
            if ((stdgo._internal.testing.Testing.short() && ((_h._in.length) > (10000 : stdgo.GoInt) : Bool) : Bool)) {
                continue;
            };
            _testToFromWithLimit(_t, _h._in, stdgo._internal.fmt.Fmt.sprintf(("#%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__(), (new stdgo.GoArray<stdgo.GoInt>(...([].concat([for (i in 0 ... 11) (0 : stdgo.GoInt)]))) : stdgo.GoArray<stdgo.GoInt>));
        };
    }
function testReverseBits(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _h in _reverseBitsTests) {
            {
                var _v:stdgo.GoUInt16 = _reverseBits(_h._in, _h._bitCount);
                if (_v != (_h._out)) {
                    _t.errorf(("reverseBits(%v,%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_h._in), stdgo.Go.toInterface(_h._bitCount), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_h._out));
                };
            };
        };
    }
function testDeflateInflateString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        if ((stdgo._internal.testing.Testing.short() && (stdgo._internal.internal.testenv.Testenv.builder() == stdgo.Go.str()) : Bool)) {
            _t.skip(stdgo.Go.toInterface(("skipping in short mode" : stdgo.GoString)));
        };
        for (__16 => _test in _deflateInflateStringTests) {
            var __tmp__ = stdgo._internal.os.Os.readFile(_test._filename?.__copy__()), _gold:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
            _testToFromWithLimit(_t, _gold, _test._label?.__copy__(), _test._limit?.__copy__());
            if (stdgo._internal.testing.Testing.short()) {
                break;
            };
        };
    }
function testReaderDict(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var __tmp__ = newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), (5 : stdgo.GoInt)), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("NewWriter: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _w.write((("hello world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _w.flush();
        _b.reset();
        _w.write((("hello again world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _w.close();
        var _r:stdgo._internal.io.Io.ReadCloser = newReaderDict(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), (("hello world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        var __tmp__ = stdgo._internal.io.Io.readAll(_r), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if ((_data : stdgo.GoString) != (("hello again world" : stdgo.GoString))) {
            _t.fatalf(("read returned %q want %q" : stdgo.GoString), stdgo.Go.toInterface((_data : stdgo.GoString)), stdgo.Go.toInterface(("hello again world" : stdgo.GoString)));
        };
    }
function testWriterDict(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var __tmp__ = newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), (5 : stdgo.GoInt)), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("NewWriter: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _w.write((("hello world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _w.flush();
        _b.reset();
        _w.write((("hello again world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _w.close();
        var _b1:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        {
            var __tmp__ = newWriterDict(stdgo.Go.asInterface((stdgo.Go.setRef(_b1) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), (5 : stdgo.GoInt), (("hello world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            _w = __tmp__._0;
        };
        _w.write((("hello again world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _w.close();
        if (!stdgo._internal.bytes.Bytes.equal(_b1.bytes(), _b.bytes())) {
            _t.fatalf(("writer wrote %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_b1.bytes()), stdgo.Go.toInterface(_b.bytes()));
        };
    }
function testRegression2508(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (stdgo._internal.testing.Testing.short()) {
            _t.logf(("test disabled with -short" : stdgo.GoString));
            return;
        };
        var __tmp__ = newWriter(stdgo._internal.io.Io.discard, (1 : stdgo.GoInt)), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("NewWriter: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _buf = new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (131072 : stdgo.GoInt) : Bool), _i++, {
                {
                    var __tmp__ = _w.write(_buf), __16:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(("writer failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
        _w.close();
    }
function testWriterReset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        {
            var _level:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_level <= (9 : stdgo.GoInt) : Bool), _level++, {
                if ((stdgo._internal.testing.Testing.short() && (_level > (1 : stdgo.GoInt) : Bool) : Bool)) {
                    break;
                };
                var __tmp__ = newWriter(stdgo._internal.io.Io.discard, _level), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("NewWriter: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                var _buf = (("hello world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
                var _n:stdgo.GoInt = (1024 : stdgo.GoInt);
                if (stdgo._internal.testing.Testing.short()) {
                    _n = (10 : stdgo.GoInt);
                };
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _n : Bool), _i++, {
                        _w.write(_buf);
                    });
                };
                _w.reset(stdgo._internal.io.Io.discard);
                var __tmp__ = newWriter(stdgo._internal.io.Io.discard, _level), _wref:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("NewWriter: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                {
                    final __tmp__0 = null;
                    final __tmp__1 = null;
                    _w._d._fill = __tmp__0;
                    _wref._d._fill = __tmp__1;
                };
                {
                    final __tmp__0 = null;
                    final __tmp__1 = null;
                    _w._d._step = __tmp__0;
                    _wref._d._step = __tmp__1;
                };
                {
                    final __tmp__0 = null;
                    final __tmp__1 = null;
                    _w._d._bulkHasher = __tmp__0;
                    _wref._d._bulkHasher = __tmp__1;
                };
                {
                    final __tmp__0 = null;
                    final __tmp__1 = null;
                    _w._d._bestSpeed = __tmp__0;
                    _wref._d._bestSpeed = __tmp__1;
                };
                stdgo.Go.copySlice((_w._d._hashMatch.__slice__(0) : stdgo.Slice<stdgo.GoUInt32>), (_wref._d._hashMatch.__slice__(0) : stdgo.Slice<stdgo.GoUInt32>));
                if ((_w._d._tokens.length) != ((0 : stdgo.GoInt))) {
                    _t.errorf(("level %d Writer not reset after Reset. %d tokens were present" : stdgo.GoString), stdgo.Go.toInterface(_level), stdgo.Go.toInterface((_w._d._tokens.length)));
                };
                _w._d._tokens = _wref._d._tokens;
                _w._d._window = _wref._d._window;
                if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_w)), stdgo.Go.toInterface(stdgo.Go.asInterface(_wref)))) {
                    _t.errorf(("level %d Writer not reset after Reset" : stdgo.GoString), stdgo.Go.toInterface(_level));
                };
            });
        };
        var _levels = (new stdgo.Slice<stdgo.GoInt>(5, 5, (0 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (5 : stdgo.GoInt), (9 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        for (__40 => _level in _levels) {
            _t.run(stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_level))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                _testResetOutput(_t, _level, (null : stdgo.Slice<stdgo.GoUInt8>));
            });
        };
        _t.run(("dict" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            for (__57 => _level in _levels) {
                _t.run(stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_level))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                    _testResetOutput(_t, _level, (null : stdgo.Slice<stdgo.GoUInt8>));
                });
            };
        });
    }
function _testResetOutput(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void {
        var _writeData = function(_w:stdgo.Ref<Writer>):Void {
            var _msg = (("now is the time for all good gophers" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
            _w.write(_msg);
            _w.flush();
            var _hello = (("hello world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1024 : stdgo.GoInt) : Bool), _i++, {
                    _w.write(_hello);
                });
            };
            var _fill = stdgo._internal.bytes.Bytes.repeat((("x" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (65000 : stdgo.GoInt));
            _w.write(_fill);
        };
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _w:stdgo.Ref<Writer> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer>);
        var _err:stdgo.Error = (null : stdgo.Error);
        if (_dict == null) {
            {
                var __tmp__ = newWriter(stdgo.Go.asInterface(_buf), _level);
                _w = __tmp__._0;
                _err = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = newWriterDict(stdgo.Go.asInterface(_buf), _level, _dict);
                _w = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            _t.fatalf(("NewWriter: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _writeData(_w);
        _w.close();
        var _out1 = _buf.bytes();
        var _buf2 = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        _w.reset(stdgo.Go.asInterface(_buf2));
        _writeData(_w);
        _w.close();
        var _out2 = _buf2.bytes();
        if ((_out1.length) != ((_out2.length))) {
            _t.errorf(("got %d, expected %d bytes" : stdgo.GoString), stdgo.Go.toInterface((_out2.length)), stdgo.Go.toInterface((_out1.length)));
            return;
        };
        if (!stdgo._internal.bytes.Bytes.equal(_out1, _out2)) {
            var _mm:stdgo.GoInt = (0 : stdgo.GoInt);
            for (_i => _b in (_out1.__slice__(0, (_out2.length)) : stdgo.Slice<stdgo.GoUInt8>)) {
                if (_b != (_out2[(_i : stdgo.GoInt)])) {
                    _t.errorf(("mismatch index %d: %#02x, expected %#02x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_out2[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_b));
                };
                _mm++;
                if (_mm == ((10 : stdgo.GoInt))) {
                    _t.fatal(stdgo.Go.toInterface(("Stopping" : stdgo.GoString)));
                };
            };
        };
        _t.logf(("got %d bytes" : stdgo.GoString), stdgo.Go.toInterface((_out1.length)));
    }
function testBestSpeed(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.Macro.controlFlow({
            _t.parallel();
            var _abc = new stdgo.Slice<stdgo.GoUInt8>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
            for (_i => _ in _abc) {
                _abc[(_i : stdgo.GoInt)] = (_i : stdgo.GoByte);
            };
            var _abcabc = stdgo._internal.bytes.Bytes.repeat(_abc, ((131072 : stdgo.GoInt) / (_abc.length) : stdgo.GoInt));
            var _want:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _testCases = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>(
16,
16,
(new stdgo.Slice<stdgo.GoInt>(2, 2, (65536 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>),
(new stdgo.Slice<stdgo.GoInt>(2, 2, (65536 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>),
(new stdgo.Slice<stdgo.GoInt>(3, 3, (65536 : stdgo.GoInt), (1 : stdgo.GoInt), (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>),
(new stdgo.Slice<stdgo.GoInt>(3, 3, (65536 : stdgo.GoInt), (1 : stdgo.GoInt), (65536 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>),
(new stdgo.Slice<stdgo.GoInt>(2, 2, (65536 : stdgo.GoInt), (14 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>),
(new stdgo.Slice<stdgo.GoInt>(2, 2, (65536 : stdgo.GoInt), (15 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>),
(new stdgo.Slice<stdgo.GoInt>(2, 2, (65536 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>),
(new stdgo.Slice<stdgo.GoInt>(3, 3, (65536 : stdgo.GoInt), (16 : stdgo.GoInt), (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>),
(new stdgo.Slice<stdgo.GoInt>(3, 3, (65536 : stdgo.GoInt), (16 : stdgo.GoInt), (65536 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>),
(new stdgo.Slice<stdgo.GoInt>(2, 2, (65536 : stdgo.GoInt), (127 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>),
(new stdgo.Slice<stdgo.GoInt>(2, 2, (65536 : stdgo.GoInt), (128 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>),
(new stdgo.Slice<stdgo.GoInt>(3, 3, (65536 : stdgo.GoInt), (128 : stdgo.GoInt), (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>),
(new stdgo.Slice<stdgo.GoInt>(3, 3, (65536 : stdgo.GoInt), (128 : stdgo.GoInt), (65536 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>),
(new stdgo.Slice<stdgo.GoInt>(2, 2, (65536 : stdgo.GoInt), (129 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>),
(new stdgo.Slice<stdgo.GoInt>(3, 3, (65536 : stdgo.GoInt), (65536 : stdgo.GoInt), (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>),
(new stdgo.Slice<stdgo.GoInt>(3, 3, (65536 : stdgo.GoInt), (65536 : stdgo.GoInt), (65536 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            for (_i => _tc in _testCases) {
                if (((_i >= (3 : stdgo.GoInt) : Bool) && stdgo._internal.testing.Testing.short() : Bool)) {
                    break;
                };
                for (__8 => _firstN in (new stdgo.Slice<stdgo.GoInt>(6, 6, (1 : stdgo.GoInt), (65534 : stdgo.GoInt), (65535 : stdgo.GoInt), (65536 : stdgo.GoInt), (65537 : stdgo.GoInt), (131072 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)) {
                    _tc[(0 : stdgo.GoInt)] = _firstN;
                    @:label("outer") for (__9 => _flush in (new stdgo.Slice<Bool>(2, 2, false, true) : stdgo.Slice<Bool>)) {
                        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
                        _want = (_want.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        var __tmp__ = newWriter(stdgo.Go.asInterface(_buf), (1 : stdgo.GoInt)), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.errorf(("i=%d, firstN=%d, flush=%t: NewWriter: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_firstN), stdgo.Go.toInterface(_flush), stdgo.Go.toInterface(_err));
                            continue;
                        };
                        for (__18 => _n in _tc) {
                            _want = (_want.__append__(...(_abcabc.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>).__toArray__()));
                            {
                                var __tmp__ = _w.write((_abcabc.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)), __19:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _t.errorf(("i=%d, firstN=%d, flush=%t: Write: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_firstN), stdgo.Go.toInterface(_flush), stdgo.Go.toInterface(_err));
                                    @:jump("outer") continue;
                                };
                            };
                            if (!_flush) {
                                continue;
                            };
                            {
                                var _err:stdgo.Error = _w.flush();
                                if (_err != null) {
                                    _t.errorf(("i=%d, firstN=%d, flush=%t: Flush: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_firstN), stdgo.Go.toInterface(_flush), stdgo.Go.toInterface(_err));
                                    @:jump("outer") continue;
                                };
                            };
                        };
                        {
                            var _err:stdgo.Error = _w.close();
                            if (_err != null) {
                                _t.errorf(("i=%d, firstN=%d, flush=%t: Close: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_firstN), stdgo.Go.toInterface(_flush), stdgo.Go.toInterface(_err));
                                continue;
                            };
                        };
                        var _r:stdgo._internal.io.Io.ReadCloser = newReader(stdgo.Go.asInterface(_buf));
                        var __tmp__ = stdgo._internal.io.Io.readAll(_r), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.errorf(("i=%d, firstN=%d, flush=%t: ReadAll: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_firstN), stdgo.Go.toInterface(_flush), stdgo.Go.toInterface(_err));
                            continue;
                        };
                        _r.close();
                        if (!stdgo._internal.bytes.Bytes.equal(_got, _want)) {
                            _t.errorf(("i=%d, firstN=%d, flush=%t: corruption during deflate-then-inflate" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_firstN), stdgo.Go.toInterface(_flush));
                            continue;
                        };
                    };
                };
            };
        });
    }
function testWriterPersistentWriteError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var __tmp__ = stdgo._internal.os.Os.readFile(("../../testdata/Isaac.Newton-Opticks.txt" : stdgo.GoString)), _d:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("ReadFile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _d = (_d.__slice__(0, (10000 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = newWriter((null : stdgo._internal.io.Io.Writer), (-1 : stdgo.GoInt)), _zw:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("NewWriter: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                var _fw = (stdgo.Go.setRef((new stdgo._internal.compress.flate.Flate.T_failWriter(_i) : stdgo._internal.compress.flate.Flate.T_failWriter)) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_failWriter>);
                _zw.reset(stdgo.Go.asInterface(_fw));
                var __tmp__ = _zw.write(_d), __24:stdgo.GoInt = __tmp__._0, _werr:stdgo.Error = __tmp__._1;
                var _cerr:stdgo.Error = _zw.close();
                var _ferr:stdgo.Error = _zw.flush();
                if (((stdgo.Go.toInterface(_werr) != stdgo.Go.toInterface(_errIO)) && (_werr != null) : Bool)) {
                    _t.errorf(("test %d, mismatching Write error: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_werr), stdgo.Go.toInterface(_errIO));
                };
                if (((stdgo.Go.toInterface(_cerr) != stdgo.Go.toInterface(_errIO)) && (_fw._n < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _t.errorf(("test %d, mismatching Close error: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_cerr), stdgo.Go.toInterface(_errIO));
                };
                if (((stdgo.Go.toInterface(_ferr) != stdgo.Go.toInterface(_errIO)) && (_fw._n < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _t.errorf(("test %d, mismatching Flush error: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_ferr), stdgo.Go.toInterface(_errIO));
                };
                if ((_fw._n >= (0 : stdgo.GoInt) : Bool)) {
                    return;
                };
            });
        };
    }
function testWriterPersistentFlushError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = newWriter(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.compress.flate.Flate.T_failWriter((0 : stdgo.GoInt)) : stdgo._internal.compress.flate.Flate.T_failWriter)) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_failWriter>)), (-1 : stdgo.GoInt)), _zw:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("NewWriter: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _flushErr:stdgo.Error = _zw.flush();
        var _closeErr:stdgo.Error = _zw.close();
        var __tmp__ = _zw.write((("Test" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), __8:stdgo.GoInt = __tmp__._0, _writeErr:stdgo.Error = __tmp__._1;
        _checkErrors((new stdgo.Slice<stdgo.Error>(3, 3, _closeErr, _flushErr, _writeErr) : stdgo.Slice<stdgo.Error>), _errIO, _t);
    }
function testWriterPersistentCloseError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = newWriter(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.compress.flate.Flate.T_failWriter((0 : stdgo.GoInt)) : stdgo._internal.compress.flate.Flate.T_failWriter)) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_failWriter>)), (-1 : stdgo.GoInt)), _zw:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("NewWriter: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _closeErr:stdgo.Error = _zw.close();
        var _flushErr:stdgo.Error = _zw.flush();
        var __tmp__ = _zw.write((("Test" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), __8:stdgo.GoInt = __tmp__._0, _writeErr:stdgo.Error = __tmp__._1;
        _checkErrors((new stdgo.Slice<stdgo.Error>(3, 3, _closeErr, _flushErr, _writeErr) : stdgo.Slice<stdgo.Error>), _errIO, _t);
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _zw.reset(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
        _err = _zw.close();
        if (_err != null) {
            _t.fatalf(("First call to close returned error: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _err = _zw.close();
        if (_err != null) {
            _t.fatalf(("Second call to close returned error: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _flushErr = _zw.flush();
        {
            var __tmp__ = _zw.write((("Test" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            _writeErr = __tmp__._1;
        };
        _checkErrors((new stdgo.Slice<stdgo.Error>(2, 2, _flushErr, _writeErr) : stdgo.Slice<stdgo.Error>), _errWriterClosed, _t);
    }
function _checkErrors(_got:stdgo.Slice<stdgo.Error>, _want:stdgo.Error, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.helper();
        for (__8 => _err in _got) {
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_want))) {
                _t.errorf(("Error doesn\'t match\nWant: %s\nGot: %s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
    }
function testBestSpeedMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _cases = (new stdgo.Slice<T__struct_0>(
17,
17,
({ _previous : (new stdgo.Slice<stdgo.GoUInt8>(5, 5, (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _current : (new stdgo.Slice<stdgo.GoUInt8>(
9,
9,
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _t : (-3 : stdgo.GoInt32), _s : (3 : stdgo.GoInt32), _want : (6 : stdgo.GoInt32) } : T__struct_0),
({ _previous : (new stdgo.Slice<stdgo.GoUInt8>(5, 5, (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _current : (new stdgo.Slice<stdgo.GoUInt8>(
9,
9,
(2 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _t : (-3 : stdgo.GoInt32), _s : (3 : stdgo.GoInt32), _want : (3 : stdgo.GoInt32) } : T__struct_0),
({ _previous : (new stdgo.Slice<stdgo.GoUInt8>(5, 5, (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _current : (new stdgo.Slice<stdgo.GoUInt8>(
9,
9,
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _t : (-3 : stdgo.GoInt32), _s : (3 : stdgo.GoInt32), _want : (2 : stdgo.GoInt32) } : T__struct_0),
({ _previous : (new stdgo.Slice<stdgo.GoUInt8>(5, 5, (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _current : (new stdgo.Slice<stdgo.GoUInt8>(
9,
9,
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _t : (-1 : stdgo.GoInt32), _s : (0 : stdgo.GoInt32), _want : (4 : stdgo.GoInt32) } : T__struct_0),
({ _previous : (new stdgo.Slice<stdgo.GoUInt8>(
10,
10,
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _current : (new stdgo.Slice<stdgo.GoUInt8>(
9,
9,
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _t : (-7 : stdgo.GoInt32), _s : (4 : stdgo.GoInt32), _want : (5 : stdgo.GoInt32) } : T__struct_0),
({ _previous : (new stdgo.Slice<stdgo.GoUInt8>(5, 5, (9 : stdgo.GoUInt8), (9 : stdgo.GoUInt8), (9 : stdgo.GoUInt8), (9 : stdgo.GoUInt8), (9 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _current : (new stdgo.Slice<stdgo.GoUInt8>(
9,
9,
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _t : (-1 : stdgo.GoInt32), _s : (0 : stdgo.GoInt32), _want : (0 : stdgo.GoInt32) } : T__struct_0),
({ _previous : (new stdgo.Slice<stdgo.GoUInt8>(5, 5, (9 : stdgo.GoUInt8), (9 : stdgo.GoUInt8), (9 : stdgo.GoUInt8), (9 : stdgo.GoUInt8), (9 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _current : (new stdgo.Slice<stdgo.GoUInt8>(
9,
9,
(9 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _t : (0 : stdgo.GoInt32), _s : (1 : stdgo.GoInt32), _want : (0 : stdgo.GoInt32) } : T__struct_0),
({ _previous : (new stdgo.Slice<stdgo.GoUInt8>(0, 0) : stdgo.Slice<stdgo.GoUInt8>), _current : (new stdgo.Slice<stdgo.GoUInt8>(
9,
9,
(9 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _t : (-5 : stdgo.GoInt32), _s : (1 : stdgo.GoInt32), _want : (0 : stdgo.GoInt32) } : T__struct_0),
({ _previous : (new stdgo.Slice<stdgo.GoUInt8>(0, 0) : stdgo.Slice<stdgo.GoUInt8>), _current : (new stdgo.Slice<stdgo.GoUInt8>(
9,
9,
(9 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _t : (-1 : stdgo.GoInt32), _s : (1 : stdgo.GoInt32), _want : (0 : stdgo.GoInt32) } : T__struct_0),
({ _previous : (new stdgo.Slice<stdgo.GoUInt8>(0, 0) : stdgo.Slice<stdgo.GoUInt8>), _current : (new stdgo.Slice<stdgo.GoUInt8>(
9,
9,
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _t : (0 : stdgo.GoInt32), _s : (1 : stdgo.GoInt32), _want : (3 : stdgo.GoInt32) } : T__struct_0),
({ _previous : (new stdgo.Slice<stdgo.GoUInt8>(3, 3, (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (5 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _current : (new stdgo.Slice<stdgo.GoUInt8>(3, 3, (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (5 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _t : (-3 : stdgo.GoInt32), _s : (0 : stdgo.GoInt32), _want : (3 : stdgo.GoInt32) } : T__struct_0),
({ _previous : new stdgo.Slice<stdgo.GoUInt8>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__(), _current : new stdgo.Slice<stdgo.GoUInt8>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__(), _t : (-1000 : stdgo.GoInt32), _s : (0 : stdgo.GoInt32), _want : (254 : stdgo.GoInt32) } : T__struct_0),
({ _previous : new stdgo.Slice<stdgo.GoUInt8>((200 : stdgo.GoInt).toBasic(), 0).__setNumber32__(), _current : new stdgo.Slice<stdgo.GoUInt8>((500 : stdgo.GoInt).toBasic(), 0).__setNumber32__(), _t : (-200 : stdgo.GoInt32), _s : (0 : stdgo.GoInt32), _want : (254 : stdgo.GoInt32) } : T__struct_0),
({ _previous : new stdgo.Slice<stdgo.GoUInt8>((200 : stdgo.GoInt).toBasic(), 0).__setNumber32__(), _current : new stdgo.Slice<stdgo.GoUInt8>((500 : stdgo.GoInt).toBasic(), 0).__setNumber32__(), _t : (0 : stdgo.GoInt32), _s : (1 : stdgo.GoInt32), _want : (254 : stdgo.GoInt32) } : T__struct_0),
({ _previous : new stdgo.Slice<stdgo.GoUInt8>((254 : stdgo.GoInt).toBasic(), 0).__setNumber32__(), _current : new stdgo.Slice<stdgo.GoUInt8>((500 : stdgo.GoInt).toBasic(), 0).__setNumber32__(), _t : (-254 : stdgo.GoInt32), _s : (0 : stdgo.GoInt32), _want : (254 : stdgo.GoInt32) } : T__struct_0),
({ _previous : new stdgo.Slice<stdgo.GoUInt8>((200 : stdgo.GoInt).toBasic(), 0).__setNumber32__(), _current : new stdgo.Slice<stdgo.GoUInt8>((500 : stdgo.GoInt).toBasic(), 0).__setNumber32__(), _t : (-200 : stdgo.GoInt32), _s : (400 : stdgo.GoInt32), _want : (100 : stdgo.GoInt32) } : T__struct_0),
({ _previous : new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__(), _current : new stdgo.Slice<stdgo.GoUInt8>((500 : stdgo.GoInt).toBasic(), 0).__setNumber32__(), _t : (200 : stdgo.GoInt32), _s : (400 : stdgo.GoInt32), _want : (100 : stdgo.GoInt32) } : T__struct_0)) : stdgo.Slice<T__struct_0>);
        for (_i => _c in _cases) {
            var _e:stdgo._internal.compress.flate.Flate.T_deflateFast = ({ _prev : _c._previous } : stdgo._internal.compress.flate.Flate.T_deflateFast);
            var _got:stdgo.GoInt32 = _e._matchLen(_c._s, _c._t, _c._current);
            if (_got != (_c._want)) {
                _t.errorf(("Test %d: match length, want %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_c._want), stdgo.Go.toInterface(_got));
            };
        };
    }
function testBestSpeedMaxMatchOffset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        {};
        for (__8 => _matchBefore in (new stdgo.Slice<Bool>(2, 2, false, true) : stdgo.Slice<Bool>)) {
            for (__9 => _extra in (new stdgo.Slice<stdgo.GoInt>(5, 5, (0 : stdgo.GoInt), (14 : stdgo.GoInt), (15 : stdgo.GoInt), (16 : stdgo.GoInt), (30 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)) {
                {
                    var _offsetAdj:stdgo.GoInt = (-5 : stdgo.GoInt);
                    stdgo.Go.cfor((_offsetAdj <= (5 : stdgo.GoInt) : Bool), _offsetAdj++, {
                        var _report:(stdgo.GoString, stdgo.Error) -> Void = function(_desc:stdgo.GoString, _err:stdgo.Error):Void {
                            _t.errorf(("matchBefore=%t, extra=%d, offsetAdj=%d: %s%v" : stdgo.GoString), stdgo.Go.toInterface(_matchBefore), stdgo.Go.toInterface(_extra), stdgo.Go.toInterface(_offsetAdj), stdgo.Go.toInterface(_desc), stdgo.Go.toInterface(_err));
                        };
                        var _offset:stdgo.GoInt = ((32768 : stdgo.GoInt) + _offsetAdj : stdgo.GoInt);
                        var _src = new stdgo.Slice<stdgo.GoUInt8>(((_offset + (("abcdefgh" : stdgo.GoString).length) : stdgo.GoInt) + _extra : stdgo.GoInt).toBasic(), 0).__setNumber32__();
                        stdgo.Go.copySlice(_src, ("abcdefgh" : stdgo.GoString));
                        if (!_matchBefore) {
                            stdgo.Go.copySlice((_src.__slice__((_offset - (("stuvwxyz" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ("stuvwxyz" : stdgo.GoString));
                        };
                        stdgo.Go.copySlice((_src.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>), ("abcdefgh" : stdgo.GoString));
                        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
                        var __tmp__ = newWriter(stdgo.Go.asInterface(_buf), (1 : stdgo.GoInt)), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _report(("NewWriter: " : stdgo.GoString), _err);
                            continue;
                        };
                        {
                            var __tmp__ = _w.write(_src), __10:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                _report(("Write: " : stdgo.GoString), _err);
                                continue;
                            };
                        };
                        {
                            var _err:stdgo.Error = _w.close();
                            if (_err != null) {
                                _report(("Writer.Close: " : stdgo.GoString), _err);
                                continue;
                            };
                        };
                        var _r:stdgo._internal.io.Io.ReadCloser = newReader(stdgo.Go.asInterface(_buf));
                        var __tmp__ = stdgo._internal.io.Io.readAll(_r), _dst:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        _r.close();
                        if (_err != null) {
                            _report(("ReadAll: " : stdgo.GoString), _err);
                            continue;
                        };
                        if (!stdgo._internal.bytes.Bytes.equal(_dst, _src)) {
                            _report(stdgo.Go.str()?.__copy__(), stdgo._internal.fmt.Fmt.errorf(("bytes differ after round-tripping" : stdgo.GoString)));
                            continue;
                        };
                    });
                };
            };
        };
    }
function testBestSpeedShiftOffsets(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _enc = _newDeflateFast();
        var _testData = new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var _rng = stdgo._internal.math.rand.Rand.new_(stdgo._internal.math.rand.Rand.newSource((0i64 : stdgo.GoInt64)));
        for (_i => _ in _testData) {
            _testData[(_i : stdgo.GoInt)] = (_rng.uint32() : stdgo.GoByte);
        };
        var _wantFirstTokens:stdgo.GoInt = (_enc._encode((null : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>), _testData).length);
        var _wantSecondTokens:stdgo.GoInt = (_enc._encode((null : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>), _testData).length);
        if ((_wantFirstTokens <= _wantSecondTokens : Bool)) {
            _t.fatalf(("test needs matches between inputs to be generated" : stdgo.GoString));
        };
        _enc._cur = ((2147352577 : stdgo.GoInt32) - (_testData.length : stdgo.GoInt32) : stdgo.GoInt32);
        var _got:stdgo.GoInt = (_enc._encode((null : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>), _testData).length);
        if (_wantFirstTokens != (_got)) {
            _t.errorf(("got %d, want %d tokens" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_wantFirstTokens));
        };
        if (_enc._cur != ((2147352577 : stdgo.GoInt32))) {
            _t.errorf(("got %d, want e.cur to be at bufferReset (%d)" : stdgo.GoString), stdgo.Go.toInterface(_enc._cur), stdgo.Go.toInterface((2147352577 : stdgo.GoInt)));
        };
        _got = (_enc._encode((null : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>), _testData).length);
        if (_wantSecondTokens != (_got)) {
            _t.errorf(("got %d, want %d token" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_wantSecondTokens));
        };
        if ((_enc._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
            _t.errorf(("want e.cur to be < bufferReset (%d), got %d" : stdgo.GoString), stdgo.Go.toInterface((2147352577 : stdgo.GoInt)), stdgo.Go.toInterface(_enc._cur));
        };
        _enc._cur = (2147352577 : stdgo.GoInt32);
        _enc._shiftOffsets();
        _got = (_enc._encode((null : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>), _testData).length);
        if (_wantFirstTokens != (_got)) {
            _t.errorf(("got %d, want %d tokens" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_wantFirstTokens));
        };
    }
function testMaxStackSize(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _n:stdgo.GoInt = stdgo._internal.runtime.debug.Debug.setMaxStack((65536 : stdgo.GoInt));
            {
                var _a0 = _n;
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug.setMaxStack(_a0));
            };
            var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
            __deferstack__.unshift(() -> _wg.wait_());
            var _b = new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
            {
                var _level:stdgo.GoInt = (-2 : stdgo.GoInt);
                stdgo.Go.cfor((_level <= (9 : stdgo.GoInt) : Bool), _level++, {
                    _wg.add((1 : stdgo.GoInt));
                    stdgo.Go.routine(() -> {
                        var a = function(_level:stdgo.GoInt):Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> _wg.done());
                                var __tmp__ = newWriter(stdgo._internal.io.Io.discard, _level), _zw:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _t.errorf(("level %d, NewWriter() = %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_level), stdgo.Go.toInterface(_err));
                                };
                                {
                                    var __tmp__ = _zw.write(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                    if (((_n != (_b.length)) || (_err != null) : Bool)) {
                                        _t.errorf(("level %d, Write() = (%d, %v), want (%d, nil)" : stdgo.GoString), stdgo.Go.toInterface(_level), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_b.length)));
                                    };
                                };
                                {
                                    var _err:stdgo.Error = _zw.close();
                                    if (_err != null) {
                                        _t.errorf(("level %d, Close() = %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_level), stdgo.Go.toInterface(_err));
                                    };
                                };
                                _zw.reset(stdgo._internal.io.Io.discard);
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            } catch(__exception__) {
                                var exe:Dynamic = __exception__.native;
                                if ((exe is haxe.ValueException)) exe = exe.value;
                                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                    exe = stdgo.Go.toInterface(__exception__.message);
                                };
                                stdgo.Go.recover_exception = exe;
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        };
                        a(_level);
                    });
                });
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _load32(_b:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt32):stdgo.GoUInt32 {
        _b = (_b.__slice__(_i, (_i + (4 : stdgo.GoInt32) : stdgo.GoInt32), (_b.length)) : stdgo.Slice<stdgo.GoUInt8>);
        return ((((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
function _load64(_b:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt32):stdgo.GoUInt64 {
        _b = (_b.__slice__(_i, (_i + (8 : stdgo.GoInt32) : stdgo.GoInt32), (_b.length)) : stdgo.Slice<stdgo.GoUInt8>);
        return ((((((((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt64) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt64) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt64) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(4 : stdgo.GoInt)] : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(5 : stdgo.GoInt)] : stdgo.GoUInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(6 : stdgo.GoInt)] : stdgo.GoUInt64) << (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(7 : stdgo.GoInt)] : stdgo.GoUInt64) << (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
function _hash(_u:stdgo.GoUInt32):stdgo.GoUInt32 {
        return (((_u * (506832829u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (18i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
    }
function _newDeflateFast():stdgo.Ref<T_deflateFast> {
        return (stdgo.Go.setRef(({ _prev : new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (65535 : stdgo.GoInt)).__setNumber32__(), _cur : (65535 : stdgo.GoInt32) } : stdgo._internal.compress.flate.Flate.T_deflateFast)) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_deflateFast>);
    }
function _emitLiteral(_dst:stdgo.Slice<T_token>, _lit:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<T_token> {
        for (__0 => _v in _lit) {
            _dst = (_dst.__append__(_literalToken((_v : stdgo.GoUInt32))));
        };
        return _dst;
    }
function testDictDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _poemRefs:stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(
166,
166,
({ _dist : (0 : stdgo.GoInt), _length : (38 : stdgo.GoInt) } : T__struct_1),
({ _dist : (33 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (48 : stdgo.GoInt) } : T__struct_1),
({ _dist : (79 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (11 : stdgo.GoInt) } : T__struct_1),
({ _dist : (34 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (6 : stdgo.GoInt) } : T__struct_1),
({ _dist : (23 : stdgo.GoInt), _length : (7 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (8 : stdgo.GoInt) } : T__struct_1),
({ _dist : (50 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (2 : stdgo.GoInt) } : T__struct_1),
({ _dist : (69 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (34 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (97 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (43 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (6 : stdgo.GoInt) } : T__struct_1),
({ _dist : (7 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (88 : stdgo.GoInt), _length : (7 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (12 : stdgo.GoInt) } : T__struct_1),
({ _dist : (80 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (2 : stdgo.GoInt) } : T__struct_1),
({ _dist : (141 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (1 : stdgo.GoInt) } : T__struct_1),
({ _dist : (196 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (157 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (6 : stdgo.GoInt) } : T__struct_1),
({ _dist : (181 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (2 : stdgo.GoInt) } : T__struct_1),
({ _dist : (23 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (77 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (28 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (128 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (110 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (70 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (85 : stdgo.GoInt), _length : (6 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (2 : stdgo.GoInt) } : T__struct_1),
({ _dist : (182 : stdgo.GoInt), _length : (6 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (133 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (7 : stdgo.GoInt) } : T__struct_1),
({ _dist : (47 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (20 : stdgo.GoInt) } : T__struct_1),
({ _dist : (112 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (1 : stdgo.GoInt) } : T__struct_1),
({ _dist : (58 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (8 : stdgo.GoInt) } : T__struct_1),
({ _dist : (59 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (173 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (114 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (92 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (2 : stdgo.GoInt) } : T__struct_1),
({ _dist : (71 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (2 : stdgo.GoInt) } : T__struct_1),
({ _dist : (76 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (1 : stdgo.GoInt) } : T__struct_1),
({ _dist : (46 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (96 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (130 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (360 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (178 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (7 : stdgo.GoInt) } : T__struct_1),
({ _dist : (75 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (45 : stdgo.GoInt), _length : (6 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (6 : stdgo.GoInt) } : T__struct_1),
({ _dist : (299 : stdgo.GoInt), _length : (6 : stdgo.GoInt) } : T__struct_1),
({ _dist : (180 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (70 : stdgo.GoInt), _length : (6 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (1 : stdgo.GoInt) } : T__struct_1),
({ _dist : (48 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (66 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (47 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (9 : stdgo.GoInt) } : T__struct_1),
({ _dist : (325 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (1 : stdgo.GoInt) } : T__struct_1),
({ _dist : (359 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (318 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (2 : stdgo.GoInt) } : T__struct_1),
({ _dist : (199 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (1 : stdgo.GoInt) } : T__struct_1),
({ _dist : (344 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (248 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (10 : stdgo.GoInt) } : T__struct_1),
({ _dist : (310 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (93 : stdgo.GoInt), _length : (6 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (252 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (157 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (2 : stdgo.GoInt) } : T__struct_1),
({ _dist : (273 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (14 : stdgo.GoInt) } : T__struct_1),
({ _dist : (99 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (1 : stdgo.GoInt) } : T__struct_1),
({ _dist : (464 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (2 : stdgo.GoInt) } : T__struct_1),
({ _dist : (92 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (495 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (1 : stdgo.GoInt) } : T__struct_1),
({ _dist : (322 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (16 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (402 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (2 : stdgo.GoInt) } : T__struct_1),
({ _dist : (237 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (2 : stdgo.GoInt) } : T__struct_1),
({ _dist : (432 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (1 : stdgo.GoInt) } : T__struct_1),
({ _dist : (483 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (2 : stdgo.GoInt) } : T__struct_1),
({ _dist : (294 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (2 : stdgo.GoInt) } : T__struct_1),
({ _dist : (306 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (113 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (1 : stdgo.GoInt) } : T__struct_1),
({ _dist : (26 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (164 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (488 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (1 : stdgo.GoInt) } : T__struct_1),
({ _dist : (542 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (248 : stdgo.GoInt), _length : (6 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (205 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (8 : stdgo.GoInt) } : T__struct_1),
({ _dist : (48 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (449 : stdgo.GoInt), _length : (6 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (2 : stdgo.GoInt) } : T__struct_1),
({ _dist : (192 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (328 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (9 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (433 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (622 : stdgo.GoInt), _length : (25 : stdgo.GoInt) } : T__struct_1),
({ _dist : (615 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (46 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (2 : stdgo.GoInt) } : T__struct_1),
({ _dist : (104 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (475 : stdgo.GoInt), _length : (10 : stdgo.GoInt) } : T__struct_1),
({ _dist : (549 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (597 : stdgo.GoInt), _length : (8 : stdgo.GoInt) } : T__struct_1),
({ _dist : (314 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (1 : stdgo.GoInt) } : T__struct_1),
({ _dist : (473 : stdgo.GoInt), _length : (6 : stdgo.GoInt) } : T__struct_1),
({ _dist : (317 : stdgo.GoInt), _length : (5 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (1 : stdgo.GoInt) } : T__struct_1),
({ _dist : (400 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (109 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (151 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (48 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (4 : stdgo.GoInt) } : T__struct_1),
({ _dist : (125 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (108 : stdgo.GoInt), _length : (3 : stdgo.GoInt) } : T__struct_1),
({ _dist : (0 : stdgo.GoInt), _length : (2 : stdgo.GoInt) } : T__struct_1)) : stdgo.Slice<T__struct_1>);
        var __0:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer), __1:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer), _want:stdgo._internal.bytes.Bytes.Buffer = __1, _got:stdgo._internal.bytes.Bytes.Buffer = __0;
        var _dd:T_dictDecoder = ({} : stdgo._internal.compress.flate.Flate.T_dictDecoder);
        _dd._init((2048 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoUInt8>));
        var _writeCopy:(stdgo.GoInt, stdgo.GoInt) -> Void = function(_dist:stdgo.GoInt, _length:stdgo.GoInt):Void {
            while ((_length > (0 : stdgo.GoInt) : Bool)) {
                var _cnt:stdgo.GoInt = _dd._tryWriteCopy(_dist, _length);
                if (_cnt == ((0 : stdgo.GoInt))) {
                    _cnt = _dd._writeCopy(_dist, _length);
                };
                _length = (_length - (_cnt) : stdgo.GoInt);
                if (_dd._availWrite() == ((0 : stdgo.GoInt))) {
                    _got.write(_dd._readFlush());
                };
            };
        };
        var _writeString:stdgo.GoString -> Void = function(_str:stdgo.GoString):Void {
            while (((_str.length) > (0 : stdgo.GoInt) : Bool)) {
                var _cnt:stdgo.GoInt = stdgo.Go.copySlice(_dd._writeSlice(), _str);
                _str = (_str.__slice__(_cnt) : stdgo.GoString)?.__copy__();
                _dd._writeMark(_cnt);
                if (_dd._availWrite() == ((0 : stdgo.GoInt))) {
                    _got.write(_dd._readFlush());
                };
            };
        };
        _writeString(("." : stdgo.GoString));
        _want.writeByte((46 : stdgo.GoUInt8));
        var _str:stdgo.GoString = ("The Road Not Taken\nRobert Frost\n\nTwo roads diverged in a yellow wood,\nAnd sorry I could not travel both\nAnd be one traveler, long I stood\nAnd looked down one as far as I could\nTo where it bent in the undergrowth;\n\nThen took the other, as just as fair,\nAnd having perhaps the better claim,\nBecause it was grassy and wanted wear;\nThough as for that the passing there\nHad worn them really about the same,\n\nAnd both that morning equally lay\nIn leaves no step had trodden black.\nOh, I kept the first for another day!\nYet knowing how way leads on to way,\nI doubted if I should ever come back.\n\nI shall be telling this with a sigh\nSomewhere ages and ages hence:\nTwo roads diverged in a wood, and I-\nI took the one less traveled by,\nAnd that has made all the difference.\n" : stdgo.GoString);
        for (__0 => _ref in _poemRefs) {
            if (_ref._dist == ((0 : stdgo.GoInt))) {
                _writeString((_str.__slice__(0, _ref._length) : stdgo.GoString)?.__copy__());
            } else {
                _writeCopy(_ref._dist, _ref._length);
            };
            _str = (_str.__slice__(_ref._length) : stdgo.GoString)?.__copy__();
        };
        _want.writeString(("The Road Not Taken\nRobert Frost\n\nTwo roads diverged in a yellow wood,\nAnd sorry I could not travel both\nAnd be one traveler, long I stood\nAnd looked down one as far as I could\nTo where it bent in the undergrowth;\n\nThen took the other, as just as fair,\nAnd having perhaps the better claim,\nBecause it was grassy and wanted wear;\nThough as for that the passing there\nHad worn them really about the same,\n\nAnd both that morning equally lay\nIn leaves no step had trodden black.\nOh, I kept the first for another day!\nYet knowing how way leads on to way,\nI doubted if I should ever come back.\n\nI shall be telling this with a sigh\nSomewhere ages and ages hence:\nTwo roads diverged in a wood, and I-\nI took the one less traveled by,\nAnd that has made all the difference.\n" : stdgo.GoString));
        _writeCopy(_dd._histSize(), (33 : stdgo.GoInt));
        _want.write((_want.bytes().__slice__(0, (33 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _writeString(("ABC\n" : stdgo.GoString));
        _writeCopy((("ABC\n" : stdgo.GoString).length), (236 : stdgo.GoInt));
        _want.writeString(stdgo._internal.strings.Strings.repeat(("ABC\n" : stdgo.GoString), (60 : stdgo.GoInt))?.__copy__());
        _writeString(("The quick brown fox jumped over the lazy dog!\n" : stdgo.GoString));
        _writeCopy((("The quick brown fox jumped over the lazy dog!\n" : stdgo.GoString).length), (414 : stdgo.GoInt));
        _want.writeString(stdgo._internal.strings.Strings.repeat(("The quick brown fox jumped over the lazy dog!\n" : stdgo.GoString), (10 : stdgo.GoInt))?.__copy__());
        _writeString(("." : stdgo.GoString));
        _writeCopy((1 : stdgo.GoInt), (9 : stdgo.GoInt));
        _want.writeString(stdgo._internal.strings.Strings.repeat(("." : stdgo.GoString), (10 : stdgo.GoInt))?.__copy__());
        _writeString(stdgo._internal.strings.Strings.toUpper(("The Road Not Taken\nRobert Frost\n\nTwo roads diverged in a yellow wood,\nAnd sorry I could not travel both\nAnd be one traveler, long I stood\nAnd looked down one as far as I could\nTo where it bent in the undergrowth;\n\nThen took the other, as just as fair,\nAnd having perhaps the better claim,\nBecause it was grassy and wanted wear;\nThough as for that the passing there\nHad worn them really about the same,\n\nAnd both that morning equally lay\nIn leaves no step had trodden black.\nOh, I kept the first for another day!\nYet knowing how way leads on to way,\nI doubted if I should ever come back.\n\nI shall be telling this with a sigh\nSomewhere ages and ages hence:\nTwo roads diverged in a wood, and I-\nI took the one less traveled by,\nAnd that has made all the difference.\n" : stdgo.GoString))?.__copy__());
        _writeCopy((("The Road Not Taken\nRobert Frost\n\nTwo roads diverged in a yellow wood,\nAnd sorry I could not travel both\nAnd be one traveler, long I stood\nAnd looked down one as far as I could\nTo where it bent in the undergrowth;\n\nThen took the other, as just as fair,\nAnd having perhaps the better claim,\nBecause it was grassy and wanted wear;\nThough as for that the passing there\nHad worn them really about the same,\n\nAnd both that morning equally lay\nIn leaves no step had trodden black.\nOh, I kept the first for another day!\nYet knowing how way leads on to way,\nI doubted if I should ever come back.\n\nI shall be telling this with a sigh\nSomewhere ages and ages hence:\nTwo roads diverged in a wood, and I-\nI took the one less traveled by,\nAnd that has made all the difference.\n" : stdgo.GoString).length), (5341 : stdgo.GoInt));
        _want.writeString(stdgo._internal.strings.Strings.repeat(stdgo._internal.strings.Strings.toUpper(("The Road Not Taken\nRobert Frost\n\nTwo roads diverged in a yellow wood,\nAnd sorry I could not travel both\nAnd be one traveler, long I stood\nAnd looked down one as far as I could\nTo where it bent in the undergrowth;\n\nThen took the other, as just as fair,\nAnd having perhaps the better claim,\nBecause it was grassy and wanted wear;\nThough as for that the passing there\nHad worn them really about the same,\n\nAnd both that morning equally lay\nIn leaves no step had trodden black.\nOh, I kept the first for another day!\nYet knowing how way leads on to way,\nI doubted if I should ever come back.\n\nI shall be telling this with a sigh\nSomewhere ages and ages hence:\nTwo roads diverged in a wood, and I-\nI took the one less traveled by,\nAnd that has made all the difference.\n" : stdgo.GoString))?.__copy__(), (8 : stdgo.GoInt))?.__copy__());
        _writeCopy(_dd._histSize(), (10 : stdgo.GoInt));
        _want.write(((_want.bytes().__slice__((_want.len() - _dd._histSize() : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _got.write(_dd._readFlush());
        if ((_got.string() : stdgo.GoString) != ((_want.string() : stdgo.GoString))) {
            _t.errorf(("final string mismatch:\ngot  %q\nwant %q" : stdgo.GoString), stdgo.Go.toInterface((_got.string() : stdgo.GoString)), stdgo.Go.toInterface((_want.string() : stdgo.GoString)));
        };
    }
function testIssue5915(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _bits = (new stdgo.Slice<stdgo.GoInt>(
63,
63,
(4 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(6 : stdgo.GoInt),
(4 : stdgo.GoInt),
(3 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(4 : stdgo.GoInt),
(5 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(5 : stdgo.GoInt),
(5 : stdgo.GoInt),
(6 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(11 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(7 : stdgo.GoInt),
(8 : stdgo.GoInt),
(6 : stdgo.GoInt),
(0 : stdgo.GoInt),
(11 : stdgo.GoInt),
(0 : stdgo.GoInt),
(8 : stdgo.GoInt),
(0 : stdgo.GoInt),
(6 : stdgo.GoInt),
(6 : stdgo.GoInt),
(10 : stdgo.GoInt),
(8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _h:T_huffmanDecoder = ({} : stdgo._internal.compress.flate.Flate.T_huffmanDecoder);
        if (_h._init(_bits)) {
            _t.fatalf(("Given sequence of bits is bad, and should not succeed." : stdgo.GoString));
        };
    }
function testIssue5962(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _bits = (new stdgo.Slice<stdgo.GoInt>(
30,
30,
(4 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(6 : stdgo.GoInt),
(4 : stdgo.GoInt),
(3 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(4 : stdgo.GoInt),
(5 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(5 : stdgo.GoInt),
(5 : stdgo.GoInt),
(6 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(11 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _h:T_huffmanDecoder = ({} : stdgo._internal.compress.flate.Flate.T_huffmanDecoder);
        if (_h._init(_bits)) {
            _t.fatalf(("Given sequence of bits is bad, and should not succeed." : stdgo.GoString));
        };
    }
function testIssue6255(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _bits1 = (new stdgo.Slice<stdgo.GoInt>(
12,
12,
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(5 : stdgo.GoInt),
(6 : stdgo.GoInt),
(7 : stdgo.GoInt),
(8 : stdgo.GoInt),
(9 : stdgo.GoInt),
(10 : stdgo.GoInt),
(11 : stdgo.GoInt),
(11 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _bits2 = (new stdgo.Slice<stdgo.GoInt>(2, 2, (11 : stdgo.GoInt), (13 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _h:T_huffmanDecoder = ({} : stdgo._internal.compress.flate.Flate.T_huffmanDecoder);
        if (!_h._init(_bits1)) {
            _t.fatalf(("Given sequence of bits is good and should succeed." : stdgo.GoString));
        };
        if (_h._init(_bits2)) {
            _t.fatalf(("Given sequence of bits is bad and should not succeed." : stdgo.GoString));
        };
    }
function testInvalidEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _h:T_huffmanDecoder = ({} : stdgo._internal.compress.flate.Flate.T_huffmanDecoder);
        if (!_h._init((new stdgo.Slice<stdgo.GoInt>(1, 1, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>))) {
            _t.fatal(stdgo.Go.toInterface(("Failed to initialize Huffman decoder" : stdgo.GoString)));
        };
        var _f:T_decompressor = ({} : stdgo._internal.compress.flate.Flate.T_decompressor);
        _f._r = stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader((new stdgo.Slice<stdgo.GoUInt8>(1, 1, (255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)));
        var __tmp__ = _f._huffSym((stdgo.Go.setRef(_h) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanDecoder>)), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("Should have rejected invalid bit sequence" : stdgo.GoString)));
        };
    }
function testInvalidBits(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _oversubscribed = (new stdgo.Slice<stdgo.GoInt>(6, 6, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _incomplete = (new stdgo.Slice<stdgo.GoInt>(4, 4, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (4 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _h:T_huffmanDecoder = ({} : stdgo._internal.compress.flate.Flate.T_huffmanDecoder);
        if (_h._init(_oversubscribed)) {
            _t.fatal(stdgo.Go.toInterface(("Should reject oversubscribed bit-length set" : stdgo.GoString)));
        };
        if (_h._init(_incomplete)) {
            _t.fatal(stdgo.Go.toInterface(("Should reject incomplete bit-length set" : stdgo.GoString)));
        };
    }
function testStreams(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _testCases = (new stdgo.Slice<T__struct_2>(
28,
28,
({ _desc : ("degenerate HCLenTree" : stdgo.GoString), _stream : ("05e001000000000010000000000000000000000000000000000000000000000000000000000000000004" : stdgo.GoString), _want : ("fail" : stdgo.GoString) } : T__struct_2),
({ _desc : ("complete HCLenTree, empty HLitTree, empty HDistTree" : stdgo.GoString), _stream : ("05e001040000000000000000000000000000000000000000000000000000000000000000000000000010" : stdgo.GoString), _want : ("fail" : stdgo.GoString) } : T__struct_2),
({ _desc : ("empty HCLenTree" : stdgo.GoString), _stream : ("05e001000000000000000000000000000000000000000000000000000000000000000000000000000010" : stdgo.GoString), _want : ("fail" : stdgo.GoString) } : T__struct_2),
({ _desc : ("complete HCLenTree, complete HLitTree, empty HDistTree, use missing HDist symbol" : stdgo.GoString), _stream : ("000100feff000de00104000000001000000000000000000000000000000000000000000000000000000000000000002c" : stdgo.GoString), _want : ("fail" : stdgo.GoString) } : T__struct_2),
({ _desc : ("complete HCLenTree, complete HLitTree, degenerate HDistTree, use missing HDist symbol" : stdgo.GoString), _stream : ("000100feff000de001000000000000000000000000000000000000000000000000000000000000000610000000004070" : stdgo.GoString), _want : ("fail" : stdgo.GoString) } : T__struct_2),
({ _desc : ("complete HCLenTree, empty HLitTree, empty HDistTree" : stdgo.GoString), _stream : ("05e00104000000001004000000000000000000000000000000000000000000000000000000000000000000000008" : stdgo.GoString), _want : ("fail" : stdgo.GoString) } : T__struct_2),
({ _desc : ("complete HCLenTree, empty HLitTree, degenerate HDistTree" : stdgo.GoString), _stream : ("05e00104000000001004000000000000000000000000000000000000000000000000000000000000000800000008" : stdgo.GoString), _want : ("fail" : stdgo.GoString) } : T__struct_2),
({ _desc : ("complete HCLenTree, degenerate HLitTree, degenerate HDistTree, use missing HLit symbol" : stdgo.GoString), _stream : ("05e00104000000001000000000000000000000000000000000000000000000000000000000000000001c" : stdgo.GoString), _want : ("fail" : stdgo.GoString) } : T__struct_2),
({ _desc : ("complete HCLenTree, complete HLitTree, too large HDistTree" : stdgo.GoString), _stream : ("edff870500000000200400000000000000000000000000000000000000000000000000000000000000080000000000000004" : stdgo.GoString), _want : ("fail" : stdgo.GoString) } : T__struct_2),
({ _desc : ("complete HCLenTree, complete HLitTree, empty HDistTree, excessive repeater code" : stdgo.GoString), _stream : ("edfd870500000000200400000000000000000000000000000000000000000000000000000000000000e8b100" : stdgo.GoString), _want : ("fail" : stdgo.GoString) } : T__struct_2),
({ _desc : ("complete HCLenTree, complete HLitTree, empty HDistTree of normal length 30" : stdgo.GoString), _stream : ("05fd01240000000000f8ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff07000000fe01" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : T__struct_2),
({ _desc : ("complete HCLenTree, complete HLitTree, empty HDistTree of excessive length 31" : stdgo.GoString), _stream : ("05fe01240000000000f8ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff07000000fc03" : stdgo.GoString), _want : ("fail" : stdgo.GoString) } : T__struct_2),
({ _desc : ("complete HCLenTree, over-subscribed HLitTree, empty HDistTree" : stdgo.GoString), _stream : ("05e001240000000000fcffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff07f00f" : stdgo.GoString), _want : ("fail" : stdgo.GoString) } : T__struct_2),
({ _desc : ("complete HCLenTree, under-subscribed HLitTree, empty HDistTree" : stdgo.GoString), _stream : ("05e001240000000000fcfffffffffffffffffffffffffffffffffffffffffffffffffffffcffffffff07f00f" : stdgo.GoString), _want : ("fail" : stdgo.GoString) } : T__struct_2),
({ _desc : ("complete HCLenTree, complete HLitTree with single code, empty HDistTree" : stdgo.GoString), _stream : ("05e001240000000000f8ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff07f00f" : stdgo.GoString), _want : ("01" : stdgo.GoString) } : T__struct_2),
({ _desc : ("complete HCLenTree, complete HLitTree with multiple codes, empty HDistTree" : stdgo.GoString), _stream : ("05e301240000000000f8ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff07807f" : stdgo.GoString), _want : ("01" : stdgo.GoString) } : T__struct_2),
({ _desc : ("complete HCLenTree, complete HLitTree, degenerate HDistTree, use valid HDist symbol" : stdgo.GoString), _stream : ("000100feff000de00104000000001000000000000000000000000000000000000000000000000000000000000000003c" : stdgo.GoString), _want : ("00000000" : stdgo.GoString) } : T__struct_2),
({ _desc : ("complete HCLenTree, degenerate HLitTree, degenerate HDistTree" : stdgo.GoString), _stream : ("05e00104000000001000000000000000000000000000000000000000000000000000000000000000000c" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : T__struct_2),
({ _desc : ("complete HCLenTree, degenerate HLitTree, empty HDistTree" : stdgo.GoString), _stream : ("05e001040000000010000000000000000000000000000000000000000000000000000000000000000004" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : T__struct_2),
({ _desc : ("complete HCLenTree, complete HLitTree, empty HDistTree, spanning repeater code" : stdgo.GoString), _stream : ("edfd870500000000200400000000000000000000000000000000000000000000000000000000000000e8b000" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : T__struct_2),
({ _desc : ("complete HCLenTree with length codes, complete HLitTree, empty HDistTree" : stdgo.GoString), _stream : ("ede00104000000001000000000000000000000000000000000000000000000000000000000000000000400004000" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : T__struct_2),
({ _desc : ("complete HCLenTree, complete HLitTree, degenerate HDistTree, use valid HLit symbol 284 with count 31" : stdgo.GoString), _stream : ("000100feff00ede0010400000000100000000000000000000000000000000000000000000000000000000000000000040000407f00" : stdgo.GoString), _want : ("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" : stdgo.GoString) } : T__struct_2),
({ _desc : ("complete HCLenTree, complete HLitTree, degenerate HDistTree, use valid HLit and HDist symbols" : stdgo.GoString), _stream : ("0cc2010d00000082b0ac4aff0eb07d27060000ffff" : stdgo.GoString), _want : ("616263616263" : stdgo.GoString) } : T__struct_2),
({ _desc : ("fixed block, use reserved symbol 287" : stdgo.GoString), _stream : ("33180700" : stdgo.GoString), _want : ("fail" : stdgo.GoString) } : T__struct_2),
({ _desc : ("raw block" : stdgo.GoString), _stream : ("010100feff11" : stdgo.GoString), _want : ("11" : stdgo.GoString) } : T__struct_2),
({ _desc : ("issue 10426 - over-subscribed HCLenTree causes a hang" : stdgo.GoString), _stream : ("344c4a4e494d4b070000ff2e2eff2e2e2e2e2eff" : stdgo.GoString), _want : ("fail" : stdgo.GoString) } : T__struct_2),
({ _desc : ("issue 11030 - empty HDistTree unexpectedly leads to error" : stdgo.GoString), _stream : ("05c0070600000080400fff37a0ca" : stdgo.GoString), _want : stdgo.Go.str()?.__copy__() } : T__struct_2),
({ _desc : ("issue 11033 - empty HDistTree unexpectedly leads to error" : stdgo.GoString), _stream : ("050fb109c020cca5d017dcbca044881ee1034ec149c8980bbc413c2ab35be9dcb1473449922449922411202306ee97b0383a521b4ffdcf3217f9f7d3adb701" : stdgo.GoString), _want : ("3130303634342068652e706870005d05355f7ed957ff084a90925d19e3ebc6d0c6d7" : stdgo.GoString) } : T__struct_2)) : stdgo.Slice<T__struct_2>);
        for (_i => _tc in _testCases) {
            var __tmp__ = stdgo._internal.encoding.hex.Hex.decodeString(_tc._stream?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var __tmp__ = stdgo._internal.io.Io.readAll(newReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_data))));
                _data = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_tc._want == (("fail" : stdgo.GoString))) {
                if (_err == null) {
                    _t.errorf(("#%d (%s): got nil error, want non-nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tc._desc));
                };
            } else {
                if (_err != null) {
                    _t.errorf(("#%d (%s): %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tc._desc), stdgo.Go.toInterface(_err));
                    continue;
                };
                {
                    var _got:stdgo.GoString = stdgo._internal.encoding.hex.Hex.encodeToString(_data)?.__copy__();
                    if (_got != (_tc._want)) {
                        _t.errorf(("#%d (%s):\ngot  %q\nwant %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tc._desc), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._want));
                    };
                };
            };
        };
    }
function testTruncatedStreams(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (21 : stdgo.GoInt) : Bool), _i++, {
                var _r:stdgo._internal.io.Io.ReadCloser = newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader((stdgo.Go.str(0,
"\x0C",
0,
243,
255,
"hello, world",
1,
0,
0,
255,
255).__slice__(0, _i) : stdgo.GoString)?.__copy__())));
                var __tmp__ = stdgo._internal.io.Io.copy(stdgo._internal.io.Io.discard, _r), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.errUnexpectedEOF))) {
                    _t.errorf(("io.Copy(%d) on truncated stream: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo._internal.io.Io.errUnexpectedEOF));
                };
            });
        };
    }
function testReaderEarlyEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _testSizes = (new stdgo.Slice<stdgo.GoInt>(
19,
19,
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(5 : stdgo.GoInt),
(6 : stdgo.GoInt),
(7 : stdgo.GoInt),
(8 : stdgo.GoInt),
(100 : stdgo.GoInt),
(1000 : stdgo.GoInt),
(10000 : stdgo.GoInt),
(100000 : stdgo.GoInt),
(128 : stdgo.GoInt),
(1024 : stdgo.GoInt),
(16384 : stdgo.GoInt),
(131072 : stdgo.GoInt),
(32768 : stdgo.GoInt),
(65536 : stdgo.GoInt),
(98304 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _maxSize:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__8 => _n in _testSizes) {
            if ((_maxSize < _n : Bool)) {
                _maxSize = _n;
            };
        };
        var _readBuf = new stdgo.Slice<stdgo.GoUInt8>((40 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var _data = new stdgo.Slice<stdgo.GoUInt8>((_maxSize : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        for (_i => _ in _data) {
            _data[(_i : stdgo.GoInt)] = (_i : stdgo.GoByte);
        };
        for (__9 => _sz in _testSizes) {
            if ((stdgo._internal.testing.Testing.short() && (_sz > (32768 : stdgo.GoInt) : Bool) : Bool)) {
                continue;
            };
            for (__10 => _flush in (new stdgo.Slice<Bool>(2, 2, true, false) : stdgo.Slice<Bool>)) {
                var _earlyEOF:Bool = true;
                var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
                var __tmp__ = newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), (5 : stdgo.GoInt)), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, __11:stdgo.Error = __tmp__._1;
                _w.write((_data.__slice__(0, _sz) : stdgo.Slice<stdgo.GoUInt8>));
                if (_flush) {
                    _w.flush();
                    _earlyEOF = false;
                };
                _w.close();
                var _r:stdgo._internal.io.Io.ReadCloser = newReader(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
                while (true) {
                    var __tmp__ = _r.read(_readBuf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                        if ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo.Ref<T_decompressor>)) : stdgo.Ref<T_decompressor>)._dict._availWrite() == ((32768 : stdgo.GoInt))) {
                            _earlyEOF = false;
                        };
                        if (((_n == (0 : stdgo.GoInt)) && _earlyEOF : Bool)) {
                            _t.errorf(("On size:%d flush:%v, Read() = (0, io.EOF), want (n, io.EOF)" : stdgo.GoString), stdgo.Go.toInterface(_sz), stdgo.Go.toInterface(_flush));
                        };
                        if (((_n != (0 : stdgo.GoInt)) && !_earlyEOF : Bool)) {
                            _t.errorf(("On size:%d flush:%v, Read() = (%d, io.EOF), want (0, io.EOF)" : stdgo.GoString), stdgo.Go.toInterface(_sz), stdgo.Go.toInterface(_flush), stdgo.Go.toInterface(_n));
                        };
                        break;
                    };
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
        };
    }
function _newHuffmanBitWriter(_w:stdgo._internal.io.Io.Writer):stdgo.Ref<T_huffmanBitWriter> {
        return (stdgo.Go.setRef(({ _writer : _w, _literalFreq : new stdgo.Slice<stdgo.GoInt32>((286 : stdgo.GoInt).toBasic(), 0).__setNumber32__(), _offsetFreq : new stdgo.Slice<stdgo.GoInt32>((30 : stdgo.GoInt).toBasic(), 0).__setNumber32__(), _codegen : new stdgo.Slice<stdgo.GoUInt8>((317 : stdgo.GoInt).toBasic(), 0).__setNumber32__(), _literalEncoding : _newHuffmanEncoder((286 : stdgo.GoInt)), _offsetEncoding : _newHuffmanEncoder((30 : stdgo.GoInt)), _codegenEncoding : _newHuffmanEncoder((19 : stdgo.GoInt)) } : stdgo._internal.compress.flate.Flate.T_huffmanBitWriter)) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanBitWriter>);
    }
function _histogram(_b:stdgo.Slice<stdgo.GoByte>, _h:stdgo.Slice<stdgo.GoInt32>):Void {
        _h = (_h.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        for (__0 => _t in _b) {
            _h[(_t : stdgo.GoInt)]++;
        };
    }
function testBlockHuff(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = stdgo._internal.path.filepath.Filepath.glob(("testdata/huffman-*.in" : stdgo.GoString)), _match:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        for (__8 => _in in _match) {
            var _out:stdgo.GoString = _in?.__copy__();
            if (stdgo._internal.strings.Strings.hasSuffix(_in?.__copy__(), (".in" : stdgo.GoString))) {
                _out = ((_in.__slice__(0, ((_in.length) - ((".in" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.GoString) + (".golden" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            };
            _testBlockHuff(_t, _in?.__copy__(), _out?.__copy__());
        };
    }
function _testBlockHuff(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _in:stdgo.GoString, _out:stdgo.GoString):Void {
        var __tmp__ = stdgo._internal.os.Os.readFile(_in?.__copy__()), _all:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _bw = _newHuffmanBitWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
        _bw._writeBlockHuff(false, _all);
        _bw._flush();
        var _got = _buf.bytes();
        var __tmp__ = stdgo._internal.os.Os.readFile(_out?.__copy__()), _want:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) && !_update.value : Bool)) {
            _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        _t.logf(("Testing %q" : stdgo.GoString), stdgo.Go.toInterface(_in));
        if (!stdgo._internal.bytes.Bytes.equal(_got, _want)) {
            if (_update.value) {
                if (_in != (_out)) {
                    _t.logf(("Updating %q" : stdgo.GoString), stdgo.Go.toInterface(_out));
                    {
                        var _err:stdgo.Error = stdgo._internal.os.Os.writeFile(_out?.__copy__(), _got, (438u32 : stdgo._internal.io.fs.Fs.FileMode));
                        if (_err != null) {
                            _t.error(stdgo.Go.toInterface(_err));
                        };
                    };
                    return;
                };
                _t.errorf(("WARNING: -update did not rewrite input file %s" : stdgo.GoString), stdgo.Go.toInterface(_in));
            };
            _t.errorf(("%q != %q (see %q)" : stdgo.GoString), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface((_in + (".got" : stdgo.GoString)?.__copy__() : stdgo.GoString)));
            {
                var _err:stdgo.Error = stdgo._internal.os.Os.writeFile((_in + (".got" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _got, (438u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
            };
            return;
        };
        _t.log(stdgo.Go.toInterface(("Output ok" : stdgo.GoString)));
        _buf.reset();
        _bw._reset(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
        _bw._writeBlockHuff(false, _all);
        _bw._flush();
        _got = _buf.bytes();
        if (!stdgo._internal.bytes.Bytes.equal(_got, _want)) {
            _t.errorf(("after reset %q != %q (see %q)" : stdgo.GoString), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface((_in + (".reset.got" : stdgo.GoString)?.__copy__() : stdgo.GoString)));
            {
                var _err:stdgo.Error = stdgo._internal.os.Os.writeFile((_in + (".reset.got" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _got, (438u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
            };
            return;
        };
        _t.log(stdgo.Go.toInterface(("Reset ok" : stdgo.GoString)));
        _testWriterEOF(_t, ("huff" : stdgo.GoString), ({ _input : _in?.__copy__() } : stdgo._internal.compress.flate.Flate.T_huffTest), true);
    }
function testWriteBlock(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _writeBlockTests) {
            _testBlock(_t, _test?.__copy__(), ("wb" : stdgo.GoString));
        };
    }
function testWriteBlockDynamic(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _writeBlockTests) {
            _testBlock(_t, _test?.__copy__(), ("dyn" : stdgo.GoString));
        };
    }
function _testBlock(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _test:T_huffTest, _ttype:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_test._want != (stdgo.Go.str())) {
                _test._want = stdgo._internal.fmt.Fmt.sprintf(_test._want?.__copy__(), stdgo.Go.toInterface(_ttype))?.__copy__();
            };
            _test._wantNoInput = stdgo._internal.fmt.Fmt.sprintf(_test._wantNoInput?.__copy__(), stdgo.Go.toInterface(_ttype))?.__copy__();
            if (_update.value) {
                if (_test._input != (stdgo.Go.str())) {
                    _t.logf(("Updating %q" : stdgo.GoString), stdgo.Go.toInterface(_test._want));
                    var __tmp__ = stdgo._internal.os.Os.readFile(_test._input?.__copy__()), _input:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                        return;
                    };
                    var __tmp__ = stdgo._internal.os.Os.create(_test._want?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                        return;
                    };
                    __deferstack__.unshift(() -> _f.close());
                    var _bw = _newHuffmanBitWriter(stdgo.Go.asInterface(_f));
                    _writeToType(_t, _ttype?.__copy__(), _bw, _test._tokens, _input);
                };
                _t.logf(("Updating %q" : stdgo.GoString), stdgo.Go.toInterface(_test._wantNoInput));
                var __tmp__ = stdgo._internal.os.Os.create(_test._wantNoInput?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                __deferstack__.unshift(() -> _f.close());
                var _bw = _newHuffmanBitWriter(stdgo.Go.asInterface(_f));
                _writeToType(_t, _ttype?.__copy__(), _bw, _test._tokens, (null : stdgo.Slice<stdgo.GoUInt8>));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (_test._input != (stdgo.Go.str())) {
                _t.logf(("Testing %q" : stdgo.GoString), stdgo.Go.toInterface(_test._want));
                var __tmp__ = stdgo._internal.os.Os.readFile(_test._input?.__copy__()), _input:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                var __tmp__ = stdgo._internal.os.Os.readFile(_test._want?.__copy__()), _want:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
                var _bw = _newHuffmanBitWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
                _writeToType(_t, _ttype?.__copy__(), _bw, _test._tokens, _input);
                var _got = _buf.bytes();
                if (!stdgo._internal.bytes.Bytes.equal(_got, _want)) {
                    _t.errorf(("writeBlock did not yield expected result for file %q with input. See %q" : stdgo.GoString), stdgo.Go.toInterface(_test._want), stdgo.Go.toInterface((_test._want + (".got" : stdgo.GoString)?.__copy__() : stdgo.GoString)));
                    {
                        var _err:stdgo.Error = stdgo._internal.os.Os.writeFile((_test._want + (".got" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _got, (438u32 : stdgo._internal.io.fs.Fs.FileMode));
                        if (_err != null) {
                            _t.error(stdgo.Go.toInterface(_err));
                        };
                    };
                };
                _t.log(stdgo.Go.toInterface(("Output ok" : stdgo.GoString)));
                _buf.reset();
                _bw._reset(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
                _writeToType(_t, _ttype?.__copy__(), _bw, _test._tokens, _input);
                _bw._flush();
                _got = _buf.bytes();
                if (!stdgo._internal.bytes.Bytes.equal(_got, _want)) {
                    _t.errorf(("reset: writeBlock did not yield expected result for file %q with input. See %q" : stdgo.GoString), stdgo.Go.toInterface(_test._want), stdgo.Go.toInterface((_test._want + (".reset.got" : stdgo.GoString)?.__copy__() : stdgo.GoString)));
                    {
                        var _err:stdgo.Error = stdgo._internal.os.Os.writeFile((_test._want + (".reset.got" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _got, (438u32 : stdgo._internal.io.fs.Fs.FileMode));
                        if (_err != null) {
                            _t.error(stdgo.Go.toInterface(_err));
                        };
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                _t.log(stdgo.Go.toInterface(("Reset ok" : stdgo.GoString)));
                _testWriterEOF(_t, ("wb" : stdgo.GoString), _test?.__copy__(), true);
            };
            _t.logf(("Testing %q" : stdgo.GoString), stdgo.Go.toInterface(_test._wantNoInput));
            var __tmp__ = stdgo._internal.os.Os.readFile(_test._wantNoInput?.__copy__()), _wantNI:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            var _bw = _newHuffmanBitWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
            _writeToType(_t, _ttype?.__copy__(), _bw, _test._tokens, (null : stdgo.Slice<stdgo.GoUInt8>));
            var _got = _buf.bytes();
            if (!stdgo._internal.bytes.Bytes.equal(_got, _wantNI)) {
                _t.errorf(("writeBlock did not yield expected result for file %q with input. See %q" : stdgo.GoString), stdgo.Go.toInterface(_test._wantNoInput), stdgo.Go.toInterface((_test._wantNoInput + (".got" : stdgo.GoString)?.__copy__() : stdgo.GoString)));
                {
                    var _err:stdgo.Error = stdgo._internal.os.Os.writeFile((_test._want + (".got" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _got, (438u32 : stdgo._internal.io.fs.Fs.FileMode));
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    };
                };
            } else if ((_got[(0 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((1 : stdgo.GoUInt8))) {
                _t.error(stdgo.Go.toInterface(("got unexpected EOF" : stdgo.GoString)));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _t.log(stdgo.Go.toInterface(("Output ok" : stdgo.GoString)));
            _buf.reset();
            _bw._reset(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
            _writeToType(_t, _ttype?.__copy__(), _bw, _test._tokens, (null : stdgo.Slice<stdgo.GoUInt8>));
            _bw._flush();
            _got = _buf.bytes();
            if (!stdgo._internal.bytes.Bytes.equal(_got, _wantNI)) {
                _t.errorf(("reset: writeBlock did not yield expected result for file %q without input. See %q" : stdgo.GoString), stdgo.Go.toInterface(_test._want), stdgo.Go.toInterface((_test._want + (".reset.got" : stdgo.GoString)?.__copy__() : stdgo.GoString)));
                {
                    var _err:stdgo.Error = stdgo._internal.os.Os.writeFile((_test._want + (".reset.got" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _got, (438u32 : stdgo._internal.io.fs.Fs.FileMode));
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    };
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _t.log(stdgo.Go.toInterface(("Reset ok" : stdgo.GoString)));
            _testWriterEOF(_t, ("wb" : stdgo.GoString), _test?.__copy__(), false);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _writeToType(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _ttype:stdgo.GoString, _bw:stdgo.Ref<T_huffmanBitWriter>, _tok:stdgo.Slice<T_token>, _input:stdgo.Slice<stdgo.GoByte>):Void {
        {
            final __value__ = _ttype;
            if (__value__ == (("wb" : stdgo.GoString))) {
                _bw._writeBlock(_tok, false, _input);
            } else if (__value__ == (("dyn" : stdgo.GoString))) {
                _bw._writeBlockDynamic(_tok, false, _input);
            } else {
                throw stdgo.Go.toInterface(("unknown test type" : stdgo.GoString));
            };
        };
        if (_bw._err != null) {
            _t.error(stdgo.Go.toInterface(_bw._err));
            return;
        };
        _bw._flush();
        if (_bw._err != null) {
            _t.error(stdgo.Go.toInterface(_bw._err));
            return;
        };
    }
function _testWriterEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _ttype:stdgo.GoString, _test:T_huffTest, _useInput:Bool):Void {
        if ((_useInput && (_test._input == stdgo.Go.str()) : Bool)) {
            return;
        };
        var _input:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        if (_useInput) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.os.Os.readFile(_test._input?.__copy__());
                _input = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                return;
            };
        };
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _bw = _newHuffmanBitWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
        {
            final __value__ = _ttype;
            if (__value__ == (("wb" : stdgo.GoString))) {
                _bw._writeBlock(_test._tokens, true, _input);
            } else if (__value__ == (("dyn" : stdgo.GoString))) {
                _bw._writeBlockDynamic(_test._tokens, true, _input);
            } else if (__value__ == (("huff" : stdgo.GoString))) {
                _bw._writeBlockHuff(true, _input);
            } else {
                throw stdgo.Go.toInterface(("unknown test type" : stdgo.GoString));
            };
        };
        if (_bw._err != null) {
            _t.error(stdgo.Go.toInterface(_bw._err));
            return;
        };
        _bw._flush();
        if (_bw._err != null) {
            _t.error(stdgo.Go.toInterface(_bw._err));
            return;
        };
        var _b = _buf.bytes();
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("no output received" : stdgo.GoString)));
            return;
        };
        if ((_b[(0 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((1 : stdgo.GoUInt8))) {
            _t.errorf(("block not marked with EOF for input %q" : stdgo.GoString), stdgo.Go.toInterface(_test._input));
            return;
        };
        _t.log(stdgo.Go.toInterface(("EOF ok" : stdgo.GoString)));
    }
function _maxNode():T_literalNode {
        return (new stdgo._internal.compress.flate.Flate.T_literalNode((65535 : stdgo.GoUInt16), (2147483647 : stdgo.GoInt32)) : stdgo._internal.compress.flate.Flate.T_literalNode);
    }
function _newHuffmanEncoder(_size:stdgo.GoInt):stdgo.Ref<T_huffmanEncoder> {
        return (stdgo.Go.setRef(({ _codes : new stdgo.Slice<stdgo._internal.compress.flate.Flate.T_hcode>((_size : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_size : stdgo.GoInt).toBasic() > 0 ? (_size : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.flate.Flate.T_hcode)]) } : stdgo._internal.compress.flate.Flate.T_huffmanEncoder)) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanEncoder>);
    }
function _generateFixedLiteralEncoding():stdgo.Ref<T_huffmanEncoder> {
        var _h = _newHuffmanEncoder((286 : stdgo.GoInt));
        var _codes = _h._codes;
        var _ch:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        {
            _ch = (0 : stdgo.GoUInt16);
            stdgo.Go.cfor((_ch < (286 : stdgo.GoUInt16) : Bool), _ch++, {
                var _bits:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                var _size:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                if ((_ch < (144 : stdgo.GoUInt16) : Bool)) {
                    _bits = (_ch + (48 : stdgo.GoUInt16) : stdgo.GoUInt16);
                    _size = (8 : stdgo.GoUInt16);
                } else if ((_ch < (256 : stdgo.GoUInt16) : Bool)) {
                    _bits = ((_ch + (400 : stdgo.GoUInt16) : stdgo.GoUInt16) - (144 : stdgo.GoUInt16) : stdgo.GoUInt16);
                    _size = (9 : stdgo.GoUInt16);
                } else if ((_ch < (280 : stdgo.GoUInt16) : Bool)) {
                    _bits = (_ch - (256 : stdgo.GoUInt16) : stdgo.GoUInt16);
                    _size = (7 : stdgo.GoUInt16);
                } else {
                    _bits = ((_ch + (192 : stdgo.GoUInt16) : stdgo.GoUInt16) - (280 : stdgo.GoUInt16) : stdgo.GoUInt16);
                    _size = (8 : stdgo.GoUInt16);
                };
                _codes[(_ch : stdgo.GoInt)] = ({ _code : _reverseBits(_bits, (_size : stdgo.GoByte)), _len : _size } : stdgo._internal.compress.flate.Flate.T_hcode);
            });
        };
        return _h;
    }
function _generateFixedOffsetEncoding():stdgo.Ref<T_huffmanEncoder> {
        var _h = _newHuffmanEncoder((30 : stdgo.GoInt));
        var _codes = _h._codes;
        for (_ch => _ in _codes) {
            _codes[(_ch : stdgo.GoInt)] = ({ _code : _reverseBits((_ch : stdgo.GoUInt16), (5 : stdgo.GoUInt8)), _len : (5 : stdgo.GoUInt16) } : stdgo._internal.compress.flate.Flate.T_hcode);
        };
        return _h;
    }
function _reverseBits(_number:stdgo.GoUInt16, _bitLength:stdgo.GoByte):stdgo.GoUInt16 {
        return stdgo._internal.math.bits.Bits.reverse16((_number << (((16 : stdgo.GoUInt8) - _bitLength : stdgo.GoUInt8)) : stdgo.GoUInt16));
    }
function _noEOF(_e:stdgo.Error):stdgo.Error {
        if (stdgo.Go.toInterface(_e) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
            return stdgo._internal.io.Io.errUnexpectedEOF;
        };
        return _e;
    }
function _fixedHuffmanDecoderInit():Void {
        _fixedOnce.do_(function():Void {
            var _bits:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(...[for (i in 0 ... 288) (0 : stdgo.GoInt)]);
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (144 : stdgo.GoInt) : Bool), _i++, {
                    _bits[(_i : stdgo.GoInt)] = (8 : stdgo.GoInt);
                });
            };
            {
                var _i:stdgo.GoInt = (144 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                    _bits[(_i : stdgo.GoInt)] = (9 : stdgo.GoInt);
                });
            };
            {
                var _i:stdgo.GoInt = (256 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (280 : stdgo.GoInt) : Bool), _i++, {
                    _bits[(_i : stdgo.GoInt)] = (7 : stdgo.GoInt);
                });
            };
            {
                var _i:stdgo.GoInt = (280 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (288 : stdgo.GoInt) : Bool), _i++, {
                    _bits[(_i : stdgo.GoInt)] = (8 : stdgo.GoInt);
                });
            };
            _fixedHuffmanDecoder._init((_bits.__slice__(0) : stdgo.Slice<stdgo.GoInt>));
        });
    }
function newReader(_r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.ReadCloser {
        _fixedHuffmanDecoderInit();
        var _f:T_decompressor = ({} : stdgo._internal.compress.flate.Flate.T_decompressor);
        _f._makeReader(_r);
        _f._bits = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoInt>(...[for (i in 0 ... 316) (0 : stdgo.GoInt)])) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
        _f._codebits = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoInt>(...[for (i in 0 ... 19) (0 : stdgo.GoInt)])) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
        _f._step = T_decompressor_static_extension._nextBlock;
        _f._dict._init((32768 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoUInt8>));
        return stdgo.Go.asInterface((stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_decompressor>));
    }
function newReaderDict(_r:stdgo._internal.io.Io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):stdgo._internal.io.Io.ReadCloser {
        _fixedHuffmanDecoderInit();
        var _f:T_decompressor = ({} : stdgo._internal.compress.flate.Flate.T_decompressor);
        _f._makeReader(_r);
        _f._bits = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoInt>(...[for (i in 0 ... 316) (0 : stdgo.GoInt)])) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
        _f._codebits = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoInt>(...[for (i in 0 ... 19) (0 : stdgo.GoInt)])) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
        _f._step = T_decompressor_static_extension._nextBlock;
        _f._dict._init((32768 : stdgo.GoInt), _dict);
        return stdgo.Go.asInterface((stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_decompressor>));
    }
function testReset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _ss = (new stdgo.Slice<stdgo.GoString>(2, 2, ("lorem ipsum izzle fo rizzle" : stdgo.GoString), ("the quick brown fox jumped over" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _deflated = new stdgo.Slice<stdgo._internal.bytes.Bytes.Buffer>((2 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((2 : stdgo.GoInt).toBasic() > 0 ? (2 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes.Bytes.Buffer)]);
        for (_i => _s in _ss) {
            var __tmp__ = newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_deflated[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), (1 : stdgo.GoInt)), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            _w.write((_s : stdgo.Slice<stdgo.GoByte>));
            _w.close();
        };
        var _inflated = new stdgo.Slice<stdgo._internal.bytes.Bytes.Buffer>((2 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((2 : stdgo.GoInt).toBasic() > 0 ? (2 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes.Bytes.Buffer)]);
        var _f:stdgo._internal.io.Io.ReadCloser = newReader(stdgo.Go.asInterface((stdgo.Go.setRef(_deflated[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
        stdgo._internal.io.Io.copy(stdgo.Go.asInterface((stdgo.Go.setRef(_inflated[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _f);
        (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f) : Resetter)) : Resetter).reset(stdgo.Go.asInterface((stdgo.Go.setRef(_deflated[(1 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), (null : stdgo.Slice<stdgo.GoUInt8>));
        stdgo._internal.io.Io.copy(stdgo.Go.asInterface((stdgo.Go.setRef(_inflated[(1 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _f);
        _f.close();
        for (_i => _s in _ss) {
            if (_s != ((_inflated[(_i : stdgo.GoInt)].string() : stdgo.GoString))) {
                _t.errorf(("inflated[%d]:\ngot  %q\nwant %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_inflated[(_i : stdgo.GoInt)])), stdgo.Go.toInterface(_s));
            };
        };
    }
function testReaderTruncated(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _vectors = (new stdgo.Slice<T__struct_3>(
10,
10,
({ _input : stdgo.Go.str(0)?.__copy__(), _output : stdgo.Go.str()?.__copy__() } : T__struct_3),
({ _input : stdgo.Go.str(0, "\x0C")?.__copy__(), _output : stdgo.Go.str()?.__copy__() } : T__struct_3),
({ _input : stdgo.Go.str(0, "\x0C", 0)?.__copy__(), _output : stdgo.Go.str()?.__copy__() } : T__struct_3),
({ _input : stdgo.Go.str(0, "\x0C", 0, 243, 255)?.__copy__(), _output : stdgo.Go.str()?.__copy__() } : T__struct_3),
({ _input : stdgo.Go.str(0, "\x0C", 0, 243, 255, "hello")?.__copy__(), _output : ("hello" : stdgo.GoString) } : T__struct_3),
({ _input : stdgo.Go.str(0, "\x0C", 0, 243, 255, "hello, world")?.__copy__(), _output : ("hello, world" : stdgo.GoString) } : T__struct_3),
({ _input : stdgo.Go.str(2)?.__copy__(), _output : stdgo.Go.str()?.__copy__() } : T__struct_3),
({ _input : stdgo.Go.str(242, "H", 205)?.__copy__(), _output : ("He" : stdgo.GoString) } : T__struct_3),
({ _input : stdgo.Go.str(242, "H͙0a\u0084\t")?.__copy__(), _output : stdgo.Go.str("Hel", 144, 144, 144, 144, 144)?.__copy__() } : T__struct_3),
({ _input : stdgo.Go.str(242, "H͙0a\u0084\t", 0)?.__copy__(), _output : stdgo.Go.str("Hel", 144, 144, 144, 144, 144)?.__copy__() } : T__struct_3)) : stdgo.Slice<T__struct_3>);
        for (_i => _v in _vectors) {
            var _r = stdgo._internal.strings.Strings.newReader(_v._input?.__copy__());
            var _zr:stdgo._internal.io.Io.ReadCloser = newReader(stdgo.Go.asInterface(_r));
            var __tmp__ = stdgo._internal.io.Io.readAll(_zr), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.errUnexpectedEOF))) {
                _t.errorf(("test %d, error mismatch: got %v, want io.ErrUnexpectedEOF" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
            };
            if ((_b : stdgo.GoString) != (_v._output)) {
                _t.errorf(("test %d, output mismatch: got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_v._output));
            };
        };
    }
function testResetDict(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _dict = (("the lorem fox" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _ss = (new stdgo.Slice<stdgo.GoString>(2, 2, ("lorem ipsum izzle fo rizzle" : stdgo.GoString), ("the quick brown fox jumped over" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _deflated = new stdgo.Slice<stdgo._internal.bytes.Bytes.Buffer>((_ss.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_ss.length : stdgo.GoInt).toBasic() > 0 ? (_ss.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes.Bytes.Buffer)]);
        for (_i => _s in _ss) {
            var __tmp__ = newWriterDict(stdgo.Go.asInterface((stdgo.Go.setRef(_deflated[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), (-1 : stdgo.GoInt), _dict), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            _w.write((_s : stdgo.Slice<stdgo.GoByte>));
            _w.close();
        };
        var _inflated = new stdgo.Slice<stdgo._internal.bytes.Bytes.Buffer>((_ss.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_ss.length : stdgo.GoInt).toBasic() > 0 ? (_ss.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes.Bytes.Buffer)]);
        var _f:stdgo._internal.io.Io.ReadCloser = newReader((null : stdgo._internal.io.Io.Reader));
        for (_i => _ in _inflated) {
            (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f) : Resetter)) : Resetter).reset(stdgo.Go.asInterface((stdgo.Go.setRef(_deflated[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _dict);
            stdgo._internal.io.Io.copy(stdgo.Go.asInterface((stdgo.Go.setRef(_inflated[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _f);
        };
        _f.close();
        for (_i => _s in _ss) {
            if (_s != ((_inflated[(_i : stdgo.GoInt)].string() : stdgo.GoString))) {
                _t.errorf(("inflated[%d]:\ngot  %q\nwant %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_inflated[(_i : stdgo.GoInt)])), stdgo.Go.toInterface(_s));
            };
        };
    }
function testReaderReusesReaderBuffer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _encodedReader = stdgo._internal.bytes.Bytes.newReader((new stdgo.Slice<stdgo.GoUInt8>(0, 0) : stdgo.Slice<stdgo.GoUInt8>));
        var _encodedNotByteReader:T__struct_4 = ({ reader : stdgo.Go.asInterface(_encodedReader) } : T__struct_4);
        _t.run(("BufferIsReused" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var _f = (stdgo.Go.typeAssert((stdgo.Go.toInterface(newReader(stdgo.Go.asInterface(_encodedNotByteReader))) : stdgo.Ref<T_decompressor>)) : stdgo.Ref<T_decompressor>);
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f._r) : stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>)) : stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>), _1 : false };
            }, _bufioR = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _t.fatalf(("bufio.Reader should be created" : stdgo.GoString));
            };
            _f.reset(stdgo.Go.asInterface(_encodedNotByteReader), (null : stdgo.Slice<stdgo.GoUInt8>));
            if (stdgo.Go.toInterface(stdgo.Go.asInterface(_bufioR)) != (stdgo.Go.toInterface(_f._r))) {
                _t.fatalf(("bufio.Reader was not reused" : stdgo.GoString));
            };
        });
        _t.run(("BufferIsNotReusedWhenGotByteReader" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var _f = (stdgo.Go.typeAssert((stdgo.Go.toInterface(newReader(stdgo.Go.asInterface(_encodedNotByteReader))) : stdgo.Ref<T_decompressor>)) : stdgo.Ref<T_decompressor>);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f._r) : stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>)) : stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>), _1 : false };
                }, __16 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.fatalf(("bufio.Reader should be created" : stdgo.GoString));
                };
            };
            _f.reset(stdgo.Go.asInterface(_encodedReader), (null : stdgo.Slice<stdgo.GoUInt8>));
            if (stdgo.Go.toInterface(_f._r) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_encodedReader)))) {
                _t.fatalf(("provided io.ByteReader should be used directly" : stdgo.GoString));
            };
        });
        _t.run(("BufferIsCreatedAfterByteReader" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            for (_i => _r in (new stdgo.Slice<stdgo._internal.io.Io.Reader>(2, 2, stdgo.Go.asInterface(_encodedReader), stdgo.Go.asInterface(stdgo._internal.bufio.Bufio.newReader(stdgo.Go.asInterface(_encodedReader)))) : stdgo.Slice<stdgo._internal.io.Io.Reader>)) {
                var _f = (stdgo.Go.typeAssert((stdgo.Go.toInterface(newReader(_r)) : stdgo.Ref<T_decompressor>)) : stdgo.Ref<T_decompressor>);
                if (stdgo.Go.toInterface(_f._r) != (stdgo.Go.toInterface(_r))) {
                    _t.fatalf(("provided io.ByteReader should be used directly, i=%d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                _f.reset(stdgo.Go.asInterface(_encodedNotByteReader), (null : stdgo.Slice<stdgo.GoUInt8>));
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f._r) : stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>)) : stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>), _1 : false };
                    }, __32 = __tmp__._0, _ok = __tmp__._1;
                    if (!_ok) {
                        _t.fatalf(("bufio.Reader should be created, i=%d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                    };
                };
            };
        });
    }
function testNlitOutOfRange(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.io.Io.copy(stdgo._internal.io.Io.discard, newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(stdgo.Go.str(252,
254,
"6",
231,
"^",
28,
239,
179,
"UXw",
182,
"V",
181,
"C",
244,
"o",
242,
210,
230,
"=",
153,
160,
133,
140,
"H",
235,
248,
"ڃ",
4,
"*u",
196,
248,
15,
18,
17,
185,
180,
"K\t",
160,
190,
139,
145,
"L")?.__copy__()))));
    }
function benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _doBench(_b, function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _buf0:stdgo.Slice<stdgo.GoByte>, _level:stdgo.GoInt, _n:stdgo.GoInt):Void {
            _b.reportAllocs();
            _b.stopTimer();
            _b.setBytes((_n : stdgo.GoInt64));
            var _compressed = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
            var __tmp__ = newWriter(stdgo.Go.asInterface(_compressed), _level), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _b.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i = (_i + ((_buf0.length)) : stdgo.GoInt), {
                    if (((_buf0.length) > (_n - _i : stdgo.GoInt) : Bool)) {
                        _buf0 = (_buf0.__slice__(0, (_n - _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    stdgo._internal.io.Io.copy(stdgo.Go.asInterface(_w), stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_buf0)));
                });
            };
            _w.close();
            var _buf1 = _compressed.bytes();
            {
                final __tmp__0 = (null : stdgo.Slice<stdgo.GoUInt8>);
                final __tmp__1 = null;
                final __tmp__2 = null;
                _buf0 = __tmp__0;
                _compressed = __tmp__1;
                _w = __tmp__2;
            };
            stdgo._internal.runtime.Runtime.gc();
            _b.startTimer();
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    stdgo._internal.io.Io.copy(stdgo._internal.io.Io.discard, newReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_buf1))));
                });
            };
        });
    }
function _doBench(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _f:(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _buf:stdgo.Slice<stdgo.GoByte>, _level:stdgo.GoInt, _n:stdgo.GoInt) -> Void):Void {
        for (__0 => _suite in _suites) {
            var __tmp__ = stdgo._internal.os.Os.readFile(_suite._file?.__copy__()), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _b.fatal(stdgo.Go.toInterface(_err));
            };
            if ((_buf.length) == ((0 : stdgo.GoInt))) {
                _b.fatalf(("test file %q has no data" : stdgo.GoString), stdgo.Go.toInterface(_suite._file));
            };
            for (__17 => _l in _levelTests) {
                for (__18 => _s in _sizes) {
                    _b.run(((((_suite._name + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _l._name?.__copy__() : stdgo.GoString) + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _s._name?.__copy__() : stdgo.GoString)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                        _f(_b, _buf, _l._level, _s._n);
                    });
                };
            };
        };
    }
function _literalToken(_literal:stdgo.GoUInt32):T_token {
        return (((0u32 : stdgo.GoUInt32) + _literal : stdgo.GoUInt32) : T_token);
    }
function _matchToken(_xlength:stdgo.GoUInt32, _xoffset:stdgo.GoUInt32):T_token {
        return ((((1073741824u32 : stdgo.GoUInt32) + (_xlength << (22i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) + _xoffset : stdgo.GoUInt32) : T_token);
    }
function _lengthCode(_len:stdgo.GoUInt32):stdgo.GoUInt32 {
        return _lengthCodes[(_len : stdgo.GoInt)];
    }
function _offsetCode(_off:stdgo.GoUInt32):stdgo.GoUInt32 {
        if ((_off < (_offsetCodes.length : stdgo.GoUInt32) : Bool)) {
            return _offsetCodes[(_off : stdgo.GoInt)];
        };
        if (((_off >> (7i64 : stdgo.GoUInt64) : stdgo.GoUInt32) < (_offsetCodes.length : stdgo.GoUInt32) : Bool)) {
            return (_offsetCodes[((_off >> (7i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] + (14u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        };
        return (_offsetCodes[((_off >> (14i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] + (28u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
function benchmarkEncode(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _doBench(_b, function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _buf0:stdgo.Slice<stdgo.GoByte>, _level:stdgo.GoInt, _n:stdgo.GoInt):Void {
            _b.stopTimer();
            _b.setBytes((_n : stdgo.GoInt64));
            var _buf1 = new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__();
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i = (_i + ((_buf0.length)) : stdgo.GoInt), {
                    if (((_buf0.length) > (_n - _i : stdgo.GoInt) : Bool)) {
                        _buf0 = (_buf0.__slice__(0, (_n - _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    stdgo.Go.copySlice((_buf1.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), _buf0);
                });
            };
            _buf0 = (null : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = newWriter(stdgo._internal.io.Io.discard, _level), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _b.fatal(stdgo.Go.toInterface(_err));
            };
            stdgo._internal.runtime.Runtime.gc();
            _b.startTimer();
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _w.reset(stdgo._internal.io.Io.discard);
                    _w.write(_buf1);
                    _w.close();
                });
            };
        });
    }
function testWriteError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _n:stdgo.GoInt = (65536 : stdgo.GoInt);
        if (!stdgo._internal.testing.Testing.short()) {
            _n = (_n * ((4 : stdgo.GoInt)) : stdgo.GoInt);
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(_buf), ("asdasfasf%d%dfghfgujyut%dyutyu\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
            });
        };
        var _in = _buf.bytes();
        var _copyBuffer = new stdgo.Slice<stdgo.GoUInt8>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _l:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_l < (10 : stdgo.GoInt) : Bool), _l++, {
                {
                    var _fail:stdgo.GoInt = (1 : stdgo.GoInt);
                    stdgo.Go.cfor((_fail <= (256 : stdgo.GoInt) : Bool), _fail = (_fail * ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                        var _ew = (stdgo.Go.setRef(({ n : _fail } : stdgo._internal.compress.flate.Flate.T_errorWriter)) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_errorWriter>);
                        var __tmp__ = newWriter(stdgo.Go.asInterface(_ew), _l), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.fatalf(("NewWriter: level %d: %v" : stdgo.GoString), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_err));
                        };
                        var __tmp__ = stdgo._internal.io.Io.copyBuffer(stdgo.Go.asInterface(_w), stdgo.Go.asInterface(({ reader : stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newBuffer(_in)) } : T__struct_4)), _copyBuffer), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            _t.fatalf(("Level %d: Expected an error, writer was %#v" : stdgo.GoString), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(stdgo.Go.asInterface(_ew)));
                        };
                        var __tmp__ = _w.write((new stdgo.Slice<stdgo.GoUInt8>(6, 6, (1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (5 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)), _n2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_n2 != ((0 : stdgo.GoInt))) {
                            _t.fatal(stdgo.Go.toInterface(("Level" : stdgo.GoString)), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(("Expected 0 length write, got" : stdgo.GoString)), stdgo.Go.toInterface(_n));
                        };
                        if (_err == null) {
                            _t.fatal(stdgo.Go.toInterface(("Level" : stdgo.GoString)), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(("Expected an error" : stdgo.GoString)));
                        };
                        _err = _w.flush();
                        if (_err == null) {
                            _t.fatal(stdgo.Go.toInterface(("Level" : stdgo.GoString)), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(("Expected an error on flush" : stdgo.GoString)));
                        };
                        _err = _w.close();
                        if (_err == null) {
                            _t.fatal(stdgo.Go.toInterface(("Level" : stdgo.GoString)), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(("Expected an error on close" : stdgo.GoString)));
                        };
                        _w.reset(stdgo._internal.io.Io.discard);
                        {
                            var __tmp__ = _w.write((new stdgo.Slice<stdgo.GoUInt8>(6, 6, (1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (6 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>));
                            _n2 = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            _t.fatal(stdgo.Go.toInterface(("Level" : stdgo.GoString)), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(("Got unexpected error after reset:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                        };
                        if (_n2 == ((0 : stdgo.GoInt))) {
                            _t.fatal(stdgo.Go.toInterface(("Level" : stdgo.GoString)), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(("Got 0 length write, expected > 0" : stdgo.GoString)));
                        };
                        if (stdgo._internal.testing.Testing.short()) {
                            return;
                        };
                    });
                };
            });
        };
    }
function testDeterministic(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (9 : stdgo.GoInt) : Bool), _i++, {
                _t.run(stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(("L" : stdgo.GoString)), stdgo.Go.toInterface(_i))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                    _testDeterministic(_i, _t);
                });
            });
        };
        _t.run(("LM2" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            _testDeterministic((-2 : stdgo.GoInt), _t);
        });
    }
function _testDeterministic(_i:stdgo.GoInt, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _length:stdgo.GoInt = (1966550 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing.short()) {
            _length = (_length / ((10 : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _rng = stdgo._internal.math.rand.Rand.new_(stdgo._internal.math.rand.Rand.newSource((1i64 : stdgo.GoInt64)));
        var _t1 = new stdgo.Slice<stdgo.GoUInt8>((_length : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        for (_i => _ in _t1) {
            _t1[(_i : stdgo.GoInt)] = ((_rng.int63() & (7i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoByte);
        };
        var _b1:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _br = stdgo._internal.bytes.Bytes.newBuffer(_t1);
        var __tmp__ = newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_b1) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _i), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _cbuf = new stdgo.Slice<stdgo.GoUInt8>((787 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        {
            var __tmp__ = stdgo._internal.io.Io.copyBuffer(stdgo.Go.asInterface(_w), stdgo.Go.asInterface(({ reader : stdgo.Go.asInterface(_br) } : T__struct_4)), _cbuf);
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _w.close();
        var _b2:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _cbuf = new stdgo.Slice<stdgo.GoUInt8>((81761 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var _br2 = stdgo._internal.bytes.Bytes.newBuffer(_t1);
        var __tmp__ = newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_b2) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _i), _w2:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo._internal.io.Io.copyBuffer(stdgo.Go.asInterface(_w2), stdgo.Go.asInterface(({ reader : stdgo.Go.asInterface(_br2) } : T__struct_4)), _cbuf);
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _w2.close();
        var _b1b = _b1.bytes();
        var _b2b = _b2.bytes();
        if (!stdgo._internal.bytes.Bytes.equal(_b1b, _b2b)) {
            _t.errorf(("level %d did not produce deterministic result, result mismatch, len(a) = %d, len(b) = %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_b1b.length)), stdgo.Go.toInterface((_b2b.length)));
        };
    }
function testDeflateFast_Reset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _n:stdgo.GoInt = (65536 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(_buf), ("asdfasdfasdfasdf%d%dfghfgujyut%dyutyu\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
            });
        };
        {};
        var _in = _buf.bytes();
        var _offset:stdgo.GoInt = (1 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing.short()) {
            _offset = (256 : stdgo.GoInt);
        };
        var _want:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var __tmp__ = newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_want) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), (1 : stdgo.GoInt)), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("NewWriter: level %d: %v" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface(_err));
        };
        _w.write(_in);
        _w.write(_in);
        _w.write(_in);
        _w.close();
        stdgo.Go.cfor((_offset <= (256 : stdgo.GoInt) : Bool), _offset = (_offset * ((2 : stdgo.GoInt)) : stdgo.GoInt), {
            var __tmp__ = newWriter(stdgo._internal.io.Io.discard, (1 : stdgo.GoInt)), _w:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("NewWriter: level %d: %v" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface(_err));
            };
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < ((((((2147352577 : stdgo.GoInt) - (_in.length) : stdgo.GoInt) - _offset : stdgo.GoInt) - (32768 : stdgo.GoInt) : stdgo.GoInt)) / (32768 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                    _w._d._reset((null : stdgo._internal.io.Io.Writer));
                });
            };
            var _got:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            _w.reset(stdgo.Go.asInterface((stdgo.Go.setRef(_got) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (3 : stdgo.GoInt) : Bool), _i++, {
                    {
                        var __tmp__ = _w.write(_in);
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                });
            };
            _err = _w.close();
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.bytes.Bytes.equal(_got.bytes(), _want.bytes())) {
                _t.fatalf(("output did not match at wraparound, len(want)  = %d, len(got) = %d" : stdgo.GoString), stdgo.Go.toInterface(_want.len()), stdgo.Go.toInterface(_got.len()));
            };
        });
    }
@:keep var _ = {
        try {
            var _offsetFreq = new stdgo.Slice<stdgo.GoInt32>((30 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
            _offsetFreq[(0 : stdgo.GoInt)] = (1 : stdgo.GoInt32);
            _huffOffset = _newHuffmanEncoder((30 : stdgo.GoInt));
            _huffOffset._generate(_offsetFreq, (15 : stdgo.GoInt32));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_compressor_asInterface {
    @:keep
    public dynamic function _close():stdgo.Error return __self__.value._close();
    @:keep
    public dynamic function _reset(_w:stdgo._internal.io.Io.Writer):Void __self__.value._reset(_w);
    @:keep
    public dynamic function _init(_w:stdgo._internal.io.Io.Writer, _level:stdgo.GoInt):stdgo.Error return __self__.value._init(_w, _level);
    @:keep
    public dynamic function _syncFlush():stdgo.Error return __self__.value._syncFlush();
    @:keep
    public dynamic function _write(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._write(_b);
    @:keep
    public dynamic function _storeHuff():Void __self__.value._storeHuff();
    @:keep
    public dynamic function _store():Void __self__.value._store();
    @:keep
    public dynamic function _fillStore(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt return __self__.value._fillStore(_b);
    @:keep
    public dynamic function _deflate():Void __self__.value._deflate();
    @:keep
    public dynamic function _initDeflate():Void __self__.value._initDeflate();
    @:keep
    public dynamic function _encSpeed():Void __self__.value._encSpeed();
    @:keep
    public dynamic function _writeStoredBlock(_buf:stdgo.Slice<stdgo.GoByte>):stdgo.Error return __self__.value._writeStoredBlock(_buf);
    @:keep
    public dynamic function _findMatch(_pos:stdgo.GoInt, _prevHead:stdgo.GoInt, _prevLength:stdgo.GoInt, _lookahead:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } return __self__.value._findMatch(_pos, _prevHead, _prevLength, _lookahead);
    @:keep
    public dynamic function _fillWindow(_b:stdgo.Slice<stdgo.GoByte>):Void __self__.value._fillWindow(_b);
    @:keep
    public dynamic function _writeBlock(_tokens:stdgo.Slice<T_token>, _index:stdgo.GoInt):stdgo.Error return __self__.value._writeBlock(_tokens, _index);
    @:keep
    public dynamic function _fillDeflate(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt return __self__.value._fillDeflate(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_compressor>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_compressor_asInterface) class T_compressor_static_extension {
    @:keep
    static public function _close( _d:stdgo.Ref<T_compressor>):stdgo.Error {
        @:recv var _d:stdgo.Ref<T_compressor> = _d;
        if (stdgo.Go.toInterface(_d._err) == (stdgo.Go.toInterface(_errWriterClosed))) {
            return (null : stdgo.Error);
        };
        if (_d._err != null) {
            return _d._err;
        };
        _d._sync = true;
        _d._step(_d);
        if (_d._err != null) {
            return _d._err;
        };
        {
            _d._w._writeStoredHeader((0 : stdgo.GoInt), true);
            if (_d._w._err != null) {
                return _d._w._err;
            };
        };
        _d._w._flush();
        if (_d._w._err != null) {
            return _d._w._err;
        };
        _d._err = _errWriterClosed;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _reset( _d:stdgo.Ref<T_compressor>, _w:stdgo._internal.io.Io.Writer):Void {
        @:recv var _d:stdgo.Ref<T_compressor> = _d;
        _d._w._reset(_w);
        _d._sync = false;
        _d._err = (null : stdgo.Error);
        {
            final __value__ = _d._compressionLevel._level;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _d._windowEnd = (0 : stdgo.GoInt);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _d._windowEnd = (0 : stdgo.GoInt);
                _d._tokens = (_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>);
                _d._bestSpeed._reset();
            } else {
                _d._chainHead = (-1 : stdgo.GoInt);
                for (_i => _ in _d._hashHead) {
                    _d._hashHead[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                };
                for (_i => _ in _d._hashPrev) {
                    _d._hashPrev[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                };
                _d._hashOffset = (1 : stdgo.GoInt);
                {
                    final __tmp__0 = (0 : stdgo.GoInt);
                    final __tmp__1 = (0 : stdgo.GoInt);
                    _d._index = __tmp__0;
                    _d._windowEnd = __tmp__1;
                };
                {
                    final __tmp__0 = (0 : stdgo.GoInt);
                    final __tmp__1 = false;
                    _d._blockStart = __tmp__0;
                    _d._byteAvailable = __tmp__1;
                };
                _d._tokens = (_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>);
                _d._length = (3 : stdgo.GoInt);
                _d._offset = (0 : stdgo.GoInt);
                _d._maxInsertIndex = (0 : stdgo.GoInt);
            };
        };
    }
    @:keep
    static public function _init( _d:stdgo.Ref<T_compressor>, _w:stdgo._internal.io.Io.Writer, _level:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<T_compressor> = _d;
        var _err:stdgo.Error = (null : stdgo.Error);
        _d._w = _newHuffmanBitWriter(_w);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_level == (0 : stdgo.GoInt)))) {
                    _d._window = new stdgo.Slice<stdgo.GoUInt8>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
                    _d._fill = T_compressor_static_extension._fillStore;
                    _d._step = T_compressor_static_extension._store;
                    break;
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (_level == (-2 : stdgo.GoInt)))) {
                    _d._window = new stdgo.Slice<stdgo.GoUInt8>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
                    _d._fill = T_compressor_static_extension._fillStore;
                    _d._step = T_compressor_static_extension._storeHuff;
                    break;
                    break;
                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_level == (1 : stdgo.GoInt)))) {
                    _d._compressionLevel = _levels[(_level : stdgo.GoInt)];
                    _d._window = new stdgo.Slice<stdgo.GoUInt8>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
                    _d._fill = T_compressor_static_extension._fillStore;
                    _d._step = T_compressor_static_extension._encSpeed;
                    _d._bestSpeed = _newDeflateFast();
                    _d._tokens = new stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
                    break;
                    break;
                } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (_level == (-1 : stdgo.GoInt)))) {
                    _level = (6 : stdgo.GoInt);
                    @:fallthrough {
                        __switchIndex__ = 4;
                        __run__ = true;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (((2 : stdgo.GoInt) <= _level : Bool) && (_level <= (9 : stdgo.GoInt) : Bool) : Bool))) {
                    _d._compressionLevel = _levels[(_level : stdgo.GoInt)];
                    _d._initDeflate();
                    _d._fill = T_compressor_static_extension._fillDeflate;
                    _d._step = T_compressor_static_extension._deflate;
                    break;
                    break;
                } else {
                    return stdgo._internal.fmt.Fmt.errorf(("flate: invalid compression level %d: want value in range [-2, 9]" : stdgo.GoString), stdgo.Go.toInterface(_level));
                    break;
                };
                break;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _syncFlush( _d:stdgo.Ref<T_compressor>):stdgo.Error {
        @:recv var _d:stdgo.Ref<T_compressor> = _d;
        if (_d._err != null) {
            return _d._err;
        };
        _d._sync = true;
        _d._step(_d);
        if (_d._err == null) {
            _d._w._writeStoredHeader((0 : stdgo.GoInt), false);
            _d._w._flush();
            _d._err = _d._w._err;
        };
        _d._sync = false;
        return _d._err;
    }
    @:keep
    static public function _write( _d:stdgo.Ref<T_compressor>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<T_compressor> = _d;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (_d._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _d._err };
        };
        _n = (_b.length);
        while (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            _d._step(_d);
            _b = (_b.__slice__(_d._fill(_d, _b)) : stdgo.Slice<stdgo.GoUInt8>);
            if (_d._err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _d._err };
            };
        };
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _storeHuff( _d:stdgo.Ref<T_compressor>):Void {
        @:recv var _d:stdgo.Ref<T_compressor> = _d;
        if ((((_d._windowEnd < (_d._window.length) : Bool) && !_d._sync : Bool) || (_d._windowEnd == (0 : stdgo.GoInt)) : Bool)) {
            return;
        };
        _d._w._writeBlockHuff(false, (_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        _d._err = _d._w._err;
        _d._windowEnd = (0 : stdgo.GoInt);
    }
    @:keep
    static public function _store( _d:stdgo.Ref<T_compressor>):Void {
        @:recv var _d:stdgo.Ref<T_compressor> = _d;
        if (((_d._windowEnd > (0 : stdgo.GoInt) : Bool) && (((_d._windowEnd == (65535 : stdgo.GoInt)) || _d._sync : Bool)) : Bool)) {
            _d._err = _d._writeStoredBlock((_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
            _d._windowEnd = (0 : stdgo.GoInt);
        };
    }
    @:keep
    static public function _fillStore( _d:stdgo.Ref<T_compressor>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<T_compressor> = _d;
        var _n:stdgo.GoInt = stdgo.Go.copySlice((_d._window.__slice__(_d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>), _b);
        _d._windowEnd = (_d._windowEnd + (_n) : stdgo.GoInt);
        return _n;
    }
    @:keep
    static public function _deflate( _d:stdgo.Ref<T_compressor>):Void {
        stdgo._internal.internal.Macro.controlFlow({
            @:recv var _d:stdgo.Ref<T_compressor> = _d;
            if ((((_d._windowEnd - _d._index : stdgo.GoInt) < (262 : stdgo.GoInt) : Bool) && !_d._sync : Bool)) {
                return;
            };
            _d._maxInsertIndex = (_d._windowEnd - (3 : stdgo.GoInt) : stdgo.GoInt);
            @:label("Loop") while (true) {
                if ((_d._index > _d._windowEnd : Bool)) {
                    throw stdgo.Go.toInterface(("index > windowEnd" : stdgo.GoString));
                };
                var _lookahead:stdgo.GoInt = (_d._windowEnd - _d._index : stdgo.GoInt);
                if ((_lookahead < (262 : stdgo.GoInt) : Bool)) {
                    if (!_d._sync) {
                        @:jump("Loop") break;
                    };
                    if ((_d._index > _d._windowEnd : Bool)) {
                        throw stdgo.Go.toInterface(("index > windowEnd" : stdgo.GoString));
                    };
                    if (_lookahead == ((0 : stdgo.GoInt))) {
                        if (_d._byteAvailable) {
                            _d._tokens = (_d._tokens.__append__(_literalToken((_d._window[(_d._index - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32))));
                            _d._byteAvailable = false;
                        };
                        if (((_d._tokens.length) > (0 : stdgo.GoInt) : Bool)) {
                            {
                                _d._err = _d._writeBlock(_d._tokens, _d._index);
                                if (_d._err != null) {
                                    return;
                                };
                            };
                            _d._tokens = (_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>);
                        };
                        @:jump("Loop") break;
                    };
                };
                if ((_d._index < _d._maxInsertIndex : Bool)) {
                    var _hash:stdgo.GoUInt32 = _hash4((_d._window.__slice__(_d._index, (_d._index + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    var _hh = stdgo.Go.pointer(_d._hashHead[((_hash & (131071u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
                    _d._chainHead = (_hh.value : stdgo.GoInt);
                    _d._hashPrev[(_d._index & (32767 : stdgo.GoInt) : stdgo.GoInt)] = (_d._chainHead : stdgo.GoUInt32);
                    _hh.value = ((_d._index + _d._hashOffset : stdgo.GoInt) : stdgo.GoUInt32);
                };
                var _prevLength:stdgo.GoInt = _d._length;
                var _prevOffset:stdgo.GoInt = _d._offset;
                _d._length = (3 : stdgo.GoInt);
                _d._offset = (0 : stdgo.GoInt);
                var _minIndex:stdgo.GoInt = (_d._index - (32768 : stdgo.GoInt) : stdgo.GoInt);
                if ((_minIndex < (0 : stdgo.GoInt) : Bool)) {
                    _minIndex = (0 : stdgo.GoInt);
                };
                if ((((_d._chainHead - _d._hashOffset : stdgo.GoInt) >= _minIndex : Bool) && (((_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt)) && (_lookahead > (3 : stdgo.GoInt) : Bool) : Bool) || ((_d._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt)) && (_lookahead > _prevLength : Bool) : Bool) && (_prevLength < _d._compressionLevel._lazy : Bool) : Bool) : Bool)) : Bool)) {
                    {
                        var __tmp__ = _d._findMatch(_d._index, (_d._chainHead - _d._hashOffset : stdgo.GoInt), (3 : stdgo.GoInt), _lookahead), _newLength:stdgo.GoInt = __tmp__._0, _newOffset:stdgo.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
                        if (_ok) {
                            _d._length = _newLength;
                            _d._offset = _newOffset;
                        };
                    };
                };
                if (((_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt)) && (_d._length >= (4 : stdgo.GoInt) : Bool) : Bool) || ((_d._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt)) && (_prevLength >= (4 : stdgo.GoInt) : Bool) : Bool) && (_d._length <= _prevLength : Bool) : Bool) : Bool)) {
                    if (_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt))) {
                        _d._tokens = (_d._tokens.__append__(_matchToken(((_d._length - (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32), ((_d._offset - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32))));
                    } else {
                        _d._tokens = (_d._tokens.__append__(_matchToken(((_prevLength - (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32), ((_prevOffset - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32))));
                    };
                    if ((_d._length <= _d._compressionLevel._fastSkipHashing : Bool)) {
                        var _newIndex:stdgo.GoInt = (0 : stdgo.GoInt);
                        if (_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt))) {
                            _newIndex = (_d._index + _d._length : stdgo.GoInt);
                        } else {
                            _newIndex = ((_d._index + _prevLength : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        };
                        var _index:stdgo.GoInt = _d._index;
                        {
                            _index++;
                            stdgo.Go.cfor((_index < _newIndex : Bool), _index++, {
                                if ((_index < _d._maxInsertIndex : Bool)) {
                                    var _hash:stdgo.GoUInt32 = _hash4((_d._window.__slice__(_index, (_index + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                                    var _hh = stdgo.Go.pointer(_d._hashHead[((_hash & (131071u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
                                    _d._hashPrev[(_index & (32767 : stdgo.GoInt) : stdgo.GoInt)] = _hh.value;
                                    _hh.value = ((_index + _d._hashOffset : stdgo.GoInt) : stdgo.GoUInt32);
                                };
                            });
                        };
                        _d._index = _index;
                        if (_d._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt))) {
                            _d._byteAvailable = false;
                            _d._length = (3 : stdgo.GoInt);
                        };
                    } else {
                        _d._index = (_d._index + (_d._length) : stdgo.GoInt);
                    };
                    if ((_d._tokens.length) == ((16384 : stdgo.GoInt))) {
                        {
                            _d._err = _d._writeBlock(_d._tokens, _d._index);
                            if (_d._err != null) {
                                return;
                            };
                        };
                        _d._tokens = (_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>);
                    };
                } else {
                    if (((_d._compressionLevel._fastSkipHashing != (2147483647 : stdgo.GoInt)) || _d._byteAvailable : Bool)) {
                        var _i:stdgo.GoInt = (_d._index - (1 : stdgo.GoInt) : stdgo.GoInt);
                        if (_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt))) {
                            _i = _d._index;
                        };
                        _d._tokens = (_d._tokens.__append__(_literalToken((_d._window[(_i : stdgo.GoInt)] : stdgo.GoUInt32))));
                        if ((_d._tokens.length) == ((16384 : stdgo.GoInt))) {
                            {
                                _d._err = _d._writeBlock(_d._tokens, (_i + (1 : stdgo.GoInt) : stdgo.GoInt));
                                if (_d._err != null) {
                                    return;
                                };
                            };
                            _d._tokens = (_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>);
                        };
                    };
                    _d._index++;
                    if (_d._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt))) {
                        _d._byteAvailable = true;
                    };
                };
            };
        });
    }
    @:keep
    static public function _initDeflate( _d:stdgo.Ref<T_compressor>):Void {
        @:recv var _d:stdgo.Ref<T_compressor> = _d;
        _d._window = new stdgo.Slice<stdgo.GoUInt8>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        _d._hashOffset = (1 : stdgo.GoInt);
        _d._tokens = new stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>((0 : stdgo.GoInt).toBasic(), (16385 : stdgo.GoInt)).__setNumber32__();
        _d._length = (3 : stdgo.GoInt);
        _d._offset = (0 : stdgo.GoInt);
        _d._byteAvailable = false;
        _d._index = (0 : stdgo.GoInt);
        _d._chainHead = (-1 : stdgo.GoInt);
        _d._bulkHasher = _bulkHash4;
    }
    @:keep
    static public function _encSpeed( _d:stdgo.Ref<T_compressor>):Void {
        @:recv var _d:stdgo.Ref<T_compressor> = _d;
        if ((_d._windowEnd < (65535 : stdgo.GoInt) : Bool)) {
            if (!_d._sync) {
                return;
            };
            if ((_d._windowEnd < (128 : stdgo.GoInt) : Bool)) {
                if (_d._windowEnd == ((0 : stdgo.GoInt))) {
                    return;
                } else if ((_d._windowEnd <= (16 : stdgo.GoInt) : Bool)) {
                    _d._err = _d._writeStoredBlock((_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
                } else {
                    _d._w._writeBlockHuff(false, (_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
                    _d._err = _d._w._err;
                };
                _d._windowEnd = (0 : stdgo.GoInt);
                _d._bestSpeed._reset();
                return;
            };
        };
        _d._tokens = _d._bestSpeed._encode((_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_token>), (_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        if (((_d._tokens.length) > (_d._windowEnd - ((_d._windowEnd >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) : Bool)) {
            _d._w._writeBlockHuff(false, (_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        } else {
            _d._w._writeBlockDynamic(_d._tokens, false, (_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        };
        _d._err = _d._w._err;
        _d._windowEnd = (0 : stdgo.GoInt);
    }
    @:keep
    static public function _writeStoredBlock( _d:stdgo.Ref<T_compressor>, _buf:stdgo.Slice<stdgo.GoByte>):stdgo.Error {
        @:recv var _d:stdgo.Ref<T_compressor> = _d;
        {
            _d._w._writeStoredHeader((_buf.length), false);
            if (_d._w._err != null) {
                return _d._w._err;
            };
        };
        _d._w._writeBytes(_buf);
        return _d._w._err;
    }
    @:keep
    static public function _findMatch( _d:stdgo.Ref<T_compressor>, _pos:stdgo.GoInt, _prevHead:stdgo.GoInt, _prevLength:stdgo.GoInt, _lookahead:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        @:recv var _d:stdgo.Ref<T_compressor> = _d;
        var _length:stdgo.GoInt = (0 : stdgo.GoInt), _offset:stdgo.GoInt = (0 : stdgo.GoInt), _ok:Bool = false;
        var _minMatchLook:stdgo.GoInt = (258 : stdgo.GoInt);
        if ((_lookahead < _minMatchLook : Bool)) {
            _minMatchLook = _lookahead;
        };
        var _win = (_d._window.__slice__((0 : stdgo.GoInt), (_pos + _minMatchLook : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _nice:stdgo.GoInt = ((_win.length) - _pos : stdgo.GoInt);
        if ((_d._compressionLevel._nice < _nice : Bool)) {
            _nice = _d._compressionLevel._nice;
        };
        var _tries:stdgo.GoInt = _d._compressionLevel._chain;
        _length = _prevLength;
        if ((_length >= _d._compressionLevel._good : Bool)) {
            _tries = (_tries >> ((2i64 : stdgo.GoUInt64)) : stdgo.GoInt);
        };
        var _wEnd:stdgo.GoUInt8 = _win[(_pos + _length : stdgo.GoInt)];
        var _wPos = (_win.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>);
        var _minIndex:stdgo.GoInt = (_pos - (32768 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = _prevHead;
            stdgo.Go.cfor((_tries > (0 : stdgo.GoInt) : Bool), _tries--, {
                if (_wEnd == (_win[((_i + _length : stdgo.GoInt) : stdgo.GoInt)])) {
                    var _n:stdgo.GoInt = _matchLen((_win.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), _wPos, _minMatchLook);
                    if (((_n > _length : Bool) && (((_n > (4 : stdgo.GoInt) : Bool) || ((_pos - _i : stdgo.GoInt) <= (4096 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _length = _n;
                        _offset = (_pos - _i : stdgo.GoInt);
                        _ok = true;
                        if ((_n >= _nice : Bool)) {
                            break;
                        };
                        _wEnd = _win[(_pos + _n : stdgo.GoInt)];
                    };
                };
                if (_i == (_minIndex)) {
                    break;
                };
                _i = ((_d._hashPrev[(_i & (32767 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) - _d._hashOffset : stdgo.GoInt);
                if (((_i < _minIndex : Bool) || (_i < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    break;
                };
            });
        };
        return { _0 : _length, _1 : _offset, _2 : _ok };
    }
    @:keep
    static public function _fillWindow( _d:stdgo.Ref<T_compressor>, _b:stdgo.Slice<stdgo.GoByte>):Void {
        @:recv var _d:stdgo.Ref<T_compressor> = _d;
        if ((_d._compressionLevel._level < (2 : stdgo.GoInt) : Bool)) {
            return;
        };
        if (((_d._index != (0 : stdgo.GoInt)) || (_d._windowEnd != (0 : stdgo.GoInt)) : Bool)) {
            throw stdgo.Go.toInterface(("internal error: fillWindow called with stale data" : stdgo.GoString));
        };
        if (((_b.length) > (32768 : stdgo.GoInt) : Bool)) {
            _b = (_b.__slice__(((_b.length) - (32768 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _n:stdgo.GoInt = stdgo.Go.copySlice(_d._window, _b);
        var _loops:stdgo.GoInt = ((((_n + (256 : stdgo.GoInt) : stdgo.GoInt) - (4 : stdgo.GoInt) : stdgo.GoInt)) / (256 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _j:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_j < _loops : Bool), _j++, {
                var _index:stdgo.GoInt = (_j * (256 : stdgo.GoInt) : stdgo.GoInt);
                var _end:stdgo.GoInt = (((_index + (256 : stdgo.GoInt) : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                if ((_end > _n : Bool)) {
                    _end = _n;
                };
                var _toCheck = (_d._window.__slice__(_index, _end) : stdgo.Slice<stdgo.GoUInt8>);
                var _dstSize:stdgo.GoInt = (((_toCheck.length) - (4 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
                if ((_dstSize <= (0 : stdgo.GoInt) : Bool)) {
                    continue;
                };
                var _dst = (_d._hashMatch.__slice__(0, _dstSize) : stdgo.Slice<stdgo.GoUInt32>);
                _d._bulkHasher(_toCheck, _dst);
                for (_i => _val in _dst) {
                    var _di:stdgo.GoInt = (_i + _index : stdgo.GoInt);
                    var _hh = stdgo.Go.pointer(_d._hashHead[((_val & (131071u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
                    _d._hashPrev[(_di & (32767 : stdgo.GoInt) : stdgo.GoInt)] = _hh.value;
                    _hh.value = ((_di + _d._hashOffset : stdgo.GoInt) : stdgo.GoUInt32);
                };
            });
        };
        _d._windowEnd = _n;
        _d._index = _n;
    }
    @:keep
    static public function _writeBlock( _d:stdgo.Ref<T_compressor>, _tokens:stdgo.Slice<T_token>, _index:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<T_compressor> = _d;
        if ((_index > (0 : stdgo.GoInt) : Bool)) {
            var _window:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if ((_d._blockStart <= _index : Bool)) {
                _window = (_d._window.__slice__(_d._blockStart, _index) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _d._blockStart = _index;
            _d._w._writeBlock(_tokens, false, _window);
            return _d._w._err;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _fillDeflate( _d:stdgo.Ref<T_compressor>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<T_compressor> = _d;
        if ((_d._index >= (65274 : stdgo.GoInt) : Bool)) {
            stdgo.Go.copySlice(_d._window, (_d._window.__slice__((32768 : stdgo.GoInt), (65536 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _d._index = (_d._index - ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            _d._windowEnd = (_d._windowEnd - ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            if ((_d._blockStart >= (32768 : stdgo.GoInt) : Bool)) {
                _d._blockStart = (_d._blockStart - ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            } else {
                _d._blockStart = (2147483647 : stdgo.GoInt);
            };
            _d._hashOffset = (_d._hashOffset + ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            if ((_d._hashOffset > (16777216 : stdgo.GoInt) : Bool)) {
                var _delta:stdgo.GoInt = (_d._hashOffset - (1 : stdgo.GoInt) : stdgo.GoInt);
                _d._hashOffset = (_d._hashOffset - (_delta) : stdgo.GoInt);
                _d._chainHead = (_d._chainHead - (_delta) : stdgo.GoInt);
                for (_i => _v in (_d._hashPrev.__slice__(0) : stdgo.Slice<stdgo.GoUInt32>)) {
                    if (((_v : stdgo.GoInt) > _delta : Bool)) {
                        _d._hashPrev[(_i : stdgo.GoInt)] = (((_v : stdgo.GoInt) - _delta : stdgo.GoInt) : stdgo.GoUInt32);
                    } else {
                        _d._hashPrev[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                    };
                };
                for (_i => _v in (_d._hashHead.__slice__(0) : stdgo.Slice<stdgo.GoUInt32>)) {
                    if (((_v : stdgo.GoInt) > _delta : Bool)) {
                        _d._hashHead[(_i : stdgo.GoInt)] = (((_v : stdgo.GoInt) - _delta : stdgo.GoInt) : stdgo.GoUInt32);
                    } else {
                        _d._hashHead[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                    };
                };
            };
        };
        var _n:stdgo.GoInt = stdgo.Go.copySlice((_d._window.__slice__(_d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>), _b);
        _d._windowEnd = (_d._windowEnd + (_n) : stdgo.GoInt);
        return _n;
    }
}
class T_dictWriter_asInterface {
    @:keep
    public dynamic function write(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_dictWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_dictWriter_asInterface) class T_dictWriter_static_extension {
    @:keep
    static public function write( _w:stdgo.Ref<T_dictWriter>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<T_dictWriter> = _w;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return _w._w.write(_b);
    }
}
class Writer_asInterface {
    @:keep
    public dynamic function reset(_dst:stdgo._internal.io.Io.Writer):Void __self__.value.reset(_dst);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function flush():stdgo.Error return __self__.value.flush();
    @:keep
    public dynamic function write(_data:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_data);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Writer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.Writer_asInterface) class Writer_static_extension {
    @:keep
    static public function reset( _w:stdgo.Ref<Writer>, _dst:stdgo._internal.io.Io.Writer):Void {
        @:recv var _w:stdgo.Ref<Writer> = _w;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w._d._w._writer) : stdgo.Ref<T_dictWriter>)) : stdgo.Ref<T_dictWriter>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_dictWriter>), _1 : false };
            }, _dw = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _dw._w = _dst;
                _w._d._reset(stdgo.Go.asInterface(_dw));
                _w._d._fillWindow(_w._dict);
            } else {
                _w._d._reset(_dst);
            };
        };
    }
    @:keep
    static public function close( _w:stdgo.Ref<Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<Writer> = _w;
        return _w._d._close();
    }
    @:keep
    static public function flush( _w:stdgo.Ref<Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<Writer> = _w;
        return _w._d._syncFlush();
    }
    @:keep
    static public function write( _w:stdgo.Ref<Writer>, _data:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<Writer> = _w;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return _w._d._write(_data);
    }
}
class T_sparseReader_asInterface {
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_sparseReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_sparseReader_asInterface) class T_sparseReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_sparseReader>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_sparseReader> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if ((_r._cur >= _r._l : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io.eof };
        };
        _n = (_b.length);
        var _cur:stdgo.GoInt64 = (_r._cur + (_n : stdgo.GoInt64) : stdgo.GoInt64);
        if ((_cur > _r._l : Bool)) {
            _n = (_n - (((_cur - _r._l : stdgo.GoInt64) : stdgo.GoInt)) : stdgo.GoInt);
            _cur = _r._l;
        };
        for (_i => _ in (_b.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>)) {
            if (((_r._cur + (_i : stdgo.GoInt64) : stdgo.GoInt64) >= (_r._l - (65536i64 : stdgo.GoInt64) : stdgo.GoInt64) : Bool)) {
                _b[(_i : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
            } else {
                _b[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            };
        };
        _r._cur = _cur;
        return { _0 : _n, _1 : _err };
    }
}
class T_syncBuffer_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function readMode():Void __self__.value.readMode();
    @:keep
    public dynamic function writeMode():Void __self__.value.writeMode();
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function _signal():Void __self__.value._signal();
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_syncBuffer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_syncBuffer_asInterface) class T_syncBuffer_static_extension {
    @:keep
    static public function close( _b:stdgo.Ref<T_syncBuffer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<T_syncBuffer> = _b;
        _b._closed = true;
        _b._signal();
        return (null : stdgo.Error);
    }
    @:keep
    static public function readMode( _b:stdgo.Ref<T_syncBuffer>):Void {
        @:recv var _b:stdgo.Ref<T_syncBuffer> = _b;
        _b._mu.unlock();
        _b._signal();
    }
    @:keep
    static public function writeMode( _b:stdgo.Ref<T_syncBuffer>):Void {
        @:recv var _b:stdgo.Ref<T_syncBuffer> = _b;
        _b._mu.lock();
    }
    @:keep
    static public function write( _b:stdgo.Ref<T_syncBuffer>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<T_syncBuffer> = _b;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _b._buf.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _b._signal();
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function _signal( _b:stdgo.Ref<T_syncBuffer>):Void {
        @:recv var _b:stdgo.Ref<T_syncBuffer> = _b;
        {
            var __select__ = true;
            while (__select__) {
                if (_b._ready != null && _b._ready.__isSend__()) {
                    __select__ = false;
                    {
                        _b._ready.__send__(true);
                        {};
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
    @:keep
    static public function read( _b:stdgo.Ref<T_syncBuffer>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<T_syncBuffer> = _b;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        while (true) {
            _b._mu.rlock();
            {
                var __tmp__ = _b._buf.read(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            _b._mu.runlock();
            if (((_n > (0 : stdgo.GoInt) : Bool) || _b._closed : Bool)) {
                return { _0 : _n, _1 : _err };
            };
            _b._ready.__get__();
        };
    }
}
class T_failWriter_asInterface {
    @:keep
    public dynamic function write(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_failWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_failWriter_asInterface) class T_failWriter_static_extension {
    @:keep
    static public function write( _w:stdgo.Ref<T_failWriter>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<T_failWriter> = _w;
        _w._n--;
        if (_w._n == ((-1 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : _errIO };
        };
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
}
class T_deflateFast_asInterface {
    @:keep
    public dynamic function _shiftOffsets():Void __self__.value._shiftOffsets();
    @:keep
    public dynamic function _reset():Void __self__.value._reset();
    @:keep
    public dynamic function _matchLen(_s:stdgo.GoInt32, _t:stdgo.GoInt32, _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt32 return __self__.value._matchLen(_s, _t, _src);
    @:keep
    public dynamic function _encode(_dst:stdgo.Slice<T_token>, _src:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<T_token> return __self__.value._encode(_dst, _src);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_deflateFast>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_deflateFast_asInterface) class T_deflateFast_static_extension {
    @:keep
    static public function _shiftOffsets( _e:stdgo.Ref<T_deflateFast>):Void {
        @:recv var _e:stdgo.Ref<T_deflateFast> = _e;
        if ((_e._prev.length) == ((0 : stdgo.GoInt))) {
            for (_i => _ in (_e._table.__slice__(0) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_tableEntry>)) {
                _e._table[(_i : stdgo.GoInt)] = (new stdgo._internal.compress.flate.Flate.T_tableEntry() : stdgo._internal.compress.flate.Flate.T_tableEntry);
            };
            _e._cur = (32769 : stdgo.GoInt32);
            return;
        };
        for (_i => _ in (_e._table.__slice__(0) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_tableEntry>)) {
            var _v:stdgo.GoInt32 = (((_e._table[(_i : stdgo.GoInt)]._offset - _e._cur : stdgo.GoInt32) + (32768 : stdgo.GoInt32) : stdgo.GoInt32) + (1 : stdgo.GoInt32) : stdgo.GoInt32);
            if ((_v < (0 : stdgo.GoInt32) : Bool)) {
                _v = (0 : stdgo.GoInt32);
            };
            _e._table[(_i : stdgo.GoInt)]._offset = _v;
        };
        _e._cur = (32769 : stdgo.GoInt32);
    }
    @:keep
    static public function _reset( _e:stdgo.Ref<T_deflateFast>):Void {
        @:recv var _e:stdgo.Ref<T_deflateFast> = _e;
        _e._prev = (_e._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _e._cur = (_e._cur + ((32768 : stdgo.GoInt32)) : stdgo.GoInt32);
        if ((_e._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
            _e._shiftOffsets();
        };
    }
    @:keep
    static public function _matchLen( _e:stdgo.Ref<T_deflateFast>, _s:stdgo.GoInt32, _t:stdgo.GoInt32, _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt32 {
        @:recv var _e:stdgo.Ref<T_deflateFast> = _e;
        var _s1:stdgo.GoInt = (((_s : stdgo.GoInt) + (258 : stdgo.GoInt) : stdgo.GoInt) - (4 : stdgo.GoInt) : stdgo.GoInt);
        if ((_s1 > (_src.length) : Bool)) {
            _s1 = (_src.length);
        };
        if ((_t >= (0 : stdgo.GoInt32) : Bool)) {
            var _b = (_src.__slice__(_t) : stdgo.Slice<stdgo.GoUInt8>);
            var _a = (_src.__slice__(_s, _s1) : stdgo.Slice<stdgo.GoUInt8>);
            _b = (_b.__slice__(0, (_a.length)) : stdgo.Slice<stdgo.GoUInt8>);
            for (_i => _ in _a) {
                if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                    return (_i : stdgo.GoInt32);
                };
            };
            return (_a.length : stdgo.GoInt32);
        };
        var _tp:stdgo.GoInt32 = ((_e._prev.length : stdgo.GoInt32) + _t : stdgo.GoInt32);
        if ((_tp < (0 : stdgo.GoInt32) : Bool)) {
            return (0 : stdgo.GoInt32);
        };
        var _a = (_src.__slice__(_s, _s1) : stdgo.Slice<stdgo.GoUInt8>);
        var _b = (_e._prev.__slice__(_tp) : stdgo.Slice<stdgo.GoUInt8>);
        if (((_b.length) > (_a.length) : Bool)) {
            _b = (_b.__slice__(0, (_a.length)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _a = (_a.__slice__(0, (_b.length)) : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _b) {
            if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                return (_i : stdgo.GoInt32);
            };
        };
        var _n:stdgo.GoInt32 = (_b.length : stdgo.GoInt32);
        if (((_s + _n : stdgo.GoInt32) : stdgo.GoInt) == (_s1)) {
            return _n;
        };
        _a = (_src.__slice__((_s + _n : stdgo.GoInt32), _s1) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_src.__slice__(0, (_a.length)) : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _a) {
            if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                return ((_i : stdgo.GoInt32) + _n : stdgo.GoInt32);
            };
        };
        return ((_a.length : stdgo.GoInt32) + _n : stdgo.GoInt32);
    }
    @:keep
    static public function _encode( _e:stdgo.Ref<T_deflateFast>, _dst:stdgo.Slice<T_token>, _src:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<T_token> {
        stdgo._internal.internal.Macro.controlFlow({
            @:recv var _e:stdgo.Ref<T_deflateFast> = _e;
            if ((_e._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
                _e._shiftOffsets();
            };
            if (((_src.length) < (17 : stdgo.GoInt) : Bool)) {
                _e._cur = (_e._cur + ((65535 : stdgo.GoInt32)) : stdgo.GoInt32);
                _e._prev = (_e._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                return _emitLiteral(_dst, _src);
            };
            var _sLimit:stdgo.GoInt32 = (((_src.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
            var _nextEmit:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _s:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _cv:stdgo.GoUInt32 = _load32(_src, _s);
            var _nextHash:stdgo.GoUInt32 = _hash(_cv);
            while (true) {
                var _skip:stdgo.GoInt32 = (32 : stdgo.GoInt32);
                var _nextS:stdgo.GoInt32 = _s;
                var _candidate:T_tableEntry = ({} : stdgo._internal.compress.flate.Flate.T_tableEntry);
                while (true) {
                    _s = _nextS;
                    var _bytesBetweenHashLookups:stdgo.GoInt32 = (_skip >> (5i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                    _nextS = (_s + _bytesBetweenHashLookups : stdgo.GoInt32);
                    _skip = (_skip + (_bytesBetweenHashLookups) : stdgo.GoInt32);
                    if ((_nextS > _sLimit : Bool)) {
                        @:goto "emitRemainder";
                    };
                    _candidate = _e._table[((_nextHash & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    var _now:stdgo.GoUInt32 = _load32(_src, _nextS);
                    _e._table[((_nextHash & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _val : _cv, _offset : (_s + _e._cur : stdgo.GoInt32) } : stdgo._internal.compress.flate.Flate.T_tableEntry);
                    _nextHash = _hash(_now);
                    var _offset:stdgo.GoInt32 = (_s - ((_candidate._offset - _e._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset > (32768 : stdgo.GoInt32) : Bool) || (_cv != _candidate._val) : Bool)) {
                        _cv = _now;
                        continue;
                    };
                    break;
                };
                _dst = _emitLiteral(_dst, (_src.__slice__(_nextEmit, _s) : stdgo.Slice<stdgo.GoUInt8>));
                while (true) {
                    _s = (_s + ((4 : stdgo.GoInt32)) : stdgo.GoInt32);
                    var _t:stdgo.GoInt32 = ((_candidate._offset - _e._cur : stdgo.GoInt32) + (4 : stdgo.GoInt32) : stdgo.GoInt32);
                    var _l:stdgo.GoInt32 = _e._matchLen(_s, _t, _src);
                    _dst = (_dst.__append__(_matchToken((((_l + (4 : stdgo.GoInt32) : stdgo.GoInt32) - (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32), (((_s - _t : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32))));
                    _s = (_s + (_l) : stdgo.GoInt32);
                    _nextEmit = _s;
                    if ((_s >= _sLimit : Bool)) {
                        @:goto "emitRemainder";
                    };
                    var _x:stdgo.GoUInt64 = _load64(_src, (_s - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    var _prevHash:stdgo.GoUInt32 = _hash((_x : stdgo.GoUInt32));
                    _e._table[((_prevHash & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _val : (_x : stdgo.GoUInt32), _offset : ((_e._cur + _s : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32) } : stdgo._internal.compress.flate.Flate.T_tableEntry);
                    _x = (_x >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    var _currHash:stdgo.GoUInt32 = _hash((_x : stdgo.GoUInt32));
                    _candidate = _e._table[((_currHash & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    _e._table[((_currHash & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _val : (_x : stdgo.GoUInt32), _offset : (_e._cur + _s : stdgo.GoInt32) } : stdgo._internal.compress.flate.Flate.T_tableEntry);
                    var _offset:stdgo.GoInt32 = (_s - ((_candidate._offset - _e._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset > (32768 : stdgo.GoInt32) : Bool) || ((_x : stdgo.GoUInt32) != _candidate._val) : Bool)) {
                        _cv = ((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
                        _nextHash = _hash(_cv);
                        _s++;
                        break;
                    };
                };
            };
            @:label("emitRemainder") if (((_nextEmit : stdgo.GoInt) < (_src.length) : Bool)) {
                _dst = _emitLiteral(_dst, (_src.__slice__(_nextEmit) : stdgo.Slice<stdgo.GoUInt8>));
            };
            _e._cur = (_e._cur + ((_src.length : stdgo.GoInt32)) : stdgo.GoInt32);
            _e._prev = (_e._prev.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>);
            stdgo.Go.copySlice(_e._prev, _src);
            return _dst;
        });
        throw "controlFlow did not return";
    }
}
class T_dictDecoder_asInterface {
    @:keep
    public dynamic function _readFlush():stdgo.Slice<stdgo.GoByte> return __self__.value._readFlush();
    @:keep
    public dynamic function _tryWriteCopy(_dist:stdgo.GoInt, _length:stdgo.GoInt):stdgo.GoInt return __self__.value._tryWriteCopy(_dist, _length);
    @:keep
    public dynamic function _writeCopy(_dist:stdgo.GoInt, _length:stdgo.GoInt):stdgo.GoInt return __self__.value._writeCopy(_dist, _length);
    @:keep
    public dynamic function _writeByte(_c:stdgo.GoByte):Void __self__.value._writeByte(_c);
    @:keep
    public dynamic function _writeMark(_cnt:stdgo.GoInt):Void __self__.value._writeMark(_cnt);
    @:keep
    public dynamic function _writeSlice():stdgo.Slice<stdgo.GoByte> return __self__.value._writeSlice();
    @:keep
    public dynamic function _availWrite():stdgo.GoInt return __self__.value._availWrite();
    @:keep
    public dynamic function _availRead():stdgo.GoInt return __self__.value._availRead();
    @:keep
    public dynamic function _histSize():stdgo.GoInt return __self__.value._histSize();
    @:keep
    public dynamic function _init(_size:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void __self__.value._init(_size, _dict);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_dictDecoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_dictDecoder_asInterface) class T_dictDecoder_static_extension {
    @:keep
    static public function _readFlush( _dd:stdgo.Ref<T_dictDecoder>):stdgo.Slice<stdgo.GoByte> {
        @:recv var _dd:stdgo.Ref<T_dictDecoder> = _dd;
        var _toRead = (_dd._hist.__slice__(_dd._rdPos, _dd._wrPos) : stdgo.Slice<stdgo.GoUInt8>);
        _dd._rdPos = _dd._wrPos;
        if (_dd._wrPos == ((_dd._hist.length))) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (0 : stdgo.GoInt);
                _dd._wrPos = __tmp__0;
                _dd._rdPos = __tmp__1;
            };
            _dd._full = true;
        };
        return _toRead;
    }
    @:keep
    static public function _tryWriteCopy( _dd:stdgo.Ref<T_dictDecoder>, _dist:stdgo.GoInt, _length:stdgo.GoInt):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<T_dictDecoder> = _dd;
        var _dstPos:stdgo.GoInt = _dd._wrPos;
        var _endPos:stdgo.GoInt = (_dstPos + _length : stdgo.GoInt);
        if (((_dstPos < _dist : Bool) || (_endPos > (_dd._hist.length) : Bool) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        var _dstBase:stdgo.GoInt = _dstPos;
        var _srcPos:stdgo.GoInt = (_dstPos - _dist : stdgo.GoInt);
        while ((_dstPos < _endPos : Bool)) {
            _dstPos = (_dstPos + (stdgo.Go.copySlice((_dd._hist.__slice__(_dstPos, _endPos) : stdgo.Slice<stdgo.GoUInt8>), (_dd._hist.__slice__(_srcPos, _dstPos) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        };
        _dd._wrPos = _dstPos;
        return (_dstPos - _dstBase : stdgo.GoInt);
    }
    @:keep
    static public function _writeCopy( _dd:stdgo.Ref<T_dictDecoder>, _dist:stdgo.GoInt, _length:stdgo.GoInt):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<T_dictDecoder> = _dd;
        var _dstBase:stdgo.GoInt = _dd._wrPos;
        var _dstPos:stdgo.GoInt = _dstBase;
        var _srcPos:stdgo.GoInt = (_dstPos - _dist : stdgo.GoInt);
        var _endPos:stdgo.GoInt = (_dstPos + _length : stdgo.GoInt);
        if ((_endPos > (_dd._hist.length) : Bool)) {
            _endPos = (_dd._hist.length);
        };
        if ((_srcPos < (0 : stdgo.GoInt) : Bool)) {
            _srcPos = (_srcPos + ((_dd._hist.length)) : stdgo.GoInt);
            _dstPos = (_dstPos + (stdgo.Go.copySlice((_dd._hist.__slice__(_dstPos, _endPos) : stdgo.Slice<stdgo.GoUInt8>), (_dd._hist.__slice__(_srcPos) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
            _srcPos = (0 : stdgo.GoInt);
        };
        while ((_dstPos < _endPos : Bool)) {
            _dstPos = (_dstPos + (stdgo.Go.copySlice((_dd._hist.__slice__(_dstPos, _endPos) : stdgo.Slice<stdgo.GoUInt8>), (_dd._hist.__slice__(_srcPos, _dstPos) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        };
        _dd._wrPos = _dstPos;
        return (_dstPos - _dstBase : stdgo.GoInt);
    }
    @:keep
    static public function _writeByte( _dd:stdgo.Ref<T_dictDecoder>, _c:stdgo.GoByte):Void {
        @:recv var _dd:stdgo.Ref<T_dictDecoder> = _dd;
        _dd._hist[(_dd._wrPos : stdgo.GoInt)] = _c;
        _dd._wrPos++;
    }
    @:keep
    static public function _writeMark( _dd:stdgo.Ref<T_dictDecoder>, _cnt:stdgo.GoInt):Void {
        @:recv var _dd:stdgo.Ref<T_dictDecoder> = _dd;
        _dd._wrPos = (_dd._wrPos + (_cnt) : stdgo.GoInt);
    }
    @:keep
    static public function _writeSlice( _dd:stdgo.Ref<T_dictDecoder>):stdgo.Slice<stdgo.GoByte> {
        @:recv var _dd:stdgo.Ref<T_dictDecoder> = _dd;
        return (_dd._hist.__slice__(_dd._wrPos) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function _availWrite( _dd:stdgo.Ref<T_dictDecoder>):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<T_dictDecoder> = _dd;
        return ((_dd._hist.length) - _dd._wrPos : stdgo.GoInt);
    }
    @:keep
    static public function _availRead( _dd:stdgo.Ref<T_dictDecoder>):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<T_dictDecoder> = _dd;
        return (_dd._wrPos - _dd._rdPos : stdgo.GoInt);
    }
    @:keep
    static public function _histSize( _dd:stdgo.Ref<T_dictDecoder>):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<T_dictDecoder> = _dd;
        if (_dd._full) {
            return (_dd._hist.length);
        };
        return _dd._wrPos;
    }
    @:keep
    static public function _init( _dd:stdgo.Ref<T_dictDecoder>, _size:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void {
        @:recv var _dd:stdgo.Ref<T_dictDecoder> = _dd;
        {
            var __tmp__ = ({ _hist : _dd._hist } : stdgo._internal.compress.flate.Flate.T_dictDecoder);
            _dd._hist = __tmp__._hist;
            _dd._wrPos = __tmp__._wrPos;
            _dd._rdPos = __tmp__._rdPos;
            _dd._full = __tmp__._full;
        };
        if ((_dd._hist.capacity < _size : Bool)) {
            _dd._hist = new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        };
        _dd._hist = (_dd._hist.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>);
        if (((_dict.length) > (_dd._hist.length) : Bool)) {
            _dict = (_dict.__slice__(((_dict.length) - (_dd._hist.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _dd._wrPos = stdgo.Go.copySlice(_dd._hist, _dict);
        if (_dd._wrPos == ((_dd._hist.length))) {
            _dd._wrPos = (0 : stdgo.GoInt);
            _dd._full = true;
        };
        _dd._rdPos = _dd._wrPos;
    }
}
class T_huffmanBitWriter_asInterface {
    @:keep
    public dynamic function _writeBlockHuff(_eof:Bool, _input:stdgo.Slice<stdgo.GoByte>):Void __self__.value._writeBlockHuff(_eof, _input);
    @:keep
    public dynamic function _writeTokens(_tokens:stdgo.Slice<T_token>, _leCodes:stdgo.Slice<T_hcode>, _oeCodes:stdgo.Slice<T_hcode>):Void __self__.value._writeTokens(_tokens, _leCodes, _oeCodes);
    @:keep
    public dynamic function _indexTokens(_tokens:stdgo.Slice<T_token>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return __self__.value._indexTokens(_tokens);
    @:keep
    public dynamic function _writeBlockDynamic(_tokens:stdgo.Slice<T_token>, _eof:Bool, _input:stdgo.Slice<stdgo.GoByte>):Void __self__.value._writeBlockDynamic(_tokens, _eof, _input);
    @:keep
    public dynamic function _writeBlock(_tokens:stdgo.Slice<T_token>, _eof:Bool, _input:stdgo.Slice<stdgo.GoByte>):Void __self__.value._writeBlock(_tokens, _eof, _input);
    @:keep
    public dynamic function _writeFixedHeader(_isEof:Bool):Void __self__.value._writeFixedHeader(_isEof);
    @:keep
    public dynamic function _writeStoredHeader(_length:stdgo.GoInt, _isEof:Bool):Void __self__.value._writeStoredHeader(_length, _isEof);
    @:keep
    public dynamic function _writeDynamicHeader(_numLiterals:stdgo.GoInt, _numOffsets:stdgo.GoInt, _numCodegens:stdgo.GoInt, _isEof:Bool):Void __self__.value._writeDynamicHeader(_numLiterals, _numOffsets, _numCodegens, _isEof);
    @:keep
    public dynamic function _writeCode(_c:T_hcode):Void __self__.value._writeCode(_c);
    @:keep
    public dynamic function _storedSize(_in:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__.value._storedSize(_in);
    @:keep
    public dynamic function _fixedSize(_extraBits:stdgo.GoInt):stdgo.GoInt return __self__.value._fixedSize(_extraBits);
    @:keep
    public dynamic function _dynamicSize(_litEnc:stdgo.Ref<T_huffmanEncoder>, _offEnc:stdgo.Ref<T_huffmanEncoder>, _extraBits:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return __self__.value._dynamicSize(_litEnc, _offEnc, _extraBits);
    @:keep
    public dynamic function _generateCodegen(_numLiterals:stdgo.GoInt, _numOffsets:stdgo.GoInt, _litEnc:stdgo.Ref<T_huffmanEncoder>, _offEnc:stdgo.Ref<T_huffmanEncoder>):Void __self__.value._generateCodegen(_numLiterals, _numOffsets, _litEnc, _offEnc);
    @:keep
    public dynamic function _writeBytes(_bytes:stdgo.Slice<stdgo.GoByte>):Void __self__.value._writeBytes(_bytes);
    @:keep
    public dynamic function _writeBits(_b:stdgo.GoInt32, _nb:stdgo.GoUInt):Void __self__.value._writeBits(_b, _nb);
    @:keep
    public dynamic function _write(_b:stdgo.Slice<stdgo.GoByte>):Void __self__.value._write(_b);
    @:keep
    public dynamic function _flush():Void __self__.value._flush();
    @:keep
    public dynamic function _reset(_writer:stdgo._internal.io.Io.Writer):Void __self__.value._reset(_writer);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_huffmanBitWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_huffmanBitWriter_asInterface) class T_huffmanBitWriter_static_extension {
    @:keep
    static public function _writeBlockHuff( _w:stdgo.Ref<T_huffmanBitWriter>, _eof:Bool, _input:stdgo.Slice<stdgo.GoByte>):Void {
        @:recv var _w:stdgo.Ref<T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        for (_i => _ in _w._literalFreq) {
            _w._literalFreq[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
        };
        _histogram(_input, _w._literalFreq);
        _w._literalFreq[(256 : stdgo.GoInt)] = (1 : stdgo.GoInt32);
        {};
        _w._offsetFreq[(0 : stdgo.GoInt)] = (1 : stdgo.GoInt32);
        {};
        _w._literalEncoding._generate(_w._literalFreq, (15 : stdgo.GoInt32));
        var _numCodegens:stdgo.GoInt = (0 : stdgo.GoInt);
        _w._generateCodegen((257 : stdgo.GoInt), (1 : stdgo.GoInt), _w._literalEncoding, _huffOffset);
        _w._codegenEncoding._generate((_w._codegenFreq.__slice__(0) : stdgo.Slice<stdgo.GoInt32>), (7 : stdgo.GoInt32));
        var __tmp__ = _w._dynamicSize(_w._literalEncoding, _huffOffset, (0 : stdgo.GoInt)), _size:stdgo.GoInt = __tmp__._0, _numCodegens:stdgo.GoInt = __tmp__._1;
        {
            var __tmp__ = _w._storedSize(_input), _ssize:stdgo.GoInt = __tmp__._0, _storable:Bool = __tmp__._1;
            if ((_storable && (_ssize < ((_size + (_size >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt)) : Bool) : Bool)) {
                _w._writeStoredHeader((_input.length), _eof);
                _w._writeBytes(_input);
                return;
            };
        };
        _w._writeDynamicHeader((257 : stdgo.GoInt), (1 : stdgo.GoInt), _numCodegens, _eof);
        var _encoding = (_w._literalEncoding._codes.__slice__(0, (257 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_hcode>);
        var _n:stdgo.GoInt = _w._nbytes;
        for (__0 => _t in _input) {
            var _c:stdgo._internal.compress.flate.Flate.T_hcode = _encoding[(_t : stdgo.GoInt)];
            _w._bits = (_w._bits | (((_c._code : stdgo.GoUInt64) << _w._nbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _w._nbits = (_w._nbits + ((_c._len : stdgo.GoUInt)) : stdgo.GoUInt);
            if ((_w._nbits < (48u32 : stdgo.GoUInt) : Bool)) {
                continue;
            };
            var _bits:stdgo.GoUInt64 = _w._bits;
            _w._bits = (_w._bits >> ((48i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _w._nbits = (_w._nbits - ((48u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            var _bytes = (_w._bytes.__slice__(_n, (_n + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _bytes[(0 : stdgo.GoInt)] = (_bits : stdgo.GoByte);
            _bytes[(1 : stdgo.GoInt)] = ((_bits >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
            _bytes[(2 : stdgo.GoInt)] = ((_bits >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
            _bytes[(3 : stdgo.GoInt)] = ((_bits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
            _bytes[(4 : stdgo.GoInt)] = ((_bits >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
            _bytes[(5 : stdgo.GoInt)] = ((_bits >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
            _n = (_n + ((6 : stdgo.GoInt)) : stdgo.GoInt);
            if ((_n < (240 : stdgo.GoInt) : Bool)) {
                continue;
            };
            _w._write((_w._bytes.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            if (_w._err != null) {
                return;
            };
            _n = (0 : stdgo.GoInt);
        };
        _w._nbytes = _n;
        _w._writeCode(_encoding[(256 : stdgo.GoInt)]);
    }
    @:keep
    static public function _writeTokens( _w:stdgo.Ref<T_huffmanBitWriter>, _tokens:stdgo.Slice<T_token>, _leCodes:stdgo.Slice<T_hcode>, _oeCodes:stdgo.Slice<T_hcode>):Void {
        @:recv var _w:stdgo.Ref<T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        for (__0 => _t in _tokens) {
            if ((_t < (1073741824u32 : stdgo._internal.compress.flate.Flate.T_token) : Bool)) {
                _w._writeCode(_leCodes[(_t._literal() : stdgo.GoInt)]);
                continue;
            };
            var _length:stdgo.GoUInt32 = _t._length();
            var _lengthCode:stdgo.GoUInt32 = _lengthCode(_length);
            _w._writeCode(_leCodes[((_lengthCode + (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
            var _extraLengthBits:stdgo.GoUInt = (_lengthExtraBits[(_lengthCode : stdgo.GoInt)] : stdgo.GoUInt);
            if ((_extraLengthBits > (0u32 : stdgo.GoUInt) : Bool)) {
                var _extraLength:stdgo.GoInt32 = ((_length - _lengthBase[(_lengthCode : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoInt32);
                _w._writeBits(_extraLength, _extraLengthBits);
            };
            var _offset:stdgo.GoUInt32 = _t._offset();
            var _offsetCode:stdgo.GoUInt32 = _offsetCode(_offset);
            _w._writeCode(_oeCodes[(_offsetCode : stdgo.GoInt)]);
            var _extraOffsetBits:stdgo.GoUInt = (_offsetExtraBits[(_offsetCode : stdgo.GoInt)] : stdgo.GoUInt);
            if ((_extraOffsetBits > (0u32 : stdgo.GoUInt) : Bool)) {
                var _extraOffset:stdgo.GoInt32 = ((_offset - _offsetBase[(_offsetCode : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoInt32);
                _w._writeBits(_extraOffset, _extraOffsetBits);
            };
        };
    }
    @:keep
    static public function _indexTokens( _w:stdgo.Ref<T_huffmanBitWriter>, _tokens:stdgo.Slice<T_token>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _w:stdgo.Ref<T_huffmanBitWriter> = _w;
        var _numLiterals:stdgo.GoInt = (0 : stdgo.GoInt), _numOffsets:stdgo.GoInt = (0 : stdgo.GoInt);
        for (_i => _ in _w._literalFreq) {
            _w._literalFreq[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
        };
        for (_i => _ in _w._offsetFreq) {
            _w._offsetFreq[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
        };
        for (__0 => _t in _tokens) {
            if ((_t < (1073741824u32 : stdgo._internal.compress.flate.Flate.T_token) : Bool)) {
                _w._literalFreq[(_t._literal() : stdgo.GoInt)]++;
                continue;
            };
            var _length:stdgo.GoUInt32 = _t._length();
            var _offset:stdgo.GoUInt32 = _t._offset();
            _w._literalFreq[(((257u32 : stdgo.GoUInt32) + _lengthCode(_length) : stdgo.GoUInt32) : stdgo.GoInt)]++;
            _w._offsetFreq[(_offsetCode(_offset) : stdgo.GoInt)]++;
        };
        _numLiterals = (_w._literalFreq.length);
        while (_w._literalFreq[(_numLiterals - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((0 : stdgo.GoInt32))) {
            _numLiterals--;
        };
        _numOffsets = (_w._offsetFreq.length);
        while (((_numOffsets > (0 : stdgo.GoInt) : Bool) && (_w._offsetFreq[(_numOffsets - (1 : stdgo.GoInt) : stdgo.GoInt)] == (0 : stdgo.GoInt32)) : Bool)) {
            _numOffsets--;
        };
        if (_numOffsets == ((0 : stdgo.GoInt))) {
            _w._offsetFreq[(0 : stdgo.GoInt)] = (1 : stdgo.GoInt32);
            _numOffsets = (1 : stdgo.GoInt);
        };
        _w._literalEncoding._generate(_w._literalFreq, (15 : stdgo.GoInt32));
        _w._offsetEncoding._generate(_w._offsetFreq, (15 : stdgo.GoInt32));
        return { _0 : _numLiterals, _1 : _numOffsets };
    }
    @:keep
    static public function _writeBlockDynamic( _w:stdgo.Ref<T_huffmanBitWriter>, _tokens:stdgo.Slice<T_token>, _eof:Bool, _input:stdgo.Slice<stdgo.GoByte>):Void {
        @:recv var _w:stdgo.Ref<T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        _tokens = (_tokens.__append__((256u32 : stdgo._internal.compress.flate.Flate.T_token)));
        var __tmp__ = _w._indexTokens(_tokens), _numLiterals:stdgo.GoInt = __tmp__._0, _numOffsets:stdgo.GoInt = __tmp__._1;
        _w._generateCodegen(_numLiterals, _numOffsets, _w._literalEncoding, _w._offsetEncoding);
        _w._codegenEncoding._generate((_w._codegenFreq.__slice__(0) : stdgo.Slice<stdgo.GoInt32>), (7 : stdgo.GoInt32));
        var __tmp__ = _w._dynamicSize(_w._literalEncoding, _w._offsetEncoding, (0 : stdgo.GoInt)), _size:stdgo.GoInt = __tmp__._0, _numCodegens:stdgo.GoInt = __tmp__._1;
        {
            var __tmp__ = _w._storedSize(_input), _ssize:stdgo.GoInt = __tmp__._0, _storable:Bool = __tmp__._1;
            if ((_storable && (_ssize < ((_size + (_size >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt)) : Bool) : Bool)) {
                _w._writeStoredHeader((_input.length), _eof);
                _w._writeBytes(_input);
                return;
            };
        };
        _w._writeDynamicHeader(_numLiterals, _numOffsets, _numCodegens, _eof);
        _w._writeTokens(_tokens, _w._literalEncoding._codes, _w._offsetEncoding._codes);
    }
    @:keep
    static public function _writeBlock( _w:stdgo.Ref<T_huffmanBitWriter>, _tokens:stdgo.Slice<T_token>, _eof:Bool, _input:stdgo.Slice<stdgo.GoByte>):Void {
        @:recv var _w:stdgo.Ref<T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        _tokens = (_tokens.__append__((256u32 : stdgo._internal.compress.flate.Flate.T_token)));
        var __tmp__ = _w._indexTokens(_tokens), _numLiterals:stdgo.GoInt = __tmp__._0, _numOffsets:stdgo.GoInt = __tmp__._1;
        var _extraBits:stdgo.GoInt = (0 : stdgo.GoInt);
        var __tmp__ = _w._storedSize(_input), _storedSize:stdgo.GoInt = __tmp__._0, _storable:Bool = __tmp__._1;
        if (_storable) {
            {
                var _lengthCode:stdgo.GoInt = (265 : stdgo.GoInt);
                stdgo.Go.cfor((_lengthCode < _numLiterals : Bool), _lengthCode++, {
                    _extraBits = (_extraBits + (((_w._literalFreq[(_lengthCode : stdgo.GoInt)] : stdgo.GoInt) * (_lengthExtraBits[(_lengthCode - (257 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                });
            };
            {
                var _offsetCode:stdgo.GoInt = (4 : stdgo.GoInt);
                stdgo.Go.cfor((_offsetCode < _numOffsets : Bool), _offsetCode++, {
                    _extraBits = (_extraBits + (((_w._offsetFreq[(_offsetCode : stdgo.GoInt)] : stdgo.GoInt) * (_offsetExtraBits[(_offsetCode : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                });
            };
        };
        var _literalEncoding:stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanEncoder> = _fixedLiteralEncoding;
        var _offsetEncoding:stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanEncoder> = _fixedOffsetEncoding;
        var _size:stdgo.GoInt = _w._fixedSize(_extraBits);
        var _numCodegens:stdgo.GoInt = (0 : stdgo.GoInt);
        _w._generateCodegen(_numLiterals, _numOffsets, _w._literalEncoding, _w._offsetEncoding);
        _w._codegenEncoding._generate((_w._codegenFreq.__slice__(0) : stdgo.Slice<stdgo.GoInt32>), (7 : stdgo.GoInt32));
        var __tmp__ = _w._dynamicSize(_w._literalEncoding, _w._offsetEncoding, _extraBits), _dynamicSize:stdgo.GoInt = __tmp__._0, _numCodegens:stdgo.GoInt = __tmp__._1;
        if ((_dynamicSize < _size : Bool)) {
            _size = _dynamicSize;
            _literalEncoding = _w._literalEncoding;
            _offsetEncoding = _w._offsetEncoding;
        };
        if ((_storable && (_storedSize < _size : Bool) : Bool)) {
            _w._writeStoredHeader((_input.length), _eof);
            _w._writeBytes(_input);
            return;
        };
        if (_literalEncoding == (_fixedLiteralEncoding)) {
            _w._writeFixedHeader(_eof);
        } else {
            _w._writeDynamicHeader(_numLiterals, _numOffsets, _numCodegens, _eof);
        };
        _w._writeTokens(_tokens, _literalEncoding._codes, _offsetEncoding._codes);
    }
    @:keep
    static public function _writeFixedHeader( _w:stdgo.Ref<T_huffmanBitWriter>, _isEof:Bool):Void {
        @:recv var _w:stdgo.Ref<T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        var _value:stdgo.GoInt32 = (2 : stdgo.GoInt32);
        if (_isEof) {
            _value = (3 : stdgo.GoInt32);
        };
        _w._writeBits(_value, (3u32 : stdgo.GoUInt));
    }
    @:keep
    static public function _writeStoredHeader( _w:stdgo.Ref<T_huffmanBitWriter>, _length:stdgo.GoInt, _isEof:Bool):Void {
        @:recv var _w:stdgo.Ref<T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        var _flag:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        if (_isEof) {
            _flag = (1 : stdgo.GoInt32);
        };
        _w._writeBits(_flag, (3u32 : stdgo.GoUInt));
        _w._flush();
        _w._writeBits((_length : stdgo.GoInt32), (16u32 : stdgo.GoUInt));
        _w._writeBits((-1 ^ (_length : stdgo.GoUInt16) : stdgo.GoInt32), (16u32 : stdgo.GoUInt));
    }
    @:keep
    static public function _writeDynamicHeader( _w:stdgo.Ref<T_huffmanBitWriter>, _numLiterals:stdgo.GoInt, _numOffsets:stdgo.GoInt, _numCodegens:stdgo.GoInt, _isEof:Bool):Void {
        @:recv var _w:stdgo.Ref<T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        var _firstBits:stdgo.GoInt32 = (4 : stdgo.GoInt32);
        if (_isEof) {
            _firstBits = (5 : stdgo.GoInt32);
        };
        _w._writeBits(_firstBits, (3u32 : stdgo.GoUInt));
        _w._writeBits(((_numLiterals - (257 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32), (5u32 : stdgo.GoUInt));
        _w._writeBits(((_numOffsets - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32), (5u32 : stdgo.GoUInt));
        _w._writeBits(((_numCodegens - (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32), (4u32 : stdgo.GoUInt));
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _numCodegens : Bool), _i++, {
                var _value:stdgo.GoUInt = (_w._codegenEncoding._codes[(_codegenOrder[(_i : stdgo.GoInt)] : stdgo.GoInt)]._len : stdgo.GoUInt);
                _w._writeBits((_value : stdgo.GoInt32), (3u32 : stdgo.GoUInt));
            });
        };
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        while (true) {
            var _codeWord:stdgo.GoInt = (_w._codegen[(_i : stdgo.GoInt)] : stdgo.GoInt);
            _i++;
            if (_codeWord == ((255 : stdgo.GoInt))) {
                break;
            };
            _w._writeCode(_w._codegenEncoding._codes[((_codeWord : stdgo.GoUInt32) : stdgo.GoInt)]);
            {
                final __value__ = _codeWord;
                if (__value__ == ((16 : stdgo.GoInt))) {
                    _w._writeBits((_w._codegen[(_i : stdgo.GoInt)] : stdgo.GoInt32), (2u32 : stdgo.GoUInt));
                    _i++;
                } else if (__value__ == ((17 : stdgo.GoInt))) {
                    _w._writeBits((_w._codegen[(_i : stdgo.GoInt)] : stdgo.GoInt32), (3u32 : stdgo.GoUInt));
                    _i++;
                } else if (__value__ == ((18 : stdgo.GoInt))) {
                    _w._writeBits((_w._codegen[(_i : stdgo.GoInt)] : stdgo.GoInt32), (7u32 : stdgo.GoUInt));
                    _i++;
                };
            };
        };
    }
    @:keep
    static public function _writeCode( _w:stdgo.Ref<T_huffmanBitWriter>, _c:T_hcode):Void {
        @:recv var _w:stdgo.Ref<T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        _w._bits = (_w._bits | (((_c._code : stdgo.GoUInt64) << _w._nbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _w._nbits = (_w._nbits + ((_c._len : stdgo.GoUInt)) : stdgo.GoUInt);
        if ((_w._nbits >= (48u32 : stdgo.GoUInt) : Bool)) {
            var _bits:stdgo.GoUInt64 = _w._bits;
            _w._bits = (_w._bits >> ((48i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _w._nbits = (_w._nbits - ((48u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            var _n:stdgo.GoInt = _w._nbytes;
            var _bytes = (_w._bytes.__slice__(_n, (_n + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _bytes[(0 : stdgo.GoInt)] = (_bits : stdgo.GoByte);
            _bytes[(1 : stdgo.GoInt)] = ((_bits >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
            _bytes[(2 : stdgo.GoInt)] = ((_bits >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
            _bytes[(3 : stdgo.GoInt)] = ((_bits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
            _bytes[(4 : stdgo.GoInt)] = ((_bits >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
            _bytes[(5 : stdgo.GoInt)] = ((_bits >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
            _n = (_n + ((6 : stdgo.GoInt)) : stdgo.GoInt);
            if ((_n >= (240 : stdgo.GoInt) : Bool)) {
                _w._write((_w._bytes.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                _n = (0 : stdgo.GoInt);
            };
            _w._nbytes = _n;
        };
    }
    @:keep
    static public function _storedSize( _w:stdgo.Ref<T_huffmanBitWriter>, _in:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _w:stdgo.Ref<T_huffmanBitWriter> = _w;
        if (_in == null) {
            return { _0 : (0 : stdgo.GoInt), _1 : false };
        };
        if (((_in.length) <= (65535 : stdgo.GoInt) : Bool)) {
            return { _0 : ((((_in.length) + (5 : stdgo.GoInt) : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt), _1 : true };
        };
        return { _0 : (0 : stdgo.GoInt), _1 : false };
    }
    @:keep
    static public function _fixedSize( _w:stdgo.Ref<T_huffmanBitWriter>, _extraBits:stdgo.GoInt):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<T_huffmanBitWriter> = _w;
        return ((((3 : stdgo.GoInt) + _fixedLiteralEncoding._bitLength(_w._literalFreq) : stdgo.GoInt) + _fixedOffsetEncoding._bitLength(_w._offsetFreq) : stdgo.GoInt) + _extraBits : stdgo.GoInt);
    }
    @:keep
    static public function _dynamicSize( _w:stdgo.Ref<T_huffmanBitWriter>, _litEnc:stdgo.Ref<T_huffmanEncoder>, _offEnc:stdgo.Ref<T_huffmanEncoder>, _extraBits:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _w:stdgo.Ref<T_huffmanBitWriter> = _w;
        var _size:stdgo.GoInt = (0 : stdgo.GoInt), _numCodegens:stdgo.GoInt = (0 : stdgo.GoInt);
        _numCodegens = (_w._codegenFreq.length);
        while (((_numCodegens > (4 : stdgo.GoInt) : Bool) && (_w._codegenFreq[(_codegenOrder[(_numCodegens - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)] == (0 : stdgo.GoInt32)) : Bool)) {
            _numCodegens--;
        };
        var _header:stdgo.GoInt = ((((((17 : stdgo.GoInt) + (((3 : stdgo.GoInt) * _numCodegens : stdgo.GoInt)) : stdgo.GoInt) + _w._codegenEncoding._bitLength((_w._codegenFreq.__slice__(0) : stdgo.Slice<stdgo.GoInt32>)) : stdgo.GoInt) + ((_w._codegenFreq[(16 : stdgo.GoInt)] : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + ((_w._codegenFreq[(17 : stdgo.GoInt)] : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + ((_w._codegenFreq[(18 : stdgo.GoInt)] : stdgo.GoInt) * (7 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        _size = (((_header + _litEnc._bitLength(_w._literalFreq) : stdgo.GoInt) + _offEnc._bitLength(_w._offsetFreq) : stdgo.GoInt) + _extraBits : stdgo.GoInt);
        return { _0 : _size, _1 : _numCodegens };
    }
    @:keep
    static public function _generateCodegen( _w:stdgo.Ref<T_huffmanBitWriter>, _numLiterals:stdgo.GoInt, _numOffsets:stdgo.GoInt, _litEnc:stdgo.Ref<T_huffmanEncoder>, _offEnc:stdgo.Ref<T_huffmanEncoder>):Void {
        @:recv var _w:stdgo.Ref<T_huffmanBitWriter> = _w;
        for (_i => _ in _w._codegenFreq) {
            _w._codegenFreq[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
        };
        var _codegen = _w._codegen;
        var _cgnl = (_codegen.__slice__(0, _numLiterals) : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _cgnl) {
            _cgnl[(_i : stdgo.GoInt)] = (_litEnc._codes[(_i : stdgo.GoInt)]._len : stdgo.GoUInt8);
        };
        _cgnl = (_codegen.__slice__(_numLiterals, (_numLiterals + _numOffsets : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _cgnl) {
            _cgnl[(_i : stdgo.GoInt)] = (_offEnc._codes[(_i : stdgo.GoInt)]._len : stdgo.GoUInt8);
        };
        _codegen[(_numLiterals + _numOffsets : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
        var _size:stdgo.GoUInt8 = _codegen[(0 : stdgo.GoInt)];
        var _count:stdgo.GoInt = (1 : stdgo.GoInt);
        var _outIndex:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _inIndex:stdgo.GoInt = (1 : stdgo.GoInt);
            stdgo.Go.cfor(_size != ((255 : stdgo.GoUInt8)), _inIndex++, {
                var _nextSize:stdgo.GoUInt8 = _codegen[(_inIndex : stdgo.GoInt)];
                if (_nextSize == (_size)) {
                    _count++;
                    continue;
                };
                if (_size != ((0 : stdgo.GoUInt8))) {
                    _codegen[(_outIndex : stdgo.GoInt)] = _size;
                    _outIndex++;
                    _w._codegenFreq[(_size : stdgo.GoInt)]++;
                    _count--;
                    while ((_count >= (3 : stdgo.GoInt) : Bool)) {
                        var _n:stdgo.GoInt = (6 : stdgo.GoInt);
                        if ((_n > _count : Bool)) {
                            _n = _count;
                        };
                        _codegen[(_outIndex : stdgo.GoInt)] = (16 : stdgo.GoUInt8);
                        _outIndex++;
                        _codegen[(_outIndex : stdgo.GoInt)] = ((_n - (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                        _outIndex++;
                        _w._codegenFreq[(16 : stdgo.GoInt)]++;
                        _count = (_count - (_n) : stdgo.GoInt);
                    };
                } else {
                    while ((_count >= (11 : stdgo.GoInt) : Bool)) {
                        var _n:stdgo.GoInt = (138 : stdgo.GoInt);
                        if ((_n > _count : Bool)) {
                            _n = _count;
                        };
                        _codegen[(_outIndex : stdgo.GoInt)] = (18 : stdgo.GoUInt8);
                        _outIndex++;
                        _codegen[(_outIndex : stdgo.GoInt)] = ((_n - (11 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                        _outIndex++;
                        _w._codegenFreq[(18 : stdgo.GoInt)]++;
                        _count = (_count - (_n) : stdgo.GoInt);
                    };
                    if ((_count >= (3 : stdgo.GoInt) : Bool)) {
                        _codegen[(_outIndex : stdgo.GoInt)] = (17 : stdgo.GoUInt8);
                        _outIndex++;
                        _codegen[(_outIndex : stdgo.GoInt)] = ((_count - (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                        _outIndex++;
                        _w._codegenFreq[(17 : stdgo.GoInt)]++;
                        _count = (0 : stdgo.GoInt);
                    };
                };
                _count--;
                stdgo.Go.cfor((_count >= (0 : stdgo.GoInt) : Bool), _count--, {
                    _codegen[(_outIndex : stdgo.GoInt)] = _size;
                    _outIndex++;
                    _w._codegenFreq[(_size : stdgo.GoInt)]++;
                });
                _size = _nextSize;
                _count = (1 : stdgo.GoInt);
            });
        };
        _codegen[(_outIndex : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
    }
    @:keep
    static public function _writeBytes( _w:stdgo.Ref<T_huffmanBitWriter>, _bytes:stdgo.Slice<stdgo.GoByte>):Void {
        @:recv var _w:stdgo.Ref<T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        var _n:stdgo.GoInt = _w._nbytes;
        if ((_w._nbits & (7u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
            _w._err = stdgo.Go.asInterface(((("writeBytes with unfinished bits" : stdgo.GoString) : stdgo._internal.compress.flate.Flate.InternalError) : InternalError));
            return;
        };
        while (_w._nbits != ((0u32 : stdgo.GoUInt))) {
            _w._bytes[(_n : stdgo.GoInt)] = (_w._bits : stdgo.GoByte);
            _w._bits = (_w._bits >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _w._nbits = (_w._nbits - ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            _n++;
        };
        if (_n != ((0 : stdgo.GoInt))) {
            _w._write((_w._bytes.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        };
        _w._nbytes = (0 : stdgo.GoInt);
        _w._write(_bytes);
    }
    @:keep
    static public function _writeBits( _w:stdgo.Ref<T_huffmanBitWriter>, _b:stdgo.GoInt32, _nb:stdgo.GoUInt):Void {
        @:recv var _w:stdgo.Ref<T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        _w._bits = (_w._bits | (((_b : stdgo.GoUInt64) << _w._nbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _w._nbits = (_w._nbits + (_nb) : stdgo.GoUInt);
        if ((_w._nbits >= (48u32 : stdgo.GoUInt) : Bool)) {
            var _bits:stdgo.GoUInt64 = _w._bits;
            _w._bits = (_w._bits >> ((48i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _w._nbits = (_w._nbits - ((48u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            var _n:stdgo.GoInt = _w._nbytes;
            var _bytes = (_w._bytes.__slice__(_n, (_n + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _bytes[(0 : stdgo.GoInt)] = (_bits : stdgo.GoByte);
            _bytes[(1 : stdgo.GoInt)] = ((_bits >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
            _bytes[(2 : stdgo.GoInt)] = ((_bits >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
            _bytes[(3 : stdgo.GoInt)] = ((_bits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
            _bytes[(4 : stdgo.GoInt)] = ((_bits >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
            _bytes[(5 : stdgo.GoInt)] = ((_bits >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
            _n = (_n + ((6 : stdgo.GoInt)) : stdgo.GoInt);
            if ((_n >= (240 : stdgo.GoInt) : Bool)) {
                _w._write((_w._bytes.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                _n = (0 : stdgo.GoInt);
            };
            _w._nbytes = _n;
        };
    }
    @:keep
    static public function _write( _w:stdgo.Ref<T_huffmanBitWriter>, _b:stdgo.Slice<stdgo.GoByte>):Void {
        @:recv var _w:stdgo.Ref<T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        {
            var __tmp__ = _w._writer.write(_b);
            _w._err = __tmp__._1;
        };
    }
    @:keep
    static public function _flush( _w:stdgo.Ref<T_huffmanBitWriter>):Void {
        @:recv var _w:stdgo.Ref<T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            _w._nbits = (0u32 : stdgo.GoUInt);
            return;
        };
        var _n:stdgo.GoInt = _w._nbytes;
        while (_w._nbits != ((0u32 : stdgo.GoUInt))) {
            _w._bytes[(_n : stdgo.GoInt)] = (_w._bits : stdgo.GoByte);
            _w._bits = (_w._bits >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            if ((_w._nbits > (8u32 : stdgo.GoUInt) : Bool)) {
                _w._nbits = (_w._nbits - ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            } else {
                _w._nbits = (0u32 : stdgo.GoUInt);
            };
            _n++;
        };
        _w._bits = (0i64 : stdgo.GoUInt64);
        _w._write((_w._bytes.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        _w._nbytes = (0 : stdgo.GoInt);
    }
    @:keep
    static public function _reset( _w:stdgo.Ref<T_huffmanBitWriter>, _writer:stdgo._internal.io.Io.Writer):Void {
        @:recv var _w:stdgo.Ref<T_huffmanBitWriter> = _w;
        _w._writer = _writer;
        {
            final __tmp__0 = (0i64 : stdgo.GoUInt64);
            final __tmp__1 = (0u32 : stdgo.GoUInt);
            final __tmp__2 = (0 : stdgo.GoInt);
            final __tmp__3 = (null : stdgo.Error);
            _w._bits = __tmp__0;
            _w._nbits = __tmp__1;
            _w._nbytes = __tmp__2;
            _w._err = __tmp__3;
        };
    }
}
class T_hcode_asInterface {
    @:keep
    public dynamic function _set(_code:stdgo.GoUInt16, _length:stdgo.GoUInt16):Void __self__.value._set(_code, _length);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_hcode>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_hcode_asInterface) class T_hcode_static_extension {
    @:keep
    static public function _set( _h:stdgo.Ref<T_hcode>, _code:stdgo.GoUInt16, _length:stdgo.GoUInt16):Void {
        @:recv var _h:stdgo.Ref<T_hcode> = _h;
        _h._len = _length;
        _h._code = _code;
    }
}
class T_huffmanEncoder_asInterface {
    @:keep
    public dynamic function _generate(_freq:stdgo.Slice<stdgo.GoInt32>, _maxBits:stdgo.GoInt32):Void __self__.value._generate(_freq, _maxBits);
    @:keep
    public dynamic function _assignEncodingAndSize(_bitCount:stdgo.Slice<stdgo.GoInt32>, _list:stdgo.Slice<T_literalNode>):Void __self__.value._assignEncodingAndSize(_bitCount, _list);
    @:keep
    public dynamic function _bitCounts(_list:stdgo.Slice<T_literalNode>, _maxBits:stdgo.GoInt32):stdgo.Slice<stdgo.GoInt32> return __self__.value._bitCounts(_list, _maxBits);
    @:keep
    public dynamic function _bitLength(_freq:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt return __self__.value._bitLength(_freq);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_huffmanEncoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_huffmanEncoder_asInterface) class T_huffmanEncoder_static_extension {
    @:keep
    static public function _generate( _h:stdgo.Ref<T_huffmanEncoder>, _freq:stdgo.Slice<stdgo.GoInt32>, _maxBits:stdgo.GoInt32):Void {
        @:recv var _h:stdgo.Ref<T_huffmanEncoder> = _h;
        if (_h._freqcache == null) {
            _h._freqcache = new stdgo.Slice<stdgo._internal.compress.flate.Flate.T_literalNode>((287 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((287 : stdgo.GoInt).toBasic() > 0 ? (287 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.flate.Flate.T_literalNode)]);
        };
        var _list = (_h._freqcache.__slice__(0, ((_freq.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_literalNode>);
        var _count:stdgo.GoInt = (0 : stdgo.GoInt);
        for (_i => _f in _freq) {
            if (_f != ((0 : stdgo.GoInt32))) {
                _list[(_count : stdgo.GoInt)] = (new stdgo._internal.compress.flate.Flate.T_literalNode((_i : stdgo.GoUInt16), _f) : stdgo._internal.compress.flate.Flate.T_literalNode);
                _count++;
            } else {
                _h._codes[(_i : stdgo.GoInt)]._len = (0 : stdgo.GoUInt16);
            };
        };
        _list = (_list.__slice__(0, _count) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_literalNode>);
        if ((_count <= (2 : stdgo.GoInt) : Bool)) {
            for (_i => _node in _list) {
                _h._codes[(_node._literal : stdgo.GoInt)]._set((_i : stdgo.GoUInt16), (1 : stdgo.GoUInt16));
            };
            return;
        };
        _h._lfs._sort(_list);
        var _bitCount = _h._bitCounts(_list, _maxBits);
        _h._assignEncodingAndSize(_bitCount, _list);
    }
    @:keep
    static public function _assignEncodingAndSize( _h:stdgo.Ref<T_huffmanEncoder>, _bitCount:stdgo.Slice<stdgo.GoInt32>, _list:stdgo.Slice<T_literalNode>):Void {
        @:recv var _h:stdgo.Ref<T_huffmanEncoder> = _h;
        var _code:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        for (_n => _bits in _bitCount) {
            _code = (_code << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt16);
            if (((_n == (0 : stdgo.GoInt)) || (_bits == (0 : stdgo.GoInt32)) : Bool)) {
                continue;
            };
            var _chunk = (_list.__slice__(((_list.length) - (_bits : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_literalNode>);
            _h._lns._sort(_chunk);
            for (__0 => _node in _chunk) {
                _h._codes[(_node._literal : stdgo.GoInt)] = ({ _code : _reverseBits(_code, (_n : stdgo.GoUInt8)), _len : (_n : stdgo.GoUInt16) } : stdgo._internal.compress.flate.Flate.T_hcode);
                _code++;
            };
            _list = (_list.__slice__((0 : stdgo.GoInt), ((_list.length) - (_bits : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_literalNode>);
        };
    }
    @:keep
    static public function _bitCounts( _h:stdgo.Ref<T_huffmanEncoder>, _list:stdgo.Slice<T_literalNode>, _maxBits:stdgo.GoInt32):stdgo.Slice<stdgo.GoInt32> {
        @:recv var _h:stdgo.Ref<T_huffmanEncoder> = _h;
        if ((_maxBits >= (16 : stdgo.GoInt32) : Bool)) {
            throw stdgo.Go.toInterface(("flate: maxBits too large" : stdgo.GoString));
        };
        var _n:stdgo.GoInt32 = (_list.length : stdgo.GoInt32);
        _list = (_list.__slice__((0 : stdgo.GoInt), (_n + (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.Slice<stdgo._internal.compress.flate.Flate.T_literalNode>);
        _list[(_n : stdgo.GoInt)] = _maxNode()?.__copy__();
        if ((_maxBits > (_n - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
            _maxBits = (_n - (1 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        var _levels:stdgo.GoArray<T_levelInfo> = new stdgo.GoArray<stdgo._internal.compress.flate.Flate.T_levelInfo>(...[for (i in 0 ... 16) ({} : stdgo._internal.compress.flate.Flate.T_levelInfo)]);
        var _leafCounts:stdgo.GoArray<stdgo.GoArray<stdgo.GoInt32>> = new stdgo.GoArray<stdgo.GoArray<stdgo.GoInt32>>(...[for (i in 0 ... 16) new stdgo.GoArray<stdgo.GoInt32>(...[for (i in 0 ... 16) (0 : stdgo.GoInt32)])]);
        {
            var _level:stdgo.GoInt32 = (1 : stdgo.GoInt32);
            stdgo.Go.cfor((_level <= _maxBits : Bool), _level++, {
                _levels[(_level : stdgo.GoInt)] = ({ _level : _level, _lastFreq : _list[(1 : stdgo.GoInt)]._freq, _nextCharFreq : _list[(2 : stdgo.GoInt)]._freq, _nextPairFreq : (_list[(0 : stdgo.GoInt)]._freq + _list[(1 : stdgo.GoInt)]._freq : stdgo.GoInt32) } : stdgo._internal.compress.flate.Flate.T_levelInfo);
                _leafCounts[(_level : stdgo.GoInt)][(_level : stdgo.GoInt)] = (2 : stdgo.GoInt32);
                if (_level == ((1 : stdgo.GoInt32))) {
                    _levels[(_level : stdgo.GoInt)]._nextPairFreq = (2147483647 : stdgo.GoInt32);
                };
            });
        };
        _levels[(_maxBits : stdgo.GoInt)]._needed = (((2 : stdgo.GoInt32) * _n : stdgo.GoInt32) - (4 : stdgo.GoInt32) : stdgo.GoInt32);
        var _level:stdgo.GoInt32 = _maxBits;
        while (true) {
            var _l = (stdgo.Go.setRef(_levels[(_level : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_levelInfo>);
            if (((_l._nextPairFreq == (2147483647 : stdgo.GoInt32)) && (_l._nextCharFreq == (2147483647 : stdgo.GoInt32)) : Bool)) {
                _l._needed = (0 : stdgo.GoInt32);
                _levels[((_level + (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]._nextPairFreq = (2147483647 : stdgo.GoInt32);
                _level++;
                continue;
            };
            var _prevFreq:stdgo.GoInt32 = _l._lastFreq;
            if ((_l._nextCharFreq < _l._nextPairFreq : Bool)) {
                var _n:stdgo.GoInt32 = (_leafCounts[(_level : stdgo.GoInt)][(_level : stdgo.GoInt)] + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                _l._lastFreq = _l._nextCharFreq;
                _leafCounts[(_level : stdgo.GoInt)][(_level : stdgo.GoInt)] = _n;
                _l._nextCharFreq = _list[(_n : stdgo.GoInt)]._freq;
            } else {
                _l._lastFreq = _l._nextPairFreq;
                stdgo.Go.copySlice((_leafCounts[(_level : stdgo.GoInt)].__slice__(0, _level) : stdgo.Slice<stdgo.GoInt32>), (_leafCounts[((_level - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)].__slice__(0, _level) : stdgo.Slice<stdgo.GoInt32>));
                _levels[((_l._level - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]._needed = (2 : stdgo.GoInt32);
            };
            {
                _l._needed--;
                if (_l._needed == ((0 : stdgo.GoInt32))) {
                    if (_l._level == (_maxBits)) {
                        break;
                    };
                    _levels[((_l._level + (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]._nextPairFreq = (_prevFreq + _l._lastFreq : stdgo.GoInt32);
                    _level++;
                } else {
                    while ((_levels[((_level - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]._needed > (0 : stdgo.GoInt32) : Bool)) {
                        _level--;
                    };
                };
            };
        };
        if (_leafCounts[(_maxBits : stdgo.GoInt)][(_maxBits : stdgo.GoInt)] != (_n)) {
            throw stdgo.Go.toInterface(("leafCounts[maxBits][maxBits] != n" : stdgo.GoString));
        };
        var _bitCount = (_h._bitCount.__slice__(0, (_maxBits + (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>);
        var _bits:stdgo.GoInt = (1 : stdgo.GoInt);
        var _counts = (stdgo.Go.setRef(_leafCounts[(_maxBits : stdgo.GoInt)]) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt32>>);
        {
            var _level:stdgo.GoInt32 = _maxBits;
            stdgo.Go.cfor((_level > (0 : stdgo.GoInt32) : Bool), _level--, {
                _bitCount[(_bits : stdgo.GoInt)] = (_counts[(_level : stdgo.GoInt)] - _counts[((_level - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] : stdgo.GoInt32);
                _bits++;
            });
        };
        return _bitCount;
    }
    @:keep
    static public function _bitLength( _h:stdgo.Ref<T_huffmanEncoder>, _freq:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt {
        @:recv var _h:stdgo.Ref<T_huffmanEncoder> = _h;
        var _total:stdgo.GoInt = (0 : stdgo.GoInt);
        for (_i => _f in _freq) {
            if (_f != ((0 : stdgo.GoInt32))) {
                _total = (_total + (((_f : stdgo.GoInt) * (_h._codes[(_i : stdgo.GoInt)]._len : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        return _total;
    }
}
class ReadError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ReadError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.ReadError_asInterface) class ReadError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<ReadError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<ReadError> = _e;
        return (((("flate: read error at offset " : stdgo.GoString) + stdgo._internal.strconv.Strconv.formatInt(_e.offset, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _e.err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
class WriteError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<WriteError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.WriteError_asInterface) class WriteError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<WriteError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<WriteError> = _e;
        return (((("flate: write error at offset " : stdgo.GoString) + stdgo._internal.strconv.Strconv.formatInt(_e.offset, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _e.err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
class T_huffmanDecoder_asInterface {
    @:keep
    public dynamic function _init(_lengths:stdgo.Slice<stdgo.GoInt>):Bool return __self__.value._init(_lengths);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_huffmanDecoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_huffmanDecoder_asInterface) class T_huffmanDecoder_static_extension {
    @:keep
    static public function _init( _h:stdgo.Ref<T_huffmanDecoder>, _lengths:stdgo.Slice<stdgo.GoInt>):Bool {
        @:recv var _h:stdgo.Ref<T_huffmanDecoder> = _h;
        {};
        if (_h._min != ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = (new stdgo._internal.compress.flate.Flate.T_huffmanDecoder() : stdgo._internal.compress.flate.Flate.T_huffmanDecoder);
                _h._min = __tmp__._min;
                _h._chunks = __tmp__._chunks;
                _h._links = __tmp__._links;
                _h._linkMask = __tmp__._linkMask;
            };
        };
        var _count:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(...[for (i in 0 ... 16) (0 : stdgo.GoInt)]);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _max:stdgo.GoInt = __1, _min:stdgo.GoInt = __0;
        for (__0 => _n in _lengths) {
            if (_n == ((0 : stdgo.GoInt))) {
                continue;
            };
            if (((_min == (0 : stdgo.GoInt)) || (_n < _min : Bool) : Bool)) {
                _min = _n;
            };
            if ((_n > _max : Bool)) {
                _max = _n;
            };
            _count[(_n : stdgo.GoInt)]++;
        };
        if (_max == ((0 : stdgo.GoInt))) {
            return true;
        };
        var _code:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nextcode:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(...[for (i in 0 ... 16) (0 : stdgo.GoInt)]);
        {
            var _i:stdgo.GoInt = _min;
            stdgo.Go.cfor((_i <= _max : Bool), _i++, {
                _code = (_code << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                _nextcode[(_i : stdgo.GoInt)] = _code;
                _code = (_code + (_count[(_i : stdgo.GoInt)]) : stdgo.GoInt);
            });
        };
        if (((_code != ((1 : stdgo.GoInt) << (_max : stdgo.GoUInt) : stdgo.GoInt)) && !(((_code == (1 : stdgo.GoInt)) && (_max == (1 : stdgo.GoInt)) : Bool)) : Bool)) {
            return false;
        };
        _h._min = _min;
        if ((_max > (9 : stdgo.GoInt) : Bool)) {
            var _numLinks:stdgo.GoInt = ((1 : stdgo.GoInt) << (((_max : stdgo.GoUInt) - (9u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoInt);
            _h._linkMask = ((_numLinks - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32);
            var _link:stdgo.GoInt = (_nextcode[(10 : stdgo.GoInt)] >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
            _h._links = new stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>(((512 : stdgo.GoInt) - _link : stdgo.GoInt).toBasic(), 0);
            {
                var _j:stdgo.GoUInt = (_link : stdgo.GoUInt);
                stdgo.Go.cfor((_j < (512u32 : stdgo.GoUInt) : Bool), _j++, {
                    var _reverse:stdgo.GoInt = (stdgo._internal.math.bits.Bits.reverse16((_j : stdgo.GoUInt16)) : stdgo.GoInt);
                    _reverse = (_reverse >> ((7u32 : stdgo.GoUInt)) : stdgo.GoInt);
                    var _off:stdgo.GoUInt = (_j - (_link : stdgo.GoUInt) : stdgo.GoUInt);
                    if ((false && (_h._chunks[(_reverse : stdgo.GoInt)] != (0u32 : stdgo.GoUInt32)) : Bool)) {
                        throw stdgo.Go.toInterface(("impossible: overwriting existing chunk" : stdgo.GoString));
                    };
                    _h._chunks[(_reverse : stdgo.GoInt)] = (((_off << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt) | (10u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt32);
                    _h._links[(_off : stdgo.GoInt)] = new stdgo.Slice<stdgo.GoUInt32>((_numLinks : stdgo.GoInt).toBasic(), 0).__setNumber32__();
                });
            };
        };
        for (_i => _n in _lengths) {
            if (_n == ((0 : stdgo.GoInt))) {
                continue;
            };
            var _code:stdgo.GoInt = _nextcode[(_n : stdgo.GoInt)];
            _nextcode[(_n : stdgo.GoInt)]++;
            var _chunk:stdgo.GoUInt32 = (((_i << (4i64 : stdgo.GoUInt64) : stdgo.GoInt) | _n : stdgo.GoInt) : stdgo.GoUInt32);
            var _reverse:stdgo.GoInt = (stdgo._internal.math.bits.Bits.reverse16((_code : stdgo.GoUInt16)) : stdgo.GoInt);
            _reverse = (_reverse >> ((((16 : stdgo.GoInt) - _n : stdgo.GoInt) : stdgo.GoUInt)) : stdgo.GoInt);
            if ((_n <= (9 : stdgo.GoInt) : Bool)) {
                {
                    var _off:stdgo.GoInt = _reverse;
                    stdgo.Go.cfor((_off < (_h._chunks.length) : Bool), _off = (_off + (((1 : stdgo.GoInt) << (_n : stdgo.GoUInt) : stdgo.GoInt)) : stdgo.GoInt), {
                        if ((false && (_h._chunks[(_off : stdgo.GoInt)] != (0u32 : stdgo.GoUInt32)) : Bool)) {
                            throw stdgo.Go.toInterface(("impossible: overwriting existing chunk" : stdgo.GoString));
                        };
                        _h._chunks[(_off : stdgo.GoInt)] = _chunk;
                    });
                };
            } else {
                var _j:stdgo.GoInt = (_reverse & (511 : stdgo.GoInt) : stdgo.GoInt);
                if ((false && ((_h._chunks[(_j : stdgo.GoInt)] & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != (10u32 : stdgo.GoUInt32)) : Bool)) {
                    throw stdgo.Go.toInterface(("impossible: not an indirect chunk" : stdgo.GoString));
                };
                var _value:stdgo.GoUInt32 = (_h._chunks[(_j : stdgo.GoInt)] >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
                var _linktab = _h._links[(_value : stdgo.GoInt)];
                _reverse = (_reverse >> ((9i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                {
                    var _off:stdgo.GoInt = _reverse;
                    stdgo.Go.cfor((_off < (_linktab.length) : Bool), _off = (_off + (((1 : stdgo.GoInt) << ((_n - (9 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoInt)) : stdgo.GoInt), {
                        if ((false && (_linktab[(_off : stdgo.GoInt)] != (0u32 : stdgo.GoUInt32)) : Bool)) {
                            throw stdgo.Go.toInterface(("impossible: overwriting existing chunk" : stdgo.GoString));
                        };
                        _linktab[(_off : stdgo.GoInt)] = _chunk;
                    });
                };
            };
        };
        if (false) {
            for (_i => _chunk in _h._chunks) {
                if (_chunk == ((0u32 : stdgo.GoUInt32))) {
                    if (((_code == (1 : stdgo.GoInt)) && ((_i % (2 : stdgo.GoInt) : stdgo.GoInt) == (1 : stdgo.GoInt)) : Bool)) {
                        continue;
                    };
                    throw stdgo.Go.toInterface(("impossible: missing chunk" : stdgo.GoString));
                };
            };
            for (__1 => _linktab in _h._links) {
                for (__2 => _chunk in _linktab) {
                    if (_chunk == ((0u32 : stdgo.GoUInt32))) {
                        throw stdgo.Go.toInterface(("impossible: missing chunk" : stdgo.GoString));
                    };
                };
            };
        };
        return true;
    }
}
class T_decompressor_asInterface {
    @:keep
    public dynamic function reset(_r:stdgo._internal.io.Io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):stdgo.Error return __self__.value.reset(_r, _dict);
    @:keep
    public dynamic function _makeReader(_r:stdgo._internal.io.Io.Reader):Void __self__.value._makeReader(_r);
    @:keep
    public dynamic function _huffSym(_h:stdgo.Ref<T_huffmanDecoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._huffSym(_h);
    @:keep
    public dynamic function _moreBits():stdgo.Error return __self__.value._moreBits();
    @:keep
    public dynamic function _finishBlock():Void __self__.value._finishBlock();
    @:keep
    public dynamic function _copyData():Void __self__.value._copyData();
    @:keep
    public dynamic function _dataBlock():Void __self__.value._dataBlock();
    @:keep
    public dynamic function _huffmanBlock():Void __self__.value._huffmanBlock();
    @:keep
    public dynamic function _readHuffman():stdgo.Error return __self__.value._readHuffman();
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:keep
    public dynamic function _nextBlock():Void __self__.value._nextBlock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_decompressor>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_decompressor_asInterface) class T_decompressor_static_extension {
    @:keep
    static public function reset( _f:stdgo.Ref<T_decompressor>, _r:stdgo._internal.io.Io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):stdgo.Error {
        @:recv var _f:stdgo.Ref<T_decompressor> = _f;
        {
            var __tmp__ = ({ _rBuf : _f._rBuf, _bits : _f._bits, _codebits : _f._codebits, _dict : _f._dict?.__copy__(), _step : T_decompressor_static_extension._nextBlock } : stdgo._internal.compress.flate.Flate.T_decompressor);
            _f._r = __tmp__._r;
            _f._rBuf = __tmp__._rBuf;
            _f._roffset = __tmp__._roffset;
            _f._b = __tmp__._b;
            _f._nb = __tmp__._nb;
            _f._h1 = __tmp__._h1;
            _f._h2 = __tmp__._h2;
            _f._bits = __tmp__._bits;
            _f._codebits = __tmp__._codebits;
            _f._dict = __tmp__._dict;
            _f._buf = __tmp__._buf;
            _f._step = __tmp__._step;
            _f._stepState = __tmp__._stepState;
            _f._final = __tmp__._final;
            _f._err = __tmp__._err;
            _f._toRead = __tmp__._toRead;
            _f._hl = __tmp__._hl;
            _f._hd = __tmp__._hd;
            _f._copyLen = __tmp__._copyLen;
            _f._copyDist = __tmp__._copyDist;
        };
        _f._makeReader(_r);
        _f._dict._init((32768 : stdgo.GoInt), _dict);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _makeReader( _f:stdgo.Ref<T_decompressor>, _r:stdgo._internal.io.Io.Reader):Void {
        @:recv var _f:stdgo.Ref<T_decompressor> = _f;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : Reader)) : Reader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.compress.flate.Flate.Reader), _1 : false };
            }, _rr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _f._rBuf = null;
                _f._r = _rr;
                return;
            };
        };
        if (_f._rBuf != null && ((_f._rBuf : Dynamic).__nil__ == null || !(_f._rBuf : Dynamic).__nil__)) {
            _f._rBuf.reset(_r);
        } else {
            _f._rBuf = stdgo._internal.bufio.Bufio.newReader(_r);
        };
        _f._r = stdgo.Go.asInterface(_f._rBuf);
    }
    @:keep
    static public function _huffSym( _f:stdgo.Ref<T_decompressor>, _h:stdgo.Ref<T_huffmanDecoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<T_decompressor> = _f;
        var _n:stdgo.GoUInt = (_h._min : stdgo.GoUInt);
        var __0:stdgo.GoUInt = _f._nb, __1:stdgo.GoUInt32 = _f._b, _b:stdgo.GoUInt32 = __1, _nb:stdgo.GoUInt = __0;
        while (true) {
            while ((_nb < _n : Bool)) {
                var __tmp__ = _f._r.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _f._b = _b;
                    _f._nb = _nb;
                    return { _0 : (0 : stdgo.GoInt), _1 : _noEOF(_err) };
                };
                _f._roffset++;
                _b = (_b | (((_c : stdgo.GoUInt32) << ((_nb & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _nb = (_nb + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            };
            var _chunk:stdgo.GoUInt32 = _h._chunks[((_b & (511u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
            _n = ((_chunk & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt);
            if ((_n > (9u32 : stdgo.GoUInt) : Bool)) {
                _chunk = _h._links[((_chunk >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)][((((_b >> (9i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & _h._linkMask : stdgo.GoUInt32) : stdgo.GoInt)];
                _n = ((_chunk & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt);
            };
            if ((_n <= _nb : Bool)) {
                if (_n == ((0u32 : stdgo.GoUInt))) {
                    _f._b = _b;
                    _f._nb = _nb;
                    _f._err = stdgo.Go.asInterface((_f._roffset : CorruptInputError));
                    return { _0 : (0 : stdgo.GoInt), _1 : _f._err };
                };
                _f._b = (_b >> ((_n & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32);
                _f._nb = (_nb - _n : stdgo.GoUInt);
                return { _0 : ((_chunk >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    static public function _moreBits( _f:stdgo.Ref<T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<T_decompressor> = _f;
        var __tmp__ = _f._r.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _noEOF(_err);
        };
        _f._roffset++;
        _f._b = (_f._b | (((_c : stdgo.GoUInt32) << _f._nb : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _f._nb = (_f._nb + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _finishBlock( _f:stdgo.Ref<T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<T_decompressor> = _f;
        if (_f._final) {
            if ((_f._dict._availRead() > (0 : stdgo.GoInt) : Bool)) {
                _f._toRead = _f._dict._readFlush();
            };
            _f._err = stdgo._internal.io.Io.eof;
        };
        _f._step = T_decompressor_static_extension._nextBlock;
    }
    @:keep
    static public function _copyData( _f:stdgo.Ref<T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<T_decompressor> = _f;
        var _buf = _f._dict._writeSlice();
        if (((_buf.length) > _f._copyLen : Bool)) {
            _buf = (_buf.__slice__(0, _f._copyLen) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var __tmp__ = stdgo._internal.io.Io.readFull(_f._r, _buf), _cnt:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _f._roffset = (_f._roffset + ((_cnt : stdgo.GoInt64)) : stdgo.GoInt64);
        _f._copyLen = (_f._copyLen - (_cnt) : stdgo.GoInt);
        _f._dict._writeMark(_cnt);
        if (_err != null) {
            _f._err = _noEOF(_err);
            return;
        };
        if (((_f._dict._availWrite() == (0 : stdgo.GoInt)) || (_f._copyLen > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _f._toRead = _f._dict._readFlush();
            _f._step = T_decompressor_static_extension._copyData;
            return;
        };
        _f._finishBlock();
    }
    @:keep
    static public function _dataBlock( _f:stdgo.Ref<T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<T_decompressor> = _f;
        _f._nb = (0u32 : stdgo.GoUInt);
        _f._b = (0u32 : stdgo.GoUInt32);
        var __tmp__ = stdgo._internal.io.Io.readFull(_f._r, (_f._buf.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _nr:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _f._roffset = (_f._roffset + ((_nr : stdgo.GoInt64)) : stdgo.GoInt64);
        if (_err != null) {
            _f._err = _noEOF(_err);
            return;
        };
        var _n:stdgo.GoInt = ((_f._buf[(0 : stdgo.GoInt)] : stdgo.GoInt) | ((_f._buf[(1 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        var _nn:stdgo.GoInt = ((_f._buf[(2 : stdgo.GoInt)] : stdgo.GoInt) | ((_f._buf[(3 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        if ((_nn : stdgo.GoUInt16) != ((-1 ^ _n : stdgo.GoUInt16))) {
            _f._err = stdgo.Go.asInterface((_f._roffset : CorruptInputError));
            return;
        };
        if (_n == ((0 : stdgo.GoInt))) {
            _f._toRead = _f._dict._readFlush();
            _f._finishBlock();
            return;
        };
        _f._copyLen = _n;
        _f._copyData();
    }
    @:keep
    static public function _huffmanBlock( _f:stdgo.Ref<T_decompressor>):Void {
        stdgo._internal.internal.Macro.controlFlow({
            @:recv var _f:stdgo.Ref<T_decompressor> = _f;
            {};
            {
                final __value__ = _f._stepState;
                if (__value__ == ((0 : stdgo.GoInt))) {
                    @:goto "readLiteral";
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    @:goto "copyHistory";
                };
            };
            @:label("readLiteral") {
                var __tmp__ = _f._huffSym(_f._hl), _v:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _f._err = _err;
                    return;
                };
                var _n:stdgo.GoUInt = (0 : stdgo.GoUInt);
                var _length:stdgo.GoInt = (0 : stdgo.GoInt);
                if ((_v < (256 : stdgo.GoInt) : Bool)) {
                    _f._dict._writeByte((_v : stdgo.GoByte));
                    if (_f._dict._availWrite() == ((0 : stdgo.GoInt))) {
                        _f._toRead = _f._dict._readFlush();
                        _f._step = T_decompressor_static_extension._huffmanBlock;
                        _f._stepState = (0 : stdgo.GoInt);
                        return;
                    };
                    @:goto "readLiteral";
                } else if (_v == ((256 : stdgo.GoInt))) {
                    _f._finishBlock();
                    return;
                } else if ((_v < (265 : stdgo.GoInt) : Bool)) {
                    _length = (_v - (254 : stdgo.GoInt) : stdgo.GoInt);
                    _n = (0u32 : stdgo.GoUInt);
                } else if ((_v < (269 : stdgo.GoInt) : Bool)) {
                    _length = ((_v * (2 : stdgo.GoInt) : stdgo.GoInt) - (519 : stdgo.GoInt) : stdgo.GoInt);
                    _n = (1u32 : stdgo.GoUInt);
                } else if ((_v < (273 : stdgo.GoInt) : Bool)) {
                    _length = ((_v * (4 : stdgo.GoInt) : stdgo.GoInt) - (1057 : stdgo.GoInt) : stdgo.GoInt);
                    _n = (2u32 : stdgo.GoUInt);
                } else if ((_v < (277 : stdgo.GoInt) : Bool)) {
                    _length = ((_v * (8 : stdgo.GoInt) : stdgo.GoInt) - (2149 : stdgo.GoInt) : stdgo.GoInt);
                    _n = (3u32 : stdgo.GoUInt);
                } else if ((_v < (281 : stdgo.GoInt) : Bool)) {
                    _length = ((_v * (16 : stdgo.GoInt) : stdgo.GoInt) - (4365 : stdgo.GoInt) : stdgo.GoInt);
                    _n = (4u32 : stdgo.GoUInt);
                } else if ((_v < (285 : stdgo.GoInt) : Bool)) {
                    _length = ((_v * (32 : stdgo.GoInt) : stdgo.GoInt) - (8861 : stdgo.GoInt) : stdgo.GoInt);
                    _n = (5u32 : stdgo.GoUInt);
                } else if ((_v < (286 : stdgo.GoInt) : Bool)) {
                    _length = (258 : stdgo.GoInt);
                    _n = (0u32 : stdgo.GoUInt);
                } else {
                    _f._err = stdgo.Go.asInterface((_f._roffset : CorruptInputError));
                    return;
                };
                if ((_n > (0u32 : stdgo.GoUInt) : Bool)) {
                    while ((_f._nb < _n : Bool)) {
                        {
                            _err = _f._moreBits();
                            if (_err != null) {
                                _f._err = _err;
                                return;
                            };
                        };
                    };
                    _length = (_length + (((_f._b & (((1u32 : stdgo.GoUInt32) << _n : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                    _f._b = (_f._b >> (_n) : stdgo.GoUInt32);
                    _f._nb = (_f._nb - (_n) : stdgo.GoUInt);
                };
                var _dist:stdgo.GoInt = (0 : stdgo.GoInt);
                if (_f._hd == null || (_f._hd : Dynamic).__nil__) {
                    while ((_f._nb < (5u32 : stdgo.GoUInt) : Bool)) {
                        {
                            _err = _f._moreBits();
                            if (_err != null) {
                                _f._err = _err;
                                return;
                            };
                        };
                    };
                    _dist = (stdgo._internal.math.bits.Bits.reverse8((((_f._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)) : stdgo.GoInt);
                    _f._b = (_f._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                    _f._nb = (_f._nb - ((5u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                } else {
                    {
                        {
                            var __tmp__ = _f._huffSym(_f._hd);
                            _dist = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            _f._err = _err;
                            return;
                        };
                    };
                };
                if ((_dist < (4 : stdgo.GoInt) : Bool)) {
                    _dist++;
                } else if ((_dist < (30 : stdgo.GoInt) : Bool)) {
                    var _nb:stdgo.GoUInt = (((_dist - (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt);
                    var _extra:stdgo.GoInt = (((_dist & (1 : stdgo.GoInt) : stdgo.GoInt)) << _nb : stdgo.GoInt);
                    while ((_f._nb < _nb : Bool)) {
                        {
                            _err = _f._moreBits();
                            if (_err != null) {
                                _f._err = _err;
                                return;
                            };
                        };
                    };
                    _extra = (_extra | (((_f._b & (((1u32 : stdgo.GoUInt32) << _nb : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                    _f._b = (_f._b >> (_nb) : stdgo.GoUInt32);
                    _f._nb = (_f._nb - (_nb) : stdgo.GoUInt);
                    _dist = ((((1 : stdgo.GoInt) << ((_nb + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) + _extra : stdgo.GoInt);
                } else {
                    _f._err = stdgo.Go.asInterface((_f._roffset : CorruptInputError));
                    return;
                };
                if ((_dist > _f._dict._histSize() : Bool)) {
                    _f._err = stdgo.Go.asInterface((_f._roffset : CorruptInputError));
                    return;
                };
                {
                    final __tmp__0 = _length;
                    final __tmp__1 = _dist;
                    _f._copyLen = __tmp__0;
                    _f._copyDist = __tmp__1;
                };
                @:goto "copyHistory";
            };
            @:label("copyHistory") {
                var _cnt:stdgo.GoInt = _f._dict._tryWriteCopy(_f._copyDist, _f._copyLen);
                if (_cnt == ((0 : stdgo.GoInt))) {
                    _cnt = _f._dict._writeCopy(_f._copyDist, _f._copyLen);
                };
                _f._copyLen = (_f._copyLen - (_cnt) : stdgo.GoInt);
                if (((_f._dict._availWrite() == (0 : stdgo.GoInt)) || (_f._copyLen > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _f._toRead = _f._dict._readFlush();
                    _f._step = T_decompressor_static_extension._huffmanBlock;
                    _f._stepState = (1 : stdgo.GoInt);
                    return;
                };
                @:goto "readLiteral";
            };
        });
    }
    @:keep
    static public function _readHuffman( _f:stdgo.Ref<T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<T_decompressor> = _f;
        while ((_f._nb < (14u32 : stdgo.GoUInt) : Bool)) {
            {
                var _err:stdgo.Error = _f._moreBits();
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _nlit:stdgo.GoInt = (((_f._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (257 : stdgo.GoInt) : stdgo.GoInt);
        if ((_nlit > (286 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.asInterface((_f._roffset : CorruptInputError));
        };
        _f._b = (_f._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _ndist:stdgo.GoInt = (((_f._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        if ((_ndist > (30 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.asInterface((_f._roffset : CorruptInputError));
        };
        _f._b = (_f._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _nclen:stdgo.GoInt = (((_f._b & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt);
        _f._b = (_f._b >> ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        _f._nb = (_f._nb - ((14u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _nclen : Bool), _i++, {
                while ((_f._nb < (3u32 : stdgo.GoUInt) : Bool)) {
                    {
                        var _err:stdgo.Error = _f._moreBits();
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
                _f._codebits[(_codeOrder[(_i : stdgo.GoInt)] : stdgo.GoInt)] = ((_f._b & (7u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt);
                _f._b = (_f._b >> ((3i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                _f._nb = (_f._nb - ((3u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            });
        };
        {
            var _i:stdgo.GoInt = _nclen;
            stdgo.Go.cfor((_i < (_codeOrder.length) : Bool), _i++, {
                _f._codebits[(_codeOrder[(_i : stdgo.GoInt)] : stdgo.GoInt)] = (0 : stdgo.GoInt);
            });
        };
        if (!_f._h1._init((_f._codebits.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>))) {
            return stdgo.Go.asInterface((_f._roffset : CorruptInputError));
        };
        {
            var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (_nlit + _ndist : stdgo.GoInt), _n:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
            while ((_i < _n : Bool)) {
                var __tmp__ = _f._huffSym((stdgo.Go.setRef(_f._h1) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanDecoder>)), _x:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if ((_x < (16 : stdgo.GoInt) : Bool)) {
                    _f._bits[(_i : stdgo.GoInt)] = _x;
                    _i++;
                    continue;
                };
                var _rep:stdgo.GoInt = (0 : stdgo.GoInt);
                var _nb:stdgo.GoUInt = (0 : stdgo.GoUInt);
                var _b:stdgo.GoInt = (0 : stdgo.GoInt);
                {
                    final __value__ = _x;
                    if (__value__ == ((16 : stdgo.GoInt))) {
                        _rep = (3 : stdgo.GoInt);
                        _nb = (2u32 : stdgo.GoUInt);
                        if (_i == ((0 : stdgo.GoInt))) {
                            return stdgo.Go.asInterface((_f._roffset : CorruptInputError));
                        };
                        _b = _f._bits[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)];
                    } else if (__value__ == ((17 : stdgo.GoInt))) {
                        _rep = (3 : stdgo.GoInt);
                        _nb = (3u32 : stdgo.GoUInt);
                        _b = (0 : stdgo.GoInt);
                    } else if (__value__ == ((18 : stdgo.GoInt))) {
                        _rep = (11 : stdgo.GoInt);
                        _nb = (7u32 : stdgo.GoUInt);
                        _b = (0 : stdgo.GoInt);
                    } else {
                        return stdgo.Go.asInterface(((("unexpected length code" : stdgo.GoString) : stdgo._internal.compress.flate.Flate.InternalError) : InternalError));
                    };
                };
                while ((_f._nb < _nb : Bool)) {
                    {
                        var _err:stdgo.Error = _f._moreBits();
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
                _rep = (_rep + (((_f._b & (((1u32 : stdgo.GoUInt32) << _nb : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                _f._b = (_f._b >> (_nb) : stdgo.GoUInt32);
                _f._nb = (_f._nb - (_nb) : stdgo.GoUInt);
                if (((_i + _rep : stdgo.GoInt) > _n : Bool)) {
                    return stdgo.Go.asInterface((_f._roffset : CorruptInputError));
                };
                {
                    var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < _rep : Bool), _j++, {
                        _f._bits[(_i : stdgo.GoInt)] = _b;
                        _i++;
                    });
                };
            };
        };
        if ((!_f._h1._init((_f._bits.__slice__((0 : stdgo.GoInt), _nlit) : stdgo.Slice<stdgo.GoInt>)) || !_f._h2._init((_f._bits.__slice__(_nlit, (_nlit + _ndist : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)) : Bool)) {
            return stdgo.Go.asInterface((_f._roffset : CorruptInputError));
        };
        if ((_f._h1._min < _f._bits[(256 : stdgo.GoInt)] : Bool)) {
            _f._h1._min = _f._bits[(256 : stdgo.GoInt)];
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function close( _f:stdgo.Ref<T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<T_decompressor> = _f;
        if (stdgo.Go.toInterface(_f._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
            return (null : stdgo.Error);
        };
        return _f._err;
    }
    @:keep
    static public function read( _f:stdgo.Ref<T_decompressor>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<T_decompressor> = _f;
        while (true) {
            if (((_f._toRead.length) > (0 : stdgo.GoInt) : Bool)) {
                var _n:stdgo.GoInt = stdgo.Go.copySlice(_b, _f._toRead);
                _f._toRead = (_f._toRead.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
                if ((_f._toRead.length) == ((0 : stdgo.GoInt))) {
                    return { _0 : _n, _1 : _f._err };
                };
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
            if (_f._err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _f._err };
            };
            _f._step(_f);
            if (((_f._err != null) && (_f._toRead.length == (0 : stdgo.GoInt)) : Bool)) {
                _f._toRead = _f._dict._readFlush();
            };
        };
    }
    @:keep
    static public function _nextBlock( _f:stdgo.Ref<T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<T_decompressor> = _f;
        while ((_f._nb < (3u32 : stdgo.GoUInt) : Bool)) {
            {
                _f._err = _f._moreBits();
                if (_f._err != null) {
                    return;
                };
            };
        };
        _f._final = (_f._b & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((1u32 : stdgo.GoUInt32));
        _f._b = (_f._b >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _typ:stdgo.GoUInt32 = (_f._b & (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        _f._b = (_f._b >> ((2i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        _f._nb = (_f._nb - ((3u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _typ;
                    if (__value__ == ((0u32 : stdgo.GoUInt32))) {
                        _f._dataBlock();
                        break;
                    } else if (__value__ == ((1u32 : stdgo.GoUInt32))) {
                        _f._hl = (stdgo.Go.setRef(_fixedHuffmanDecoder) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanDecoder>);
                        _f._hd = null;
                        _f._huffmanBlock();
                        break;
                    } else if (__value__ == ((2u32 : stdgo.GoUInt32))) {
                        {
                            _f._err = _f._readHuffman();
                            if (_f._err != null) {
                                break;
                            };
                        };
                        _f._hl = (stdgo.Go.setRef(_f._h1) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanDecoder>);
                        _f._hd = (stdgo.Go.setRef(_f._h2) : stdgo.Ref<stdgo._internal.compress.flate.Flate.T_huffmanDecoder>);
                        _f._huffmanBlock();
                        break;
                    } else {
                        _f._err = stdgo.Go.asInterface((_f._roffset : CorruptInputError));
                    };
                };
                break;
            };
        };
    }
}
class T_errorWriter_asInterface {
    @:keep
    public dynamic function write(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errorWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_errorWriter_asInterface) class T_errorWriter_static_extension {
    @:keep
    static public function write( _e:stdgo.Ref<T_errorWriter>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<T_errorWriter> = _e;
        if ((_e.n <= (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io.errClosedPipe };
        };
        _e.n--;
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
}
class T_byLiteral_asInterface {
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:keep
    public dynamic function _sort(_a:stdgo.Slice<T_literalNode>):Void __self__.value._sort(_a);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_byLiteral>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_byLiteral_asInterface) class T_byLiteral_static_extension {
    @:keep
    static public function swap( _s:T_byLiteral, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:T_byLiteral = _s;
        {
            final __tmp__0 = _s[(_j : stdgo.GoInt)];
            final __tmp__1 = _s[(_i : stdgo.GoInt)];
            _s[(_i : stdgo.GoInt)] = __tmp__0;
            _s[(_j : stdgo.GoInt)] = __tmp__1;
        };
    }
    @:keep
    static public function less( _s:T_byLiteral, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:T_byLiteral = _s;
        return (_s[(_i : stdgo.GoInt)]._literal < _s[(_j : stdgo.GoInt)]._literal : Bool);
    }
    @:keep
    static public function len( _s:T_byLiteral):stdgo.GoInt {
        @:recv var _s:T_byLiteral = _s;
        return (_s.length);
    }
    @:keep
    static public function _sort( _s:stdgo.Ref<T_byLiteral>, _a:stdgo.Slice<T_literalNode>):Void {
        @:recv var _s:stdgo.Ref<T_byLiteral> = _s;
        _s.__setData__((_a : T_byLiteral));
        stdgo._internal.sort.Sort.sort(stdgo.Go.asInterface(_s));
    }
}
class T_byFreq_asInterface {
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:keep
    public dynamic function _sort(_a:stdgo.Slice<T_literalNode>):Void __self__.value._sort(_a);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_byFreq>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_byFreq_asInterface) class T_byFreq_static_extension {
    @:keep
    static public function swap( _s:T_byFreq, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:T_byFreq = _s;
        {
            final __tmp__0 = _s[(_j : stdgo.GoInt)];
            final __tmp__1 = _s[(_i : stdgo.GoInt)];
            _s[(_i : stdgo.GoInt)] = __tmp__0;
            _s[(_j : stdgo.GoInt)] = __tmp__1;
        };
    }
    @:keep
    static public function less( _s:T_byFreq, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:T_byFreq = _s;
        if (_s[(_i : stdgo.GoInt)]._freq == (_s[(_j : stdgo.GoInt)]._freq)) {
            return (_s[(_i : stdgo.GoInt)]._literal < _s[(_j : stdgo.GoInt)]._literal : Bool);
        };
        return (_s[(_i : stdgo.GoInt)]._freq < _s[(_j : stdgo.GoInt)]._freq : Bool);
    }
    @:keep
    static public function len( _s:T_byFreq):stdgo.GoInt {
        @:recv var _s:T_byFreq = _s;
        return (_s.length);
    }
    @:keep
    static public function _sort( _s:stdgo.Ref<T_byFreq>, _a:stdgo.Slice<T_literalNode>):Void {
        @:recv var _s:stdgo.Ref<T_byFreq> = _s;
        _s.__setData__((_a : T_byFreq));
        stdgo._internal.sort.Sort.sort(stdgo.Go.asInterface(_s));
    }
}
class CorruptInputError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<CorruptInputError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.CorruptInputError_asInterface) class CorruptInputError_static_extension {
    @:keep
    static public function error( _e:CorruptInputError):stdgo.GoString {
        @:recv var _e:CorruptInputError = _e;
        return (("flate: corrupt input before offset " : stdgo.GoString) + stdgo._internal.strconv.Strconv.formatInt((_e : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
class InternalError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<InternalError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.InternalError_asInterface) class InternalError_static_extension {
    @:keep
    static public function error( _e:InternalError):stdgo.GoString {
        @:recv var _e:InternalError = _e;
        return (("flate: internal error: " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
class T_token_asInterface {
    @:keep
    public dynamic function _length():stdgo.GoUInt32 return __self__.value._length();
    @:keep
    public dynamic function _offset():stdgo.GoUInt32 return __self__.value._offset();
    @:keep
    public dynamic function _literal():stdgo.GoUInt32 return __self__.value._literal();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_token>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_token_asInterface) class T_token_static_extension {
    @:keep
    static public function _length( _t:T_token):stdgo.GoUInt32 {
        @:recv var _t:T_token = _t;
        return ((((_t - (1073741824u32 : stdgo._internal.compress.flate.Flate.T_token) : stdgo._internal.compress.flate.Flate.T_token)) >> (22i64 : stdgo.GoUInt64) : stdgo._internal.compress.flate.Flate.T_token) : stdgo.GoUInt32);
    }
    @:keep
    static public function _offset( _t:T_token):stdgo.GoUInt32 {
        @:recv var _t:T_token = _t;
        return ((_t : stdgo.GoUInt32) & (4194303u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
    @:keep
    static public function _literal( _t:T_token):stdgo.GoUInt32 {
        @:recv var _t:T_token = _t;
        return ((_t - (0u32 : stdgo._internal.compress.flate.Flate.T_token) : stdgo._internal.compress.flate.Flate.T_token) : stdgo.GoUInt32);
    }
}
