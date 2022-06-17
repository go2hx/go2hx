package stdgo.compress.flate;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _levels : Slice<T_compressionLevel> = ((new Slice<T_compressionLevel>(((new T_compressionLevel(((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt))) : T_compressionLevel)), ((new T_compressionLevel(((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt))) : T_compressionLevel)), ((new T_compressionLevel(((2 : GoInt)), ((4 : GoInt)), ((0 : GoInt)), ((16 : GoInt)), ((8 : GoInt)), ((5 : GoInt))) : T_compressionLevel)), ((new T_compressionLevel(((3 : GoInt)), ((4 : GoInt)), ((0 : GoInt)), ((32 : GoInt)), ((32 : GoInt)), ((6 : GoInt))) : T_compressionLevel)), ((new T_compressionLevel(((4 : GoInt)), ((4 : GoInt)), ((4 : GoInt)), ((16 : GoInt)), ((16 : GoInt)), ((2147483647 : GoInt))) : T_compressionLevel)), ((new T_compressionLevel(((5 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((32 : GoInt)), ((32 : GoInt)), ((2147483647 : GoInt))) : T_compressionLevel)), ((new T_compressionLevel(((6 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((128 : GoInt)), ((128 : GoInt)), ((2147483647 : GoInt))) : T_compressionLevel)), ((new T_compressionLevel(((7 : GoInt)), ((8 : GoInt)), ((32 : GoInt)), ((128 : GoInt)), ((256 : GoInt)), ((2147483647 : GoInt))) : T_compressionLevel)), ((new T_compressionLevel(((8 : GoInt)), ((32 : GoInt)), ((128 : GoInt)), ((258 : GoInt)), ((1024 : GoInt)), ((2147483647 : GoInt))) : T_compressionLevel)), ((new T_compressionLevel(((9 : GoInt)), ((32 : GoInt)), ((258 : GoInt)), ((258 : GoInt)), ((4096 : GoInt)), ((2147483647 : GoInt))) : T_compressionLevel))) : Slice<T_compressionLevel>));
var _lengthExtraBits : Slice<GoInt8> = ((new Slice<GoInt8>(
((0 : GoInt8)),
((0 : GoInt8)),
((0 : GoInt8)),
((0 : GoInt8)),
((0 : GoInt8)),
((0 : GoInt8)),
((0 : GoInt8)),
((0 : GoInt8)),
((1 : GoInt8)),
((1 : GoInt8)),
((1 : GoInt8)),
((1 : GoInt8)),
((2 : GoInt8)),
((2 : GoInt8)),
((2 : GoInt8)),
((2 : GoInt8)),
((3 : GoInt8)),
((3 : GoInt8)),
((3 : GoInt8)),
((3 : GoInt8)),
((4 : GoInt8)),
((4 : GoInt8)),
((4 : GoInt8)),
((4 : GoInt8)),
((5 : GoInt8)),
((5 : GoInt8)),
((5 : GoInt8)),
((5 : GoInt8)),
((0 : GoInt8))) : Slice<GoInt8>));
var _lengthBase : Slice<GoUInt32> = ((new Slice<GoUInt32>(
((0 : GoUInt32)),
((1 : GoUInt32)),
((2 : GoUInt32)),
((3 : GoUInt32)),
((4 : GoUInt32)),
((5 : GoUInt32)),
((6 : GoUInt32)),
((7 : GoUInt32)),
((8 : GoUInt32)),
((10 : GoUInt32)),
((12 : GoUInt32)),
((14 : GoUInt32)),
((16 : GoUInt32)),
((20 : GoUInt32)),
((24 : GoUInt32)),
((28 : GoUInt32)),
((32 : GoUInt32)),
((40 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((64 : GoUInt32)),
((80 : GoUInt32)),
((96 : GoUInt32)),
((112 : GoUInt32)),
((128 : GoUInt32)),
((160 : GoUInt32)),
((192 : GoUInt32)),
((224 : GoUInt32)),
((255 : GoUInt32))) : Slice<GoUInt32>));
var _offsetExtraBits : Slice<GoInt8> = ((new Slice<GoInt8>(
((0 : GoInt8)),
((0 : GoInt8)),
((0 : GoInt8)),
((0 : GoInt8)),
((1 : GoInt8)),
((1 : GoInt8)),
((2 : GoInt8)),
((2 : GoInt8)),
((3 : GoInt8)),
((3 : GoInt8)),
((4 : GoInt8)),
((4 : GoInt8)),
((5 : GoInt8)),
((5 : GoInt8)),
((6 : GoInt8)),
((6 : GoInt8)),
((7 : GoInt8)),
((7 : GoInt8)),
((8 : GoInt8)),
((8 : GoInt8)),
((9 : GoInt8)),
((9 : GoInt8)),
((10 : GoInt8)),
((10 : GoInt8)),
((11 : GoInt8)),
((11 : GoInt8)),
((12 : GoInt8)),
((12 : GoInt8)),
((13 : GoInt8)),
((13 : GoInt8))) : Slice<GoInt8>));
var _offsetBase : Slice<GoUInt32> = ((new Slice<GoUInt32>(
((0 : GoUInt32)),
((1 : GoUInt32)),
((2 : GoUInt32)),
((3 : GoUInt32)),
((4 : GoUInt32)),
((6 : GoUInt32)),
((8 : GoUInt32)),
((12 : GoUInt32)),
((16 : GoUInt32)),
((24 : GoUInt32)),
((32 : GoUInt32)),
((48 : GoUInt32)),
((64 : GoUInt32)),
((96 : GoUInt32)),
((128 : GoUInt32)),
((192 : GoUInt32)),
((256 : GoUInt32)),
((384 : GoUInt32)),
((512 : GoUInt32)),
((768 : GoUInt32)),
((1024 : GoUInt32)),
((1536 : GoUInt32)),
((2048 : GoUInt32)),
((3072 : GoUInt32)),
((4096 : GoUInt32)),
((6144 : GoUInt32)),
((8192 : GoUInt32)),
((12288 : GoUInt32)),
((16384 : GoUInt32)),
((24576 : GoUInt32))) : Slice<GoUInt32>));
var _codegenOrder : Slice<GoUInt32> = ((new Slice<GoUInt32>(
((16 : GoUInt32)),
((17 : GoUInt32)),
((18 : GoUInt32)),
((0 : GoUInt32)),
((8 : GoUInt32)),
((7 : GoUInt32)),
((9 : GoUInt32)),
((6 : GoUInt32)),
((10 : GoUInt32)),
((5 : GoUInt32)),
((11 : GoUInt32)),
((4 : GoUInt32)),
((12 : GoUInt32)),
((3 : GoUInt32)),
((13 : GoUInt32)),
((2 : GoUInt32)),
((14 : GoUInt32)),
((1 : GoUInt32)),
((15 : GoUInt32))) : Slice<GoUInt32>));
var _fixedOffsetEncoding : T_huffmanEncoder = _generateFixedOffsetEncoding();
var _fixedLiteralEncoding : T_huffmanEncoder = _generateFixedLiteralEncoding();
var _codeOrder : GoArray<GoInt> = ((new GoArray<GoInt>(
((16 : GoInt)),
((17 : GoInt)),
((18 : GoInt)),
((0 : GoInt)),
((8 : GoInt)),
((7 : GoInt)),
((9 : GoInt)),
((6 : GoInt)),
((10 : GoInt)),
((5 : GoInt)),
((11 : GoInt)),
((4 : GoInt)),
((12 : GoInt)),
((3 : GoInt)),
((13 : GoInt)),
((2 : GoInt)),
((14 : GoInt)),
((1 : GoInt)),
((15 : GoInt))) : GoArray<GoInt>));
var _lengthCodes : GoArray<GoUInt32> = ((new GoArray<GoUInt32>(
((0 : GoUInt32)),
((1 : GoUInt32)),
((2 : GoUInt32)),
((3 : GoUInt32)),
((4 : GoUInt32)),
((5 : GoUInt32)),
((6 : GoUInt32)),
((7 : GoUInt32)),
((8 : GoUInt32)),
((8 : GoUInt32)),
((9 : GoUInt32)),
((9 : GoUInt32)),
((10 : GoUInt32)),
((10 : GoUInt32)),
((11 : GoUInt32)),
((11 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((16 : GoUInt32)),
((16 : GoUInt32)),
((16 : GoUInt32)),
((16 : GoUInt32)),
((16 : GoUInt32)),
((16 : GoUInt32)),
((16 : GoUInt32)),
((16 : GoUInt32)),
((17 : GoUInt32)),
((17 : GoUInt32)),
((17 : GoUInt32)),
((17 : GoUInt32)),
((17 : GoUInt32)),
((17 : GoUInt32)),
((17 : GoUInt32)),
((17 : GoUInt32)),
((18 : GoUInt32)),
((18 : GoUInt32)),
((18 : GoUInt32)),
((18 : GoUInt32)),
((18 : GoUInt32)),
((18 : GoUInt32)),
((18 : GoUInt32)),
((18 : GoUInt32)),
((19 : GoUInt32)),
((19 : GoUInt32)),
((19 : GoUInt32)),
((19 : GoUInt32)),
((19 : GoUInt32)),
((19 : GoUInt32)),
((19 : GoUInt32)),
((19 : GoUInt32)),
((20 : GoUInt32)),
((20 : GoUInt32)),
((20 : GoUInt32)),
((20 : GoUInt32)),
((20 : GoUInt32)),
((20 : GoUInt32)),
((20 : GoUInt32)),
((20 : GoUInt32)),
((20 : GoUInt32)),
((20 : GoUInt32)),
((20 : GoUInt32)),
((20 : GoUInt32)),
((20 : GoUInt32)),
((20 : GoUInt32)),
((20 : GoUInt32)),
((20 : GoUInt32)),
((21 : GoUInt32)),
((21 : GoUInt32)),
((21 : GoUInt32)),
((21 : GoUInt32)),
((21 : GoUInt32)),
((21 : GoUInt32)),
((21 : GoUInt32)),
((21 : GoUInt32)),
((21 : GoUInt32)),
((21 : GoUInt32)),
((21 : GoUInt32)),
((21 : GoUInt32)),
((21 : GoUInt32)),
((21 : GoUInt32)),
((21 : GoUInt32)),
((21 : GoUInt32)),
((22 : GoUInt32)),
((22 : GoUInt32)),
((22 : GoUInt32)),
((22 : GoUInt32)),
((22 : GoUInt32)),
((22 : GoUInt32)),
((22 : GoUInt32)),
((22 : GoUInt32)),
((22 : GoUInt32)),
((22 : GoUInt32)),
((22 : GoUInt32)),
((22 : GoUInt32)),
((22 : GoUInt32)),
((22 : GoUInt32)),
((22 : GoUInt32)),
((22 : GoUInt32)),
((23 : GoUInt32)),
((23 : GoUInt32)),
((23 : GoUInt32)),
((23 : GoUInt32)),
((23 : GoUInt32)),
((23 : GoUInt32)),
((23 : GoUInt32)),
((23 : GoUInt32)),
((23 : GoUInt32)),
((23 : GoUInt32)),
((23 : GoUInt32)),
((23 : GoUInt32)),
((23 : GoUInt32)),
((23 : GoUInt32)),
((23 : GoUInt32)),
((23 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((24 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((25 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((26 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((27 : GoUInt32)),
((28 : GoUInt32))) : GoArray<GoUInt32>));
var _offsetCodes : GoArray<GoUInt32> = ((new GoArray<GoUInt32>(
((0 : GoUInt32)),
((1 : GoUInt32)),
((2 : GoUInt32)),
((3 : GoUInt32)),
((4 : GoUInt32)),
((4 : GoUInt32)),
((5 : GoUInt32)),
((5 : GoUInt32)),
((6 : GoUInt32)),
((6 : GoUInt32)),
((6 : GoUInt32)),
((6 : GoUInt32)),
((7 : GoUInt32)),
((7 : GoUInt32)),
((7 : GoUInt32)),
((7 : GoUInt32)),
((8 : GoUInt32)),
((8 : GoUInt32)),
((8 : GoUInt32)),
((8 : GoUInt32)),
((8 : GoUInt32)),
((8 : GoUInt32)),
((8 : GoUInt32)),
((8 : GoUInt32)),
((9 : GoUInt32)),
((9 : GoUInt32)),
((9 : GoUInt32)),
((9 : GoUInt32)),
((9 : GoUInt32)),
((9 : GoUInt32)),
((9 : GoUInt32)),
((9 : GoUInt32)),
((10 : GoUInt32)),
((10 : GoUInt32)),
((10 : GoUInt32)),
((10 : GoUInt32)),
((10 : GoUInt32)),
((10 : GoUInt32)),
((10 : GoUInt32)),
((10 : GoUInt32)),
((10 : GoUInt32)),
((10 : GoUInt32)),
((10 : GoUInt32)),
((10 : GoUInt32)),
((10 : GoUInt32)),
((10 : GoUInt32)),
((10 : GoUInt32)),
((10 : GoUInt32)),
((11 : GoUInt32)),
((11 : GoUInt32)),
((11 : GoUInt32)),
((11 : GoUInt32)),
((11 : GoUInt32)),
((11 : GoUInt32)),
((11 : GoUInt32)),
((11 : GoUInt32)),
((11 : GoUInt32)),
((11 : GoUInt32)),
((11 : GoUInt32)),
((11 : GoUInt32)),
((11 : GoUInt32)),
((11 : GoUInt32)),
((11 : GoUInt32)),
((11 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((12 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((13 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((14 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32)),
((15 : GoUInt32))) : GoArray<GoUInt32>));
var _deflateTests : Slice<Ref<T_deflateTest>> = ((new Slice<Ref<T_deflateTest>>(
((new Ref<T_deflateTest>(((new Slice<GoUInt8>() : Slice<GoUInt8>)), ((0 : GoInt)), ((new Slice<GoUInt8>(((1 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateTest>)),
((new Ref<T_deflateTest>(((new Slice<GoUInt8>(((17 : GoUInt8))) : Slice<GoUInt8>)), ((-1 : GoInt)), ((new Slice<GoUInt8>(((18 : GoUInt8)), ((4 : GoUInt8)), ((4 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateTest>)),
((new Ref<T_deflateTest>(((new Slice<GoUInt8>(((17 : GoUInt8))) : Slice<GoUInt8>)), ((-1 : GoInt)), ((new Slice<GoUInt8>(((18 : GoUInt8)), ((4 : GoUInt8)), ((4 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateTest>)),
((new Ref<T_deflateTest>(((new Slice<GoUInt8>(((17 : GoUInt8))) : Slice<GoUInt8>)), ((4 : GoInt)), ((new Slice<GoUInt8>(((18 : GoUInt8)), ((4 : GoUInt8)), ((4 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateTest>)),
((new Ref<T_deflateTest>(((new Slice<GoUInt8>(((17 : GoUInt8))) : Slice<GoUInt8>)), ((0 : GoInt)), ((new Slice<GoUInt8>(
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((254 : GoUInt8)),
((255 : GoUInt8)),
((17 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateTest>)),
((new Ref<T_deflateTest>(((new Slice<GoUInt8>(((17 : GoUInt8)), ((18 : GoUInt8))) : Slice<GoUInt8>)), ((0 : GoInt)), ((new Slice<GoUInt8>(
((0 : GoUInt8)),
((2 : GoUInt8)),
((0 : GoUInt8)),
((253 : GoUInt8)),
((255 : GoUInt8)),
((17 : GoUInt8)),
((18 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateTest>)),
((new Ref<T_deflateTest>(((new Slice<GoUInt8>(((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8))) : Slice<GoUInt8>)), ((0 : GoInt)), ((new Slice<GoUInt8>(
((0 : GoUInt8)),
((8 : GoUInt8)),
((0 : GoUInt8)),
((247 : GoUInt8)),
((255 : GoUInt8)),
((17 : GoUInt8)),
((17 : GoUInt8)),
((17 : GoUInt8)),
((17 : GoUInt8)),
((17 : GoUInt8)),
((17 : GoUInt8)),
((17 : GoUInt8)),
((17 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateTest>)),
((new Ref<T_deflateTest>(((new Slice<GoUInt8>() : Slice<GoUInt8>)), ((2 : GoInt)), ((new Slice<GoUInt8>(((1 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateTest>)),
((new Ref<T_deflateTest>(((new Slice<GoUInt8>(((17 : GoUInt8))) : Slice<GoUInt8>)), ((2 : GoInt)), ((new Slice<GoUInt8>(((18 : GoUInt8)), ((4 : GoUInt8)), ((4 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateTest>)),
((new Ref<T_deflateTest>(((new Slice<GoUInt8>(((17 : GoUInt8)), ((18 : GoUInt8))) : Slice<GoUInt8>)), ((2 : GoInt)), ((new Slice<GoUInt8>(((18 : GoUInt8)), ((20 : GoUInt8)), ((2 : GoUInt8)), ((4 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateTest>)),
((new Ref<T_deflateTest>(((new Slice<GoUInt8>(((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8))) : Slice<GoUInt8>)), ((2 : GoInt)), ((new Slice<GoUInt8>(((18 : GoUInt8)), ((132 : GoUInt8)), ((2 : GoUInt8)), ((64 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateTest>)),
((new Ref<T_deflateTest>(((new Slice<GoUInt8>() : Slice<GoUInt8>)), ((9 : GoInt)), ((new Slice<GoUInt8>(((1 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateTest>)),
((new Ref<T_deflateTest>(((new Slice<GoUInt8>(((17 : GoUInt8))) : Slice<GoUInt8>)), ((9 : GoInt)), ((new Slice<GoUInt8>(((18 : GoUInt8)), ((4 : GoUInt8)), ((4 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateTest>)),
((new Ref<T_deflateTest>(((new Slice<GoUInt8>(((17 : GoUInt8)), ((18 : GoUInt8))) : Slice<GoUInt8>)), ((9 : GoInt)), ((new Slice<GoUInt8>(((18 : GoUInt8)), ((20 : GoUInt8)), ((2 : GoUInt8)), ((4 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateTest>)),
((new Ref<T_deflateTest>(((new Slice<GoUInt8>(((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8))) : Slice<GoUInt8>)), ((9 : GoInt)), ((new Slice<GoUInt8>(((18 : GoUInt8)), ((132 : GoUInt8)), ((2 : GoUInt8)), ((64 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateTest>))) : Slice<Ref<T_deflateTest>>));
var _deflateInflateTests : Slice<Ref<T_deflateInflateTest>> = ((new Slice<Ref<T_deflateInflateTest>>(((new Ref<T_deflateInflateTest>(((new Slice<GoUInt8>() : Slice<GoUInt8>))) : Ref<T_deflateInflateTest>)), ((new Ref<T_deflateInflateTest>(((new Slice<GoUInt8>(((17 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateInflateTest>)), ((new Ref<T_deflateInflateTest>(((new Slice<GoUInt8>(((17 : GoUInt8)), ((18 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateInflateTest>)), ((new Ref<T_deflateInflateTest>(((new Slice<GoUInt8>(((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateInflateTest>)), ((new Ref<T_deflateInflateTest>(((new Slice<GoUInt8>(
((17 : GoUInt8)),
((16 : GoUInt8)),
((19 : GoUInt8)),
((65 : GoUInt8)),
((33 : GoUInt8)),
((33 : GoUInt8)),
((65 : GoUInt8)),
((19 : GoUInt8)),
((135 : GoUInt8)),
((120 : GoUInt8)),
((19 : GoUInt8))) : Slice<GoUInt8>))) : Ref<T_deflateInflateTest>)), ((new Ref<T_deflateInflateTest>(_largeDataChunk()) : Ref<T_deflateInflateTest>))) : Slice<Ref<T_deflateInflateTest>>));
var _reverseBitsTests : Slice<Ref<T_reverseBitsTest>> = ((new Slice<Ref<T_reverseBitsTest>>(((new Ref<T_reverseBitsTest>(((1 : GoUInt16)), ((1 : GoUInt8)), ((1 : GoUInt16))) : Ref<T_reverseBitsTest>)), ((new Ref<T_reverseBitsTest>(((1 : GoUInt16)), ((2 : GoUInt8)), ((2 : GoUInt16))) : Ref<T_reverseBitsTest>)), ((new Ref<T_reverseBitsTest>(((1 : GoUInt16)), ((3 : GoUInt8)), ((4 : GoUInt16))) : Ref<T_reverseBitsTest>)), ((new Ref<T_reverseBitsTest>(((1 : GoUInt16)), ((4 : GoUInt8)), ((8 : GoUInt16))) : Ref<T_reverseBitsTest>)), ((new Ref<T_reverseBitsTest>(((1 : GoUInt16)), ((5 : GoUInt8)), ((16 : GoUInt16))) : Ref<T_reverseBitsTest>)), ((new Ref<T_reverseBitsTest>(((17 : GoUInt16)), ((5 : GoUInt8)), ((17 : GoUInt16))) : Ref<T_reverseBitsTest>)), ((new Ref<T_reverseBitsTest>(((257 : GoUInt16)), ((9 : GoUInt8)), ((257 : GoUInt16))) : Ref<T_reverseBitsTest>)), ((new Ref<T_reverseBitsTest>(((29 : GoUInt16)), ((5 : GoUInt8)), ((23 : GoUInt16))) : Ref<T_reverseBitsTest>))) : Slice<Ref<T_reverseBitsTest>>));
var _deflateInflateStringTests : Slice<T_deflateInflateStringTest> = ((new Slice<T_deflateInflateStringTest>(((new T_deflateInflateStringTest(((("../testdata/e.txt" : GoString))), ((("2.718281828..." : GoString))), ((new GoArray<GoInt>(
((100018 : GoInt)),
((50650 : GoInt)),
((50960 : GoInt)),
((51150 : GoInt)),
((50930 : GoInt)),
((50790 : GoInt)),
((50790 : GoInt)),
((50790 : GoInt)),
((50790 : GoInt)),
((50790 : GoInt)),
((43683 : GoInt))) : GoArray<GoInt>))) : T_deflateInflateStringTest)), ((new T_deflateInflateStringTest(((("../../testdata/Isaac.Newton-Opticks.txt" : GoString))), ((("Isaac.Newton-Opticks" : GoString))), ((new GoArray<GoInt>(
((567248 : GoInt)),
((218338 : GoInt)),
((198211 : GoInt)),
((193152 : GoInt)),
((181100 : GoInt)),
((175427 : GoInt)),
((175427 : GoInt)),
((173597 : GoInt)),
((173422 : GoInt)),
((173422 : GoInt)),
((325240 : GoInt))) : GoArray<GoInt>))) : T_deflateInflateStringTest))) : Slice<T_deflateInflateStringTest>));
var _errIO : stdgo.Error = stdgo.errors.Errors.new_(((("IO error" : GoString))));
var _update : Pointer<Bool> = stdgo.flag.Flag.bool(((("update" : GoString))), false, ((("update reference files" : GoString))));
var _writeBlockTests : Slice<T_huffTest> = ((new Slice<T_huffTest>(((({ _input : ((("testdata/huffman-null-max.in" : GoString))), _want : ((("testdata/huffman-null-max.%s.expect" : GoString))), _wantNoInput : ((("testdata/huffman-null-max.%s.expect-noinput" : GoString))), _tokens : ((new Slice<T_token>(
((0 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((0 : GoUInt32)),
((0 : GoUInt32))) : Slice<T_token>)) } : T_huffTest)) == null ? null : (({ _input : ((("testdata/huffman-null-max.in" : GoString))), _want : ((("testdata/huffman-null-max.%s.expect" : GoString))), _wantNoInput : ((("testdata/huffman-null-max.%s.expect-noinput" : GoString))), _tokens : ((new Slice<T_token>(
((0 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((0 : GoUInt32)),
((0 : GoUInt32))) : Slice<T_token>)) } : T_huffTest)).__copy__()), ((({ _input : ((("testdata/huffman-pi.in" : GoString))), _want : ((("testdata/huffman-pi.%s.expect" : GoString))), _wantNoInput : ((("testdata/huffman-pi.%s.expect-noinput" : GoString))), _tokens : ((new Slice<T_token>(
((51 : GoUInt32)),
((46 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((1077936254 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((1077936146 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((1077936199 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((1077936154 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((1077936306 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((1077936178 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((1077936361 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((1077936137 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((1077936398 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((1082130585 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((1082130994 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((1077936134 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((1077936615 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((1077936425 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((1077936330 : GoUInt32)),
((54 : GoUInt32)),
((1077936467 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((1077936585 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((1077936244 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((1082130432 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((1077936858 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((1077936522 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((1077936897 : GoUInt32)),
((1077936872 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((1077936867 : GoUInt32)),
((1077936743 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((1077936658 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((1077936448 : GoUInt32)),
((1077936427 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((1082131246 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((1077936981 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((1082131327 : GoUInt32)),
((57 : GoUInt32)),
((1077936442 : GoUInt32)),
((49 : GoUInt32)),
((1077936456 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((1077936522 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((1077936695 : GoUInt32)),
((54 : GoUInt32)),
((1082130724 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((1077936282 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((1077936672 : GoUInt32)),
((1082130780 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((1077936497 : GoUInt32)),
((1077936245 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((1077936724 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((1077936350 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((1077936447 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((1077936951 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((1077936397 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((1077936747 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((1077936949 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((1077936498 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((1082131486 : GoUInt32)),
((1077936367 : GoUInt32)),
((1077936779 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((1077937320 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((1082130953 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((1077936174 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((1077936593 : GoUInt32)),
((52 : GoUInt32)),
((1077937333 : GoUInt32)),
((1077937037 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((1077937064 : GoUInt32)),
((54 : GoUInt32)),
((1086325535 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((1077936226 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((1077937169 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((1077937271 : GoUInt32)),
((53 : GoUInt32)),
((1077937304 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((1077936649 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((1077937214 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((1077937227 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((1086325445 : GoUInt32)),
((55 : GoUInt32)),
((1077936598 : GoUInt32)),
((52 : GoUInt32)),
((1077937469 : GoUInt32)),
((1077937181 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((1077936557 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((1077936170 : GoUInt32)),
((52 : GoUInt32)),
((1077936542 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((1077936437 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((1077936581 : GoUInt32)),
((57 : GoUInt32)),
((1077936209 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((1077936620 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((1077936473 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((1077936394 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((1077936411 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((1077936686 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((1077937176 : GoUInt32)),
((52 : GoUInt32)),
((1077936411 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((1077937232 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((1077936868 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((1077937114 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((1082131539 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((1077937661 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((1077937375 : GoUInt32)),
((54 : GoUInt32)),
((1077937129 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((1077937182 : GoUInt32)),
((1077936791 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((1077937731 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((1077937327 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((1077937412 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((1077936219 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((1077937275 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((1077937639 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((1077936706 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((1077936702 : GoUInt32)),
((50 : GoUInt32)),
((1077936314 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((1077936213 : GoUInt32)),
((48 : GoUInt32)),
((1082130694 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((1077937127 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((1077937884 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((1077936243 : GoUInt32)),
((51 : GoUInt32)),
((1082131196 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((1077936829 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((1077937720 : GoUInt32)),
((51 : GoUInt32)),
((1077937829 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((1077937531 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((1077936791 : GoUInt32)),
((1077937268 : GoUInt32)),
((52 : GoUInt32)),
((1082132147 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((1077936613 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((1077936281 : GoUInt32)),
((1077937052 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((1077936574 : GoUInt32)),
((52 : GoUInt32)),
((1082130772 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((1077937547 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((1077936828 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((1077937196 : GoUInt32)),
((54 : GoUInt32)),
((1077937424 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((1077937720 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((1077936497 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((1077936385 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((1077937992 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((1077937831 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((1077936606 : GoUInt32)),
((1077936936 : GoUInt32)),
((57 : GoUInt32)),
((1077936173 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((1077936270 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((1077936431 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((1077937256 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((1077936840 : GoUInt32)),
((50 : GoUInt32)),
((1077937691 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((1077936921 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((1077937384 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((1077936767 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((1077936389 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((1077937077 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((1077936770 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((1077937177 : GoUInt32)),
((1077936250 : GoUInt32)),
((53 : GoUInt32)),
((1077937422 : GoUInt32)),
((52 : GoUInt32)),
((1082131813 : GoUInt32)),
((56 : GoUInt32)),
((1077937497 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((1077937531 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((1077937309 : GoUInt32)),
((1077936702 : GoUInt32)),
((55 : GoUInt32)),
((1077937754 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((1077936268 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((1077936218 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((1077937591 : GoUInt32)),
((55 : GoUInt32)),
((1077936146 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((1077936871 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((1077938206 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((1077937896 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((1077936370 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((1077937334 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((1077936442 : GoUInt32)),
((1077936139 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((1077936911 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((1077936961 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((1077937563 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((1077937266 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((1077936759 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((1077936223 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((1077938406 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((1077936472 : GoUInt32)),
((1082130947 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((1077936645 : GoUInt32)),
((1077936638 : GoUInt32)),
((1077936762 : GoUInt32)),
((1077936792 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((1086325910 : GoUInt32)),
((56 : GoUInt32)),
((1077937546 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((1077936874 : GoUInt32)),
((50 : GoUInt32)),
((1077937031 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((1077937435 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((1077937348 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((1082131027 : GoUInt32)),
((1077938193 : GoUInt32)),
((55 : GoUInt32)),
((1077938349 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((1077937246 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((1077938011 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((1077937275 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((1077937339 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((1077936190 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((1077937830 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((1077938416 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((1077936731 : GoUInt32)),
((1077936638 : GoUInt32)),
((53 : GoUInt32)),
((1077937471 : GoUInt32)),
((1077937256 : GoUInt32)),
((1077938177 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((1077938380 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((1082132382 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((1077938554 : GoUInt32)),
((56 : GoUInt32)),
((1077936731 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((1077937903 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((1077936436 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((1077936220 : GoUInt32)),
((1077937989 : GoUInt32)),
((1077938486 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((1077937534 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((1077937681 : GoUInt32)),
((53 : GoUInt32)),
((1077936713 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((1077938206 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((1077937661 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((1077937630 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((1077936188 : GoUInt32)),
((1077937443 : GoUInt32)),
((1082132710 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((1077937450 : GoUInt32)),
((51 : GoUInt32)),
((1077936900 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((1082132545 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((1077938354 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((1077937663 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((1077938017 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((1077938495 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((1082131097 : GoUInt32)),
((1077936965 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((1082131410 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((1077936772 : GoUInt32)),
((1077938038 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((1077938472 : GoUInt32)),
((1077937256 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((1077938364 : GoUInt32)),
((1082131869 : GoUInt32)),
((1082132353 : GoUInt32)),
((49 : GoUInt32)),
((1077937497 : GoUInt32)),
((55 : GoUInt32)),
((1077936923 : GoUInt32)),
((53 : GoUInt32)),
((1077938156 : GoUInt32)),
((1077937164 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((1082132444 : GoUInt32)),
((52 : GoUInt32)),
((1077938545 : GoUInt32)),
((1082131278 : GoUInt32)),
((1082131445 : GoUInt32)),
((56 : GoUInt32)),
((1082131757 : GoUInt32)),
((1082132615 : GoUInt32)),
((57 : GoUInt32)),
((1077936519 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((1077938382 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((1077937707 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((1086325161 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((1077936620 : GoUInt32)),
((1077937852 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((1077938470 : GoUInt32)),
((1077937257 : GoUInt32)),
((1077936411 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((1077938725 : GoUInt32)),
((1077936495 : GoUInt32)),
((1077937028 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((1077937242 : GoUInt32)),
((53 : GoUInt32)),
((1077938252 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((1077938373 : GoUInt32)),
((1077936376 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((1077937623 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((1077938143 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((1077937878 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((1082132094 : GoUInt32)),
((54 : GoUInt32)),
((1077937894 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((1077936164 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((1077938867 : GoUInt32)),
((1082131428 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((1077937362 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((1077937561 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((1077936532 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((1077936263 : GoUInt32)),
((48 : GoUInt32)),
((1077938027 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((1077938518 : GoUInt32)),
((1077938148 : GoUInt32)),
((1077937195 : GoUInt32)),
((1077936500 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((1077936448 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((1077937443 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((1077937937 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((1077938712 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((1077938355 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((1077938060 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((1077936692 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((1077939175 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((1077939316 : GoUInt32)),
((48 : GoUInt32)),
((1077937091 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((1077938986 : GoUInt32)),
((1077936402 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((1077937072 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((1082133490 : GoUInt32)),
((57 : GoUInt32)),
((1077939138 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((1077936961 : GoUInt32)),
((1077938069 : GoUInt32)),
((1077938863 : GoUInt32)),
((1077939298 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((1077938528 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((1077937531 : GoUInt32)),
((1077938500 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((1077936562 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((1077939046 : GoUInt32)),
((50 : GoUInt32)),
((1077936760 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((1082132603 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((1082132200 : GoUInt32)),
((57 : GoUInt32)),
((1082133336 : GoUInt32)),
((1077938395 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((1077936929 : GoUInt32)),
((53 : GoUInt32)),
((1077938340 : GoUInt32)),
((1077936449 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((1077936316 : GoUInt32)),
((1077939291 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((1077936689 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((1077938452 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((1077937011 : GoUInt32)),
((49 : GoUInt32)),
((1077937545 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((1077937739 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((1077936233 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((1077938042 : GoUInt32)),
((1077939546 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((1077936642 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((1077936540 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((1077939329 : GoUInt32)),
((1077936137 : GoUInt32)),
((1077936166 : GoUInt32)),
((1086326274 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((1077937625 : GoUInt32)),
((1082132611 : GoUInt32)),
((1077938474 : GoUInt32)),
((53 : GoUInt32)),
((1082133570 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((1077937669 : GoUInt32)),
((1077936237 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((1077937081 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((1077936591 : GoUInt32)),
((1077938618 : GoUInt32)),
((51 : GoUInt32)),
((1077936492 : GoUInt32)),
((1077937214 : GoUInt32)),
((1077938627 : GoUInt32)),
((56 : GoUInt32)),
((1082134021 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((1077936391 : GoUInt32)),
((53 : GoUInt32)),
((1077936901 : GoUInt32)),
((51 : GoUInt32)),
((1077936586 : GoUInt32)),
((57 : GoUInt32)),
((1077937179 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((1077938301 : GoUInt32)),
((52 : GoUInt32)),
((1077939384 : GoUInt32)),
((55 : GoUInt32)),
((1077937739 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((1077936357 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((1077937465 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((1077939145 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32))) : Slice<T_token>)) } : T_huffTest)) == null ? null : (({ _input : ((("testdata/huffman-pi.in" : GoString))), _want : ((("testdata/huffman-pi.%s.expect" : GoString))), _wantNoInput : ((("testdata/huffman-pi.%s.expect-noinput" : GoString))), _tokens : ((new Slice<T_token>(
((51 : GoUInt32)),
((46 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((1077936254 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((1077936146 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((1077936199 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((1077936154 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((1077936306 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((1077936178 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((1077936361 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((1077936137 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((1077936398 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((1082130585 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((1082130994 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((1077936134 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((1077936615 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((1077936425 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((1077936330 : GoUInt32)),
((54 : GoUInt32)),
((1077936467 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((1077936585 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((1077936244 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((1082130432 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((1077936858 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((1077936522 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((1077936897 : GoUInt32)),
((1077936872 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((1077936867 : GoUInt32)),
((1077936743 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((1077936658 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((1077936448 : GoUInt32)),
((1077936427 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((1082131246 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((1077936981 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((1082131327 : GoUInt32)),
((57 : GoUInt32)),
((1077936442 : GoUInt32)),
((49 : GoUInt32)),
((1077936456 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((1077936522 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((1077936695 : GoUInt32)),
((54 : GoUInt32)),
((1082130724 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((1077936282 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((1077936672 : GoUInt32)),
((1082130780 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((1077936497 : GoUInt32)),
((1077936245 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((1077936724 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((1077936350 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((1077936447 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((1077936951 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((1077936397 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((1077936747 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((1077936949 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((1077936498 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((1082131486 : GoUInt32)),
((1077936367 : GoUInt32)),
((1077936779 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((1077937320 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((1082130953 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((1077936174 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((1077936593 : GoUInt32)),
((52 : GoUInt32)),
((1077937333 : GoUInt32)),
((1077937037 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((1077937064 : GoUInt32)),
((54 : GoUInt32)),
((1086325535 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((1077936226 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((1077937169 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((1077937271 : GoUInt32)),
((53 : GoUInt32)),
((1077937304 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((1077936649 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((1077937214 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((1077937227 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((1086325445 : GoUInt32)),
((55 : GoUInt32)),
((1077936598 : GoUInt32)),
((52 : GoUInt32)),
((1077937469 : GoUInt32)),
((1077937181 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((1077936557 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((1077936170 : GoUInt32)),
((52 : GoUInt32)),
((1077936542 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((1077936437 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((1077936581 : GoUInt32)),
((57 : GoUInt32)),
((1077936209 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((1077936620 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((1077936473 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((1077936394 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((1077936411 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((1077936686 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((1077937176 : GoUInt32)),
((52 : GoUInt32)),
((1077936411 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((1077937232 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((1077936868 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((1077937114 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((1082131539 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((1077937661 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((1077937375 : GoUInt32)),
((54 : GoUInt32)),
((1077937129 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((1077937182 : GoUInt32)),
((1077936791 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((1077937731 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((1077937327 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((1077937412 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((1077936219 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((1077937275 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((1077937639 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((1077936706 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((1077936702 : GoUInt32)),
((50 : GoUInt32)),
((1077936314 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((1077936213 : GoUInt32)),
((48 : GoUInt32)),
((1082130694 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((1077937127 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((1077937884 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((1077936243 : GoUInt32)),
((51 : GoUInt32)),
((1082131196 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((1077936829 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((1077937720 : GoUInt32)),
((51 : GoUInt32)),
((1077937829 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((1077937531 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((1077936791 : GoUInt32)),
((1077937268 : GoUInt32)),
((52 : GoUInt32)),
((1082132147 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((1077936613 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((1077936281 : GoUInt32)),
((1077937052 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((1077936574 : GoUInt32)),
((52 : GoUInt32)),
((1082130772 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((1077937547 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((1077936828 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((1077937196 : GoUInt32)),
((54 : GoUInt32)),
((1077937424 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((1077937720 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((1077936497 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((1077936385 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((1077937992 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((1077937831 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((1077936606 : GoUInt32)),
((1077936936 : GoUInt32)),
((57 : GoUInt32)),
((1077936173 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((1077936270 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((1077936431 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((1077937256 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((1077936840 : GoUInt32)),
((50 : GoUInt32)),
((1077937691 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((1077936921 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((1077937384 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((1077936767 : GoUInt32)),
((51 : GoUInt32)),
((48 : GoUInt32)),
((1077936389 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((1077937077 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((1077936770 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((1077937177 : GoUInt32)),
((1077936250 : GoUInt32)),
((53 : GoUInt32)),
((1077937422 : GoUInt32)),
((52 : GoUInt32)),
((1082131813 : GoUInt32)),
((56 : GoUInt32)),
((1077937497 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((1077937531 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((1077937309 : GoUInt32)),
((1077936702 : GoUInt32)),
((55 : GoUInt32)),
((1077937754 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((1077936268 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((1077936218 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((1077937591 : GoUInt32)),
((55 : GoUInt32)),
((1077936146 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((1077936871 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((1077938206 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((1077937896 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((1077936370 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((1077937334 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((1077936442 : GoUInt32)),
((1077936139 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((1077936911 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((1077936961 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((1077937563 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((1077937266 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((1077936759 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((1077936223 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((1077938406 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((1077936472 : GoUInt32)),
((1082130947 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((1077936645 : GoUInt32)),
((1077936638 : GoUInt32)),
((1077936762 : GoUInt32)),
((1077936792 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((1086325910 : GoUInt32)),
((56 : GoUInt32)),
((1077937546 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((1077936874 : GoUInt32)),
((50 : GoUInt32)),
((1077937031 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((1077937435 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((1077937348 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((1082131027 : GoUInt32)),
((1077938193 : GoUInt32)),
((55 : GoUInt32)),
((1077938349 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((1077937246 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((1077938011 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((1077937275 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((1077937339 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((1077936190 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((1077937830 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((1077938416 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((1077936731 : GoUInt32)),
((1077936638 : GoUInt32)),
((53 : GoUInt32)),
((1077937471 : GoUInt32)),
((1077937256 : GoUInt32)),
((1077938177 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((1077938380 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((1082132382 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((1077938554 : GoUInt32)),
((56 : GoUInt32)),
((1077936731 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((1077937903 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((1077936436 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((1077936220 : GoUInt32)),
((1077937989 : GoUInt32)),
((1077938486 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((57 : GoUInt32)),
((1077937534 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((1077937681 : GoUInt32)),
((53 : GoUInt32)),
((1077936713 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((1077938206 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((1077937661 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((1077937630 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((1077936188 : GoUInt32)),
((1077937443 : GoUInt32)),
((1082132710 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((1077937450 : GoUInt32)),
((51 : GoUInt32)),
((1077936900 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((1082132545 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((1077938354 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((1077937663 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((1077938017 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((1077938495 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((1082131097 : GoUInt32)),
((1077936965 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((55 : GoUInt32)),
((1082131410 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((1077936772 : GoUInt32)),
((1077938038 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((1077938472 : GoUInt32)),
((1077937256 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((54 : GoUInt32)),
((1077938364 : GoUInt32)),
((1082131869 : GoUInt32)),
((1082132353 : GoUInt32)),
((49 : GoUInt32)),
((1077937497 : GoUInt32)),
((55 : GoUInt32)),
((1077936923 : GoUInt32)),
((53 : GoUInt32)),
((1077938156 : GoUInt32)),
((1077937164 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((1082132444 : GoUInt32)),
((52 : GoUInt32)),
((1077938545 : GoUInt32)),
((1082131278 : GoUInt32)),
((1082131445 : GoUInt32)),
((56 : GoUInt32)),
((1082131757 : GoUInt32)),
((1082132615 : GoUInt32)),
((57 : GoUInt32)),
((1077936519 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((1077938382 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((55 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((1077937707 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((1086325161 : GoUInt32)),
((57 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((1077936620 : GoUInt32)),
((1077937852 : GoUInt32)),
((57 : GoUInt32)),
((53 : GoUInt32)),
((1077938470 : GoUInt32)),
((1077937257 : GoUInt32)),
((1077936411 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((1077938725 : GoUInt32)),
((1077936495 : GoUInt32)),
((1077937028 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((1077937242 : GoUInt32)),
((53 : GoUInt32)),
((1077938252 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((1077938373 : GoUInt32)),
((1077936376 : GoUInt32)),
((57 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((1077937623 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((1077938143 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((1077937878 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((1082132094 : GoUInt32)),
((54 : GoUInt32)),
((1077937894 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((1077936164 : GoUInt32)),
((53 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((53 : GoUInt32)),
((1077938867 : GoUInt32)),
((1082131428 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((57 : GoUInt32)),
((1077937362 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((51 : GoUInt32)),
((1077937561 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((54 : GoUInt32)),
((48 : GoUInt32)),
((1077936532 : GoUInt32)),
((50 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((1077936263 : GoUInt32)),
((48 : GoUInt32)),
((1077938027 : GoUInt32)),
((56 : GoUInt32)),
((54 : GoUInt32)),
((51 : GoUInt32)),
((1077938518 : GoUInt32)),
((1077938148 : GoUInt32)),
((1077937195 : GoUInt32)),
((1077936500 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((1077936448 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((1077937443 : GoUInt32)),
((53 : GoUInt32)),
((56 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((1077937937 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((52 : GoUInt32)),
((1077938712 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((48 : GoUInt32)),
((1077938355 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((1077938060 : GoUInt32)),
((55 : GoUInt32)),
((48 : GoUInt32)),
((1077936692 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((1077939175 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((1077939316 : GoUInt32)),
((48 : GoUInt32)),
((1077937091 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((1077938986 : GoUInt32)),
((1077936402 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((1077937072 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((1082133490 : GoUInt32)),
((57 : GoUInt32)),
((1077939138 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((1077936961 : GoUInt32)),
((1077938069 : GoUInt32)),
((1077938863 : GoUInt32)),
((1077939298 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((1077938528 : GoUInt32)),
((50 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((1077937531 : GoUInt32)),
((1077938500 : GoUInt32)),
((57 : GoUInt32)),
((50 : GoUInt32)),
((1077936562 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((54 : GoUInt32)),
((1077939046 : GoUInt32)),
((50 : GoUInt32)),
((1077936760 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((1082132603 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((52 : GoUInt32)),
((1082132200 : GoUInt32)),
((57 : GoUInt32)),
((1082133336 : GoUInt32)),
((1077938395 : GoUInt32)),
((55 : GoUInt32)),
((50 : GoUInt32)),
((50 : GoUInt32)),
((1077936929 : GoUInt32)),
((53 : GoUInt32)),
((1077938340 : GoUInt32)),
((1077936449 : GoUInt32)),
((57 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((1077936316 : GoUInt32)),
((1077939291 : GoUInt32)),
((53 : GoUInt32)),
((50 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((1077936689 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((50 : GoUInt32)),
((1077938452 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((1077937011 : GoUInt32)),
((49 : GoUInt32)),
((1077937545 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((57 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((55 : GoUInt32)),
((1077937739 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((51 : GoUInt32)),
((1077936233 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((1077938042 : GoUInt32)),
((1077939546 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((52 : GoUInt32)),
((50 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((1077936642 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((1077936540 : GoUInt32)),
((49 : GoUInt32)),
((49 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((1077939329 : GoUInt32)),
((1077936137 : GoUInt32)),
((1077936166 : GoUInt32)),
((1086326274 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((54 : GoUInt32)),
((1077937625 : GoUInt32)),
((1082132611 : GoUInt32)),
((1077938474 : GoUInt32)),
((53 : GoUInt32)),
((1082133570 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((49 : GoUInt32)),
((55 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((51 : GoUInt32)),
((55 : GoUInt32)),
((1077937669 : GoUInt32)),
((1077936237 : GoUInt32)),
((49 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((48 : GoUInt32)),
((56 : GoUInt32)),
((56 : GoUInt32)),
((1077937081 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((56 : GoUInt32)),
((1077936591 : GoUInt32)),
((1077938618 : GoUInt32)),
((51 : GoUInt32)),
((1077936492 : GoUInt32)),
((1077937214 : GoUInt32)),
((1077938627 : GoUInt32)),
((56 : GoUInt32)),
((1082134021 : GoUInt32)),
((51 : GoUInt32)),
((50 : GoUInt32)),
((1077936391 : GoUInt32)),
((53 : GoUInt32)),
((1077936901 : GoUInt32)),
((51 : GoUInt32)),
((1077936586 : GoUInt32)),
((57 : GoUInt32)),
((1077937179 : GoUInt32)),
((57 : GoUInt32)),
((56 : GoUInt32)),
((1077938301 : GoUInt32)),
((52 : GoUInt32)),
((1077939384 : GoUInt32)),
((55 : GoUInt32)),
((1077937739 : GoUInt32)),
((48 : GoUInt32)),
((55 : GoUInt32)),
((1077936357 : GoUInt32)),
((52 : GoUInt32)),
((56 : GoUInt32)),
((49 : GoUInt32)),
((52 : GoUInt32)),
((49 : GoUInt32)),
((1077937465 : GoUInt32)),
((56 : GoUInt32)),
((53 : GoUInt32)),
((57 : GoUInt32)),
((52 : GoUInt32)),
((54 : GoUInt32)),
((49 : GoUInt32)),
((1077939145 : GoUInt32)),
((56 : GoUInt32)),
((48 : GoUInt32))) : Slice<T_token>)) } : T_huffTest)).__copy__()), ((({ _input : ((("testdata/huffman-rand-1k.in" : GoString))), _want : ((("testdata/huffman-rand-1k.%s.expect" : GoString))), _wantNoInput : ((("testdata/huffman-rand-1k.%s.expect-noinput" : GoString))), _tokens : ((new Slice<T_token>(
((248 : GoUInt32)),
((139 : GoUInt32)),
((150 : GoUInt32)),
((118 : GoUInt32)),
((72 : GoUInt32)),
((13 : GoUInt32)),
((133 : GoUInt32)),
((148 : GoUInt32)),
((37 : GoUInt32)),
((128 : GoUInt32)),
((175 : GoUInt32)),
((194 : GoUInt32)),
((254 : GoUInt32)),
((141 : GoUInt32)),
((232 : GoUInt32)),
((32 : GoUInt32)),
((235 : GoUInt32)),
((23 : GoUInt32)),
((134 : GoUInt32)),
((201 : GoUInt32)),
((183 : GoUInt32)),
((197 : GoUInt32)),
((222 : GoUInt32)),
((6 : GoUInt32)),
((234 : GoUInt32)),
((125 : GoUInt32)),
((24 : GoUInt32)),
((139 : GoUInt32)),
((231 : GoUInt32)),
((62 : GoUInt32)),
((7 : GoUInt32)),
((218 : GoUInt32)),
((223 : GoUInt32)),
((255 : GoUInt32)),
((108 : GoUInt32)),
((115 : GoUInt32)),
((222 : GoUInt32)),
((204 : GoUInt32)),
((231 : GoUInt32)),
((109 : GoUInt32)),
((141 : GoUInt32)),
((4 : GoUInt32)),
((25 : GoUInt32)),
((73 : GoUInt32)),
((127 : GoUInt32)),
((71 : GoUInt32)),
((31 : GoUInt32)),
((72 : GoUInt32)),
((21 : GoUInt32)),
((176 : GoUInt32)),
((232 : GoUInt32)),
((158 : GoUInt32)),
((242 : GoUInt32)),
((49 : GoUInt32)),
((89 : GoUInt32)),
((222 : GoUInt32)),
((52 : GoUInt32)),
((180 : GoUInt32)),
((91 : GoUInt32)),
((229 : GoUInt32)),
((224 : GoUInt32)),
((9 : GoUInt32)),
((17 : GoUInt32)),
((48 : GoUInt32)),
((194 : GoUInt32)),
((136 : GoUInt32)),
((91 : GoUInt32)),
((124 : GoUInt32)),
((93 : GoUInt32)),
((20 : GoUInt32)),
((19 : GoUInt32)),
((111 : GoUInt32)),
((35 : GoUInt32)),
((169 : GoUInt32)),
((13 : GoUInt32)),
((188 : GoUInt32)),
((45 : GoUInt32)),
((35 : GoUInt32)),
((190 : GoUInt32)),
((217 : GoUInt32)),
((237 : GoUInt32)),
((117 : GoUInt32)),
((4 : GoUInt32)),
((108 : GoUInt32)),
((153 : GoUInt32)),
((223 : GoUInt32)),
((253 : GoUInt32)),
((112 : GoUInt32)),
((102 : GoUInt32)),
((230 : GoUInt32)),
((238 : GoUInt32)),
((217 : GoUInt32)),
((177 : GoUInt32)),
((158 : GoUInt32)),
((110 : GoUInt32)),
((131 : GoUInt32)),
((89 : GoUInt32)),
((213 : GoUInt32)),
((212 : GoUInt32)),
((128 : GoUInt32)),
((89 : GoUInt32)),
((152 : GoUInt32)),
((119 : GoUInt32)),
((137 : GoUInt32)),
((67 : GoUInt32)),
((56 : GoUInt32)),
((201 : GoUInt32)),
((175 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((154 : GoUInt32)),
((32 : GoUInt32)),
((27 : GoUInt32)),
((70 : GoUInt32)),
((61 : GoUInt32)),
((103 : GoUInt32)),
((110 : GoUInt32)),
((215 : GoUInt32)),
((114 : GoUInt32)),
((158 : GoUInt32)),
((78 : GoUInt32)),
((33 : GoUInt32)),
((79 : GoUInt32)),
((198 : GoUInt32)),
((224 : GoUInt32)),
((212 : GoUInt32)),
((123 : GoUInt32)),
((4 : GoUInt32)),
((141 : GoUInt32)),
((165 : GoUInt32)),
((3 : GoUInt32)),
((246 : GoUInt32)),
((5 : GoUInt32)),
((155 : GoUInt32)),
((107 : GoUInt32)),
((220 : GoUInt32)),
((42 : GoUInt32)),
((147 : GoUInt32)),
((119 : GoUInt32)),
((40 : GoUInt32)),
((253 : GoUInt32)),
((180 : GoUInt32)),
((98 : GoUInt32)),
((218 : GoUInt32)),
((32 : GoUInt32)),
((231 : GoUInt32)),
((31 : GoUInt32)),
((171 : GoUInt32)),
((107 : GoUInt32)),
((81 : GoUInt32)),
((67 : GoUInt32)),
((57 : GoUInt32)),
((47 : GoUInt32)),
((160 : GoUInt32)),
((146 : GoUInt32)),
((1 : GoUInt32)),
((108 : GoUInt32)),
((117 : GoUInt32)),
((62 : GoUInt32)),
((244 : GoUInt32)),
((53 : GoUInt32)),
((253 : GoUInt32)),
((67 : GoUInt32)),
((46 : GoUInt32)),
((247 : GoUInt32)),
((164 : GoUInt32)),
((117 : GoUInt32)),
((218 : GoUInt32)),
((234 : GoUInt32)),
((155 : GoUInt32)),
((10 : GoUInt32)),
((100 : GoUInt32)),
((11 : GoUInt32)),
((224 : GoUInt32)),
((35 : GoUInt32)),
((41 : GoUInt32)),
((189 : GoUInt32)),
((247 : GoUInt32)),
((231 : GoUInt32)),
((131 : GoUInt32)),
((60 : GoUInt32)),
((251 : GoUInt32)),
((223 : GoUInt32)),
((179 : GoUInt32)),
((174 : GoUInt32)),
((79 : GoUInt32)),
((164 : GoUInt32)),
((71 : GoUInt32)),
((85 : GoUInt32)),
((153 : GoUInt32)),
((222 : GoUInt32)),
((47 : GoUInt32)),
((150 : GoUInt32)),
((110 : GoUInt32)),
((28 : GoUInt32)),
((67 : GoUInt32)),
((76 : GoUInt32)),
((135 : GoUInt32)),
((226 : GoUInt32)),
((124 : GoUInt32)),
((217 : GoUInt32)),
((95 : GoUInt32)),
((76 : GoUInt32)),
((124 : GoUInt32)),
((232 : GoUInt32)),
((144 : GoUInt32)),
((3 : GoUInt32)),
((219 : GoUInt32)),
((48 : GoUInt32)),
((149 : GoUInt32)),
((214 : GoUInt32)),
((34 : GoUInt32)),
((12 : GoUInt32)),
((71 : GoUInt32)),
((184 : GoUInt32)),
((77 : GoUInt32)),
((107 : GoUInt32)),
((189 : GoUInt32)),
((36 : GoUInt32)),
((17 : GoUInt32)),
((171 : GoUInt32)),
((44 : GoUInt32)),
((215 : GoUInt32)),
((190 : GoUInt32)),
((110 : GoUInt32)),
((122 : GoUInt32)),
((214 : GoUInt32)),
((8 : GoUInt32)),
((163 : GoUInt32)),
((152 : GoUInt32)),
((216 : GoUInt32)),
((221 : GoUInt32)),
((21 : GoUInt32)),
((106 : GoUInt32)),
((250 : GoUInt32)),
((147 : GoUInt32)),
((48 : GoUInt32)),
((1 : GoUInt32)),
((37 : GoUInt32)),
((29 : GoUInt32)),
((162 : GoUInt32)),
((116 : GoUInt32)),
((134 : GoUInt32)),
((75 : GoUInt32)),
((106 : GoUInt32)),
((149 : GoUInt32)),
((232 : GoUInt32)),
((225 : GoUInt32)),
((78 : GoUInt32)),
((14 : GoUInt32)),
((118 : GoUInt32)),
((185 : GoUInt32)),
((73 : GoUInt32)),
((169 : GoUInt32)),
((95 : GoUInt32)),
((160 : GoUInt32)),
((166 : GoUInt32)),
((99 : GoUInt32)),
((60 : GoUInt32)),
((126 : GoUInt32)),
((126 : GoUInt32)),
((32 : GoUInt32)),
((19 : GoUInt32)),
((79 : GoUInt32)),
((187 : GoUInt32)),
((102 : GoUInt32)),
((146 : GoUInt32)),
((184 : GoUInt32)),
((46 : GoUInt32)),
((164 : GoUInt32)),
((250 : GoUInt32)),
((72 : GoUInt32)),
((203 : GoUInt32)),
((174 : GoUInt32)),
((185 : GoUInt32)),
((60 : GoUInt32)),
((175 : GoUInt32)),
((211 : GoUInt32)),
((31 : GoUInt32)),
((225 : GoUInt32)),
((213 : GoUInt32)),
((141 : GoUInt32)),
((66 : GoUInt32)),
((109 : GoUInt32)),
((240 : GoUInt32)),
((252 : GoUInt32)),
((140 : GoUInt32)),
((12 : GoUInt32)),
((0 : GoUInt32)),
((222 : GoUInt32)),
((64 : GoUInt32)),
((171 : GoUInt32)),
((139 : GoUInt32)),
((71 : GoUInt32)),
((151 : GoUInt32)),
((78 : GoUInt32)),
((168 : GoUInt32)),
((207 : GoUInt32)),
((142 : GoUInt32)),
((219 : GoUInt32)),
((166 : GoUInt32)),
((139 : GoUInt32)),
((32 : GoUInt32)),
((9 : GoUInt32)),
((132 : GoUInt32)),
((122 : GoUInt32)),
((102 : GoUInt32)),
((229 : GoUInt32)),
((152 : GoUInt32)),
((41 : GoUInt32)),
((2 : GoUInt32)),
((149 : GoUInt32)),
((230 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((96 : GoUInt32)),
((3 : GoUInt32)),
((227 : GoUInt32)),
((154 : GoUInt32)),
((30 : GoUInt32)),
((84 : GoUInt32)),
((232 : GoUInt32)),
((99 : GoUInt32)),
((128 : GoUInt32)),
((72 : GoUInt32)),
((156 : GoUInt32)),
((231 : GoUInt32)),
((99 : GoUInt32)),
((51 : GoUInt32)),
((110 : GoUInt32)),
((160 : GoUInt32)),
((101 : GoUInt32)),
((131 : GoUInt32)),
((250 : GoUInt32)),
((198 : GoUInt32)),
((186 : GoUInt32)),
((122 : GoUInt32)),
((67 : GoUInt32)),
((113 : GoUInt32)),
((5 : GoUInt32)),
((245 : GoUInt32)),
((104 : GoUInt32)),
((105 : GoUInt32)),
((133 : GoUInt32)),
((156 : GoUInt32)),
((186 : GoUInt32)),
((69 : GoUInt32)),
((205 : GoUInt32)),
((107 : GoUInt32)),
((11 : GoUInt32)),
((25 : GoUInt32)),
((209 : GoUInt32)),
((187 : GoUInt32)),
((127 : GoUInt32)),
((112 : GoUInt32)),
((133 : GoUInt32)),
((146 : GoUInt32)),
((209 : GoUInt32)),
((180 : GoUInt32)),
((100 : GoUInt32)),
((130 : GoUInt32)),
((177 : GoUInt32)),
((228 : GoUInt32)),
((98 : GoUInt32)),
((197 : GoUInt32)),
((60 : GoUInt32)),
((70 : GoUInt32)),
((31 : GoUInt32)),
((146 : GoUInt32)),
((49 : GoUInt32)),
((28 : GoUInt32)),
((78 : GoUInt32)),
((65 : GoUInt32)),
((119 : GoUInt32)),
((247 : GoUInt32)),
((231 : GoUInt32)),
((135 : GoUInt32)),
((162 : GoUInt32)),
((15 : GoUInt32)),
((110 : GoUInt32)),
((232 : GoUInt32)),
((146 : GoUInt32)),
((3 : GoUInt32)),
((107 : GoUInt32)),
((10 : GoUInt32)),
((231 : GoUInt32)),
((169 : GoUInt32)),
((59 : GoUInt32)),
((17 : GoUInt32)),
((218 : GoUInt32)),
((102 : GoUInt32)),
((138 : GoUInt32)),
((41 : GoUInt32)),
((218 : GoUInt32)),
((121 : GoUInt32)),
((225 : GoUInt32)),
((100 : GoUInt32)),
((141 : GoUInt32)),
((227 : GoUInt32)),
((84 : GoUInt32)),
((212 : GoUInt32)),
((245 : GoUInt32)),
((239 : GoUInt32)),
((100 : GoUInt32)),
((135 : GoUInt32)),
((59 : GoUInt32)),
((244 : GoUInt32)),
((194 : GoUInt32)),
((244 : GoUInt32)),
((113 : GoUInt32)),
((19 : GoUInt32)),
((169 : GoUInt32)),
((233 : GoUInt32)),
((224 : GoUInt32)),
((162 : GoUInt32)),
((6 : GoUInt32)),
((20 : GoUInt32)),
((171 : GoUInt32)),
((93 : GoUInt32)),
((167 : GoUInt32)),
((150 : GoUInt32)),
((0 : GoUInt32)),
((214 : GoUInt32)),
((195 : GoUInt32)),
((204 : GoUInt32)),
((87 : GoUInt32)),
((237 : GoUInt32)),
((57 : GoUInt32)),
((106 : GoUInt32)),
((37 : GoUInt32)),
((205 : GoUInt32)),
((118 : GoUInt32)),
((234 : GoUInt32)),
((186 : GoUInt32)),
((58 : GoUInt32)),
((242 : GoUInt32)),
((161 : GoUInt32)),
((149 : GoUInt32)),
((93 : GoUInt32)),
((229 : GoUInt32)),
((113 : GoUInt32)),
((207 : GoUInt32)),
((156 : GoUInt32)),
((98 : GoUInt32)),
((158 : GoUInt32)),
((106 : GoUInt32)),
((250 : GoUInt32)),
((213 : GoUInt32)),
((49 : GoUInt32)),
((209 : GoUInt32)),
((168 : GoUInt32)),
((102 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((170 : GoUInt32)),
((81 : GoUInt32)),
((23 : GoUInt32)),
((19 : GoUInt32)),
((130 : GoUInt32)),
((153 : GoUInt32)),
((200 : GoUInt32)),
((20 : GoUInt32)),
((96 : GoUInt32)),
((159 : GoUInt32)),
((77 : GoUInt32)),
((50 : GoUInt32)),
((109 : GoUInt32)),
((218 : GoUInt32)),
((25 : GoUInt32)),
((38 : GoUInt32)),
((33 : GoUInt32)),
((220 : GoUInt32)),
((126 : GoUInt32)),
((46 : GoUInt32)),
((37 : GoUInt32)),
((103 : GoUInt32)),
((114 : GoUInt32)),
((202 : GoUInt32)),
((15 : GoUInt32)),
((146 : GoUInt32)),
((205 : GoUInt32)),
((246 : GoUInt32)),
((214 : GoUInt32)),
((203 : GoUInt32)),
((151 : GoUInt32)),
((138 : GoUInt32)),
((51 : GoUInt32)),
((88 : GoUInt32)),
((115 : GoUInt32)),
((112 : GoUInt32)),
((145 : GoUInt32)),
((29 : GoUInt32)),
((191 : GoUInt32)),
((40 : GoUInt32)),
((35 : GoUInt32)),
((163 : GoUInt32)),
((12 : GoUInt32)),
((241 : GoUInt32)),
((131 : GoUInt32)),
((195 : GoUInt32)),
((200 : GoUInt32)),
((86 : GoUInt32)),
((119 : GoUInt32)),
((104 : GoUInt32)),
((227 : GoUInt32)),
((130 : GoUInt32)),
((186 : GoUInt32)),
((185 : GoUInt32)),
((87 : GoUInt32)),
((86 : GoUInt32)),
((87 : GoUInt32)),
((156 : GoUInt32)),
((195 : GoUInt32)),
((214 : GoUInt32)),
((20 : GoUInt32)),
((5 : GoUInt32)),
((60 : GoUInt32)),
((177 : GoUInt32)),
((175 : GoUInt32)),
((147 : GoUInt32)),
((200 : GoUInt32)),
((138 : GoUInt32)),
((87 : GoUInt32)),
((127 : GoUInt32)),
((83 : GoUInt32)),
((250 : GoUInt32)),
((47 : GoUInt32)),
((170 : GoUInt32)),
((110 : GoUInt32)),
((102 : GoUInt32)),
((131 : GoUInt32)),
((250 : GoUInt32)),
((51 : GoUInt32)),
((209 : GoUInt32)),
((33 : GoUInt32)),
((171 : GoUInt32)),
((27 : GoUInt32)),
((113 : GoUInt32)),
((180 : GoUInt32)),
((124 : GoUInt32)),
((218 : GoUInt32)),
((253 : GoUInt32)),
((251 : GoUInt32)),
((127 : GoUInt32)),
((32 : GoUInt32)),
((171 : GoUInt32)),
((94 : GoUInt32)),
((213 : GoUInt32)),
((202 : GoUInt32)),
((253 : GoUInt32)),
((221 : GoUInt32)),
((224 : GoUInt32)),
((238 : GoUInt32)),
((218 : GoUInt32)),
((186 : GoUInt32)),
((168 : GoUInt32)),
((39 : GoUInt32)),
((153 : GoUInt32)),
((151 : GoUInt32)),
((105 : GoUInt32)),
((193 : GoUInt32)),
((60 : GoUInt32)),
((130 : GoUInt32)),
((140 : GoUInt32)),
((10 : GoUInt32)),
((92 : GoUInt32)),
((45 : GoUInt32)),
((91 : GoUInt32)),
((136 : GoUInt32)),
((62 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((134 : GoUInt32)),
((55 : GoUInt32)),
((70 : GoUInt32)),
((121 : GoUInt32)),
((225 : GoUInt32)),
((170 : GoUInt32)),
((25 : GoUInt32)),
((251 : GoUInt32)),
((170 : GoUInt32)),
((222 : GoUInt32)),
((21 : GoUInt32)),
((9 : GoUInt32)),
((13 : GoUInt32)),
((26 : GoUInt32)),
((87 : GoUInt32)),
((255 : GoUInt32)),
((181 : GoUInt32)),
((15 : GoUInt32)),
((243 : GoUInt32)),
((43 : GoUInt32)),
((90 : GoUInt32)),
((106 : GoUInt32)),
((77 : GoUInt32)),
((25 : GoUInt32)),
((119 : GoUInt32)),
((113 : GoUInt32)),
((69 : GoUInt32)),
((223 : GoUInt32)),
((79 : GoUInt32)),
((179 : GoUInt32)),
((236 : GoUInt32)),
((241 : GoUInt32)),
((235 : GoUInt32)),
((24 : GoUInt32)),
((83 : GoUInt32)),
((62 : GoUInt32)),
((59 : GoUInt32)),
((71 : GoUInt32)),
((8 : GoUInt32)),
((154 : GoUInt32)),
((115 : GoUInt32)),
((160 : GoUInt32)),
((92 : GoUInt32)),
((140 : GoUInt32)),
((95 : GoUInt32)),
((235 : GoUInt32)),
((15 : GoUInt32)),
((58 : GoUInt32)),
((194 : GoUInt32)),
((67 : GoUInt32)),
((103 : GoUInt32)),
((180 : GoUInt32)),
((102 : GoUInt32)),
((103 : GoUInt32)),
((128 : GoUInt32)),
((88 : GoUInt32)),
((14 : GoUInt32)),
((193 : GoUInt32)),
((236 : GoUInt32)),
((64 : GoUInt32)),
((212 : GoUInt32)),
((34 : GoUInt32)),
((148 : GoUInt32)),
((202 : GoUInt32)),
((249 : GoUInt32)),
((232 : GoUInt32)),
((146 : GoUInt32)),
((228 : GoUInt32)),
((105 : GoUInt32)),
((56 : GoUInt32)),
((190 : GoUInt32)),
((103 : GoUInt32)),
((100 : GoUInt32)),
((202 : GoUInt32)),
((80 : GoUInt32)),
((199 : GoUInt32)),
((6 : GoUInt32)),
((103 : GoUInt32)),
((66 : GoUInt32)),
((110 : GoUInt32)),
((163 : GoUInt32)),
((240 : GoUInt32)),
((183 : GoUInt32)),
((108 : GoUInt32)),
((242 : GoUInt32)),
((232 : GoUInt32)),
((95 : GoUInt32)),
((177 : GoUInt32)),
((175 : GoUInt32)),
((231 : GoUInt32)),
((219 : GoUInt32)),
((187 : GoUInt32)),
((119 : GoUInt32)),
((181 : GoUInt32)),
((248 : GoUInt32)),
((203 : GoUInt32)),
((8 : GoUInt32)),
((196 : GoUInt32)),
((117 : GoUInt32)),
((126 : GoUInt32)),
((192 : GoUInt32)),
((249 : GoUInt32)),
((28 : GoUInt32)),
((127 : GoUInt32)),
((60 : GoUInt32)),
((137 : GoUInt32)),
((47 : GoUInt32)),
((210 : GoUInt32)),
((88 : GoUInt32)),
((58 : GoUInt32)),
((226 : GoUInt32)),
((248 : GoUInt32)),
((145 : GoUInt32)),
((182 : GoUInt32)),
((123 : GoUInt32)),
((36 : GoUInt32)),
((39 : GoUInt32)),
((233 : GoUInt32)),
((174 : GoUInt32)),
((132 : GoUInt32)),
((139 : GoUInt32)),
((222 : GoUInt32)),
((116 : GoUInt32)),
((172 : GoUInt32)),
((253 : GoUInt32)),
((217 : GoUInt32)),
((183 : GoUInt32)),
((105 : GoUInt32)),
((42 : GoUInt32)),
((236 : GoUInt32)),
((50 : GoUInt32)),
((111 : GoUInt32)),
((240 : GoUInt32)),
((146 : GoUInt32)),
((132 : GoUInt32)),
((241 : GoUInt32)),
((64 : GoUInt32)),
((12 : GoUInt32)),
((138 : GoUInt32)),
((188 : GoUInt32)),
((57 : GoUInt32)),
((110 : GoUInt32)),
((46 : GoUInt32)),
((115 : GoUInt32)),
((212 : GoUInt32)),
((110 : GoUInt32)),
((138 : GoUInt32)),
((116 : GoUInt32)),
((42 : GoUInt32)),
((220 : GoUInt32)),
((96 : GoUInt32)),
((31 : GoUInt32)),
((163 : GoUInt32)),
((7 : GoUInt32)),
((222 : GoUInt32)),
((117 : GoUInt32)),
((139 : GoUInt32)),
((116 : GoUInt32)),
((200 : GoUInt32)),
((254 : GoUInt32)),
((99 : GoUInt32)),
((117 : GoUInt32)),
((246 : GoUInt32)),
((61 : GoUInt32)),
((99 : GoUInt32)),
((172 : GoUInt32)),
((51 : GoUInt32)),
((137 : GoUInt32)),
((195 : GoUInt32)),
((240 : GoUInt32)),
((248 : GoUInt32)),
((45 : GoUInt32)),
((107 : GoUInt32)),
((180 : GoUInt32)),
((158 : GoUInt32)),
((116 : GoUInt32)),
((139 : GoUInt32)),
((92 : GoUInt32)),
((51 : GoUInt32)),
((180 : GoUInt32)),
((202 : GoUInt32)),
((168 : GoUInt32)),
((228 : GoUInt32)),
((153 : GoUInt32)),
((182 : GoUInt32)),
((144 : GoUInt32)),
((161 : GoUInt32)),
((239 : GoUInt32)),
((15 : GoUInt32)),
((211 : GoUInt32)),
((97 : GoUInt32)),
((178 : GoUInt32)),
((198 : GoUInt32)),
((26 : GoUInt32)),
((148 : GoUInt32)),
((124 : GoUInt32)),
((68 : GoUInt32)),
((85 : GoUInt32)),
((244 : GoUInt32)),
((69 : GoUInt32)),
((255 : GoUInt32)),
((158 : GoUInt32)),
((165 : GoUInt32)),
((90 : GoUInt32)),
((198 : GoUInt32)),
((160 : GoUInt32)),
((232 : GoUInt32)),
((42 : GoUInt32)),
((193 : GoUInt32)),
((141 : GoUInt32)),
((111 : GoUInt32)),
((52 : GoUInt32)),
((17 : GoUInt32)),
((185 : GoUInt32)),
((190 : GoUInt32)),
((78 : GoUInt32)),
((217 : GoUInt32)),
((135 : GoUInt32)),
((151 : GoUInt32)),
((115 : GoUInt32)),
((207 : GoUInt32)),
((61 : GoUInt32)),
((35 : GoUInt32)),
((174 : GoUInt32)),
((213 : GoUInt32)),
((26 : GoUInt32)),
((94 : GoUInt32)),
((174 : GoUInt32)),
((93 : GoUInt32)),
((106 : GoUInt32)),
((3 : GoUInt32)),
((249 : GoUInt32)),
((34 : GoUInt32)),
((13 : GoUInt32)),
((16 : GoUInt32)),
((217 : GoUInt32)),
((71 : GoUInt32)),
((105 : GoUInt32)),
((21 : GoUInt32)),
((63 : GoUInt32)),
((238 : GoUInt32)),
((82 : GoUInt32)),
((163 : GoUInt32)),
((8 : GoUInt32)),
((210 : GoUInt32)),
((60 : GoUInt32)),
((81 : GoUInt32)),
((244 : GoUInt32)),
((248 : GoUInt32)),
((157 : GoUInt32)),
((228 : GoUInt32)),
((152 : GoUInt32)),
((137 : GoUInt32)),
((200 : GoUInt32)),
((103 : GoUInt32)),
((57 : GoUInt32)),
((213 : GoUInt32)),
((94 : GoUInt32)),
((53 : GoUInt32)),
((120 : GoUInt32)),
((39 : GoUInt32)),
((232 : GoUInt32)),
((60 : GoUInt32)),
((128 : GoUInt32)),
((174 : GoUInt32)),
((121 : GoUInt32)),
((113 : GoUInt32)),
((210 : GoUInt32)),
((147 : GoUInt32)),
((244 : GoUInt32)),
((170 : GoUInt32)),
((81 : GoUInt32)),
((18 : GoUInt32)),
((28 : GoUInt32)),
((75 : GoUInt32)),
((27 : GoUInt32)),
((229 : GoUInt32)),
((110 : GoUInt32)),
((21 : GoUInt32)),
((111 : GoUInt32)),
((228 : GoUInt32)),
((187 : GoUInt32)),
((81 : GoUInt32)),
((155 : GoUInt32)),
((69 : GoUInt32)),
((159 : GoUInt32)),
((249 : GoUInt32)),
((196 : GoUInt32)),
((140 : GoUInt32)),
((42 : GoUInt32)),
((251 : GoUInt32)),
((26 : GoUInt32)),
((223 : GoUInt32)),
((85 : GoUInt32)),
((211 : GoUInt32)),
((72 : GoUInt32)),
((147 : GoUInt32)),
((39 : GoUInt32)),
((1 : GoUInt32)),
((38 : GoUInt32)),
((194 : GoUInt32)),
((107 : GoUInt32)),
((85 : GoUInt32)),
((109 : GoUInt32)),
((162 : GoUInt32)),
((251 : GoUInt32)),
((132 : GoUInt32)),
((139 : GoUInt32)),
((201 : GoUInt32)),
((158 : GoUInt32)),
((40 : GoUInt32)),
((194 : GoUInt32)),
((239 : GoUInt32)),
((26 : GoUInt32)),
((36 : GoUInt32)),
((236 : GoUInt32)),
((155 : GoUInt32)),
((174 : GoUInt32)),
((189 : GoUInt32)),
((96 : GoUInt32)),
((233 : GoUInt32)),
((21 : GoUInt32)),
((53 : GoUInt32)),
((238 : GoUInt32)),
((66 : GoUInt32)),
((164 : GoUInt32)),
((51 : GoUInt32)),
((91 : GoUInt32)),
((250 : GoUInt32)),
((15 : GoUInt32)),
((182 : GoUInt32)),
((247 : GoUInt32)),
((1 : GoUInt32)),
((166 : GoUInt32)),
((2 : GoUInt32)),
((76 : GoUInt32)),
((202 : GoUInt32)),
((144 : GoUInt32)),
((88 : GoUInt32)),
((58 : GoUInt32)),
((150 : GoUInt32)),
((65 : GoUInt32)),
((231 : GoUInt32)),
((203 : GoUInt32)),
((9 : GoUInt32)),
((140 : GoUInt32)),
((219 : GoUInt32)),
((133 : GoUInt32)),
((77 : GoUInt32)),
((168 : GoUInt32)),
((137 : GoUInt32)),
((243 : GoUInt32)),
((181 : GoUInt32)),
((142 : GoUInt32)),
((253 : GoUInt32)),
((117 : GoUInt32)),
((91 : GoUInt32)),
((79 : GoUInt32)),
((237 : GoUInt32)),
((222 : GoUInt32)),
((63 : GoUInt32)),
((235 : GoUInt32)),
((56 : GoUInt32)),
((163 : GoUInt32)),
((190 : GoUInt32)),
((176 : GoUInt32)),
((115 : GoUInt32)),
((252 : GoUInt32)),
((184 : GoUInt32)),
((84 : GoUInt32)),
((247 : GoUInt32)),
((76 : GoUInt32)),
((48 : GoUInt32)),
((103 : GoUInt32)),
((46 : GoUInt32)),
((56 : GoUInt32)),
((162 : GoUInt32)),
((84 : GoUInt32)),
((24 : GoUInt32)),
((186 : GoUInt32)),
((8 : GoUInt32)),
((191 : GoUInt32)),
((242 : GoUInt32)),
((57 : GoUInt32)),
((213 : GoUInt32)),
((254 : GoUInt32)),
((165 : GoUInt32)),
((65 : GoUInt32)),
((198 : GoUInt32)),
((102 : GoUInt32)),
((102 : GoUInt32)),
((186 : GoUInt32)),
((129 : GoUInt32)),
((239 : GoUInt32)),
((103 : GoUInt32)),
((228 : GoUInt32)),
((230 : GoUInt32)),
((60 : GoUInt32)),
((12 : GoUInt32)),
((202 : GoUInt32)),
((164 : GoUInt32)),
((10 : GoUInt32)),
((121 : GoUInt32)),
((179 : GoUInt32)),
((87 : GoUInt32)),
((139 : GoUInt32)),
((138 : GoUInt32)),
((117 : GoUInt32)),
((152 : GoUInt32)),
((24 : GoUInt32)),
((66 : GoUInt32)),
((47 : GoUInt32)),
((41 : GoUInt32)),
((163 : GoUInt32)),
((130 : GoUInt32)),
((239 : GoUInt32)),
((159 : GoUInt32)),
((134 : GoUInt32)),
((6 : GoUInt32)),
((35 : GoUInt32)),
((225 : GoUInt32)),
((117 : GoUInt32)),
((250 : GoUInt32)),
((8 : GoUInt32)),
((177 : GoUInt32)),
((222 : GoUInt32)),
((23 : GoUInt32)),
((74 : GoUInt32))) : Slice<T_token>)) } : T_huffTest)) == null ? null : (({ _input : ((("testdata/huffman-rand-1k.in" : GoString))), _want : ((("testdata/huffman-rand-1k.%s.expect" : GoString))), _wantNoInput : ((("testdata/huffman-rand-1k.%s.expect-noinput" : GoString))), _tokens : ((new Slice<T_token>(
((248 : GoUInt32)),
((139 : GoUInt32)),
((150 : GoUInt32)),
((118 : GoUInt32)),
((72 : GoUInt32)),
((13 : GoUInt32)),
((133 : GoUInt32)),
((148 : GoUInt32)),
((37 : GoUInt32)),
((128 : GoUInt32)),
((175 : GoUInt32)),
((194 : GoUInt32)),
((254 : GoUInt32)),
((141 : GoUInt32)),
((232 : GoUInt32)),
((32 : GoUInt32)),
((235 : GoUInt32)),
((23 : GoUInt32)),
((134 : GoUInt32)),
((201 : GoUInt32)),
((183 : GoUInt32)),
((197 : GoUInt32)),
((222 : GoUInt32)),
((6 : GoUInt32)),
((234 : GoUInt32)),
((125 : GoUInt32)),
((24 : GoUInt32)),
((139 : GoUInt32)),
((231 : GoUInt32)),
((62 : GoUInt32)),
((7 : GoUInt32)),
((218 : GoUInt32)),
((223 : GoUInt32)),
((255 : GoUInt32)),
((108 : GoUInt32)),
((115 : GoUInt32)),
((222 : GoUInt32)),
((204 : GoUInt32)),
((231 : GoUInt32)),
((109 : GoUInt32)),
((141 : GoUInt32)),
((4 : GoUInt32)),
((25 : GoUInt32)),
((73 : GoUInt32)),
((127 : GoUInt32)),
((71 : GoUInt32)),
((31 : GoUInt32)),
((72 : GoUInt32)),
((21 : GoUInt32)),
((176 : GoUInt32)),
((232 : GoUInt32)),
((158 : GoUInt32)),
((242 : GoUInt32)),
((49 : GoUInt32)),
((89 : GoUInt32)),
((222 : GoUInt32)),
((52 : GoUInt32)),
((180 : GoUInt32)),
((91 : GoUInt32)),
((229 : GoUInt32)),
((224 : GoUInt32)),
((9 : GoUInt32)),
((17 : GoUInt32)),
((48 : GoUInt32)),
((194 : GoUInt32)),
((136 : GoUInt32)),
((91 : GoUInt32)),
((124 : GoUInt32)),
((93 : GoUInt32)),
((20 : GoUInt32)),
((19 : GoUInt32)),
((111 : GoUInt32)),
((35 : GoUInt32)),
((169 : GoUInt32)),
((13 : GoUInt32)),
((188 : GoUInt32)),
((45 : GoUInt32)),
((35 : GoUInt32)),
((190 : GoUInt32)),
((217 : GoUInt32)),
((237 : GoUInt32)),
((117 : GoUInt32)),
((4 : GoUInt32)),
((108 : GoUInt32)),
((153 : GoUInt32)),
((223 : GoUInt32)),
((253 : GoUInt32)),
((112 : GoUInt32)),
((102 : GoUInt32)),
((230 : GoUInt32)),
((238 : GoUInt32)),
((217 : GoUInt32)),
((177 : GoUInt32)),
((158 : GoUInt32)),
((110 : GoUInt32)),
((131 : GoUInt32)),
((89 : GoUInt32)),
((213 : GoUInt32)),
((212 : GoUInt32)),
((128 : GoUInt32)),
((89 : GoUInt32)),
((152 : GoUInt32)),
((119 : GoUInt32)),
((137 : GoUInt32)),
((67 : GoUInt32)),
((56 : GoUInt32)),
((201 : GoUInt32)),
((175 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((154 : GoUInt32)),
((32 : GoUInt32)),
((27 : GoUInt32)),
((70 : GoUInt32)),
((61 : GoUInt32)),
((103 : GoUInt32)),
((110 : GoUInt32)),
((215 : GoUInt32)),
((114 : GoUInt32)),
((158 : GoUInt32)),
((78 : GoUInt32)),
((33 : GoUInt32)),
((79 : GoUInt32)),
((198 : GoUInt32)),
((224 : GoUInt32)),
((212 : GoUInt32)),
((123 : GoUInt32)),
((4 : GoUInt32)),
((141 : GoUInt32)),
((165 : GoUInt32)),
((3 : GoUInt32)),
((246 : GoUInt32)),
((5 : GoUInt32)),
((155 : GoUInt32)),
((107 : GoUInt32)),
((220 : GoUInt32)),
((42 : GoUInt32)),
((147 : GoUInt32)),
((119 : GoUInt32)),
((40 : GoUInt32)),
((253 : GoUInt32)),
((180 : GoUInt32)),
((98 : GoUInt32)),
((218 : GoUInt32)),
((32 : GoUInt32)),
((231 : GoUInt32)),
((31 : GoUInt32)),
((171 : GoUInt32)),
((107 : GoUInt32)),
((81 : GoUInt32)),
((67 : GoUInt32)),
((57 : GoUInt32)),
((47 : GoUInt32)),
((160 : GoUInt32)),
((146 : GoUInt32)),
((1 : GoUInt32)),
((108 : GoUInt32)),
((117 : GoUInt32)),
((62 : GoUInt32)),
((244 : GoUInt32)),
((53 : GoUInt32)),
((253 : GoUInt32)),
((67 : GoUInt32)),
((46 : GoUInt32)),
((247 : GoUInt32)),
((164 : GoUInt32)),
((117 : GoUInt32)),
((218 : GoUInt32)),
((234 : GoUInt32)),
((155 : GoUInt32)),
((10 : GoUInt32)),
((100 : GoUInt32)),
((11 : GoUInt32)),
((224 : GoUInt32)),
((35 : GoUInt32)),
((41 : GoUInt32)),
((189 : GoUInt32)),
((247 : GoUInt32)),
((231 : GoUInt32)),
((131 : GoUInt32)),
((60 : GoUInt32)),
((251 : GoUInt32)),
((223 : GoUInt32)),
((179 : GoUInt32)),
((174 : GoUInt32)),
((79 : GoUInt32)),
((164 : GoUInt32)),
((71 : GoUInt32)),
((85 : GoUInt32)),
((153 : GoUInt32)),
((222 : GoUInt32)),
((47 : GoUInt32)),
((150 : GoUInt32)),
((110 : GoUInt32)),
((28 : GoUInt32)),
((67 : GoUInt32)),
((76 : GoUInt32)),
((135 : GoUInt32)),
((226 : GoUInt32)),
((124 : GoUInt32)),
((217 : GoUInt32)),
((95 : GoUInt32)),
((76 : GoUInt32)),
((124 : GoUInt32)),
((232 : GoUInt32)),
((144 : GoUInt32)),
((3 : GoUInt32)),
((219 : GoUInt32)),
((48 : GoUInt32)),
((149 : GoUInt32)),
((214 : GoUInt32)),
((34 : GoUInt32)),
((12 : GoUInt32)),
((71 : GoUInt32)),
((184 : GoUInt32)),
((77 : GoUInt32)),
((107 : GoUInt32)),
((189 : GoUInt32)),
((36 : GoUInt32)),
((17 : GoUInt32)),
((171 : GoUInt32)),
((44 : GoUInt32)),
((215 : GoUInt32)),
((190 : GoUInt32)),
((110 : GoUInt32)),
((122 : GoUInt32)),
((214 : GoUInt32)),
((8 : GoUInt32)),
((163 : GoUInt32)),
((152 : GoUInt32)),
((216 : GoUInt32)),
((221 : GoUInt32)),
((21 : GoUInt32)),
((106 : GoUInt32)),
((250 : GoUInt32)),
((147 : GoUInt32)),
((48 : GoUInt32)),
((1 : GoUInt32)),
((37 : GoUInt32)),
((29 : GoUInt32)),
((162 : GoUInt32)),
((116 : GoUInt32)),
((134 : GoUInt32)),
((75 : GoUInt32)),
((106 : GoUInt32)),
((149 : GoUInt32)),
((232 : GoUInt32)),
((225 : GoUInt32)),
((78 : GoUInt32)),
((14 : GoUInt32)),
((118 : GoUInt32)),
((185 : GoUInt32)),
((73 : GoUInt32)),
((169 : GoUInt32)),
((95 : GoUInt32)),
((160 : GoUInt32)),
((166 : GoUInt32)),
((99 : GoUInt32)),
((60 : GoUInt32)),
((126 : GoUInt32)),
((126 : GoUInt32)),
((32 : GoUInt32)),
((19 : GoUInt32)),
((79 : GoUInt32)),
((187 : GoUInt32)),
((102 : GoUInt32)),
((146 : GoUInt32)),
((184 : GoUInt32)),
((46 : GoUInt32)),
((164 : GoUInt32)),
((250 : GoUInt32)),
((72 : GoUInt32)),
((203 : GoUInt32)),
((174 : GoUInt32)),
((185 : GoUInt32)),
((60 : GoUInt32)),
((175 : GoUInt32)),
((211 : GoUInt32)),
((31 : GoUInt32)),
((225 : GoUInt32)),
((213 : GoUInt32)),
((141 : GoUInt32)),
((66 : GoUInt32)),
((109 : GoUInt32)),
((240 : GoUInt32)),
((252 : GoUInt32)),
((140 : GoUInt32)),
((12 : GoUInt32)),
((0 : GoUInt32)),
((222 : GoUInt32)),
((64 : GoUInt32)),
((171 : GoUInt32)),
((139 : GoUInt32)),
((71 : GoUInt32)),
((151 : GoUInt32)),
((78 : GoUInt32)),
((168 : GoUInt32)),
((207 : GoUInt32)),
((142 : GoUInt32)),
((219 : GoUInt32)),
((166 : GoUInt32)),
((139 : GoUInt32)),
((32 : GoUInt32)),
((9 : GoUInt32)),
((132 : GoUInt32)),
((122 : GoUInt32)),
((102 : GoUInt32)),
((229 : GoUInt32)),
((152 : GoUInt32)),
((41 : GoUInt32)),
((2 : GoUInt32)),
((149 : GoUInt32)),
((230 : GoUInt32)),
((56 : GoUInt32)),
((50 : GoUInt32)),
((96 : GoUInt32)),
((3 : GoUInt32)),
((227 : GoUInt32)),
((154 : GoUInt32)),
((30 : GoUInt32)),
((84 : GoUInt32)),
((232 : GoUInt32)),
((99 : GoUInt32)),
((128 : GoUInt32)),
((72 : GoUInt32)),
((156 : GoUInt32)),
((231 : GoUInt32)),
((99 : GoUInt32)),
((51 : GoUInt32)),
((110 : GoUInt32)),
((160 : GoUInt32)),
((101 : GoUInt32)),
((131 : GoUInt32)),
((250 : GoUInt32)),
((198 : GoUInt32)),
((186 : GoUInt32)),
((122 : GoUInt32)),
((67 : GoUInt32)),
((113 : GoUInt32)),
((5 : GoUInt32)),
((245 : GoUInt32)),
((104 : GoUInt32)),
((105 : GoUInt32)),
((133 : GoUInt32)),
((156 : GoUInt32)),
((186 : GoUInt32)),
((69 : GoUInt32)),
((205 : GoUInt32)),
((107 : GoUInt32)),
((11 : GoUInt32)),
((25 : GoUInt32)),
((209 : GoUInt32)),
((187 : GoUInt32)),
((127 : GoUInt32)),
((112 : GoUInt32)),
((133 : GoUInt32)),
((146 : GoUInt32)),
((209 : GoUInt32)),
((180 : GoUInt32)),
((100 : GoUInt32)),
((130 : GoUInt32)),
((177 : GoUInt32)),
((228 : GoUInt32)),
((98 : GoUInt32)),
((197 : GoUInt32)),
((60 : GoUInt32)),
((70 : GoUInt32)),
((31 : GoUInt32)),
((146 : GoUInt32)),
((49 : GoUInt32)),
((28 : GoUInt32)),
((78 : GoUInt32)),
((65 : GoUInt32)),
((119 : GoUInt32)),
((247 : GoUInt32)),
((231 : GoUInt32)),
((135 : GoUInt32)),
((162 : GoUInt32)),
((15 : GoUInt32)),
((110 : GoUInt32)),
((232 : GoUInt32)),
((146 : GoUInt32)),
((3 : GoUInt32)),
((107 : GoUInt32)),
((10 : GoUInt32)),
((231 : GoUInt32)),
((169 : GoUInt32)),
((59 : GoUInt32)),
((17 : GoUInt32)),
((218 : GoUInt32)),
((102 : GoUInt32)),
((138 : GoUInt32)),
((41 : GoUInt32)),
((218 : GoUInt32)),
((121 : GoUInt32)),
((225 : GoUInt32)),
((100 : GoUInt32)),
((141 : GoUInt32)),
((227 : GoUInt32)),
((84 : GoUInt32)),
((212 : GoUInt32)),
((245 : GoUInt32)),
((239 : GoUInt32)),
((100 : GoUInt32)),
((135 : GoUInt32)),
((59 : GoUInt32)),
((244 : GoUInt32)),
((194 : GoUInt32)),
((244 : GoUInt32)),
((113 : GoUInt32)),
((19 : GoUInt32)),
((169 : GoUInt32)),
((233 : GoUInt32)),
((224 : GoUInt32)),
((162 : GoUInt32)),
((6 : GoUInt32)),
((20 : GoUInt32)),
((171 : GoUInt32)),
((93 : GoUInt32)),
((167 : GoUInt32)),
((150 : GoUInt32)),
((0 : GoUInt32)),
((214 : GoUInt32)),
((195 : GoUInt32)),
((204 : GoUInt32)),
((87 : GoUInt32)),
((237 : GoUInt32)),
((57 : GoUInt32)),
((106 : GoUInt32)),
((37 : GoUInt32)),
((205 : GoUInt32)),
((118 : GoUInt32)),
((234 : GoUInt32)),
((186 : GoUInt32)),
((58 : GoUInt32)),
((242 : GoUInt32)),
((161 : GoUInt32)),
((149 : GoUInt32)),
((93 : GoUInt32)),
((229 : GoUInt32)),
((113 : GoUInt32)),
((207 : GoUInt32)),
((156 : GoUInt32)),
((98 : GoUInt32)),
((158 : GoUInt32)),
((106 : GoUInt32)),
((250 : GoUInt32)),
((213 : GoUInt32)),
((49 : GoUInt32)),
((209 : GoUInt32)),
((168 : GoUInt32)),
((102 : GoUInt32)),
((48 : GoUInt32)),
((51 : GoUInt32)),
((170 : GoUInt32)),
((81 : GoUInt32)),
((23 : GoUInt32)),
((19 : GoUInt32)),
((130 : GoUInt32)),
((153 : GoUInt32)),
((200 : GoUInt32)),
((20 : GoUInt32)),
((96 : GoUInt32)),
((159 : GoUInt32)),
((77 : GoUInt32)),
((50 : GoUInt32)),
((109 : GoUInt32)),
((218 : GoUInt32)),
((25 : GoUInt32)),
((38 : GoUInt32)),
((33 : GoUInt32)),
((220 : GoUInt32)),
((126 : GoUInt32)),
((46 : GoUInt32)),
((37 : GoUInt32)),
((103 : GoUInt32)),
((114 : GoUInt32)),
((202 : GoUInt32)),
((15 : GoUInt32)),
((146 : GoUInt32)),
((205 : GoUInt32)),
((246 : GoUInt32)),
((214 : GoUInt32)),
((203 : GoUInt32)),
((151 : GoUInt32)),
((138 : GoUInt32)),
((51 : GoUInt32)),
((88 : GoUInt32)),
((115 : GoUInt32)),
((112 : GoUInt32)),
((145 : GoUInt32)),
((29 : GoUInt32)),
((191 : GoUInt32)),
((40 : GoUInt32)),
((35 : GoUInt32)),
((163 : GoUInt32)),
((12 : GoUInt32)),
((241 : GoUInt32)),
((131 : GoUInt32)),
((195 : GoUInt32)),
((200 : GoUInt32)),
((86 : GoUInt32)),
((119 : GoUInt32)),
((104 : GoUInt32)),
((227 : GoUInt32)),
((130 : GoUInt32)),
((186 : GoUInt32)),
((185 : GoUInt32)),
((87 : GoUInt32)),
((86 : GoUInt32)),
((87 : GoUInt32)),
((156 : GoUInt32)),
((195 : GoUInt32)),
((214 : GoUInt32)),
((20 : GoUInt32)),
((5 : GoUInt32)),
((60 : GoUInt32)),
((177 : GoUInt32)),
((175 : GoUInt32)),
((147 : GoUInt32)),
((200 : GoUInt32)),
((138 : GoUInt32)),
((87 : GoUInt32)),
((127 : GoUInt32)),
((83 : GoUInt32)),
((250 : GoUInt32)),
((47 : GoUInt32)),
((170 : GoUInt32)),
((110 : GoUInt32)),
((102 : GoUInt32)),
((131 : GoUInt32)),
((250 : GoUInt32)),
((51 : GoUInt32)),
((209 : GoUInt32)),
((33 : GoUInt32)),
((171 : GoUInt32)),
((27 : GoUInt32)),
((113 : GoUInt32)),
((180 : GoUInt32)),
((124 : GoUInt32)),
((218 : GoUInt32)),
((253 : GoUInt32)),
((251 : GoUInt32)),
((127 : GoUInt32)),
((32 : GoUInt32)),
((171 : GoUInt32)),
((94 : GoUInt32)),
((213 : GoUInt32)),
((202 : GoUInt32)),
((253 : GoUInt32)),
((221 : GoUInt32)),
((224 : GoUInt32)),
((238 : GoUInt32)),
((218 : GoUInt32)),
((186 : GoUInt32)),
((168 : GoUInt32)),
((39 : GoUInt32)),
((153 : GoUInt32)),
((151 : GoUInt32)),
((105 : GoUInt32)),
((193 : GoUInt32)),
((60 : GoUInt32)),
((130 : GoUInt32)),
((140 : GoUInt32)),
((10 : GoUInt32)),
((92 : GoUInt32)),
((45 : GoUInt32)),
((91 : GoUInt32)),
((136 : GoUInt32)),
((62 : GoUInt32)),
((52 : GoUInt32)),
((53 : GoUInt32)),
((134 : GoUInt32)),
((55 : GoUInt32)),
((70 : GoUInt32)),
((121 : GoUInt32)),
((225 : GoUInt32)),
((170 : GoUInt32)),
((25 : GoUInt32)),
((251 : GoUInt32)),
((170 : GoUInt32)),
((222 : GoUInt32)),
((21 : GoUInt32)),
((9 : GoUInt32)),
((13 : GoUInt32)),
((26 : GoUInt32)),
((87 : GoUInt32)),
((255 : GoUInt32)),
((181 : GoUInt32)),
((15 : GoUInt32)),
((243 : GoUInt32)),
((43 : GoUInt32)),
((90 : GoUInt32)),
((106 : GoUInt32)),
((77 : GoUInt32)),
((25 : GoUInt32)),
((119 : GoUInt32)),
((113 : GoUInt32)),
((69 : GoUInt32)),
((223 : GoUInt32)),
((79 : GoUInt32)),
((179 : GoUInt32)),
((236 : GoUInt32)),
((241 : GoUInt32)),
((235 : GoUInt32)),
((24 : GoUInt32)),
((83 : GoUInt32)),
((62 : GoUInt32)),
((59 : GoUInt32)),
((71 : GoUInt32)),
((8 : GoUInt32)),
((154 : GoUInt32)),
((115 : GoUInt32)),
((160 : GoUInt32)),
((92 : GoUInt32)),
((140 : GoUInt32)),
((95 : GoUInt32)),
((235 : GoUInt32)),
((15 : GoUInt32)),
((58 : GoUInt32)),
((194 : GoUInt32)),
((67 : GoUInt32)),
((103 : GoUInt32)),
((180 : GoUInt32)),
((102 : GoUInt32)),
((103 : GoUInt32)),
((128 : GoUInt32)),
((88 : GoUInt32)),
((14 : GoUInt32)),
((193 : GoUInt32)),
((236 : GoUInt32)),
((64 : GoUInt32)),
((212 : GoUInt32)),
((34 : GoUInt32)),
((148 : GoUInt32)),
((202 : GoUInt32)),
((249 : GoUInt32)),
((232 : GoUInt32)),
((146 : GoUInt32)),
((228 : GoUInt32)),
((105 : GoUInt32)),
((56 : GoUInt32)),
((190 : GoUInt32)),
((103 : GoUInt32)),
((100 : GoUInt32)),
((202 : GoUInt32)),
((80 : GoUInt32)),
((199 : GoUInt32)),
((6 : GoUInt32)),
((103 : GoUInt32)),
((66 : GoUInt32)),
((110 : GoUInt32)),
((163 : GoUInt32)),
((240 : GoUInt32)),
((183 : GoUInt32)),
((108 : GoUInt32)),
((242 : GoUInt32)),
((232 : GoUInt32)),
((95 : GoUInt32)),
((177 : GoUInt32)),
((175 : GoUInt32)),
((231 : GoUInt32)),
((219 : GoUInt32)),
((187 : GoUInt32)),
((119 : GoUInt32)),
((181 : GoUInt32)),
((248 : GoUInt32)),
((203 : GoUInt32)),
((8 : GoUInt32)),
((196 : GoUInt32)),
((117 : GoUInt32)),
((126 : GoUInt32)),
((192 : GoUInt32)),
((249 : GoUInt32)),
((28 : GoUInt32)),
((127 : GoUInt32)),
((60 : GoUInt32)),
((137 : GoUInt32)),
((47 : GoUInt32)),
((210 : GoUInt32)),
((88 : GoUInt32)),
((58 : GoUInt32)),
((226 : GoUInt32)),
((248 : GoUInt32)),
((145 : GoUInt32)),
((182 : GoUInt32)),
((123 : GoUInt32)),
((36 : GoUInt32)),
((39 : GoUInt32)),
((233 : GoUInt32)),
((174 : GoUInt32)),
((132 : GoUInt32)),
((139 : GoUInt32)),
((222 : GoUInt32)),
((116 : GoUInt32)),
((172 : GoUInt32)),
((253 : GoUInt32)),
((217 : GoUInt32)),
((183 : GoUInt32)),
((105 : GoUInt32)),
((42 : GoUInt32)),
((236 : GoUInt32)),
((50 : GoUInt32)),
((111 : GoUInt32)),
((240 : GoUInt32)),
((146 : GoUInt32)),
((132 : GoUInt32)),
((241 : GoUInt32)),
((64 : GoUInt32)),
((12 : GoUInt32)),
((138 : GoUInt32)),
((188 : GoUInt32)),
((57 : GoUInt32)),
((110 : GoUInt32)),
((46 : GoUInt32)),
((115 : GoUInt32)),
((212 : GoUInt32)),
((110 : GoUInt32)),
((138 : GoUInt32)),
((116 : GoUInt32)),
((42 : GoUInt32)),
((220 : GoUInt32)),
((96 : GoUInt32)),
((31 : GoUInt32)),
((163 : GoUInt32)),
((7 : GoUInt32)),
((222 : GoUInt32)),
((117 : GoUInt32)),
((139 : GoUInt32)),
((116 : GoUInt32)),
((200 : GoUInt32)),
((254 : GoUInt32)),
((99 : GoUInt32)),
((117 : GoUInt32)),
((246 : GoUInt32)),
((61 : GoUInt32)),
((99 : GoUInt32)),
((172 : GoUInt32)),
((51 : GoUInt32)),
((137 : GoUInt32)),
((195 : GoUInt32)),
((240 : GoUInt32)),
((248 : GoUInt32)),
((45 : GoUInt32)),
((107 : GoUInt32)),
((180 : GoUInt32)),
((158 : GoUInt32)),
((116 : GoUInt32)),
((139 : GoUInt32)),
((92 : GoUInt32)),
((51 : GoUInt32)),
((180 : GoUInt32)),
((202 : GoUInt32)),
((168 : GoUInt32)),
((228 : GoUInt32)),
((153 : GoUInt32)),
((182 : GoUInt32)),
((144 : GoUInt32)),
((161 : GoUInt32)),
((239 : GoUInt32)),
((15 : GoUInt32)),
((211 : GoUInt32)),
((97 : GoUInt32)),
((178 : GoUInt32)),
((198 : GoUInt32)),
((26 : GoUInt32)),
((148 : GoUInt32)),
((124 : GoUInt32)),
((68 : GoUInt32)),
((85 : GoUInt32)),
((244 : GoUInt32)),
((69 : GoUInt32)),
((255 : GoUInt32)),
((158 : GoUInt32)),
((165 : GoUInt32)),
((90 : GoUInt32)),
((198 : GoUInt32)),
((160 : GoUInt32)),
((232 : GoUInt32)),
((42 : GoUInt32)),
((193 : GoUInt32)),
((141 : GoUInt32)),
((111 : GoUInt32)),
((52 : GoUInt32)),
((17 : GoUInt32)),
((185 : GoUInt32)),
((190 : GoUInt32)),
((78 : GoUInt32)),
((217 : GoUInt32)),
((135 : GoUInt32)),
((151 : GoUInt32)),
((115 : GoUInt32)),
((207 : GoUInt32)),
((61 : GoUInt32)),
((35 : GoUInt32)),
((174 : GoUInt32)),
((213 : GoUInt32)),
((26 : GoUInt32)),
((94 : GoUInt32)),
((174 : GoUInt32)),
((93 : GoUInt32)),
((106 : GoUInt32)),
((3 : GoUInt32)),
((249 : GoUInt32)),
((34 : GoUInt32)),
((13 : GoUInt32)),
((16 : GoUInt32)),
((217 : GoUInt32)),
((71 : GoUInt32)),
((105 : GoUInt32)),
((21 : GoUInt32)),
((63 : GoUInt32)),
((238 : GoUInt32)),
((82 : GoUInt32)),
((163 : GoUInt32)),
((8 : GoUInt32)),
((210 : GoUInt32)),
((60 : GoUInt32)),
((81 : GoUInt32)),
((244 : GoUInt32)),
((248 : GoUInt32)),
((157 : GoUInt32)),
((228 : GoUInt32)),
((152 : GoUInt32)),
((137 : GoUInt32)),
((200 : GoUInt32)),
((103 : GoUInt32)),
((57 : GoUInt32)),
((213 : GoUInt32)),
((94 : GoUInt32)),
((53 : GoUInt32)),
((120 : GoUInt32)),
((39 : GoUInt32)),
((232 : GoUInt32)),
((60 : GoUInt32)),
((128 : GoUInt32)),
((174 : GoUInt32)),
((121 : GoUInt32)),
((113 : GoUInt32)),
((210 : GoUInt32)),
((147 : GoUInt32)),
((244 : GoUInt32)),
((170 : GoUInt32)),
((81 : GoUInt32)),
((18 : GoUInt32)),
((28 : GoUInt32)),
((75 : GoUInt32)),
((27 : GoUInt32)),
((229 : GoUInt32)),
((110 : GoUInt32)),
((21 : GoUInt32)),
((111 : GoUInt32)),
((228 : GoUInt32)),
((187 : GoUInt32)),
((81 : GoUInt32)),
((155 : GoUInt32)),
((69 : GoUInt32)),
((159 : GoUInt32)),
((249 : GoUInt32)),
((196 : GoUInt32)),
((140 : GoUInt32)),
((42 : GoUInt32)),
((251 : GoUInt32)),
((26 : GoUInt32)),
((223 : GoUInt32)),
((85 : GoUInt32)),
((211 : GoUInt32)),
((72 : GoUInt32)),
((147 : GoUInt32)),
((39 : GoUInt32)),
((1 : GoUInt32)),
((38 : GoUInt32)),
((194 : GoUInt32)),
((107 : GoUInt32)),
((85 : GoUInt32)),
((109 : GoUInt32)),
((162 : GoUInt32)),
((251 : GoUInt32)),
((132 : GoUInt32)),
((139 : GoUInt32)),
((201 : GoUInt32)),
((158 : GoUInt32)),
((40 : GoUInt32)),
((194 : GoUInt32)),
((239 : GoUInt32)),
((26 : GoUInt32)),
((36 : GoUInt32)),
((236 : GoUInt32)),
((155 : GoUInt32)),
((174 : GoUInt32)),
((189 : GoUInt32)),
((96 : GoUInt32)),
((233 : GoUInt32)),
((21 : GoUInt32)),
((53 : GoUInt32)),
((238 : GoUInt32)),
((66 : GoUInt32)),
((164 : GoUInt32)),
((51 : GoUInt32)),
((91 : GoUInt32)),
((250 : GoUInt32)),
((15 : GoUInt32)),
((182 : GoUInt32)),
((247 : GoUInt32)),
((1 : GoUInt32)),
((166 : GoUInt32)),
((2 : GoUInt32)),
((76 : GoUInt32)),
((202 : GoUInt32)),
((144 : GoUInt32)),
((88 : GoUInt32)),
((58 : GoUInt32)),
((150 : GoUInt32)),
((65 : GoUInt32)),
((231 : GoUInt32)),
((203 : GoUInt32)),
((9 : GoUInt32)),
((140 : GoUInt32)),
((219 : GoUInt32)),
((133 : GoUInt32)),
((77 : GoUInt32)),
((168 : GoUInt32)),
((137 : GoUInt32)),
((243 : GoUInt32)),
((181 : GoUInt32)),
((142 : GoUInt32)),
((253 : GoUInt32)),
((117 : GoUInt32)),
((91 : GoUInt32)),
((79 : GoUInt32)),
((237 : GoUInt32)),
((222 : GoUInt32)),
((63 : GoUInt32)),
((235 : GoUInt32)),
((56 : GoUInt32)),
((163 : GoUInt32)),
((190 : GoUInt32)),
((176 : GoUInt32)),
((115 : GoUInt32)),
((252 : GoUInt32)),
((184 : GoUInt32)),
((84 : GoUInt32)),
((247 : GoUInt32)),
((76 : GoUInt32)),
((48 : GoUInt32)),
((103 : GoUInt32)),
((46 : GoUInt32)),
((56 : GoUInt32)),
((162 : GoUInt32)),
((84 : GoUInt32)),
((24 : GoUInt32)),
((186 : GoUInt32)),
((8 : GoUInt32)),
((191 : GoUInt32)),
((242 : GoUInt32)),
((57 : GoUInt32)),
((213 : GoUInt32)),
((254 : GoUInt32)),
((165 : GoUInt32)),
((65 : GoUInt32)),
((198 : GoUInt32)),
((102 : GoUInt32)),
((102 : GoUInt32)),
((186 : GoUInt32)),
((129 : GoUInt32)),
((239 : GoUInt32)),
((103 : GoUInt32)),
((228 : GoUInt32)),
((230 : GoUInt32)),
((60 : GoUInt32)),
((12 : GoUInt32)),
((202 : GoUInt32)),
((164 : GoUInt32)),
((10 : GoUInt32)),
((121 : GoUInt32)),
((179 : GoUInt32)),
((87 : GoUInt32)),
((139 : GoUInt32)),
((138 : GoUInt32)),
((117 : GoUInt32)),
((152 : GoUInt32)),
((24 : GoUInt32)),
((66 : GoUInt32)),
((47 : GoUInt32)),
((41 : GoUInt32)),
((163 : GoUInt32)),
((130 : GoUInt32)),
((239 : GoUInt32)),
((159 : GoUInt32)),
((134 : GoUInt32)),
((6 : GoUInt32)),
((35 : GoUInt32)),
((225 : GoUInt32)),
((117 : GoUInt32)),
((250 : GoUInt32)),
((8 : GoUInt32)),
((177 : GoUInt32)),
((222 : GoUInt32)),
((23 : GoUInt32)),
((74 : GoUInt32))) : Slice<T_token>)) } : T_huffTest)).__copy__()), ((({ _input : ((("testdata/huffman-rand-limit.in" : GoString))), _want : ((("testdata/huffman-rand-limit.%s.expect" : GoString))), _wantNoInput : ((("testdata/huffman-rand-limit.%s.expect-noinput" : GoString))), _tokens : ((new Slice<T_token>(
((97 : GoUInt32)),
((1371537408 : GoUInt32)),
((10 : GoUInt32)),
((248 : GoUInt32)),
((139 : GoUInt32)),
((150 : GoUInt32)),
((118 : GoUInt32)),
((72 : GoUInt32)),
((10 : GoUInt32)),
((133 : GoUInt32)),
((148 : GoUInt32)),
((37 : GoUInt32)),
((128 : GoUInt32)),
((175 : GoUInt32)),
((194 : GoUInt32)),
((254 : GoUInt32)),
((141 : GoUInt32)),
((232 : GoUInt32)),
((32 : GoUInt32)),
((235 : GoUInt32)),
((23 : GoUInt32)),
((134 : GoUInt32)),
((201 : GoUInt32)),
((183 : GoUInt32)),
((197 : GoUInt32)),
((222 : GoUInt32)),
((6 : GoUInt32)),
((234 : GoUInt32)),
((125 : GoUInt32)),
((24 : GoUInt32)),
((139 : GoUInt32)),
((231 : GoUInt32)),
((62 : GoUInt32)),
((7 : GoUInt32)),
((218 : GoUInt32)),
((223 : GoUInt32)),
((255 : GoUInt32)),
((108 : GoUInt32)),
((115 : GoUInt32)),
((222 : GoUInt32)),
((204 : GoUInt32)),
((231 : GoUInt32)),
((109 : GoUInt32)),
((141 : GoUInt32)),
((4 : GoUInt32)),
((25 : GoUInt32)),
((73 : GoUInt32)),
((127 : GoUInt32)),
((71 : GoUInt32)),
((31 : GoUInt32)),
((72 : GoUInt32)),
((21 : GoUInt32)),
((176 : GoUInt32)),
((232 : GoUInt32)),
((158 : GoUInt32)),
((242 : GoUInt32)),
((49 : GoUInt32)),
((89 : GoUInt32)),
((222 : GoUInt32)),
((52 : GoUInt32)),
((180 : GoUInt32)),
((91 : GoUInt32)),
((229 : GoUInt32)),
((224 : GoUInt32)),
((9 : GoUInt32)),
((17 : GoUInt32)),
((48 : GoUInt32)),
((194 : GoUInt32)),
((136 : GoUInt32)),
((91 : GoUInt32)),
((124 : GoUInt32)),
((93 : GoUInt32)),
((20 : GoUInt32)),
((19 : GoUInt32)),
((111 : GoUInt32)),
((35 : GoUInt32)),
((169 : GoUInt32)),
((10 : GoUInt32)),
((188 : GoUInt32)),
((45 : GoUInt32)),
((35 : GoUInt32)),
((190 : GoUInt32)),
((217 : GoUInt32)),
((237 : GoUInt32)),
((117 : GoUInt32)),
((4 : GoUInt32)),
((108 : GoUInt32)),
((153 : GoUInt32)),
((223 : GoUInt32)),
((253 : GoUInt32)),
((112 : GoUInt32)),
((102 : GoUInt32)),
((230 : GoUInt32)),
((238 : GoUInt32)),
((217 : GoUInt32)),
((177 : GoUInt32)),
((158 : GoUInt32)),
((110 : GoUInt32)),
((131 : GoUInt32)),
((89 : GoUInt32)),
((213 : GoUInt32)),
((212 : GoUInt32)),
((128 : GoUInt32)),
((89 : GoUInt32)),
((152 : GoUInt32)),
((119 : GoUInt32)),
((137 : GoUInt32)),
((67 : GoUInt32)),
((56 : GoUInt32)),
((201 : GoUInt32)),
((175 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((154 : GoUInt32)),
((32 : GoUInt32)),
((27 : GoUInt32)),
((70 : GoUInt32)),
((61 : GoUInt32)),
((103 : GoUInt32)),
((110 : GoUInt32)),
((215 : GoUInt32)),
((114 : GoUInt32)),
((158 : GoUInt32)),
((78 : GoUInt32)),
((33 : GoUInt32)),
((79 : GoUInt32)),
((198 : GoUInt32)),
((224 : GoUInt32)),
((212 : GoUInt32)),
((123 : GoUInt32)),
((4 : GoUInt32)),
((141 : GoUInt32)),
((165 : GoUInt32)),
((3 : GoUInt32)),
((246 : GoUInt32)),
((5 : GoUInt32)),
((155 : GoUInt32)),
((107 : GoUInt32)),
((220 : GoUInt32)),
((42 : GoUInt32)),
((147 : GoUInt32)),
((119 : GoUInt32)),
((40 : GoUInt32)),
((253 : GoUInt32)),
((180 : GoUInt32)),
((98 : GoUInt32)),
((218 : GoUInt32)),
((32 : GoUInt32)),
((231 : GoUInt32)),
((31 : GoUInt32)),
((171 : GoUInt32)),
((107 : GoUInt32)),
((81 : GoUInt32)),
((67 : GoUInt32)),
((57 : GoUInt32)),
((47 : GoUInt32)),
((160 : GoUInt32)),
((146 : GoUInt32)),
((1 : GoUInt32)),
((108 : GoUInt32)),
((117 : GoUInt32)),
((62 : GoUInt32)),
((244 : GoUInt32)),
((53 : GoUInt32)),
((253 : GoUInt32)),
((67 : GoUInt32)),
((46 : GoUInt32)),
((247 : GoUInt32)),
((164 : GoUInt32)),
((117 : GoUInt32)),
((218 : GoUInt32)),
((234 : GoUInt32)),
((155 : GoUInt32)),
((10 : GoUInt32))) : Slice<T_token>)) } : T_huffTest)) == null ? null : (({ _input : ((("testdata/huffman-rand-limit.in" : GoString))), _want : ((("testdata/huffman-rand-limit.%s.expect" : GoString))), _wantNoInput : ((("testdata/huffman-rand-limit.%s.expect-noinput" : GoString))), _tokens : ((new Slice<T_token>(
((97 : GoUInt32)),
((1371537408 : GoUInt32)),
((10 : GoUInt32)),
((248 : GoUInt32)),
((139 : GoUInt32)),
((150 : GoUInt32)),
((118 : GoUInt32)),
((72 : GoUInt32)),
((10 : GoUInt32)),
((133 : GoUInt32)),
((148 : GoUInt32)),
((37 : GoUInt32)),
((128 : GoUInt32)),
((175 : GoUInt32)),
((194 : GoUInt32)),
((254 : GoUInt32)),
((141 : GoUInt32)),
((232 : GoUInt32)),
((32 : GoUInt32)),
((235 : GoUInt32)),
((23 : GoUInt32)),
((134 : GoUInt32)),
((201 : GoUInt32)),
((183 : GoUInt32)),
((197 : GoUInt32)),
((222 : GoUInt32)),
((6 : GoUInt32)),
((234 : GoUInt32)),
((125 : GoUInt32)),
((24 : GoUInt32)),
((139 : GoUInt32)),
((231 : GoUInt32)),
((62 : GoUInt32)),
((7 : GoUInt32)),
((218 : GoUInt32)),
((223 : GoUInt32)),
((255 : GoUInt32)),
((108 : GoUInt32)),
((115 : GoUInt32)),
((222 : GoUInt32)),
((204 : GoUInt32)),
((231 : GoUInt32)),
((109 : GoUInt32)),
((141 : GoUInt32)),
((4 : GoUInt32)),
((25 : GoUInt32)),
((73 : GoUInt32)),
((127 : GoUInt32)),
((71 : GoUInt32)),
((31 : GoUInt32)),
((72 : GoUInt32)),
((21 : GoUInt32)),
((176 : GoUInt32)),
((232 : GoUInt32)),
((158 : GoUInt32)),
((242 : GoUInt32)),
((49 : GoUInt32)),
((89 : GoUInt32)),
((222 : GoUInt32)),
((52 : GoUInt32)),
((180 : GoUInt32)),
((91 : GoUInt32)),
((229 : GoUInt32)),
((224 : GoUInt32)),
((9 : GoUInt32)),
((17 : GoUInt32)),
((48 : GoUInt32)),
((194 : GoUInt32)),
((136 : GoUInt32)),
((91 : GoUInt32)),
((124 : GoUInt32)),
((93 : GoUInt32)),
((20 : GoUInt32)),
((19 : GoUInt32)),
((111 : GoUInt32)),
((35 : GoUInt32)),
((169 : GoUInt32)),
((10 : GoUInt32)),
((188 : GoUInt32)),
((45 : GoUInt32)),
((35 : GoUInt32)),
((190 : GoUInt32)),
((217 : GoUInt32)),
((237 : GoUInt32)),
((117 : GoUInt32)),
((4 : GoUInt32)),
((108 : GoUInt32)),
((153 : GoUInt32)),
((223 : GoUInt32)),
((253 : GoUInt32)),
((112 : GoUInt32)),
((102 : GoUInt32)),
((230 : GoUInt32)),
((238 : GoUInt32)),
((217 : GoUInt32)),
((177 : GoUInt32)),
((158 : GoUInt32)),
((110 : GoUInt32)),
((131 : GoUInt32)),
((89 : GoUInt32)),
((213 : GoUInt32)),
((212 : GoUInt32)),
((128 : GoUInt32)),
((89 : GoUInt32)),
((152 : GoUInt32)),
((119 : GoUInt32)),
((137 : GoUInt32)),
((67 : GoUInt32)),
((56 : GoUInt32)),
((201 : GoUInt32)),
((175 : GoUInt32)),
((48 : GoUInt32)),
((50 : GoUInt32)),
((154 : GoUInt32)),
((32 : GoUInt32)),
((27 : GoUInt32)),
((70 : GoUInt32)),
((61 : GoUInt32)),
((103 : GoUInt32)),
((110 : GoUInt32)),
((215 : GoUInt32)),
((114 : GoUInt32)),
((158 : GoUInt32)),
((78 : GoUInt32)),
((33 : GoUInt32)),
((79 : GoUInt32)),
((198 : GoUInt32)),
((224 : GoUInt32)),
((212 : GoUInt32)),
((123 : GoUInt32)),
((4 : GoUInt32)),
((141 : GoUInt32)),
((165 : GoUInt32)),
((3 : GoUInt32)),
((246 : GoUInt32)),
((5 : GoUInt32)),
((155 : GoUInt32)),
((107 : GoUInt32)),
((220 : GoUInt32)),
((42 : GoUInt32)),
((147 : GoUInt32)),
((119 : GoUInt32)),
((40 : GoUInt32)),
((253 : GoUInt32)),
((180 : GoUInt32)),
((98 : GoUInt32)),
((218 : GoUInt32)),
((32 : GoUInt32)),
((231 : GoUInt32)),
((31 : GoUInt32)),
((171 : GoUInt32)),
((107 : GoUInt32)),
((81 : GoUInt32)),
((67 : GoUInt32)),
((57 : GoUInt32)),
((47 : GoUInt32)),
((160 : GoUInt32)),
((146 : GoUInt32)),
((1 : GoUInt32)),
((108 : GoUInt32)),
((117 : GoUInt32)),
((62 : GoUInt32)),
((244 : GoUInt32)),
((53 : GoUInt32)),
((253 : GoUInt32)),
((67 : GoUInt32)),
((46 : GoUInt32)),
((247 : GoUInt32)),
((164 : GoUInt32)),
((117 : GoUInt32)),
((218 : GoUInt32)),
((234 : GoUInt32)),
((155 : GoUInt32)),
((10 : GoUInt32))) : Slice<T_token>)) } : T_huffTest)).__copy__()), ((({ _input : ((("testdata/huffman-shifts.in" : GoString))), _want : ((("testdata/huffman-shifts.%s.expect" : GoString))), _wantNoInput : ((("testdata/huffman-shifts.%s.expect-noinput" : GoString))), _tokens : ((new Slice<T_token>(
((49 : GoUInt32)),
((48 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((1379926017 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2134900737 : GoUInt32))) : Slice<T_token>)) } : T_huffTest)) == null ? null : (({ _input : ((("testdata/huffman-shifts.in" : GoString))), _want : ((("testdata/huffman-shifts.%s.expect" : GoString))), _wantNoInput : ((("testdata/huffman-shifts.%s.expect-noinput" : GoString))), _tokens : ((new Slice<T_token>(
((49 : GoUInt32)),
((48 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((1379926017 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((50 : GoUInt32)),
((51 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2143289345 : GoUInt32)),
((2134900737 : GoUInt32))) : Slice<T_token>)) } : T_huffTest)).__copy__()), ((({ _input : ((("testdata/huffman-text-shift.in" : GoString))), _want : ((("testdata/huffman-text-shift.%s.expect" : GoString))), _wantNoInput : ((("testdata/huffman-text-shift.%s.expect-noinput" : GoString))), _tokens : ((new Slice<T_token>(
((47 : GoUInt32)),
((47 : GoUInt32)),
((67 : GoUInt32)),
((111 : GoUInt32)),
((112 : GoUInt32)),
((121 : GoUInt32)),
((114 : GoUInt32)),
((105 : GoUInt32)),
((103 : GoUInt32)),
((104 : GoUInt32)),
((116 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((84 : GoUInt32)),
((104 : GoUInt32)),
((71 : GoUInt32)),
((111 : GoUInt32)),
((65 : GoUInt32)),
((117 : GoUInt32)),
((116 : GoUInt32)),
((104 : GoUInt32)),
((111 : GoUInt32)),
((114 : GoUInt32)),
((46 : GoUInt32)),
((65 : GoUInt32)),
((108 : GoUInt32)),
((108 : GoUInt32)),
((1082130454 : GoUInt32)),
((114 : GoUInt32)),
((114 : GoUInt32)),
((118 : GoUInt32)),
((100 : GoUInt32)),
((46 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((47 : GoUInt32)),
((47 : GoUInt32)),
((85 : GoUInt32)),
((111 : GoUInt32)),
((102 : GoUInt32)),
((116 : GoUInt32)),
((104 : GoUInt32)),
((105 : GoUInt32)),
((111 : GoUInt32)),
((117 : GoUInt32)),
((114 : GoUInt32)),
((99 : GoUInt32)),
((99 : GoUInt32)),
((111 : GoUInt32)),
((100 : GoUInt32)),
((105 : GoUInt32)),
((103 : GoUInt32)),
((111 : GoUInt32)),
((118 : GoUInt32)),
((114 : GoUInt32)),
((110 : GoUInt32)),
((100 : GoUInt32)),
((98 : GoUInt32)),
((121 : GoUInt32)),
((66 : GoUInt32)),
((83 : GoUInt32)),
((68 : GoUInt32)),
((45 : GoUInt32)),
((116 : GoUInt32)),
((121 : GoUInt32)),
((108 : GoUInt32)),
((1077936160 : GoUInt32)),
((108 : GoUInt32)),
((105 : GoUInt32)),
((99 : GoUInt32)),
((110 : GoUInt32)),
((116 : GoUInt32)),
((104 : GoUInt32)),
((116 : GoUInt32)),
((99 : GoUInt32)),
((110 : GoUInt32)),
((98 : GoUInt32)),
((102 : GoUInt32)),
((111 : GoUInt32)),
((117 : GoUInt32)),
((110 : GoUInt32)),
((100 : GoUInt32)),
((105 : GoUInt32)),
((110 : GoUInt32)),
((116 : GoUInt32)),
((104 : GoUInt32)),
((76 : GoUInt32)),
((73 : GoUInt32)),
((67 : GoUInt32)),
((69 : GoUInt32)),
((78 : GoUInt32)),
((83 : GoUInt32)),
((69 : GoUInt32)),
((102 : GoUInt32)),
((105 : GoUInt32)),
((108 : GoUInt32)),
((46 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((112 : GoUInt32)),
((99 : GoUInt32)),
((107 : GoUInt32)),
((103 : GoUInt32)),
((109 : GoUInt32)),
((105 : GoUInt32)),
((110 : GoUInt32)),
((1077936138 : GoUInt32)),
((105 : GoUInt32)),
((109 : GoUInt32)),
((112 : GoUInt32)),
((111 : GoUInt32)),
((114 : GoUInt32)),
((116 : GoUInt32)),
((34 : GoUInt32)),
((111 : GoUInt32)),
((34 : GoUInt32)),
((1077936140 : GoUInt32)),
((102 : GoUInt32)),
((117 : GoUInt32)),
((110 : GoUInt32)),
((99 : GoUInt32)),
((109 : GoUInt32)),
((105 : GoUInt32)),
((110 : GoUInt32)),
((40 : GoUInt32)),
((41 : GoUInt32)),
((123 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((9 : GoUInt32)),
((118 : GoUInt32)),
((114 : GoUInt32)),
((98 : GoUInt32)),
((61 : GoUInt32)),
((109 : GoUInt32)),
((107 : GoUInt32)),
((40 : GoUInt32)),
((91 : GoUInt32)),
((93 : GoUInt32)),
((98 : GoUInt32)),
((121 : GoUInt32)),
((116 : GoUInt32)),
((44 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((41 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((9 : GoUInt32)),
((102 : GoUInt32)),
((44 : GoUInt32)),
((95 : GoUInt32)),
((58 : GoUInt32)),
((61 : GoUInt32)),
((111 : GoUInt32)),
((46 : GoUInt32)),
((67 : GoUInt32)),
((114 : GoUInt32)),
((116 : GoUInt32)),
((40 : GoUInt32)),
((34 : GoUInt32)),
((104 : GoUInt32)),
((117 : GoUInt32)),
((102 : GoUInt32)),
((102 : GoUInt32)),
((109 : GoUInt32)),
((110 : GoUInt32)),
((45 : GoUInt32)),
((110 : GoUInt32)),
((117 : GoUInt32)),
((108 : GoUInt32)),
((108 : GoUInt32)),
((45 : GoUInt32)),
((109 : GoUInt32)),
((120 : GoUInt32)),
((46 : GoUInt32)),
((105 : GoUInt32)),
((110 : GoUInt32)),
((34 : GoUInt32)),
((1082130465 : GoUInt32)),
((46 : GoUInt32)),
((87 : GoUInt32)),
((114 : GoUInt32)),
((105 : GoUInt32)),
((116 : GoUInt32)),
((40 : GoUInt32)),
((98 : GoUInt32)),
((41 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((125 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((65 : GoUInt32)),
((66 : GoUInt32)),
((67 : GoUInt32)),
((68 : GoUInt32)),
((69 : GoUInt32)),
((70 : GoUInt32)),
((71 : GoUInt32)),
((72 : GoUInt32)),
((73 : GoUInt32)),
((74 : GoUInt32)),
((75 : GoUInt32)),
((76 : GoUInt32)),
((77 : GoUInt32)),
((78 : GoUInt32)),
((79 : GoUInt32)),
((80 : GoUInt32)),
((81 : GoUInt32)),
((82 : GoUInt32)),
((83 : GoUInt32)),
((84 : GoUInt32)),
((85 : GoUInt32)),
((86 : GoUInt32)),
((88 : GoUInt32)),
((120 : GoUInt32)),
((121 : GoUInt32)),
((122 : GoUInt32)),
((33 : GoUInt32)),
((34 : GoUInt32)),
((35 : GoUInt32)),
((194 : GoUInt32)),
((164 : GoUInt32)),
((37 : GoUInt32)),
((38 : GoUInt32)),
((47 : GoUInt32)),
((63 : GoUInt32)),
((34 : GoUInt32))) : Slice<T_token>)) } : T_huffTest)) == null ? null : (({ _input : ((("testdata/huffman-text-shift.in" : GoString))), _want : ((("testdata/huffman-text-shift.%s.expect" : GoString))), _wantNoInput : ((("testdata/huffman-text-shift.%s.expect-noinput" : GoString))), _tokens : ((new Slice<T_token>(
((47 : GoUInt32)),
((47 : GoUInt32)),
((67 : GoUInt32)),
((111 : GoUInt32)),
((112 : GoUInt32)),
((121 : GoUInt32)),
((114 : GoUInt32)),
((105 : GoUInt32)),
((103 : GoUInt32)),
((104 : GoUInt32)),
((116 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((84 : GoUInt32)),
((104 : GoUInt32)),
((71 : GoUInt32)),
((111 : GoUInt32)),
((65 : GoUInt32)),
((117 : GoUInt32)),
((116 : GoUInt32)),
((104 : GoUInt32)),
((111 : GoUInt32)),
((114 : GoUInt32)),
((46 : GoUInt32)),
((65 : GoUInt32)),
((108 : GoUInt32)),
((108 : GoUInt32)),
((1082130454 : GoUInt32)),
((114 : GoUInt32)),
((114 : GoUInt32)),
((118 : GoUInt32)),
((100 : GoUInt32)),
((46 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((47 : GoUInt32)),
((47 : GoUInt32)),
((85 : GoUInt32)),
((111 : GoUInt32)),
((102 : GoUInt32)),
((116 : GoUInt32)),
((104 : GoUInt32)),
((105 : GoUInt32)),
((111 : GoUInt32)),
((117 : GoUInt32)),
((114 : GoUInt32)),
((99 : GoUInt32)),
((99 : GoUInt32)),
((111 : GoUInt32)),
((100 : GoUInt32)),
((105 : GoUInt32)),
((103 : GoUInt32)),
((111 : GoUInt32)),
((118 : GoUInt32)),
((114 : GoUInt32)),
((110 : GoUInt32)),
((100 : GoUInt32)),
((98 : GoUInt32)),
((121 : GoUInt32)),
((66 : GoUInt32)),
((83 : GoUInt32)),
((68 : GoUInt32)),
((45 : GoUInt32)),
((116 : GoUInt32)),
((121 : GoUInt32)),
((108 : GoUInt32)),
((1077936160 : GoUInt32)),
((108 : GoUInt32)),
((105 : GoUInt32)),
((99 : GoUInt32)),
((110 : GoUInt32)),
((116 : GoUInt32)),
((104 : GoUInt32)),
((116 : GoUInt32)),
((99 : GoUInt32)),
((110 : GoUInt32)),
((98 : GoUInt32)),
((102 : GoUInt32)),
((111 : GoUInt32)),
((117 : GoUInt32)),
((110 : GoUInt32)),
((100 : GoUInt32)),
((105 : GoUInt32)),
((110 : GoUInt32)),
((116 : GoUInt32)),
((104 : GoUInt32)),
((76 : GoUInt32)),
((73 : GoUInt32)),
((67 : GoUInt32)),
((69 : GoUInt32)),
((78 : GoUInt32)),
((83 : GoUInt32)),
((69 : GoUInt32)),
((102 : GoUInt32)),
((105 : GoUInt32)),
((108 : GoUInt32)),
((46 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((112 : GoUInt32)),
((99 : GoUInt32)),
((107 : GoUInt32)),
((103 : GoUInt32)),
((109 : GoUInt32)),
((105 : GoUInt32)),
((110 : GoUInt32)),
((1077936138 : GoUInt32)),
((105 : GoUInt32)),
((109 : GoUInt32)),
((112 : GoUInt32)),
((111 : GoUInt32)),
((114 : GoUInt32)),
((116 : GoUInt32)),
((34 : GoUInt32)),
((111 : GoUInt32)),
((34 : GoUInt32)),
((1077936140 : GoUInt32)),
((102 : GoUInt32)),
((117 : GoUInt32)),
((110 : GoUInt32)),
((99 : GoUInt32)),
((109 : GoUInt32)),
((105 : GoUInt32)),
((110 : GoUInt32)),
((40 : GoUInt32)),
((41 : GoUInt32)),
((123 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((9 : GoUInt32)),
((118 : GoUInt32)),
((114 : GoUInt32)),
((98 : GoUInt32)),
((61 : GoUInt32)),
((109 : GoUInt32)),
((107 : GoUInt32)),
((40 : GoUInt32)),
((91 : GoUInt32)),
((93 : GoUInt32)),
((98 : GoUInt32)),
((121 : GoUInt32)),
((116 : GoUInt32)),
((44 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((41 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((9 : GoUInt32)),
((102 : GoUInt32)),
((44 : GoUInt32)),
((95 : GoUInt32)),
((58 : GoUInt32)),
((61 : GoUInt32)),
((111 : GoUInt32)),
((46 : GoUInt32)),
((67 : GoUInt32)),
((114 : GoUInt32)),
((116 : GoUInt32)),
((40 : GoUInt32)),
((34 : GoUInt32)),
((104 : GoUInt32)),
((117 : GoUInt32)),
((102 : GoUInt32)),
((102 : GoUInt32)),
((109 : GoUInt32)),
((110 : GoUInt32)),
((45 : GoUInt32)),
((110 : GoUInt32)),
((117 : GoUInt32)),
((108 : GoUInt32)),
((108 : GoUInt32)),
((45 : GoUInt32)),
((109 : GoUInt32)),
((120 : GoUInt32)),
((46 : GoUInt32)),
((105 : GoUInt32)),
((110 : GoUInt32)),
((34 : GoUInt32)),
((1082130465 : GoUInt32)),
((46 : GoUInt32)),
((87 : GoUInt32)),
((114 : GoUInt32)),
((105 : GoUInt32)),
((116 : GoUInt32)),
((40 : GoUInt32)),
((98 : GoUInt32)),
((41 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((125 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((65 : GoUInt32)),
((66 : GoUInt32)),
((67 : GoUInt32)),
((68 : GoUInt32)),
((69 : GoUInt32)),
((70 : GoUInt32)),
((71 : GoUInt32)),
((72 : GoUInt32)),
((73 : GoUInt32)),
((74 : GoUInt32)),
((75 : GoUInt32)),
((76 : GoUInt32)),
((77 : GoUInt32)),
((78 : GoUInt32)),
((79 : GoUInt32)),
((80 : GoUInt32)),
((81 : GoUInt32)),
((82 : GoUInt32)),
((83 : GoUInt32)),
((84 : GoUInt32)),
((85 : GoUInt32)),
((86 : GoUInt32)),
((88 : GoUInt32)),
((120 : GoUInt32)),
((121 : GoUInt32)),
((122 : GoUInt32)),
((33 : GoUInt32)),
((34 : GoUInt32)),
((35 : GoUInt32)),
((194 : GoUInt32)),
((164 : GoUInt32)),
((37 : GoUInt32)),
((38 : GoUInt32)),
((47 : GoUInt32)),
((63 : GoUInt32)),
((34 : GoUInt32))) : Slice<T_token>)) } : T_huffTest)).__copy__()), ((({ _input : ((("testdata/huffman-text.in" : GoString))), _want : ((("testdata/huffman-text.%s.expect" : GoString))), _wantNoInput : ((("testdata/huffman-text.%s.expect-noinput" : GoString))), _tokens : ((new Slice<T_token>(
((47 : GoUInt32)),
((47 : GoUInt32)),
((32 : GoUInt32)),
((67 : GoUInt32)),
((111 : GoUInt32)),
((112 : GoUInt32)),
((121 : GoUInt32)),
((114 : GoUInt32)),
((105 : GoUInt32)),
((103 : GoUInt32)),
((104 : GoUInt32)),
((116 : GoUInt32)),
((32 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((32 : GoUInt32)),
((84 : GoUInt32)),
((104 : GoUInt32)),
((101 : GoUInt32)),
((32 : GoUInt32)),
((71 : GoUInt32)),
((111 : GoUInt32)),
((32 : GoUInt32)),
((65 : GoUInt32)),
((117 : GoUInt32)),
((116 : GoUInt32)),
((104 : GoUInt32)),
((111 : GoUInt32)),
((114 : GoUInt32)),
((115 : GoUInt32)),
((46 : GoUInt32)),
((32 : GoUInt32)),
((65 : GoUInt32)),
((108 : GoUInt32)),
((108 : GoUInt32)),
((32 : GoUInt32)),
((1082130462 : GoUInt32)),
((115 : GoUInt32)),
((32 : GoUInt32)),
((114 : GoUInt32)),
((101 : GoUInt32)),
((115 : GoUInt32)),
((101 : GoUInt32)),
((114 : GoUInt32)),
((118 : GoUInt32)),
((101 : GoUInt32)),
((100 : GoUInt32)),
((46 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((47 : GoUInt32)),
((47 : GoUInt32)),
((32 : GoUInt32)),
((85 : GoUInt32)),
((115 : GoUInt32)),
((101 : GoUInt32)),
((32 : GoUInt32)),
((111 : GoUInt32)),
((102 : GoUInt32)),
((32 : GoUInt32)),
((116 : GoUInt32)),
((104 : GoUInt32)),
((105 : GoUInt32)),
((115 : GoUInt32)),
((32 : GoUInt32)),
((115 : GoUInt32)),
((111 : GoUInt32)),
((117 : GoUInt32)),
((114 : GoUInt32)),
((99 : GoUInt32)),
((101 : GoUInt32)),
((32 : GoUInt32)),
((99 : GoUInt32)),
((111 : GoUInt32)),
((100 : GoUInt32)),
((101 : GoUInt32)),
((32 : GoUInt32)),
((105 : GoUInt32)),
((115 : GoUInt32)),
((32 : GoUInt32)),
((103 : GoUInt32)),
((111 : GoUInt32)),
((118 : GoUInt32)),
((101 : GoUInt32)),
((114 : GoUInt32)),
((110 : GoUInt32)),
((101 : GoUInt32)),
((100 : GoUInt32)),
((32 : GoUInt32)),
((98 : GoUInt32)),
((121 : GoUInt32)),
((32 : GoUInt32)),
((97 : GoUInt32)),
((32 : GoUInt32)),
((66 : GoUInt32)),
((83 : GoUInt32)),
((68 : GoUInt32)),
((45 : GoUInt32)),
((115 : GoUInt32)),
((116 : GoUInt32)),
((121 : GoUInt32)),
((108 : GoUInt32)),
((101 : GoUInt32)),
((1082130486 : GoUInt32)),
((108 : GoUInt32)),
((105 : GoUInt32)),
((99 : GoUInt32)),
((101 : GoUInt32)),
((110 : GoUInt32)),
((115 : GoUInt32)),
((101 : GoUInt32)),
((32 : GoUInt32)),
((116 : GoUInt32)),
((104 : GoUInt32)),
((97 : GoUInt32)),
((116 : GoUInt32)),
((32 : GoUInt32)),
((99 : GoUInt32)),
((97 : GoUInt32)),
((110 : GoUInt32)),
((32 : GoUInt32)),
((98 : GoUInt32)),
((101 : GoUInt32)),
((32 : GoUInt32)),
((102 : GoUInt32)),
((111 : GoUInt32)),
((117 : GoUInt32)),
((110 : GoUInt32)),
((100 : GoUInt32)),
((32 : GoUInt32)),
((105 : GoUInt32)),
((110 : GoUInt32)),
((32 : GoUInt32)),
((116 : GoUInt32)),
((104 : GoUInt32)),
((101 : GoUInt32)),
((32 : GoUInt32)),
((76 : GoUInt32)),
((73 : GoUInt32)),
((67 : GoUInt32)),
((69 : GoUInt32)),
((78 : GoUInt32)),
((83 : GoUInt32)),
((69 : GoUInt32)),
((32 : GoUInt32)),
((102 : GoUInt32)),
((105 : GoUInt32)),
((108 : GoUInt32)),
((101 : GoUInt32)),
((46 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((112 : GoUInt32)),
((97 : GoUInt32)),
((99 : GoUInt32)),
((107 : GoUInt32)),
((97 : GoUInt32)),
((103 : GoUInt32)),
((101 : GoUInt32)),
((32 : GoUInt32)),
((109 : GoUInt32)),
((97 : GoUInt32)),
((105 : GoUInt32)),
((110 : GoUInt32)),
((1077936143 : GoUInt32)),
((105 : GoUInt32)),
((109 : GoUInt32)),
((112 : GoUInt32)),
((111 : GoUInt32)),
((114 : GoUInt32)),
((116 : GoUInt32)),
((32 : GoUInt32)),
((34 : GoUInt32)),
((111 : GoUInt32)),
((115 : GoUInt32)),
((34 : GoUInt32)),
((1077936142 : GoUInt32)),
((102 : GoUInt32)),
((117 : GoUInt32)),
((110 : GoUInt32)),
((99 : GoUInt32)),
((1082130459 : GoUInt32)),
((40 : GoUInt32)),
((41 : GoUInt32)),
((32 : GoUInt32)),
((123 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((9 : GoUInt32)),
((118 : GoUInt32)),
((97 : GoUInt32)),
((114 : GoUInt32)),
((32 : GoUInt32)),
((98 : GoUInt32)),
((32 : GoUInt32)),
((61 : GoUInt32)),
((32 : GoUInt32)),
((109 : GoUInt32)),
((97 : GoUInt32)),
((107 : GoUInt32)),
((101 : GoUInt32)),
((40 : GoUInt32)),
((91 : GoUInt32)),
((93 : GoUInt32)),
((98 : GoUInt32)),
((121 : GoUInt32)),
((116 : GoUInt32)),
((101 : GoUInt32)),
((44 : GoUInt32)),
((32 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((41 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((9 : GoUInt32)),
((102 : GoUInt32)),
((44 : GoUInt32)),
((32 : GoUInt32)),
((95 : GoUInt32)),
((32 : GoUInt32)),
((58 : GoUInt32)),
((61 : GoUInt32)),
((32 : GoUInt32)),
((111 : GoUInt32)),
((115 : GoUInt32)),
((46 : GoUInt32)),
((67 : GoUInt32)),
((114 : GoUInt32)),
((101 : GoUInt32)),
((97 : GoUInt32)),
((116 : GoUInt32)),
((101 : GoUInt32)),
((40 : GoUInt32)),
((34 : GoUInt32)),
((104 : GoUInt32)),
((117 : GoUInt32)),
((102 : GoUInt32)),
((102 : GoUInt32)),
((109 : GoUInt32)),
((97 : GoUInt32)),
((110 : GoUInt32)),
((45 : GoUInt32)),
((110 : GoUInt32)),
((117 : GoUInt32)),
((108 : GoUInt32)),
((108 : GoUInt32)),
((45 : GoUInt32)),
((109 : GoUInt32)),
((97 : GoUInt32)),
((120 : GoUInt32)),
((46 : GoUInt32)),
((105 : GoUInt32)),
((110 : GoUInt32)),
((34 : GoUInt32)),
((1082130474 : GoUInt32)),
((46 : GoUInt32)),
((87 : GoUInt32)),
((114 : GoUInt32)),
((105 : GoUInt32)),
((116 : GoUInt32)),
((101 : GoUInt32)),
((40 : GoUInt32)),
((98 : GoUInt32)),
((41 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((125 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32))) : Slice<T_token>)) } : T_huffTest)) == null ? null : (({ _input : ((("testdata/huffman-text.in" : GoString))), _want : ((("testdata/huffman-text.%s.expect" : GoString))), _wantNoInput : ((("testdata/huffman-text.%s.expect-noinput" : GoString))), _tokens : ((new Slice<T_token>(
((47 : GoUInt32)),
((47 : GoUInt32)),
((32 : GoUInt32)),
((67 : GoUInt32)),
((111 : GoUInt32)),
((112 : GoUInt32)),
((121 : GoUInt32)),
((114 : GoUInt32)),
((105 : GoUInt32)),
((103 : GoUInt32)),
((104 : GoUInt32)),
((116 : GoUInt32)),
((32 : GoUInt32)),
((50 : GoUInt32)),
((48 : GoUInt32)),
((48 : GoUInt32)),
((57 : GoUInt32)),
((32 : GoUInt32)),
((84 : GoUInt32)),
((104 : GoUInt32)),
((101 : GoUInt32)),
((32 : GoUInt32)),
((71 : GoUInt32)),
((111 : GoUInt32)),
((32 : GoUInt32)),
((65 : GoUInt32)),
((117 : GoUInt32)),
((116 : GoUInt32)),
((104 : GoUInt32)),
((111 : GoUInt32)),
((114 : GoUInt32)),
((115 : GoUInt32)),
((46 : GoUInt32)),
((32 : GoUInt32)),
((65 : GoUInt32)),
((108 : GoUInt32)),
((108 : GoUInt32)),
((32 : GoUInt32)),
((1082130462 : GoUInt32)),
((115 : GoUInt32)),
((32 : GoUInt32)),
((114 : GoUInt32)),
((101 : GoUInt32)),
((115 : GoUInt32)),
((101 : GoUInt32)),
((114 : GoUInt32)),
((118 : GoUInt32)),
((101 : GoUInt32)),
((100 : GoUInt32)),
((46 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((47 : GoUInt32)),
((47 : GoUInt32)),
((32 : GoUInt32)),
((85 : GoUInt32)),
((115 : GoUInt32)),
((101 : GoUInt32)),
((32 : GoUInt32)),
((111 : GoUInt32)),
((102 : GoUInt32)),
((32 : GoUInt32)),
((116 : GoUInt32)),
((104 : GoUInt32)),
((105 : GoUInt32)),
((115 : GoUInt32)),
((32 : GoUInt32)),
((115 : GoUInt32)),
((111 : GoUInt32)),
((117 : GoUInt32)),
((114 : GoUInt32)),
((99 : GoUInt32)),
((101 : GoUInt32)),
((32 : GoUInt32)),
((99 : GoUInt32)),
((111 : GoUInt32)),
((100 : GoUInt32)),
((101 : GoUInt32)),
((32 : GoUInt32)),
((105 : GoUInt32)),
((115 : GoUInt32)),
((32 : GoUInt32)),
((103 : GoUInt32)),
((111 : GoUInt32)),
((118 : GoUInt32)),
((101 : GoUInt32)),
((114 : GoUInt32)),
((110 : GoUInt32)),
((101 : GoUInt32)),
((100 : GoUInt32)),
((32 : GoUInt32)),
((98 : GoUInt32)),
((121 : GoUInt32)),
((32 : GoUInt32)),
((97 : GoUInt32)),
((32 : GoUInt32)),
((66 : GoUInt32)),
((83 : GoUInt32)),
((68 : GoUInt32)),
((45 : GoUInt32)),
((115 : GoUInt32)),
((116 : GoUInt32)),
((121 : GoUInt32)),
((108 : GoUInt32)),
((101 : GoUInt32)),
((1082130486 : GoUInt32)),
((108 : GoUInt32)),
((105 : GoUInt32)),
((99 : GoUInt32)),
((101 : GoUInt32)),
((110 : GoUInt32)),
((115 : GoUInt32)),
((101 : GoUInt32)),
((32 : GoUInt32)),
((116 : GoUInt32)),
((104 : GoUInt32)),
((97 : GoUInt32)),
((116 : GoUInt32)),
((32 : GoUInt32)),
((99 : GoUInt32)),
((97 : GoUInt32)),
((110 : GoUInt32)),
((32 : GoUInt32)),
((98 : GoUInt32)),
((101 : GoUInt32)),
((32 : GoUInt32)),
((102 : GoUInt32)),
((111 : GoUInt32)),
((117 : GoUInt32)),
((110 : GoUInt32)),
((100 : GoUInt32)),
((32 : GoUInt32)),
((105 : GoUInt32)),
((110 : GoUInt32)),
((32 : GoUInt32)),
((116 : GoUInt32)),
((104 : GoUInt32)),
((101 : GoUInt32)),
((32 : GoUInt32)),
((76 : GoUInt32)),
((73 : GoUInt32)),
((67 : GoUInt32)),
((69 : GoUInt32)),
((78 : GoUInt32)),
((83 : GoUInt32)),
((69 : GoUInt32)),
((32 : GoUInt32)),
((102 : GoUInt32)),
((105 : GoUInt32)),
((108 : GoUInt32)),
((101 : GoUInt32)),
((46 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((112 : GoUInt32)),
((97 : GoUInt32)),
((99 : GoUInt32)),
((107 : GoUInt32)),
((97 : GoUInt32)),
((103 : GoUInt32)),
((101 : GoUInt32)),
((32 : GoUInt32)),
((109 : GoUInt32)),
((97 : GoUInt32)),
((105 : GoUInt32)),
((110 : GoUInt32)),
((1077936143 : GoUInt32)),
((105 : GoUInt32)),
((109 : GoUInt32)),
((112 : GoUInt32)),
((111 : GoUInt32)),
((114 : GoUInt32)),
((116 : GoUInt32)),
((32 : GoUInt32)),
((34 : GoUInt32)),
((111 : GoUInt32)),
((115 : GoUInt32)),
((34 : GoUInt32)),
((1077936142 : GoUInt32)),
((102 : GoUInt32)),
((117 : GoUInt32)),
((110 : GoUInt32)),
((99 : GoUInt32)),
((1082130459 : GoUInt32)),
((40 : GoUInt32)),
((41 : GoUInt32)),
((32 : GoUInt32)),
((123 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((9 : GoUInt32)),
((118 : GoUInt32)),
((97 : GoUInt32)),
((114 : GoUInt32)),
((32 : GoUInt32)),
((98 : GoUInt32)),
((32 : GoUInt32)),
((61 : GoUInt32)),
((32 : GoUInt32)),
((109 : GoUInt32)),
((97 : GoUInt32)),
((107 : GoUInt32)),
((101 : GoUInt32)),
((40 : GoUInt32)),
((91 : GoUInt32)),
((93 : GoUInt32)),
((98 : GoUInt32)),
((121 : GoUInt32)),
((116 : GoUInt32)),
((101 : GoUInt32)),
((44 : GoUInt32)),
((32 : GoUInt32)),
((54 : GoUInt32)),
((53 : GoUInt32)),
((53 : GoUInt32)),
((51 : GoUInt32)),
((53 : GoUInt32)),
((41 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((9 : GoUInt32)),
((102 : GoUInt32)),
((44 : GoUInt32)),
((32 : GoUInt32)),
((95 : GoUInt32)),
((32 : GoUInt32)),
((58 : GoUInt32)),
((61 : GoUInt32)),
((32 : GoUInt32)),
((111 : GoUInt32)),
((115 : GoUInt32)),
((46 : GoUInt32)),
((67 : GoUInt32)),
((114 : GoUInt32)),
((101 : GoUInt32)),
((97 : GoUInt32)),
((116 : GoUInt32)),
((101 : GoUInt32)),
((40 : GoUInt32)),
((34 : GoUInt32)),
((104 : GoUInt32)),
((117 : GoUInt32)),
((102 : GoUInt32)),
((102 : GoUInt32)),
((109 : GoUInt32)),
((97 : GoUInt32)),
((110 : GoUInt32)),
((45 : GoUInt32)),
((110 : GoUInt32)),
((117 : GoUInt32)),
((108 : GoUInt32)),
((108 : GoUInt32)),
((45 : GoUInt32)),
((109 : GoUInt32)),
((97 : GoUInt32)),
((120 : GoUInt32)),
((46 : GoUInt32)),
((105 : GoUInt32)),
((110 : GoUInt32)),
((34 : GoUInt32)),
((1082130474 : GoUInt32)),
((46 : GoUInt32)),
((87 : GoUInt32)),
((114 : GoUInt32)),
((105 : GoUInt32)),
((116 : GoUInt32)),
((101 : GoUInt32)),
((40 : GoUInt32)),
((98 : GoUInt32)),
((41 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32)),
((125 : GoUInt32)),
((13 : GoUInt32)),
((10 : GoUInt32))) : Slice<T_token>)) } : T_huffTest)).__copy__()), ((({ _input : ((("testdata/huffman-zero.in" : GoString))), _want : ((("testdata/huffman-zero.%s.expect" : GoString))), _wantNoInput : ((("testdata/huffman-zero.%s.expect-noinput" : GoString))), _tokens : ((new Slice<T_token>(((48 : GoUInt32)), ((2143289344 : GoUInt32)), ((1266679808 : GoUInt32))) : Slice<T_token>)) } : T_huffTest)) == null ? null : (({ _input : ((("testdata/huffman-zero.in" : GoString))), _want : ((("testdata/huffman-zero.%s.expect" : GoString))), _wantNoInput : ((("testdata/huffman-zero.%s.expect-noinput" : GoString))), _tokens : ((new Slice<T_token>(((48 : GoUInt32)), ((2143289344 : GoUInt32)), ((1266679808 : GoUInt32))) : Slice<T_token>)) } : T_huffTest)).__copy__()), ((({ _input : ((("" : GoString))), _want : ((("" : GoString))), _wantNoInput : ((("testdata/null-long-match.%s.expect-noinput" : GoString))), _tokens : ((new Slice<T_token>(
((0 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((1094713344 : GoUInt32))) : Slice<T_token>)) } : T_huffTest)) == null ? null : (({ _input : ((("" : GoString))), _want : ((("" : GoString))), _wantNoInput : ((("testdata/null-long-match.%s.expect-noinput" : GoString))), _tokens : ((new Slice<T_token>(
((0 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((2143289344 : GoUInt32)),
((1094713344 : GoUInt32))) : Slice<T_token>)) } : T_huffTest)).__copy__())) : Slice<T_huffTest>));
var _suites : Slice<T__struct_4> = ((new Slice<T__struct_4>(((new T__struct_4(((("Digits" : GoString))), ((("../testdata/e.txt" : GoString)))) : T__struct_4)), ((new T__struct_4(((("Newton" : GoString))), ((("../../testdata/Isaac.Newton-Opticks.txt" : GoString)))) : T__struct_4))) : Slice<T__struct_4>));
var _levelTests : Slice<T__struct_5> = ((new Slice<T__struct_5>(((new T__struct_5(((("Huffman" : GoString))), ((-2 : GoInt))) : T__struct_5)), ((new T__struct_5(((("Speed" : GoString))), ((1 : GoInt))) : T__struct_5)), ((new T__struct_5(((("Default" : GoString))), ((-1 : GoInt))) : T__struct_5)), ((new T__struct_5(((("Compression" : GoString))), ((9 : GoInt))) : T__struct_5))) : Slice<T__struct_5>));
var _sizes : Slice<T__struct_6> = ((new Slice<T__struct_6>(((new T__struct_6(((("1e4" : GoString))), ((10000 : GoInt))) : T__struct_6)), ((new T__struct_6(((("1e5" : GoString))), ((100000 : GoInt))) : T__struct_6)), ((new T__struct_6(((("1e6" : GoString))), ((1e+06 : GoInt))) : T__struct_6))) : Slice<T__struct_6>));
var _huffOffset : T_huffmanEncoder = ((null : Ref<T_huffmanEncoder>));
var _fixedOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
var _fixedHuffmanDecoder : T_huffmanDecoder = new T_huffmanDecoder();
typedef Resetter = StructType & {
    public function reset(_r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):Error;
};
typedef Reader = StructType & {
    > stdgo.io.Io.Reader,
    > stdgo.io.Io.ByteReader,
};
@:structInit class T_compressionLevel {
    public var _level : GoInt = ((0 : GoInt));
    public var _good : GoInt = ((0 : GoInt));
    public var _lazy : GoInt = ((0 : GoInt));
    public var _nice : GoInt = ((0 : GoInt));
    public var _chain : GoInt = ((0 : GoInt));
    public var _fastSkipHashing : GoInt = ((0 : GoInt));
    public function new(?_level:GoInt, ?_good:GoInt, ?_lazy:GoInt, ?_nice:GoInt, ?_chain:GoInt, ?_fastSkipHashing:GoInt) {
        if (_level != null) this._level = _level;
        if (_good != null) this._good = _good;
        if (_lazy != null) this._lazy = _lazy;
        if (_nice != null) this._nice = _nice;
        if (_chain != null) this._chain = _chain;
        if (_fastSkipHashing != null) this._fastSkipHashing = _fastSkipHashing;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_compressionLevel(_level, _good, _lazy, _nice, _chain, _fastSkipHashing);
    }
}
@:structInit @:using(stdgo.compress.flate.Flate.T_compressor_static_extension) class T_compressor {
    @:keep
    public function _close():Error {
        var _d = this;
        _d;
        if (_d._err != null) {
            return _d._err;
        };
        _d._sync = true;
        _d._step(_d);
        if (_d._err != null) {
            return _d._err;
        };
        {
            _d._w._writeStoredHeader(((0 : GoInt)), true);
            if (_d._w._err != null) {
                return _d._w._err;
            };
        };
        _d._w._flush();
        return _d._w._err;
    }
    @:keep
    public function _reset(_w:stdgo.io.Io.Writer):Void {
        var _d = this;
        _d;
        _d._w._reset(_w);
        _d._sync = false;
        _d._err = ((null : stdgo.Error));
        if (_d._compressionLevel._level == ((0 : GoInt))) {
            _d._windowEnd = ((0 : GoInt));
        } else if (_d._compressionLevel._level == ((1 : GoInt))) {
            _d._windowEnd = ((0 : GoInt));
            _d._tokens = ((_d._tokens.__slice__(0, ((0 : GoInt))) : Slice<T_token>));
            _d._bestSpeed._reset();
        } else {
            _d._chainHead = ((-1 : GoInt));
            for (_i => _ in _d._hashHead) {
                if (_d._hashHead != null) _d._hashHead[_i] = ((0 : GoUInt32));
            };
            for (_i => _ in _d._hashPrev) {
                if (_d._hashPrev != null) _d._hashPrev[_i] = ((0 : GoUInt32));
            };
            _d._hashOffset = ((1 : GoInt));
            {
                final __tmp__0 = ((0 : GoInt));
                final __tmp__1 = ((0 : GoInt));
                _d._index = __tmp__0;
                _d._windowEnd = __tmp__1;
            };
            {
                final __tmp__0 = ((0 : GoInt));
                final __tmp__1 = false;
                _d._blockStart = __tmp__0;
                _d._byteAvailable = __tmp__1;
            };
            _d._tokens = ((_d._tokens.__slice__(0, ((0 : GoInt))) : Slice<T_token>));
            _d._length = ((3 : GoInt));
            _d._offset = ((0 : GoInt));
            _d._hash = ((0 : GoUInt32));
            _d._maxInsertIndex = ((0 : GoInt));
        };
    }
    @:keep
    public function _init(_w:stdgo.io.Io.Writer, _level:GoInt):Error {
        var _d = this;
        _d;
        var _err:Error = ((null : stdgo.Error));
        _d._w = _newHuffmanBitWriter(_w);
        {
            var __switchIndex__ = -1;
            while (true) {
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _level == ((0 : GoInt)))) {
                    _d._window = new Slice<GoUInt8>(...[for (i in 0 ... ((((65535 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    _d._fill = (T_compressor_static_extension)._fillStore;
                    _d._step = (T_compressor_static_extension)._store;
                    break;
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _level == ((-2 : GoInt)))) {
                    _d._window = new Slice<GoUInt8>(...[for (i in 0 ... ((((65535 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    _d._fill = (T_compressor_static_extension)._fillStore;
                    _d._step = (T_compressor_static_extension)._storeHuff;
                    break;
                    break;
                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _level == ((1 : GoInt)))) {
                    _d._compressionLevel = ((_levels != null ? _levels[_level] : new T_compressionLevel()) == null ? null : (_levels != null ? _levels[_level] : new T_compressionLevel()).__copy__());
                    _d._window = new Slice<GoUInt8>(...[for (i in 0 ... ((((65535 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    _d._fill = (T_compressor_static_extension)._fillStore;
                    _d._step = (T_compressor_static_extension)._encSpeed;
                    _d._bestSpeed = _newDeflateFast();
                    _d._tokens = new Slice<T_token>(...[for (i in 0 ... ((((65535 : GoInt)) : GoInt)).toBasic()) new T_token()]);
                    break;
                    break;
                } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && _level == ((-1 : GoInt)))) {
                    _level = ((6 : GoInt));
                    @:fallthrough {
                        __switchIndex__ = 4;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (((2 : GoInt)) <= _level) && (_level <= ((9 : GoInt))))) {
                    _d._compressionLevel = ((_levels != null ? _levels[_level] : new T_compressionLevel()) == null ? null : (_levels != null ? _levels[_level] : new T_compressionLevel()).__copy__());
                    _d._initDeflate();
                    _d._fill = (T_compressor_static_extension)._fillDeflate;
                    _d._step = (T_compressor_static_extension)._deflate;
                    break;
                    break;
                } else {
                    return stdgo.fmt.Fmt.errorf(((("flate: invalid compression level %d: want value in range [-2, 9]" : GoString))), Go.toInterface(_level));
                    break;
                };
                break;
            };
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function _syncFlush():Error {
        var _d = this;
        _d;
        if (_d._err != null) {
            return _d._err;
        };
        _d._sync = true;
        _d._step(_d);
        if (_d._err == null) {
            _d._w._writeStoredHeader(((0 : GoInt)), false);
            _d._w._flush();
            _d._err = _d._w._err;
        };
        _d._sync = false;
        return _d._err;
    }
    @:keep
    public function _write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _d = this;
        _d;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_d._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _d._err };
        };
        _n = (_b != null ? _b.length : ((0 : GoInt)));
        while ((_b != null ? _b.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _d._step(_d);
            _b = ((_b.__slice__(_d._fill(_d, _b)) : Slice<GoUInt8>));
            if (_d._err != null) {
                return { _0 : ((0 : GoInt)), _1 : _d._err };
            };
        };
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function _storeHuff():Void {
        var _d = this;
        _d;
        if (((_d._windowEnd < (_d._window != null ? _d._window.length : ((0 : GoInt)))) && !_d._sync) || (_d._windowEnd == ((0 : GoInt)))) {
            return;
        };
        _d._w._writeBlockHuff(false, ((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
        _d._err = _d._w._err;
        _d._windowEnd = ((0 : GoInt));
    }
    @:keep
    public function _store():Void {
        var _d = this;
        _d;
        if ((_d._windowEnd > ((0 : GoInt))) && ((_d._windowEnd == ((65535 : GoInt))) || _d._sync)) {
            _d._err = _d._writeStoredBlock(((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
            _d._windowEnd = ((0 : GoInt));
        };
    }
    @:keep
    public function _fillStore(_b:Slice<GoByte>):GoInt {
        var _d = this;
        _d;
        var _n:GoInt = Go.copySlice(((_d._window.__slice__(_d._windowEnd) : Slice<GoUInt8>)), _b);
        _d._windowEnd = _d._windowEnd + (_n);
        return _n;
    }
    @:keep
    public function _deflate():Void {
        var _d = this;
        _d;
        stdgo.internal.Macro.controlFlow({
            if (((_d._windowEnd - _d._index) < ((262 : GoInt))) && !_d._sync) {
                return;
            };
            _d._maxInsertIndex = _d._windowEnd - ((3 : GoInt));
            if (_d._index < _d._maxInsertIndex) {
                _d._hash = _hash4(((_d._window.__slice__(_d._index, _d._index + ((4 : GoInt))) : Slice<GoUInt8>)));
            };
            @:label("Loop") while (true) {
                if (_d._index > _d._windowEnd) {
                    throw Go.toInterface(((("index > windowEnd" : GoString))));
                };
                var _lookahead:GoInt = _d._windowEnd - _d._index;
                if (_lookahead < ((262 : GoInt))) {
                    if (!_d._sync) {
                        @:break {
                            ____exit____ = true;
                            ____break____ = true;
                            break;
                        };
                    };
                    if (_d._index > _d._windowEnd) {
                        throw Go.toInterface(((("index > windowEnd" : GoString))));
                    };
                    if (_lookahead == ((0 : GoInt))) {
                        if (_d._byteAvailable) {
                            _d._tokens = (_d._tokens != null ? _d._tokens.__append__(_literalToken((((_d._window != null ? _d._window[_d._index - ((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)))) : new Slice<T_token>(_literalToken((((_d._window != null ? _d._window[_d._index - ((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)))));
                            _d._byteAvailable = false;
                        };
                        if ((_d._tokens != null ? _d._tokens.length : ((0 : GoInt))) > ((0 : GoInt))) {
                            {
                                _d._err = _d._writeBlock(_d._tokens, _d._index);
                                if (_d._err != null) {
                                    return;
                                };
                            };
                            _d._tokens = ((_d._tokens.__slice__(0, ((0 : GoInt))) : Slice<T_token>));
                        };
                        @:break {
                            ____exit____ = true;
                            ____break____ = true;
                            break;
                        };
                    };
                };
                if (_d._index < _d._maxInsertIndex) {
                    _d._hash = _hash4(((_d._window.__slice__(_d._index, _d._index + ((4 : GoInt))) : Slice<GoUInt8>)));
                    var _hh:Pointer<GoUInt32> = Go.pointer((_d._hashHead != null ? _d._hashHead[_d._hash & ((131071 : GoUInt32))] : ((0 : GoUInt32))));
                    _d._chainHead = ((_hh.value : GoInt));
                    if (_d._hashPrev != null) _d._hashPrev[_d._index & ((32767 : GoInt))] = ((_d._chainHead : GoUInt32));
                    _hh.value = (((_d._index + _d._hashOffset) : GoUInt32));
                };
                var _prevLength:GoInt = _d._length;
                var _prevOffset:GoInt = _d._offset;
                _d._length = ((3 : GoInt));
                _d._offset = ((0 : GoInt));
                var _minIndex:GoInt = _d._index - ((32768 : GoInt));
                if (_minIndex < ((0 : GoInt))) {
                    _minIndex = ((0 : GoInt));
                };
                if (((_d._chainHead - _d._hashOffset) >= _minIndex) && (((_d._fastSkipHashing != ((2147483647 : GoInt))) && (_lookahead > ((3 : GoInt)))) || (((_d._fastSkipHashing == ((2147483647 : GoInt))) && (_lookahead > _prevLength)) && (_prevLength < _d._lazy)))) {
                    {
                        var __tmp__ = _d._findMatch(_d._index, _d._chainHead - _d._hashOffset, ((3 : GoInt)), _lookahead), _newLength:GoInt = __tmp__._0, _newOffset:GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
                        if (_ok) {
                            _d._length = _newLength;
                            _d._offset = _newOffset;
                        };
                    };
                };
                if (((_d._fastSkipHashing != ((2147483647 : GoInt))) && (_d._length >= ((4 : GoInt)))) || (((_d._fastSkipHashing == ((2147483647 : GoInt))) && (_prevLength >= ((4 : GoInt)))) && (_d._length <= _prevLength))) {
                    if (_d._fastSkipHashing != ((2147483647 : GoInt))) {
                        _d._tokens = (_d._tokens != null ? _d._tokens.__append__(_matchToken((((_d._length - ((3 : GoInt))) : GoUInt32)), (((_d._offset - ((1 : GoInt))) : GoUInt32)))) : new Slice<T_token>(_matchToken((((_d._length - ((3 : GoInt))) : GoUInt32)), (((_d._offset - ((1 : GoInt))) : GoUInt32)))));
                    } else {
                        _d._tokens = (_d._tokens != null ? _d._tokens.__append__(_matchToken((((_prevLength - ((3 : GoInt))) : GoUInt32)), (((_prevOffset - ((1 : GoInt))) : GoUInt32)))) : new Slice<T_token>(_matchToken((((_prevLength - ((3 : GoInt))) : GoUInt32)), (((_prevOffset - ((1 : GoInt))) : GoUInt32)))));
                    };
                    if (_d._length <= _d._fastSkipHashing) {
                        var _newIndex:GoInt = ((0 : GoInt));
                        if (_d._fastSkipHashing != ((2147483647 : GoInt))) {
                            _newIndex = _d._index + _d._length;
                        } else {
                            _newIndex = (_d._index + _prevLength) - ((1 : GoInt));
                        };
                        var _index:GoInt = _d._index;
                        {
                            _index++;
                            Go.cfor(_index < _newIndex, _index++, {
                                if (_index < _d._maxInsertIndex) {
                                    _d._hash = _hash4(((_d._window.__slice__(_index, _index + ((4 : GoInt))) : Slice<GoUInt8>)));
                                    var _hh:Pointer<GoUInt32> = Go.pointer((_d._hashHead != null ? _d._hashHead[_d._hash & ((131071 : GoUInt32))] : ((0 : GoUInt32))));
                                    if (_d._hashPrev != null) _d._hashPrev[_index & ((32767 : GoInt))] = _hh.value;
                                    _hh.value = (((_index + _d._hashOffset) : GoUInt32));
                                };
                            });
                        };
                        _d._index = _index;
                        if (_d._fastSkipHashing == ((2147483647 : GoInt))) {
                            _d._byteAvailable = false;
                            _d._length = ((3 : GoInt));
                        };
                    } else {
                        _d._index = _d._index + (_d._length);
                        if (_d._index < _d._maxInsertIndex) {
                            _d._hash = _hash4(((_d._window.__slice__(_d._index, _d._index + ((4 : GoInt))) : Slice<GoUInt8>)));
                        };
                    };
                    if ((_d._tokens != null ? _d._tokens.length : ((0 : GoInt))) == ((16384 : GoInt))) {
                        {
                            _d._err = _d._writeBlock(_d._tokens, _d._index);
                            if (_d._err != null) {
                                return;
                            };
                        };
                        _d._tokens = ((_d._tokens.__slice__(0, ((0 : GoInt))) : Slice<T_token>));
                    };
                } else {
                    if ((_d._fastSkipHashing != ((2147483647 : GoInt))) || _d._byteAvailable) {
                        var _i:GoInt = _d._index - ((1 : GoInt));
                        if (_d._fastSkipHashing != ((2147483647 : GoInt))) {
                            _i = _d._index;
                        };
                        _d._tokens = (_d._tokens != null ? _d._tokens.__append__(_literalToken((((_d._window != null ? _d._window[_i] : ((0 : GoUInt8))) : GoUInt32)))) : new Slice<T_token>(_literalToken((((_d._window != null ? _d._window[_i] : ((0 : GoUInt8))) : GoUInt32)))));
                        if ((_d._tokens != null ? _d._tokens.length : ((0 : GoInt))) == ((16384 : GoInt))) {
                            {
                                _d._err = _d._writeBlock(_d._tokens, _i + ((1 : GoInt)));
                                if (_d._err != null) {
                                    return;
                                };
                            };
                            _d._tokens = ((_d._tokens.__slice__(0, ((0 : GoInt))) : Slice<T_token>));
                        };
                    };
                    _d._index++;
                    if (_d._fastSkipHashing == ((2147483647 : GoInt))) {
                        _d._byteAvailable = true;
                    };
                };
            };
        });
    }
    @:keep
    public function _initDeflate():Void {
        var _d = this;
        _d;
        _d._window = new Slice<GoUInt8>(...[for (i in 0 ... ((((65536 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _d._hashOffset = ((1 : GoInt));
        _d._tokens = new Slice<T_token>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_token()]).__setCap__(((((16385 : GoInt)) : GoInt)).toBasic());
        _d._length = ((3 : GoInt));
        _d._offset = ((0 : GoInt));
        _d._byteAvailable = false;
        _d._index = ((0 : GoInt));
        _d._hash = ((0 : GoUInt32));
        _d._chainHead = ((-1 : GoInt));
        _d._bulkHasher = _bulkHash4;
    }
    @:keep
    public function _encSpeed():Void {
        var _d = this;
        _d;
        if (_d._windowEnd < ((65535 : GoInt))) {
            if (!_d._sync) {
                return;
            };
            if (_d._windowEnd < ((128 : GoInt))) {
                if (_d._windowEnd == ((0 : GoInt))) {
                    return;
                } else if (_d._windowEnd <= ((16 : GoInt))) {
                    _d._err = _d._writeStoredBlock(((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
                } else {
                    _d._w._writeBlockHuff(false, ((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
                    _d._err = _d._w._err;
                };
                _d._windowEnd = ((0 : GoInt));
                _d._bestSpeed._reset();
                return;
            };
        };
        _d._tokens = _d._bestSpeed._encode(((_d._tokens.__slice__(0, ((0 : GoInt))) : Slice<T_token>)), ((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
        if ((_d._tokens != null ? _d._tokens.length : ((0 : GoInt))) > (_d._windowEnd - (_d._windowEnd >> ((4 : GoUnTypedInt))))) {
            _d._w._writeBlockHuff(false, ((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
        } else {
            _d._w._writeBlockDynamic(_d._tokens, false, ((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
        };
        _d._err = _d._w._err;
        _d._windowEnd = ((0 : GoInt));
    }
    @:keep
    public function _writeStoredBlock(_buf:Slice<GoByte>):Error {
        var _d = this;
        _d;
        {
            _d._w._writeStoredHeader((_buf != null ? _buf.length : ((0 : GoInt))), false);
            if (_d._w._err != null) {
                return _d._w._err;
            };
        };
        _d._w._writeBytes(_buf);
        return _d._w._err;
    }
    @:keep
    public function _findMatch(_pos:GoInt, _prevHead:GoInt, _prevLength:GoInt, _lookahead:GoInt):{ var _0 : GoInt; var _1 : GoInt; var _2 : Bool; } {
        var _d = this;
        _d;
        var _length:GoInt = ((0 : GoInt)), _offset:GoInt = ((0 : GoInt)), _ok:Bool = false;
        var _minMatchLook:GoInt = ((258 : GoInt));
        if (_lookahead < _minMatchLook) {
            _minMatchLook = _lookahead;
        };
        var _win:Slice<GoUInt8> = ((_d._window.__slice__(((0 : GoInt)), _pos + _minMatchLook) : Slice<GoUInt8>));
        var _nice:GoInt = (_win != null ? _win.length : ((0 : GoInt))) - _pos;
        if (_d._nice < _nice) {
            _nice = _d._nice;
        };
        var _tries:GoInt = _d._chain;
        _length = _prevLength;
        if (_length >= _d._good) {
            _tries = _tries >> (((2 : GoUnTypedInt)));
        };
        var _wEnd:GoUInt8 = (_win != null ? _win[_pos + _length] : ((0 : GoUInt8)));
        var _wPos:Slice<GoUInt8> = ((_win.__slice__(_pos) : Slice<GoUInt8>));
        var _minIndex:GoInt = _pos - ((32768 : GoInt));
        {
            var _i:GoInt = _prevHead;
            Go.cfor(_tries > ((0 : GoInt)), _tries--, {
                if (_wEnd == (_win != null ? _win[_i + _length] : ((0 : GoUInt8)))) {
                    var _n:GoInt = _matchLen(((_win.__slice__(_i) : Slice<GoUInt8>)), _wPos, _minMatchLook);
                    if ((_n > _length) && ((_n > ((4 : GoInt))) || ((_pos - _i) <= ((4096 : GoInt))))) {
                        _length = _n;
                        _offset = _pos - _i;
                        _ok = true;
                        if (_n >= _nice) {
                            break;
                        };
                        _wEnd = (_win != null ? _win[_pos + _n] : ((0 : GoUInt8)));
                    };
                };
                if (_i == _minIndex) {
                    break;
                };
                _i = (((_d._hashPrev != null ? _d._hashPrev[_i & ((32767 : GoInt))] : ((0 : GoUInt32))) : GoInt)) - _d._hashOffset;
                if ((_i < _minIndex) || (_i < ((0 : GoInt)))) {
                    break;
                };
            });
        };
        return { _0 : _length, _1 : _offset, _2 : _ok };
    }
    @:keep
    public function _fillWindow(_b:Slice<GoByte>):Void {
        var _d = this;
        _d;
        if (_d._compressionLevel._level < ((2 : GoInt))) {
            return;
        };
        if ((_d._index != ((0 : GoInt))) || (_d._windowEnd != ((0 : GoInt)))) {
            throw Go.toInterface(((("internal error: fillWindow called with stale data" : GoString))));
        };
        if ((_b != null ? _b.length : ((0 : GoInt))) > ((32768 : GoInt))) {
            _b = ((_b.__slice__((_b != null ? _b.length : ((0 : GoInt))) - ((32768 : GoInt))) : Slice<GoUInt8>));
        };
        var _n:GoInt = Go.copySlice(_d._window, _b);
        var _loops:GoInt = ((_n + ((256 : GoInt))) - ((4 : GoInt))) / ((256 : GoInt));
        {
            var _j:GoInt = ((0 : GoInt));
            Go.cfor(_j < _loops, _j++, {
                var _index:GoInt = _j * ((256 : GoInt));
                var _end:GoInt = ((_index + ((256 : GoInt))) + ((4 : GoInt))) - ((1 : GoInt));
                if (_end > _n) {
                    _end = _n;
                };
                var _toCheck:Slice<GoUInt8> = ((_d._window.__slice__(_index, _end) : Slice<GoUInt8>));
                var _dstSize:GoInt = ((_toCheck != null ? _toCheck.length : ((0 : GoInt))) - ((4 : GoInt))) + ((1 : GoInt));
                if (_dstSize <= ((0 : GoInt))) {
                    continue;
                };
                var _dst:Slice<GoUInt32> = ((_d._hashMatch.__slice__(0, _dstSize) : Slice<GoUInt32>));
                _d._bulkHasher(_toCheck, _dst);
                var _newH:GoUInt32 = ((0 : GoUInt32));
                for (_i => _val in _dst) {
                    var _di:GoInt = _i + _index;
                    _newH = _val;
                    var _hh:Pointer<GoUInt32> = Go.pointer((_d._hashHead != null ? _d._hashHead[_newH & ((131071 : GoUInt32))] : ((0 : GoUInt32))));
                    if (_d._hashPrev != null) _d._hashPrev[_di & ((32767 : GoInt))] = _hh.value;
                    _hh.value = (((_di + _d._hashOffset) : GoUInt32));
                };
                _d._hash = _newH;
            });
        };
        _d._windowEnd = _n;
        _d._index = _n;
    }
    @:keep
    public function _writeBlock(_tokens:Slice<T_token>, _index:GoInt):Error {
        var _d = this;
        _d;
        if (_index > ((0 : GoInt))) {
            var _window:Slice<GoByte> = ((null : Slice<GoUInt8>));
            if (_d._blockStart <= _index) {
                _window = ((_d._window.__slice__(_d._blockStart, _index) : Slice<GoUInt8>));
            };
            _d._blockStart = _index;
            _d._w._writeBlock(_tokens, false, _window);
            return _d._w._err;
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function _fillDeflate(_b:Slice<GoByte>):GoInt {
        var _d = this;
        _d;
        if (_d._index >= ((65274 : GoInt))) {
            Go.copySlice(_d._window, ((_d._window.__slice__(((32768 : GoInt)), ((65536 : GoInt))) : Slice<GoUInt8>)));
            _d._index = _d._index - (((32768 : GoInt)));
            _d._windowEnd = _d._windowEnd - (((32768 : GoInt)));
            if (_d._blockStart >= ((32768 : GoInt))) {
                _d._blockStart = _d._blockStart - (((32768 : GoInt)));
            } else {
                _d._blockStart = ((2147483647 : GoInt));
            };
            _d._hashOffset = _d._hashOffset + (((32768 : GoInt)));
            if (_d._hashOffset > ((16777216 : GoInt))) {
                var _delta:GoInt = _d._hashOffset - ((1 : GoInt));
                _d._hashOffset = _d._hashOffset - (_delta);
                _d._chainHead = _d._chainHead - (_delta);
                for (_i => _v in ((_d._hashPrev.__slice__(0) : Slice<GoUInt32>))) {
                    if (((_v : GoInt)) > _delta) {
                        if (_d._hashPrev != null) _d._hashPrev[_i] = (((((_v : GoInt)) - _delta) : GoUInt32));
                    } else {
                        if (_d._hashPrev != null) _d._hashPrev[_i] = ((0 : GoUInt32));
                    };
                };
                for (_i => _v in ((_d._hashHead.__slice__(0) : Slice<GoUInt32>))) {
                    if (((_v : GoInt)) > _delta) {
                        if (_d._hashHead != null) _d._hashHead[_i] = (((((_v : GoInt)) - _delta) : GoUInt32));
                    } else {
                        if (_d._hashHead != null) _d._hashHead[_i] = ((0 : GoUInt32));
                    };
                };
            };
        };
        var _n:GoInt = Go.copySlice(((_d._window.__slice__(_d._windowEnd) : Slice<GoUInt8>)), _b);
        _d._windowEnd = _d._windowEnd + (_n);
        return _n;
    }
    @:embedded
    public var _compressionLevel : T_compressionLevel = new T_compressionLevel();
    public var _w : Ref<T_huffmanBitWriter> = ((null : Ref<T_huffmanBitWriter>));
    public var _bulkHasher : (Slice<GoUInt8>, Slice<GoUInt32>) -> Void = null;
    public var _fill : (Ref<T_compressor>, Slice<GoUInt8>) -> GoInt = null;
    public var _step : Ref<T_compressor> -> Void = null;
    public var _sync : Bool = false;
    public var _bestSpeed : Ref<T_deflateFast> = ((null : Ref<T_deflateFast>));
    public var _chainHead : GoInt = ((0 : GoInt));
    public var _hashHead : GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 131072) ((0 : GoUInt32))]);
    public var _hashPrev : GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 32768) ((0 : GoUInt32))]);
    public var _hashOffset : GoInt = ((0 : GoInt));
    public var _index : GoInt = ((0 : GoInt));
    public var _window : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _windowEnd : GoInt = ((0 : GoInt));
    public var _blockStart : GoInt = ((0 : GoInt));
    public var _byteAvailable : Bool = false;
    public var _tokens : Slice<T_token> = ((null : Slice<T_token>));
    public var _length : GoInt = ((0 : GoInt));
    public var _offset : GoInt = ((0 : GoInt));
    public var _hash : GoUInt32 = ((0 : GoUInt32));
    public var _maxInsertIndex : GoInt = ((0 : GoInt));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _hashMatch : GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 257) ((0 : GoUInt32))]);
    public function new(?_compressionLevel:T_compressionLevel, ?_w:Ref<T_huffmanBitWriter>, ?_bulkHasher:(Slice<GoUInt8>, Slice<GoUInt32>) -> Void, ?_fill:(Ref<T_compressor>, Slice<GoUInt8>) -> GoInt, ?_step:Ref<T_compressor> -> Void, ?_sync:Bool, ?_bestSpeed:Ref<T_deflateFast>, ?_chainHead:GoInt, ?_hashHead:GoArray<GoUInt32>, ?_hashPrev:GoArray<GoUInt32>, ?_hashOffset:GoInt, ?_index:GoInt, ?_window:Slice<GoUInt8>, ?_windowEnd:GoInt, ?_blockStart:GoInt, ?_byteAvailable:Bool, ?_tokens:Slice<T_token>, ?_length:GoInt, ?_offset:GoInt, ?_hash:GoUInt32, ?_maxInsertIndex:GoInt, ?_err:stdgo.Error, ?_hashMatch:GoArray<GoUInt32>) {
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
        if (_hash != null) this._hash = _hash;
        if (_maxInsertIndex != null) this._maxInsertIndex = _maxInsertIndex;
        if (_err != null) this._err = _err;
        if (_hashMatch != null) this._hashMatch = _hashMatch;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
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
_hash,
_maxInsertIndex,
_err,
_hashMatch);
    }
}
@:structInit @:using(stdgo.compress.flate.Flate.T_dictWriter_static_extension) class T_dictWriter {
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = this;
        _w;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _w._w.write(_b);
    }
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public function new(?_w:stdgo.io.Io.Writer) {
        if (_w != null) this._w = _w;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_dictWriter(_w);
    }
}
@:structInit @:using(stdgo.compress.flate.Flate.Writer_static_extension) class Writer {
    @:keep
    public function reset(_dst:stdgo.io.Io.Writer):Void {
        var _w = this;
        _w;
        {
            var __tmp__ = try {
                { value : ((((_w._d._w._writer.__underlying__().value : Dynamic)) : T_dictWriter)), ok : true };
            } catch(_) {
                { value : ((null : Ref<T_dictWriter>)), ok : false };
            }, _dw = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _dw._w = _dst;
                _w._d._reset(_dw);
                _w._d._fillWindow(_w._dict);
            } else {
                _w._d._reset(_dst);
            };
        };
    }
    @:keep
    public function close():Error {
        var _w = this;
        _w;
        return _w._d._close();
    }
    @:keep
    public function flush():Error {
        var _w = this;
        _w;
        return _w._d._syncFlush();
    }
    @:keep
    public function write(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = this;
        _w;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _w._d._write(_data);
    }
    public var _d : T_compressor = new T_compressor();
    public var _dict : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function new(?_d:T_compressor, ?_dict:Slice<GoUInt8>) {
        if (_d != null) this._d = _d;
        if (_dict != null) this._dict = _dict;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Writer(_d, _dict);
    }
}
@:structInit class T_deflateTest {
    public var _in : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _level : GoInt = ((0 : GoInt));
    public var _out : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function new(?_in:Slice<GoUInt8>, ?_level:GoInt, ?_out:Slice<GoUInt8>) {
        if (_in != null) this._in = _in;
        if (_level != null) this._level = _level;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_deflateTest(_in, _level, _out);
    }
}
@:structInit class T_deflateInflateTest {
    public var _in : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function new(?_in:Slice<GoUInt8>) {
        if (_in != null) this._in = _in;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_deflateInflateTest(_in);
    }
}
@:structInit class T_reverseBitsTest {
    public var _in : GoUInt16 = ((0 : GoUInt16));
    public var _bitCount : GoUInt8 = ((0 : GoUInt8));
    public var _out : GoUInt16 = ((0 : GoUInt16));
    public function new(?_in:GoUInt16, ?_bitCount:GoUInt8, ?_out:GoUInt16) {
        if (_in != null) this._in = _in;
        if (_bitCount != null) this._bitCount = _bitCount;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_reverseBitsTest(_in, _bitCount, _out);
    }
}
@:structInit @:using(stdgo.compress.flate.Flate.T_sparseReader_static_extension) class T_sparseReader {
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = this;
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_r._cur >= _r._l) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        _n = (_b != null ? _b.length : ((0 : GoInt)));
        var _cur:GoInt64 = _r._cur + ((_n : GoInt64));
        if (_cur > _r._l) {
            _n = _n - ((((_cur - _r._l) : GoInt)));
            _cur = _r._l;
        };
        for (_i => _ in ((_b.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>))) {
            if ((_r._cur + ((_i : GoInt64))) >= (_r._l - ((65536 : GoInt64)))) {
                if (_b != null) _b[_i] = ((1 : GoUInt8));
            } else {
                if (_b != null) _b[_i] = ((0 : GoUInt8));
            };
        };
        _r._cur = _cur;
        return { _0 : _n, _1 : _err };
    }
    public var _l : GoInt64 = ((0 : GoInt64));
    public var _cur : GoInt64 = ((0 : GoInt64));
    public function new(?_l:GoInt64, ?_cur:GoInt64) {
        if (_l != null) this._l = _l;
        if (_cur != null) this._cur = _cur;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_sparseReader(_l, _cur);
    }
}
@:structInit @:using(stdgo.compress.flate.Flate.T_syncBuffer_static_extension) class T_syncBuffer {
    @:keep
    public function close():Error {
        var _b = this;
        _b;
        _b._closed = true;
        _b._signal();
        return ((null : stdgo.Error));
    }
    @:keep
    public function readMode():Void {
        var _b = this;
        _b;
        _b._mu.unlock();
        _b._signal();
    }
    @:keep
    public function writeMode():Void {
        var _b = this;
        _b;
        _b._mu.lock();
    }
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _b = this;
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = _b._buf.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _b._signal();
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function _signal():Void {
        var _b = this;
        _b;
        Go.select([_b._ready.__send__(true) => {}, {}]);
    }
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _b = this;
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        while (true) {
            _b._mu.rlock();
            {
                var __tmp__ = _b._buf.read(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            _b._mu.runlock();
            if ((_n > ((0 : GoInt))) || _b._closed) {
                return { _0 : _n, _1 : _err };
            };
            _b._ready.__get__();
        };
    }
    public var _buf : stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
    public var _mu : stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
    public var _closed : Bool = false;
    public var _ready : Chan<Bool> = ((null : Chan<Bool>));
    public function new(?_buf:stdgo.bytes.Bytes.Buffer, ?_mu:stdgo.sync.Sync.RWMutex, ?_closed:Bool, ?_ready:Chan<Bool>) {
        if (_buf != null) this._buf = _buf;
        if (_mu != null) this._mu = _mu;
        if (_closed != null) this._closed = _closed;
        if (_ready != null) this._ready = _ready;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_syncBuffer(_buf, _mu, _closed, _ready);
    }
}
@:structInit class T_deflateInflateStringTest {
    public var _filename : GoString = (("" : GoString));
    public var _label : GoString = (("" : GoString));
    public var _limit : GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 11) ((0 : GoInt))]);
    public function new(?_filename:GoString, ?_label:GoString, ?_limit:GoArray<GoInt>) {
        if (_filename != null) this._filename = _filename;
        if (_label != null) this._label = _label;
        if (_limit != null) this._limit = _limit;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_deflateInflateStringTest(_filename, _label, _limit);
    }
}
@:structInit @:using(stdgo.compress.flate.Flate.T_failWriter_static_extension) class T_failWriter {
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = this;
        _w;
        _w._n--;
        if (_w._n == ((-1 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : _errIO };
        };
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public var _n : GoInt = ((0 : GoInt));
    public function new(?_n:GoInt) {
        if (_n != null) this._n = _n;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_failWriter(_n);
    }
}
@:structInit class T_tableEntry {
    public var _val : GoUInt32 = ((0 : GoUInt32));
    public var _offset : GoInt32 = ((0 : GoInt32));
    public function new(?_val:GoUInt32, ?_offset:GoInt32) {
        if (_val != null) this._val = _val;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_tableEntry(_val, _offset);
    }
}
@:structInit @:using(stdgo.compress.flate.Flate.T_deflateFast_static_extension) class T_deflateFast {
    @:keep
    public function _shiftOffsets():Void {
        var _e = this;
        _e;
        if ((_e._prev != null ? _e._prev.length : ((0 : GoInt))) == ((0 : GoInt))) {
            for (_i => _ in ((_e._table.__slice__(0) : Slice<T_tableEntry>))) {
                if (_e._table != null) _e._table[_i] = ((new T_tableEntry() : T_tableEntry));
            };
            _e._cur = ((32769 : GoInt32));
            return;
        };
        for (_i => _ in ((_e._table.__slice__(0) : Slice<T_tableEntry>))) {
            var _v:GoInt32 = (((_e._table != null ? _e._table[_i] : new T_tableEntry())._offset - _e._cur) + ((32768 : GoInt32))) + ((1 : GoInt32));
            if (_v < ((0 : GoInt32))) {
                _v = ((0 : GoInt32));
            };
            (_e._table != null ? _e._table[_i] : new T_tableEntry())._offset = _v;
        };
        _e._cur = ((32769 : GoInt32));
    }
    @:keep
    public function _reset():Void {
        var _e = this;
        _e;
        _e._prev = ((_e._prev.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>));
        _e._cur = _e._cur + (((32768 : GoInt32)));
        if (_e._cur >= ((2147352577 : GoInt32))) {
            _e._shiftOffsets();
        };
    }
    @:keep
    public function _matchLen(_s:GoInt32, _t:GoInt32, _src:Slice<GoByte>):GoInt32 {
        var _e = this;
        _e;
        var _s1:GoInt = (((_s : GoInt)) + ((258 : GoInt))) - ((4 : GoInt));
        if (_s1 > (_src != null ? _src.length : ((0 : GoInt)))) {
            _s1 = (_src != null ? _src.length : ((0 : GoInt)));
        };
        if (_t >= ((0 : GoInt32))) {
            var _b:Slice<GoUInt8> = ((_src.__slice__(_t) : Slice<GoUInt8>));
            var _a:Slice<GoUInt8> = ((_src.__slice__(_s, _s1) : Slice<GoUInt8>));
            _b = ((_b.__slice__(0, (_a != null ? _a.length : ((0 : GoInt)))) : Slice<GoUInt8>));
            for (_i => _ in _a) {
                if ((_a != null ? _a[_i] : ((0 : GoUInt8))) != (_b != null ? _b[_i] : ((0 : GoUInt8)))) {
                    return ((_i : GoInt32));
                };
            };
            return (((_a != null ? _a.length : ((0 : GoInt))) : GoInt32));
        };
        var _tp:GoInt32 = (((_e._prev != null ? _e._prev.length : ((0 : GoInt))) : GoInt32)) + _t;
        if (_tp < ((0 : GoInt32))) {
            return ((0 : GoInt32));
        };
        var _a:Slice<GoUInt8> = ((_src.__slice__(_s, _s1) : Slice<GoUInt8>));
        var _b:Slice<GoUInt8> = ((_e._prev.__slice__(_tp) : Slice<GoUInt8>));
        if ((_b != null ? _b.length : ((0 : GoInt))) > (_a != null ? _a.length : ((0 : GoInt)))) {
            _b = ((_b.__slice__(0, (_a != null ? _a.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        };
        _a = ((_a.__slice__(0, (_b != null ? _b.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        for (_i => _ in _b) {
            if ((_a != null ? _a[_i] : ((0 : GoUInt8))) != (_b != null ? _b[_i] : ((0 : GoUInt8)))) {
                return ((_i : GoInt32));
            };
        };
        var _n:GoInt32 = (((_b != null ? _b.length : ((0 : GoInt))) : GoInt32));
        if ((((_s + _n) : GoInt)) == _s1) {
            return _n;
        };
        _a = ((_src.__slice__(_s + _n, _s1) : Slice<GoUInt8>));
        _b = ((_src.__slice__(0, (_a != null ? _a.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        for (_i => _ in _a) {
            if ((_a != null ? _a[_i] : ((0 : GoUInt8))) != (_b != null ? _b[_i] : ((0 : GoUInt8)))) {
                return ((_i : GoInt32)) + _n;
            };
        };
        return (((_a != null ? _a.length : ((0 : GoInt))) : GoInt32)) + _n;
    }
    @:keep
    public function _encode(_dst:Slice<T_token>, _src:Slice<GoByte>):Slice<T_token> {
        var _e = this;
        _e;
        return stdgo.internal.Macro.controlFlow({
            if (_e._cur >= ((2147352577 : GoInt32))) {
                _e._shiftOffsets();
            };
            if ((_src != null ? _src.length : ((0 : GoInt))) < ((17 : GoInt))) {
                _e._cur = _e._cur + (((65535 : GoInt32)));
                _e._prev = ((_e._prev.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>));
                return _emitLiteral(_dst, _src);
            };
            var _sLimit:GoInt32 = ((((_src != null ? _src.length : ((0 : GoInt))) - ((15 : GoInt))) : GoInt32));
            var _nextEmit:GoInt32 = ((((0 : GoInt32)) : GoInt32));
            var _s:GoInt32 = ((((0 : GoInt32)) : GoInt32));
            var _cv:GoUInt32 = _load32(_src, _s);
            var _nextHash:GoUInt32 = _hash(_cv);
            while (true) {
                var _skip:GoInt32 = ((((32 : GoInt32)) : GoInt32));
                var _nextS:GoInt32 = _s;
                var _candidate:T_tableEntry = new T_tableEntry();
                while (true) {
                    _s = _nextS;
                    var _bytesBetweenHashLookups:GoInt32 = _skip >> ((5 : GoUnTypedInt));
                    _nextS = _s + _bytesBetweenHashLookups;
                    _skip = _skip + (_bytesBetweenHashLookups);
                    if (_nextS > _sLimit) {
                        @:goto "emitRemainder";
                    };
                    _candidate = ((_e._table != null ? _e._table[_nextHash & ((16383 : GoUInt32))] : new T_tableEntry()) == null ? null : (_e._table != null ? _e._table[_nextHash & ((16383 : GoUInt32))] : new T_tableEntry()).__copy__());
                    var _now:GoUInt32 = _load32(_src, _nextS);
                    if (_e._table != null) _e._table[_nextHash & ((16383 : GoUInt32))] = ((({ _offset : _s + _e._cur, _val : _cv } : T_tableEntry)) == null ? null : (({ _offset : _s + _e._cur, _val : _cv } : T_tableEntry)).__copy__());
                    _nextHash = _hash(_now);
                    var _offset:GoInt32 = _s - (_candidate._offset - _e._cur);
                    if ((_offset > ((32768 : GoInt32))) || (_cv != _candidate._val)) {
                        _cv = _now;
                        continue;
                    };
                    break;
                };
                _dst = _emitLiteral(_dst, ((_src.__slice__(_nextEmit, _s) : Slice<GoUInt8>)));
                while (true) {
                    _s = _s + (((4 : GoInt32)));
                    var _t:GoInt32 = (_candidate._offset - _e._cur) + ((4 : GoInt32));
                    var _l:GoInt32 = _e._matchLen(_s, _t, _src);
                    _dst = (_dst != null ? _dst.__append__(_matchToken(((((_l + ((4 : GoInt32))) - ((3 : GoInt32))) : GoUInt32)), ((((_s - _t) - ((1 : GoInt32))) : GoUInt32)))) : new Slice<T_token>(_matchToken(((((_l + ((4 : GoInt32))) - ((3 : GoInt32))) : GoUInt32)), ((((_s - _t) - ((1 : GoInt32))) : GoUInt32)))));
                    _s = _s + (_l);
                    _nextEmit = _s;
                    if (_s >= _sLimit) {
                        @:goto "emitRemainder";
                    };
                    var _x:GoUInt64 = _load64(_src, _s - ((1 : GoInt32)));
                    var _prevHash:GoUInt32 = _hash(((_x : GoUInt32)));
                    if (_e._table != null) _e._table[_prevHash & ((16383 : GoUInt32))] = ((({ _offset : (_e._cur + _s) - ((1 : GoInt32)), _val : ((_x : GoUInt32)) } : T_tableEntry)) == null ? null : (({ _offset : (_e._cur + _s) - ((1 : GoInt32)), _val : ((_x : GoUInt32)) } : T_tableEntry)).__copy__());
                    _x = _x >> (((8 : GoUnTypedInt)));
                    var _currHash:GoUInt32 = _hash(((_x : GoUInt32)));
                    _candidate = ((_e._table != null ? _e._table[_currHash & ((16383 : GoUInt32))] : new T_tableEntry()) == null ? null : (_e._table != null ? _e._table[_currHash & ((16383 : GoUInt32))] : new T_tableEntry()).__copy__());
                    if (_e._table != null) _e._table[_currHash & ((16383 : GoUInt32))] = ((({ _offset : _e._cur + _s, _val : ((_x : GoUInt32)) } : T_tableEntry)) == null ? null : (({ _offset : _e._cur + _s, _val : ((_x : GoUInt32)) } : T_tableEntry)).__copy__());
                    var _offset:GoInt32 = _s - (_candidate._offset - _e._cur);
                    if ((_offset > ((32768 : GoInt32))) || (((_x : GoUInt32)) != _candidate._val)) {
                        _cv = (((_x >> ((8 : GoUnTypedInt))) : GoUInt32));
                        _nextHash = _hash(_cv);
                        _s++;
                        break;
                    };
                };
            };
            @:label("emitRemainder") if (((_nextEmit : GoInt)) < (_src != null ? _src.length : ((0 : GoInt)))) {
                _dst = _emitLiteral(_dst, ((_src.__slice__(_nextEmit) : Slice<GoUInt8>)));
            };
            _e._cur = _e._cur + ((((_src != null ? _src.length : ((0 : GoInt))) : GoInt32)));
            _e._prev = ((_e._prev.__slice__(0, (_src != null ? _src.length : ((0 : GoInt)))) : Slice<GoUInt8>));
            Go.copySlice(_e._prev, _src);
            return _dst;
        });
    }
    public var _table : GoArray<T_tableEntry> = new GoArray<T_tableEntry>(...[for (i in 0 ... 16384) new T_tableEntry()]);
    public var _prev : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _cur : GoInt32 = ((0 : GoInt32));
    public function new(?_table:GoArray<T_tableEntry>, ?_prev:Slice<GoUInt8>, ?_cur:GoInt32) {
        if (_table != null) this._table = _table;
        if (_prev != null) this._prev = _prev;
        if (_cur != null) this._cur = _cur;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_deflateFast(_table, _prev, _cur);
    }
}
@:structInit @:using(stdgo.compress.flate.Flate.T_dictDecoder_static_extension) class T_dictDecoder {
    @:keep
    public function _readFlush():Slice<GoByte> {
        var _dd = this;
        _dd;
        var _toRead:Slice<GoUInt8> = ((_dd._hist.__slice__(_dd._rdPos, _dd._wrPos) : Slice<GoUInt8>));
        _dd._rdPos = _dd._wrPos;
        if (_dd._wrPos == (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)))) {
            {
                final __tmp__0 = ((0 : GoInt));
                final __tmp__1 = ((0 : GoInt));
                _dd._wrPos = __tmp__0;
                _dd._rdPos = __tmp__1;
            };
            _dd._full = true;
        };
        return _toRead;
    }
    @:keep
    public function _tryWriteCopy(_dist:GoInt, _length:GoInt):GoInt {
        var _dd = this;
        _dd;
        var _dstPos:GoInt = _dd._wrPos;
        var _endPos:GoInt = _dstPos + _length;
        if ((_dstPos < _dist) || (_endPos > (_dd._hist != null ? _dd._hist.length : ((0 : GoInt))))) {
            return ((0 : GoInt));
        };
        var _dstBase:GoInt = _dstPos;
        var _srcPos:GoInt = _dstPos - _dist;
        while (_dstPos < _endPos) {
            _dstPos = _dstPos + (Go.copySlice(((_dd._hist.__slice__(_dstPos, _endPos) : Slice<GoUInt8>)), ((_dd._hist.__slice__(_srcPos, _dstPos) : Slice<GoUInt8>))));
        };
        _dd._wrPos = _dstPos;
        return _dstPos - _dstBase;
    }
    @:keep
    public function _writeCopy(_dist:GoInt, _length:GoInt):GoInt {
        var _dd = this;
        _dd;
        var _dstBase:GoInt = _dd._wrPos;
        var _dstPos:GoInt = _dstBase;
        var _srcPos:GoInt = _dstPos - _dist;
        var _endPos:GoInt = _dstPos + _length;
        if (_endPos > (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)))) {
            _endPos = (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)));
        };
        if (_srcPos < ((0 : GoInt))) {
            _srcPos = _srcPos + ((_dd._hist != null ? _dd._hist.length : ((0 : GoInt))));
            _dstPos = _dstPos + (Go.copySlice(((_dd._hist.__slice__(_dstPos, _endPos) : Slice<GoUInt8>)), ((_dd._hist.__slice__(_srcPos) : Slice<GoUInt8>))));
            _srcPos = ((0 : GoInt));
        };
        while (_dstPos < _endPos) {
            _dstPos = _dstPos + (Go.copySlice(((_dd._hist.__slice__(_dstPos, _endPos) : Slice<GoUInt8>)), ((_dd._hist.__slice__(_srcPos, _dstPos) : Slice<GoUInt8>))));
        };
        _dd._wrPos = _dstPos;
        return _dstPos - _dstBase;
    }
    @:keep
    public function _writeByte(_c:GoByte):Void {
        var _dd = this;
        _dd;
        if (_dd._hist != null) _dd._hist[_dd._wrPos] = _c;
        _dd._wrPos++;
    }
    @:keep
    public function _writeMark(_cnt:GoInt):Void {
        var _dd = this;
        _dd;
        _dd._wrPos = _dd._wrPos + (_cnt);
    }
    @:keep
    public function _writeSlice():Slice<GoByte> {
        var _dd = this;
        _dd;
        return ((_dd._hist.__slice__(_dd._wrPos) : Slice<GoUInt8>));
    }
    @:keep
    public function _availWrite():GoInt {
        var _dd = this;
        _dd;
        return (_dd._hist != null ? _dd._hist.length : ((0 : GoInt))) - _dd._wrPos;
    }
    @:keep
    public function _availRead():GoInt {
        var _dd = this;
        _dd;
        return _dd._wrPos - _dd._rdPos;
    }
    @:keep
    public function _histSize():GoInt {
        var _dd = this;
        _dd;
        if (_dd._full) {
            return (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)));
        };
        return _dd._wrPos;
    }
    @:keep
    public function _init(_size:GoInt, _dict:Slice<GoByte>):Void {
        var _dd = this;
        _dd;
        {
            var __tmp__ = ((({ _hist : _dd._hist, _wrPos : 0, _rdPos : 0, _full : false } : T_dictDecoder)) == null ? null : (({ _hist : _dd._hist, _wrPos : 0, _rdPos : 0, _full : false } : T_dictDecoder)).__copy__());
            _dd._hist = __tmp__._hist;
            _dd._wrPos = __tmp__._wrPos;
            _dd._rdPos = __tmp__._rdPos;
            _dd._full = __tmp__._full;
        };
        if ((_dd._hist != null ? _dd._hist.cap() : ((0 : GoInt))) < _size) {
            _dd._hist = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
        };
        _dd._hist = ((_dd._hist.__slice__(0, _size) : Slice<GoUInt8>));
        if ((_dict != null ? _dict.length : ((0 : GoInt))) > (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)))) {
            _dict = ((_dict.__slice__((_dict != null ? _dict.length : ((0 : GoInt))) - (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        };
        _dd._wrPos = Go.copySlice(_dd._hist, _dict);
        if (_dd._wrPos == (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)))) {
            _dd._wrPos = ((0 : GoInt));
            _dd._full = true;
        };
        _dd._rdPos = _dd._wrPos;
    }
    public var _hist : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _wrPos : GoInt = ((0 : GoInt));
    public var _rdPos : GoInt = ((0 : GoInt));
    public var _full : Bool = false;
    public function new(?_hist:Slice<GoUInt8>, ?_wrPos:GoInt, ?_rdPos:GoInt, ?_full:Bool) {
        if (_hist != null) this._hist = _hist;
        if (_wrPos != null) this._wrPos = _wrPos;
        if (_rdPos != null) this._rdPos = _rdPos;
        if (_full != null) this._full = _full;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_dictDecoder(_hist, _wrPos, _rdPos, _full);
    }
}
@:structInit @:using(stdgo.compress.flate.Flate.T_huffmanBitWriter_static_extension) class T_huffmanBitWriter {
    @:keep
    public function _writeBlockHuff(_eof:Bool, _input:Slice<GoByte>):Void {
        var _w = this;
        _w;
        if (_w._err != null) {
            return;
        };
        for (_i => _ in _w._literalFreq) {
            if (_w._literalFreq != null) _w._literalFreq[_i] = ((0 : GoInt32));
        };
        _histogram(_input, _w._literalFreq);
        if (_w._literalFreq != null) _w._literalFreq[((256 : GoInt))] = ((1 : GoInt32));
        {};
        if (_w._offsetFreq != null) _w._offsetFreq[((0 : GoInt))] = ((1 : GoInt32));
        {};
        _w._literalEncoding._generate(_w._literalFreq, ((15 : GoInt32)));
        var _numCodegens:GoInt = ((0 : GoInt));
        _w._generateCodegen(((257 : GoInt)), ((1 : GoInt)), _w._literalEncoding, _huffOffset);
        _w._codegenEncoding._generate(((_w._codegenFreq.__slice__(0) : Slice<GoInt32>)), ((7 : GoInt32)));
        var __tmp__ = _w._dynamicSize(_w._literalEncoding, _huffOffset, ((0 : GoInt))), _size:GoInt = __tmp__._0, _numCodegens:GoInt = __tmp__._1;
        {
            var __tmp__ = _w._storedSize(_input), _ssize:GoInt = __tmp__._0, _storable:Bool = __tmp__._1;
            if (_storable && (_ssize < (_size + (_size >> ((4 : GoUnTypedInt)))))) {
                _w._writeStoredHeader((_input != null ? _input.length : ((0 : GoInt))), _eof);
                _w._writeBytes(_input);
                return;
            };
        };
        _w._writeDynamicHeader(((257 : GoInt)), ((1 : GoInt)), _numCodegens, _eof);
        var _encoding:Slice<T_hcode> = ((_w._literalEncoding._codes.__slice__(0, ((257 : GoInt))) : Slice<T_hcode>));
        var _n:GoInt = _w._nbytes;
        for (_0 => _t in _input) {
            var _c:T_hcode = ((_encoding != null ? _encoding[_t] : new T_hcode()) == null ? null : (_encoding != null ? _encoding[_t] : new T_hcode()).__copy__());
            _w._bits = _w._bits | (((_c._code : GoUInt64)) << _w._nbits);
            _w._nbits = _w._nbits + (((_c._len : GoUInt)));
            if (_w._nbits < ((48 : GoUInt))) {
                continue;
            };
            var _bits:GoUInt64 = _w._bits;
            _w._bits = _w._bits >> (((48 : GoUnTypedInt)));
            _w._nbits = _w._nbits - (((48 : GoUInt)));
            var _bytes:Slice<GoUInt8> = ((_w._bytes.__slice__(_n, _n + ((6 : GoInt))) : Slice<GoUInt8>));
            if (_bytes != null) _bytes[((0 : GoInt))] = ((_bits : GoByte));
            if (_bytes != null) _bytes[((1 : GoInt))] = (((_bits >> ((8 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((2 : GoInt))] = (((_bits >> ((16 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((3 : GoInt))] = (((_bits >> ((24 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((4 : GoInt))] = (((_bits >> ((32 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((5 : GoInt))] = (((_bits >> ((40 : GoUnTypedInt))) : GoByte));
            _n = _n + (((6 : GoInt)));
            if (_n < ((240 : GoInt))) {
                continue;
            };
            _w._write(((_w._bytes.__slice__(0, _n) : Slice<GoUInt8>)));
            if (_w._err != null) {
                return;
            };
            _n = ((0 : GoInt));
        };
        _w._nbytes = _n;
        _w._writeCode(((_encoding != null ? _encoding[((256 : GoInt))] : new T_hcode()) == null ? null : (_encoding != null ? _encoding[((256 : GoInt))] : new T_hcode()).__copy__()));
    }
    @:keep
    public function _writeTokens(_tokens:Slice<T_token>, _leCodes:Slice<T_hcode>, _oeCodes:Slice<T_hcode>):Void {
        var _w = this;
        _w;
        if (_w._err != null) {
            return;
        };
        for (_0 => _t in _tokens) {
            if (_t < ((1073741824 : GoUInt32))) {
                _w._writeCode(((_leCodes != null ? _leCodes[_t._literal()] : new T_hcode()) == null ? null : (_leCodes != null ? _leCodes[_t._literal()] : new T_hcode()).__copy__()));
                continue;
            };
            var _length:GoUInt32 = _t._length();
            var _lengthCode:GoUInt32 = _lengthCode(_length);
            _w._writeCode(((_leCodes != null ? _leCodes[_lengthCode + ((257 : GoUInt32))] : new T_hcode()) == null ? null : (_leCodes != null ? _leCodes[_lengthCode + ((257 : GoUInt32))] : new T_hcode()).__copy__()));
            var _extraLengthBits:GoUInt = (((_lengthExtraBits != null ? _lengthExtraBits[_lengthCode] : ((0 : GoInt8))) : GoUInt));
            if (_extraLengthBits > ((0 : GoUInt))) {
                var _extraLength:GoInt32 = (((_length - (_lengthBase != null ? _lengthBase[_lengthCode] : ((0 : GoUInt32)))) : GoInt32));
                _w._writeBits(_extraLength, _extraLengthBits);
            };
            var _offset:GoUInt32 = _t._offset();
            var _offsetCode:GoUInt32 = _offsetCode(_offset);
            _w._writeCode(((_oeCodes != null ? _oeCodes[_offsetCode] : new T_hcode()) == null ? null : (_oeCodes != null ? _oeCodes[_offsetCode] : new T_hcode()).__copy__()));
            var _extraOffsetBits:GoUInt = (((_offsetExtraBits != null ? _offsetExtraBits[_offsetCode] : ((0 : GoInt8))) : GoUInt));
            if (_extraOffsetBits > ((0 : GoUInt))) {
                var _extraOffset:GoInt32 = (((_offset - (_offsetBase != null ? _offsetBase[_offsetCode] : ((0 : GoUInt32)))) : GoInt32));
                _w._writeBits(_extraOffset, _extraOffsetBits);
            };
        };
    }
    @:keep
    public function _indexTokens(_tokens:Slice<T_token>):{ var _0 : GoInt; var _1 : GoInt; } {
        var _w = this;
        _w;
        var _numLiterals:GoInt = ((0 : GoInt)), _numOffsets:GoInt = ((0 : GoInt));
        for (_i => _ in _w._literalFreq) {
            if (_w._literalFreq != null) _w._literalFreq[_i] = ((0 : GoInt32));
        };
        for (_i => _ in _w._offsetFreq) {
            if (_w._offsetFreq != null) _w._offsetFreq[_i] = ((0 : GoInt32));
        };
        for (_0 => _t in _tokens) {
            if (_t < ((1073741824 : GoUInt32))) {
                (_w._literalFreq != null ? _w._literalFreq[_t._literal()] : ((0 : GoInt32)))++;
                continue;
            };
            var _length:GoUInt32 = _t._length();
            var _offset:GoUInt32 = _t._offset();
            (_w._literalFreq != null ? _w._literalFreq[((257 : GoUInt32)) + _lengthCode(_length)] : ((0 : GoInt32)))++;
            (_w._offsetFreq != null ? _w._offsetFreq[_offsetCode(_offset)] : ((0 : GoInt32)))++;
        };
        _numLiterals = (_w._literalFreq != null ? _w._literalFreq.length : ((0 : GoInt)));
        while ((_w._literalFreq != null ? _w._literalFreq[_numLiterals - ((1 : GoInt))] : ((0 : GoInt32))) == ((0 : GoInt32))) {
            _numLiterals--;
        };
        _numOffsets = (_w._offsetFreq != null ? _w._offsetFreq.length : ((0 : GoInt)));
        while ((_numOffsets > ((0 : GoInt))) && ((_w._offsetFreq != null ? _w._offsetFreq[_numOffsets - ((1 : GoInt))] : ((0 : GoInt32))) == ((0 : GoInt32)))) {
            _numOffsets--;
        };
        if (_numOffsets == ((0 : GoInt))) {
            if (_w._offsetFreq != null) _w._offsetFreq[((0 : GoInt))] = ((1 : GoInt32));
            _numOffsets = ((1 : GoInt));
        };
        _w._literalEncoding._generate(_w._literalFreq, ((15 : GoInt32)));
        _w._offsetEncoding._generate(_w._offsetFreq, ((15 : GoInt32)));
        return { _0 : _numLiterals, _1 : _numOffsets };
    }
    @:keep
    public function _writeBlockDynamic(_tokens:Slice<T_token>, _eof:Bool, _input:Slice<GoByte>):Void {
        var _w = this;
        _w;
        if (_w._err != null) {
            return;
        };
        _tokens = (_tokens != null ? _tokens.__append__(((256 : GoUInt32))) : new Slice<T_token>(((256 : GoUInt32))));
        var __tmp__ = _w._indexTokens(_tokens), _numLiterals:GoInt = __tmp__._0, _numOffsets:GoInt = __tmp__._1;
        _w._generateCodegen(_numLiterals, _numOffsets, _w._literalEncoding, _w._offsetEncoding);
        _w._codegenEncoding._generate(((_w._codegenFreq.__slice__(0) : Slice<GoInt32>)), ((7 : GoInt32)));
        var __tmp__ = _w._dynamicSize(_w._literalEncoding, _w._offsetEncoding, ((0 : GoInt))), _size:GoInt = __tmp__._0, _numCodegens:GoInt = __tmp__._1;
        {
            var __tmp__ = _w._storedSize(_input), _ssize:GoInt = __tmp__._0, _storable:Bool = __tmp__._1;
            if (_storable && (_ssize < (_size + (_size >> ((4 : GoUnTypedInt)))))) {
                _w._writeStoredHeader((_input != null ? _input.length : ((0 : GoInt))), _eof);
                _w._writeBytes(_input);
                return;
            };
        };
        _w._writeDynamicHeader(_numLiterals, _numOffsets, _numCodegens, _eof);
        _w._writeTokens(_tokens, _w._literalEncoding._codes, _w._offsetEncoding._codes);
    }
    @:keep
    public function _writeBlock(_tokens:Slice<T_token>, _eof:Bool, _input:Slice<GoByte>):Void {
        var _w = this;
        _w;
        if (_w._err != null) {
            return;
        };
        _tokens = (_tokens != null ? _tokens.__append__(((256 : GoUInt32))) : new Slice<T_token>(((256 : GoUInt32))));
        var __tmp__ = _w._indexTokens(_tokens), _numLiterals:GoInt = __tmp__._0, _numOffsets:GoInt = __tmp__._1;
        var _extraBits:GoInt = ((0 : GoInt));
        var __tmp__ = _w._storedSize(_input), _storedSize:GoInt = __tmp__._0, _storable:Bool = __tmp__._1;
        if (_storable) {
            {
                var _lengthCode:GoInt = ((265 : GoInt));
                Go.cfor(_lengthCode < _numLiterals, _lengthCode++, {
                    _extraBits = _extraBits + ((((_w._literalFreq != null ? _w._literalFreq[_lengthCode] : ((0 : GoInt32))) : GoInt)) * (((_lengthExtraBits != null ? _lengthExtraBits[_lengthCode - ((257 : GoInt))] : ((0 : GoInt8))) : GoInt)));
                });
            };
            {
                var _offsetCode:GoInt = ((4 : GoInt));
                Go.cfor(_offsetCode < _numOffsets, _offsetCode++, {
                    _extraBits = _extraBits + ((((_w._offsetFreq != null ? _w._offsetFreq[_offsetCode] : ((0 : GoInt32))) : GoInt)) * (((_offsetExtraBits != null ? _offsetExtraBits[_offsetCode] : ((0 : GoInt8))) : GoInt)));
                });
            };
        };
        var _literalEncoding:Ref<T_huffmanEncoder> = _fixedLiteralEncoding;
        var _offsetEncoding:Ref<T_huffmanEncoder> = _fixedOffsetEncoding;
        var _size:GoInt = _w._fixedSize(_extraBits);
        var _numCodegens:GoInt = ((0 : GoInt));
        _w._generateCodegen(_numLiterals, _numOffsets, _w._literalEncoding, _w._offsetEncoding);
        _w._codegenEncoding._generate(((_w._codegenFreq.__slice__(0) : Slice<GoInt32>)), ((7 : GoInt32)));
        var __tmp__ = _w._dynamicSize(_w._literalEncoding, _w._offsetEncoding, _extraBits), _dynamicSize:GoInt = __tmp__._0, _numCodegens:GoInt = __tmp__._1;
        if (_dynamicSize < _size) {
            _size = _dynamicSize;
            _literalEncoding = _w._literalEncoding;
            _offsetEncoding = _w._offsetEncoding;
        };
        if (_storable && (_storedSize < _size)) {
            _w._writeStoredHeader((_input != null ? _input.length : ((0 : GoInt))), _eof);
            _w._writeBytes(_input);
            return;
        };
        if (_literalEncoding == _fixedLiteralEncoding) {
            _w._writeFixedHeader(_eof);
        } else {
            _w._writeDynamicHeader(_numLiterals, _numOffsets, _numCodegens, _eof);
        };
        _w._writeTokens(_tokens, _literalEncoding._codes, _offsetEncoding._codes);
    }
    @:keep
    public function _writeFixedHeader(_isEof:Bool):Void {
        var _w = this;
        _w;
        if (_w._err != null) {
            return;
        };
        var _value:GoInt32 = ((2 : GoInt32));
        if (_isEof) {
            _value = ((3 : GoInt32));
        };
        _w._writeBits(_value, ((3 : GoUInt)));
    }
    @:keep
    public function _writeStoredHeader(_length:GoInt, _isEof:Bool):Void {
        var _w = this;
        _w;
        if (_w._err != null) {
            return;
        };
        var _flag:GoInt32 = ((0 : GoInt32));
        if (_isEof) {
            _flag = ((1 : GoInt32));
        };
        _w._writeBits(_flag, ((3 : GoUInt)));
        _w._flush();
        _w._writeBits(((_length : GoInt32)), ((16 : GoUInt)));
        _w._writeBits((((-1 ^ ((_length : GoUInt16))) : GoInt32)), ((16 : GoUInt)));
    }
    @:keep
    public function _writeDynamicHeader(_numLiterals:GoInt, _numOffsets:GoInt, _numCodegens:GoInt, _isEof:Bool):Void {
        var _w = this;
        _w;
        if (_w._err != null) {
            return;
        };
        var _firstBits:GoInt32 = ((4 : GoInt32));
        if (_isEof) {
            _firstBits = ((5 : GoInt32));
        };
        _w._writeBits(_firstBits, ((3 : GoUInt)));
        _w._writeBits((((_numLiterals - ((257 : GoInt))) : GoInt32)), ((5 : GoUInt)));
        _w._writeBits((((_numOffsets - ((1 : GoInt))) : GoInt32)), ((5 : GoUInt)));
        _w._writeBits((((_numCodegens - ((4 : GoInt))) : GoInt32)), ((4 : GoUInt)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _numCodegens, _i++, {
                var _value:GoUInt = (((_w._codegenEncoding._codes != null ? _w._codegenEncoding._codes[(_codegenOrder != null ? _codegenOrder[_i] : ((0 : GoUInt32)))] : new T_hcode())._len : GoUInt));
                _w._writeBits(((_value : GoInt32)), ((3 : GoUInt)));
            });
        };
        var _i:GoInt = ((0 : GoInt));
        while (true) {
            var _codeWord:GoInt = (((_w._codegen != null ? _w._codegen[_i] : ((0 : GoUInt8))) : GoInt));
            _i++;
            if (_codeWord == ((255 : GoInt))) {
                break;
            };
            _w._writeCode(((_w._codegenEncoding._codes != null ? _w._codegenEncoding._codes[((_codeWord : GoUInt32))] : new T_hcode()) == null ? null : (_w._codegenEncoding._codes != null ? _w._codegenEncoding._codes[((_codeWord : GoUInt32))] : new T_hcode()).__copy__()));
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (_codeWord == ((16 : GoInt))) {
                        _w._writeBits((((_w._codegen != null ? _w._codegen[_i] : ((0 : GoUInt8))) : GoInt32)), ((2 : GoUInt)));
                        _i++;
                        break;
                        break;
                    } else if (_codeWord == ((17 : GoInt))) {
                        _w._writeBits((((_w._codegen != null ? _w._codegen[_i] : ((0 : GoUInt8))) : GoInt32)), ((3 : GoUInt)));
                        _i++;
                        break;
                        break;
                    } else if (_codeWord == ((18 : GoInt))) {
                        _w._writeBits((((_w._codegen != null ? _w._codegen[_i] : ((0 : GoUInt8))) : GoInt32)), ((7 : GoUInt)));
                        _i++;
                        break;
                        break;
                    };
                    break;
                };
            };
        };
    }
    @:keep
    public function _writeCode(_c:T_hcode):Void {
        var _w = this;
        _w;
        if (_w._err != null) {
            return;
        };
        _w._bits = _w._bits | (((_c._code : GoUInt64)) << _w._nbits);
        _w._nbits = _w._nbits + (((_c._len : GoUInt)));
        if (_w._nbits >= ((48 : GoUInt))) {
            var _bits:GoUInt64 = _w._bits;
            _w._bits = _w._bits >> (((48 : GoUnTypedInt)));
            _w._nbits = _w._nbits - (((48 : GoUInt)));
            var _n:GoInt = _w._nbytes;
            var _bytes:Slice<GoUInt8> = ((_w._bytes.__slice__(_n, _n + ((6 : GoInt))) : Slice<GoUInt8>));
            if (_bytes != null) _bytes[((0 : GoInt))] = ((_bits : GoByte));
            if (_bytes != null) _bytes[((1 : GoInt))] = (((_bits >> ((8 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((2 : GoInt))] = (((_bits >> ((16 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((3 : GoInt))] = (((_bits >> ((24 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((4 : GoInt))] = (((_bits >> ((32 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((5 : GoInt))] = (((_bits >> ((40 : GoUnTypedInt))) : GoByte));
            _n = _n + (((6 : GoInt)));
            if (_n >= ((240 : GoInt))) {
                _w._write(((_w._bytes.__slice__(0, _n) : Slice<GoUInt8>)));
                _n = ((0 : GoInt));
            };
            _w._nbytes = _n;
        };
    }
    @:keep
    public function _storedSize(_in:Slice<GoByte>):{ var _0 : GoInt; var _1 : Bool; } {
        var _w = this;
        _w;
        if (_in == null) {
            return { _0 : ((0 : GoInt)), _1 : false };
        };
        if ((_in != null ? _in.length : ((0 : GoInt))) <= ((65535 : GoInt))) {
            return { _0 : ((_in != null ? _in.length : ((0 : GoInt))) + ((5 : GoInt))) * ((8 : GoInt)), _1 : true };
        };
        return { _0 : ((0 : GoInt)), _1 : false };
    }
    @:keep
    public function _fixedSize(_extraBits:GoInt):GoInt {
        var _w = this;
        _w;
        return ((((3 : GoInt)) + _fixedLiteralEncoding._bitLength(_w._literalFreq)) + _fixedOffsetEncoding._bitLength(_w._offsetFreq)) + _extraBits;
    }
    @:keep
    public function _dynamicSize(_litEnc:T_huffmanEncoder, _offEnc:T_huffmanEncoder, _extraBits:GoInt):{ var _0 : GoInt; var _1 : GoInt; } {
        var _w = this;
        _w;
        var _size:GoInt = ((0 : GoInt)), _numCodegens:GoInt = ((0 : GoInt));
        _numCodegens = (_w._codegenFreq != null ? _w._codegenFreq.length : ((0 : GoInt)));
        while ((_numCodegens > ((4 : GoInt))) && ((_w._codegenFreq != null ? _w._codegenFreq[(_codegenOrder != null ? _codegenOrder[_numCodegens - ((1 : GoInt))] : ((0 : GoUInt32)))] : ((0 : GoInt32))) == ((0 : GoInt32)))) {
            _numCodegens--;
        };
        var _header:GoInt = ((((((17 : GoInt)) + (((3 : GoInt)) * _numCodegens)) + _w._codegenEncoding._bitLength(((_w._codegenFreq.__slice__(0) : Slice<GoInt32>)))) + ((((_w._codegenFreq != null ? _w._codegenFreq[((16 : GoInt))] : ((0 : GoInt32))) : GoInt)) * ((2 : GoInt)))) + ((((_w._codegenFreq != null ? _w._codegenFreq[((17 : GoInt))] : ((0 : GoInt32))) : GoInt)) * ((3 : GoInt)))) + ((((_w._codegenFreq != null ? _w._codegenFreq[((18 : GoInt))] : ((0 : GoInt32))) : GoInt)) * ((7 : GoInt)));
        _size = ((_header + _litEnc._bitLength(_w._literalFreq)) + _offEnc._bitLength(_w._offsetFreq)) + _extraBits;
        return { _0 : _size, _1 : _numCodegens };
    }
    @:keep
    public function _generateCodegen(_numLiterals:GoInt, _numOffsets:GoInt, _litEnc:T_huffmanEncoder, _offEnc:T_huffmanEncoder):Void {
        var _w = this;
        _w;
        for (_i => _ in _w._codegenFreq) {
            if (_w._codegenFreq != null) _w._codegenFreq[_i] = ((0 : GoInt32));
        };
        var _codegen:Slice<GoUInt8> = _w._codegen;
        var _cgnl:Slice<GoUInt8> = ((_codegen.__slice__(0, _numLiterals) : Slice<GoUInt8>));
        for (_i => _ in _cgnl) {
            if (_cgnl != null) _cgnl[_i] = (((_litEnc._codes != null ? _litEnc._codes[_i] : new T_hcode())._len : GoUInt8));
        };
        _cgnl = ((_codegen.__slice__(_numLiterals, _numLiterals + _numOffsets) : Slice<GoUInt8>));
        for (_i => _ in _cgnl) {
            if (_cgnl != null) _cgnl[_i] = (((_offEnc._codes != null ? _offEnc._codes[_i] : new T_hcode())._len : GoUInt8));
        };
        if (_codegen != null) _codegen[_numLiterals + _numOffsets] = ((255 : GoUInt8));
        var _size:GoUInt8 = (_codegen != null ? _codegen[((0 : GoInt))] : ((0 : GoUInt8)));
        var _count:GoInt = ((1 : GoInt));
        var _outIndex:GoInt = ((0 : GoInt));
        {
            var _inIndex:GoInt = ((1 : GoInt));
            Go.cfor(_size != ((255 : GoUInt8)), _inIndex++, {
                var _nextSize:GoUInt8 = (_codegen != null ? _codegen[_inIndex] : ((0 : GoUInt8)));
                if (_nextSize == _size) {
                    _count++;
                    continue;
                };
                if (_size != ((0 : GoUInt8))) {
                    if (_codegen != null) _codegen[_outIndex] = _size;
                    _outIndex++;
                    (_w._codegenFreq != null ? _w._codegenFreq[_size] : ((0 : GoInt32)))++;
                    _count--;
                    while (_count >= ((3 : GoInt))) {
                        var _n:GoInt = ((6 : GoInt));
                        if (_n > _count) {
                            _n = _count;
                        };
                        if (_codegen != null) _codegen[_outIndex] = ((16 : GoUInt8));
                        _outIndex++;
                        if (_codegen != null) _codegen[_outIndex] = (((_n - ((3 : GoInt))) : GoUInt8));
                        _outIndex++;
                        (_w._codegenFreq != null ? _w._codegenFreq[((16 : GoInt))] : ((0 : GoInt32)))++;
                        _count = _count - (_n);
                    };
                } else {
                    while (_count >= ((11 : GoInt))) {
                        var _n:GoInt = ((138 : GoInt));
                        if (_n > _count) {
                            _n = _count;
                        };
                        if (_codegen != null) _codegen[_outIndex] = ((18 : GoUInt8));
                        _outIndex++;
                        if (_codegen != null) _codegen[_outIndex] = (((_n - ((11 : GoInt))) : GoUInt8));
                        _outIndex++;
                        (_w._codegenFreq != null ? _w._codegenFreq[((18 : GoInt))] : ((0 : GoInt32)))++;
                        _count = _count - (_n);
                    };
                    if (_count >= ((3 : GoInt))) {
                        if (_codegen != null) _codegen[_outIndex] = ((17 : GoUInt8));
                        _outIndex++;
                        if (_codegen != null) _codegen[_outIndex] = (((_count - ((3 : GoInt))) : GoUInt8));
                        _outIndex++;
                        (_w._codegenFreq != null ? _w._codegenFreq[((17 : GoInt))] : ((0 : GoInt32)))++;
                        _count = ((0 : GoInt));
                    };
                };
                _count--;
                Go.cfor(_count >= ((0 : GoInt)), _count--, {
                    if (_codegen != null) _codegen[_outIndex] = _size;
                    _outIndex++;
                    (_w._codegenFreq != null ? _w._codegenFreq[_size] : ((0 : GoInt32)))++;
                });
                _size = _nextSize;
                _count = ((1 : GoInt));
            });
        };
        if (_codegen != null) _codegen[_outIndex] = ((255 : GoUInt8));
    }
    @:keep
    public function _writeBytes(_bytes:Slice<GoByte>):Void {
        var _w = this;
        _w;
        if (_w._err != null) {
            return;
        };
        var _n:GoInt = _w._nbytes;
        if ((_w._nbits & ((7 : GoUInt))) != ((0 : GoUInt))) {
            _w._err = new InternalError_wrapper(Go.pointer(((((("writeBytes with unfinished bits" : GoString))) : InternalError))));
            return;
        };
        while (_w._nbits != ((0 : GoUInt))) {
            if (_w._bytes != null) _w._bytes[_n] = ((_w._bits : GoByte));
            _w._bits = _w._bits >> (((8 : GoUnTypedInt)));
            _w._nbits = _w._nbits - (((8 : GoUInt)));
            _n++;
        };
        if (_n != ((0 : GoInt))) {
            _w._write(((_w._bytes.__slice__(0, _n) : Slice<GoUInt8>)));
        };
        _w._nbytes = ((0 : GoInt));
        _w._write(_bytes);
    }
    @:keep
    public function _writeBits(_b:GoInt32, _nb:GoUInt):Void {
        var _w = this;
        _w;
        if (_w._err != null) {
            return;
        };
        _w._bits = _w._bits | (((_b : GoUInt64)) << _w._nbits);
        _w._nbits = _w._nbits + (_nb);
        if (_w._nbits >= ((48 : GoUInt))) {
            var _bits:GoUInt64 = _w._bits;
            _w._bits = _w._bits >> (((48 : GoUnTypedInt)));
            _w._nbits = _w._nbits - (((48 : GoUInt)));
            var _n:GoInt = _w._nbytes;
            var _bytes:Slice<GoUInt8> = ((_w._bytes.__slice__(_n, _n + ((6 : GoInt))) : Slice<GoUInt8>));
            if (_bytes != null) _bytes[((0 : GoInt))] = ((_bits : GoByte));
            if (_bytes != null) _bytes[((1 : GoInt))] = (((_bits >> ((8 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((2 : GoInt))] = (((_bits >> ((16 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((3 : GoInt))] = (((_bits >> ((24 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((4 : GoInt))] = (((_bits >> ((32 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((5 : GoInt))] = (((_bits >> ((40 : GoUnTypedInt))) : GoByte));
            _n = _n + (((6 : GoInt)));
            if (_n >= ((240 : GoInt))) {
                _w._write(((_w._bytes.__slice__(0, _n) : Slice<GoUInt8>)));
                _n = ((0 : GoInt));
            };
            _w._nbytes = _n;
        };
    }
    @:keep
    public function _write(_b:Slice<GoByte>):Void {
        var _w = this;
        _w;
        if (_w._err != null) {
            return;
        };
        {
            var __tmp__ = _w._writer.write(_b);
            _w._err = __tmp__._1;
        };
    }
    @:keep
    public function _flush():Void {
        var _w = this;
        _w;
        if (_w._err != null) {
            _w._nbits = ((0 : GoUInt));
            return;
        };
        var _n:GoInt = _w._nbytes;
        while (_w._nbits != ((0 : GoUInt))) {
            if (_w._bytes != null) _w._bytes[_n] = ((_w._bits : GoByte));
            _w._bits = _w._bits >> (((8 : GoUnTypedInt)));
            if (_w._nbits > ((8 : GoUInt))) {
                _w._nbits = _w._nbits - (((8 : GoUInt)));
            } else {
                _w._nbits = ((0 : GoUInt));
            };
            _n++;
        };
        _w._bits = ((0 : GoUInt64));
        _w._write(((_w._bytes.__slice__(0, _n) : Slice<GoUInt8>)));
        _w._nbytes = ((0 : GoInt));
    }
    @:keep
    public function _reset(_writer:stdgo.io.Io.Writer):Void {
        var _w = this;
        _w;
        _w._writer = _writer;
        {
            final __tmp__0 = ((0 : GoUInt64));
            final __tmp__1 = ((0 : GoUInt));
            final __tmp__2 = ((0 : GoInt));
            final __tmp__3 = ((null : stdgo.Error));
            _w._bits = __tmp__0;
            _w._nbits = __tmp__1;
            _w._nbytes = __tmp__2;
            _w._err = __tmp__3;
        };
    }
    public var _writer : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _bits : GoUInt64 = ((0 : GoUInt64));
    public var _nbits : GoUInt = ((0 : GoUInt));
    public var _bytes : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 248) ((0 : GoUInt8))]);
    public var _codegenFreq : GoArray<GoInt32> = new GoArray<GoInt32>(...[for (i in 0 ... 19) ((0 : GoInt32))]);
    public var _nbytes : GoInt = ((0 : GoInt));
    public var _literalFreq : Slice<GoInt32> = ((null : Slice<GoInt32>));
    public var _offsetFreq : Slice<GoInt32> = ((null : Slice<GoInt32>));
    public var _codegen : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _literalEncoding : Ref<T_huffmanEncoder> = ((null : Ref<T_huffmanEncoder>));
    public var _offsetEncoding : Ref<T_huffmanEncoder> = ((null : Ref<T_huffmanEncoder>));
    public var _codegenEncoding : Ref<T_huffmanEncoder> = ((null : Ref<T_huffmanEncoder>));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_writer:stdgo.io.Io.Writer, ?_bits:GoUInt64, ?_nbits:GoUInt, ?_bytes:GoArray<GoUInt8>, ?_codegenFreq:GoArray<GoInt32>, ?_nbytes:GoInt, ?_literalFreq:Slice<GoInt32>, ?_offsetFreq:Slice<GoInt32>, ?_codegen:Slice<GoUInt8>, ?_literalEncoding:Ref<T_huffmanEncoder>, ?_offsetEncoding:Ref<T_huffmanEncoder>, ?_codegenEncoding:Ref<T_huffmanEncoder>, ?_err:stdgo.Error) {
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
    public function __underlying__():AnyInterface return Go.toInterface(this);
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
@:structInit class T_huffTest {
    public var _tokens : Slice<T_token> = ((null : Slice<T_token>));
    public var _input : GoString = (("" : GoString));
    public var _want : GoString = (("" : GoString));
    public var _wantNoInput : GoString = (("" : GoString));
    public function new(?_tokens:Slice<T_token>, ?_input:GoString, ?_want:GoString, ?_wantNoInput:GoString) {
        if (_tokens != null) this._tokens = _tokens;
        if (_input != null) this._input = _input;
        if (_want != null) this._want = _want;
        if (_wantNoInput != null) this._wantNoInput = _wantNoInput;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_huffTest(_tokens, _input, _want, _wantNoInput);
    }
}
@:structInit @:using(stdgo.compress.flate.Flate.T_hcode_static_extension) class T_hcode {
    @:keep
    public function _set(_code:GoUInt16, _length:GoUInt16):Void {
        var _h = this;
        _h;
        _h._len = _length;
        _h._code = _code;
    }
    public var _code : GoUInt16 = ((0 : GoUInt16));
    public var _len : GoUInt16 = ((0 : GoUInt16));
    public function new(?_code:GoUInt16, ?_len:GoUInt16) {
        if (_code != null) this._code = _code;
        if (_len != null) this._len = _len;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_hcode(_code, _len);
    }
}
@:structInit @:using(stdgo.compress.flate.Flate.T_huffmanEncoder_static_extension) class T_huffmanEncoder {
    @:keep
    public function _generate(_freq:Slice<GoInt32>, _maxBits:GoInt32):Void {
        var _h = this;
        _h;
        if (_h._freqcache == null) {
            _h._freqcache = new Slice<T_literalNode>(...[for (i in 0 ... ((((287 : GoInt)) : GoInt)).toBasic()) new T_literalNode()]);
        };
        var _list:Slice<T_literalNode> = ((_h._freqcache.__slice__(0, (_freq != null ? _freq.length : ((0 : GoInt))) + ((1 : GoInt))) : Slice<T_literalNode>));
        var _count:GoInt = ((0 : GoInt));
        for (_i => _f in _freq) {
            if (_f != ((0 : GoInt32))) {
                if (_list != null) _list[_count] = ((new T_literalNode(((_i : GoUInt16)), _f) : T_literalNode));
                _count++;
            } else {
                if (_list != null) _list[_count] = ((new T_literalNode() : T_literalNode));
                (_h._codes != null ? _h._codes[_i] : new T_hcode())._len = ((0 : GoUInt16));
            };
        };
        if (_list != null) _list[(_freq != null ? _freq.length : ((0 : GoInt)))] = ((new T_literalNode() : T_literalNode));
        _list = ((_list.__slice__(0, _count) : Slice<T_literalNode>));
        if (_count <= ((2 : GoInt))) {
            for (_i => _node in _list) {
                (_h._codes != null ? _h._codes[_node._literal] : new T_hcode())._set(((_i : GoUInt16)), ((1 : GoUInt16)));
            };
            return;
        };
        _h._lfs._sort(_list);
        var _bitCount:Slice<GoInt32> = _h._bitCounts(_list, _maxBits);
        _h._assignEncodingAndSize(_bitCount, _list);
    }
    @:keep
    public function _assignEncodingAndSize(_bitCount:Slice<GoInt32>, _list:Slice<T_literalNode>):Void {
        var _h = this;
        _h;
        var _code:GoUInt16 = ((((0 : GoUInt16)) : GoUInt16));
        for (_n => stdgo.math.bits.Bits in _bitCount) {
            _code = _code << (((1 : GoUnTypedInt)));
            if ((_n == ((0 : GoInt))) || (stdgo.math.bits.Bits == ((0 : GoInt32)))) {
                continue;
            };
            var _chunk:Slice<T_literalNode> = ((_list.__slice__((_list != null ? _list.length : ((0 : GoInt))) - ((stdgo.math.bits.Bits : GoInt))) : Slice<T_literalNode>));
            _h._lns._sort(_chunk);
            for (_0 => _node in _chunk) {
                if (_h._codes != null) _h._codes[_node._literal] = ((({ _code : _reverseBits(_code, ((_n : GoUInt8))), _len : ((_n : GoUInt16)) } : T_hcode)) == null ? null : (({ _code : _reverseBits(_code, ((_n : GoUInt8))), _len : ((_n : GoUInt16)) } : T_hcode)).__copy__());
                _code++;
            };
            _list = ((_list.__slice__(((0 : GoInt)), _len(_list) - ((stdgo.math.bits.Bits : GoInt))) : Slice<T_literalNode>));
        };
    }
    @:keep
    public function _bitCounts(_list:Slice<T_literalNode>, _maxBits:GoInt32):Slice<GoInt32> {
        var _h = this;
        _h;
        if (_maxBits >= ((16 : GoInt32))) {
            throw Go.toInterface(((("flate: maxBits too large" : GoString))));
        };
        var _n:GoInt32 = (((_list != null ? _list.length : ((0 : GoInt))) : GoInt32));
        _list = ((_list.__slice__(((0 : GoInt)), _n + ((1 : GoInt32))) : Slice<T_literalNode>));
        if (_list != null) _list[_n] = (_maxNode() == null ? null : _maxNode().__copy__());
        if (_maxBits > (_n - ((1 : GoInt32)))) {
            _maxBits = _n - ((1 : GoInt32));
        };
        var _levels:GoArray<T_levelInfo> = new GoArray<T_levelInfo>(...[for (i in 0 ... 16) new T_levelInfo()]);
        var _leafCounts:GoArray<GoArray<GoInt32>> = new GoArray<GoArray<GoInt32>>(...[for (i in 0 ... 16) new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])]);
        {
            var _level:GoInt32 = ((((1 : GoInt32)) : GoInt32));
            Go.cfor(_level <= _maxBits, _level++, {
                if (_levels != null) _levels[_level] = ((({ _level : _level, _lastFreq : (_list != null ? _list[((1 : GoInt))] : new T_literalNode())._freq, _nextCharFreq : (_list != null ? _list[((2 : GoInt))] : new T_literalNode())._freq, _nextPairFreq : (_list != null ? _list[((0 : GoInt))] : new T_literalNode())._freq + (_list != null ? _list[((1 : GoInt))] : new T_literalNode())._freq, _needed : 0 } : T_levelInfo)) == null ? null : (({ _level : _level, _lastFreq : (_list != null ? _list[((1 : GoInt))] : new T_literalNode())._freq, _nextCharFreq : (_list != null ? _list[((2 : GoInt))] : new T_literalNode())._freq, _nextPairFreq : (_list != null ? _list[((0 : GoInt))] : new T_literalNode())._freq + (_list != null ? _list[((1 : GoInt))] : new T_literalNode())._freq, _needed : 0 } : T_levelInfo)).__copy__());
                if ((_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])) != null) (_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]))[_level] = ((2 : GoInt32));
                if (_level == ((1 : GoInt32))) {
                    (_levels != null ? _levels[_level] : new T_levelInfo())._nextPairFreq = ((2147483647 : GoInt32));
                };
            });
        };
        (_levels != null ? _levels[_maxBits] : new T_levelInfo())._needed = (((2 : GoInt32)) * _n) - ((4 : GoInt32));
        var _level:GoInt32 = _maxBits;
        while (true) {
            var _l:Ref<T_levelInfo> = (_levels != null ? _levels[_level] : new T_levelInfo());
            if ((_l._nextPairFreq == ((2147483647 : GoInt32))) && (_l._nextCharFreq == ((2147483647 : GoInt32)))) {
                _l._needed = ((0 : GoInt32));
                (_levels != null ? _levels[_level + ((1 : GoInt32))] : new T_levelInfo())._nextPairFreq = ((2147483647 : GoInt32));
                _level++;
                continue;
            };
            var _prevFreq:GoInt32 = _l._lastFreq;
            if (_l._nextCharFreq < _l._nextPairFreq) {
                var _n:GoInt32 = ((_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])) != null ? (_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]))[_level] : ((0 : GoInt32))) + ((1 : GoInt32));
                _l._lastFreq = _l._nextCharFreq;
                if ((_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])) != null) (_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]))[_level] = _n;
                _l._nextCharFreq = (_list != null ? _list[_n] : new T_literalNode())._freq;
            } else {
                _l._lastFreq = _l._nextPairFreq;
                Go.copySlice((((_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])).__slice__(0, _level) : Slice<GoInt32>)), (((_leafCounts != null ? _leafCounts[_level - ((1 : GoInt32))] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])).__slice__(0, _level) : Slice<GoInt32>)));
                (_levels != null ? _levels[_l._level - ((1 : GoInt32))] : new T_levelInfo())._needed = ((2 : GoInt32));
            };
            {
                _l._needed--;
                if (_l._needed == ((0 : GoInt32))) {
                    if (_l._level == _maxBits) {
                        break;
                    };
                    (_levels != null ? _levels[_l._level + ((1 : GoInt32))] : new T_levelInfo())._nextPairFreq = _prevFreq + _l._lastFreq;
                    _level++;
                } else {
                    while ((_levels != null ? _levels[_level - ((1 : GoInt32))] : new T_levelInfo())._needed > ((0 : GoInt32))) {
                        _level--;
                    };
                };
            };
        };
        if (((_leafCounts != null ? _leafCounts[_maxBits] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])) != null ? (_leafCounts != null ? _leafCounts[_maxBits] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]))[_maxBits] : ((0 : GoInt32))) != _n) {
            throw Go.toInterface(((("leafCounts[maxBits][maxBits] != n" : GoString))));
        };
        var _bitCount:Slice<GoInt32> = ((_h._bitCount.__slice__(0, _maxBits + ((1 : GoInt32))) : Slice<GoInt32>));
        var _bits:GoInt = ((1 : GoInt));
        var _counts:Ref<GoArray<GoInt32>> = (_leafCounts != null ? _leafCounts[_maxBits] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]));
        {
            var _level:GoInt32 = _maxBits;
            Go.cfor(_level > ((0 : GoInt32)), _level--, {
                if (_bitCount != null) _bitCount[_bits] = (_counts != null ? _counts[_level] : ((0 : GoInt32))) - (_counts != null ? _counts[_level - ((1 : GoInt32))] : ((0 : GoInt32)));
                _bits++;
            });
        };
        return _bitCount;
    }
    @:keep
    public function _bitLength(_freq:Slice<GoInt32>):GoInt {
        var _h = this;
        _h;
        var _total:GoInt = ((0 : GoInt));
        for (_i => _f in _freq) {
            if (_f != ((0 : GoInt32))) {
                _total = _total + (((_f : GoInt)) * (((_h._codes != null ? _h._codes[_i] : new T_hcode())._len : GoInt)));
            };
        };
        return _total;
    }
    public var _codes : Slice<T_hcode> = ((null : Slice<T_hcode>));
    public var _freqcache : Slice<T_literalNode> = ((null : Slice<T_literalNode>));
    public var _bitCount : GoArray<GoInt32> = new GoArray<GoInt32>(...[for (i in 0 ... 17) ((0 : GoInt32))]);
    public var _lns : T_byLiteral = new T_byLiteral();
    public var _lfs : T_byFreq = new T_byFreq();
    public function new(?_codes:Slice<T_hcode>, ?_freqcache:Slice<T_literalNode>, ?_bitCount:GoArray<GoInt32>, ?_lns:T_byLiteral, ?_lfs:T_byFreq) {
        if (_codes != null) this._codes = _codes;
        if (_freqcache != null) this._freqcache = _freqcache;
        if (_bitCount != null) this._bitCount = _bitCount;
        if (_lns != null) this._lns = _lns;
        if (_lfs != null) this._lfs = _lfs;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanEncoder(_codes, _freqcache, _bitCount, _lns, _lfs);
    }
}
@:structInit class T_literalNode {
    public var _literal : GoUInt16 = ((0 : GoUInt16));
    public var _freq : GoInt32 = ((0 : GoInt32));
    public function new(?_literal:GoUInt16, ?_freq:GoInt32) {
        if (_literal != null) this._literal = _literal;
        if (_freq != null) this._freq = _freq;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_literalNode(_literal, _freq);
    }
}
@:structInit class T_levelInfo {
    public var _level : GoInt32 = ((0 : GoInt32));
    public var _lastFreq : GoInt32 = ((0 : GoInt32));
    public var _nextCharFreq : GoInt32 = ((0 : GoInt32));
    public var _nextPairFreq : GoInt32 = ((0 : GoInt32));
    public var _needed : GoInt32 = ((0 : GoInt32));
    public function new(?_level:GoInt32, ?_lastFreq:GoInt32, ?_nextCharFreq:GoInt32, ?_nextPairFreq:GoInt32, ?_needed:GoInt32) {
        if (_level != null) this._level = _level;
        if (_lastFreq != null) this._lastFreq = _lastFreq;
        if (_nextCharFreq != null) this._nextCharFreq = _nextCharFreq;
        if (_nextPairFreq != null) this._nextPairFreq = _nextPairFreq;
        if (_needed != null) this._needed = _needed;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_levelInfo(_level, _lastFreq, _nextCharFreq, _nextPairFreq, _needed);
    }
}
@:structInit @:using(stdgo.compress.flate.Flate.ReadError_static_extension) class ReadError {
    @:keep
    public function error():GoString {
        var _e = this;
        _e;
        return ((((("flate: read error at offset " : GoString))) + stdgo.strconv.Strconv.formatInt(_e.offset, ((10 : GoInt)))) + (((": " : GoString)))) + _e.err.error();
    }
    public var offset : GoInt64 = ((0 : GoInt64));
    public var err : stdgo.Error = ((null : stdgo.Error));
    public function new(?offset:GoInt64, ?err:stdgo.Error) {
        if (offset != null) this.offset = offset;
        if (err != null) this.err = err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ReadError(offset, err);
    }
}
@:structInit @:using(stdgo.compress.flate.Flate.WriteError_static_extension) class WriteError {
    @:keep
    public function error():GoString {
        var _e = this;
        _e;
        return ((((("flate: write error at offset " : GoString))) + stdgo.strconv.Strconv.formatInt(_e.offset, ((10 : GoInt)))) + (((": " : GoString)))) + _e.err.error();
    }
    public var offset : GoInt64 = ((0 : GoInt64));
    public var err : stdgo.Error = ((null : stdgo.Error));
    public function new(?offset:GoInt64, ?err:stdgo.Error) {
        if (offset != null) this.offset = offset;
        if (err != null) this.err = err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new WriteError(offset, err);
    }
}
@:structInit @:using(stdgo.compress.flate.Flate.T_huffmanDecoder_static_extension) class T_huffmanDecoder {
    @:keep
    public function _init(_lengths:Slice<GoInt>):Bool {
        var _h = this;
        _h;
        {};
        if (_h._min != ((0 : GoInt))) {
            {
                var __tmp__ = ((new T_huffmanDecoder() : T_huffmanDecoder));
                _h._min = __tmp__._min;
                _h._chunks = __tmp__._chunks;
                _h._links = __tmp__._links;
                _h._linkMask = __tmp__._linkMask;
            };
        };
        var _count:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 16) ((0 : GoInt))]);
        var _min:GoInt = ((0 : GoInt)), _max:GoInt = ((0 : GoInt));
        for (_0 => _n in _lengths) {
            if (_n == ((0 : GoInt))) {
                continue;
            };
            if ((_min == ((0 : GoInt))) || (_n < _min)) {
                _min = _n;
            };
            if (_n > _max) {
                _max = _n;
            };
            (_count != null ? _count[_n] : ((0 : GoInt)))++;
        };
        if (_max == ((0 : GoInt))) {
            return true;
        };
        var _code:GoInt = ((0 : GoInt));
        var _nextcode:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 16) ((0 : GoInt))]);
        {
            var _i:GoInt = _min;
            Go.cfor(_i <= _max, _i++, {
                _code = _code << (((1 : GoUnTypedInt)));
                if (_nextcode != null) _nextcode[_i] = _code;
                _code = _code + ((_count != null ? _count[_i] : ((0 : GoInt))));
            });
        };
        if ((_code != (((1 : GoInt)) << ((_max : GoUInt)))) && !((_code == ((1 : GoInt))) && (_max == ((1 : GoInt))))) {
            return false;
        };
        _h._min = _min;
        if (_max > ((9 : GoInt))) {
            var _numLinks:GoInt = ((1 : GoInt)) << (((_max : GoUInt)) - ((9 : GoUInt)));
            _h._linkMask = (((_numLinks - ((1 : GoInt))) : GoUInt32));
            var _link:GoInt = (_nextcode != null ? _nextcode[((10 : GoInt))] : ((0 : GoInt))) >> ((1 : GoUnTypedInt));
            _h._links = new Slice<Slice<GoUInt32>>(...[for (i in 0 ... ((((512 : GoInt)) - _link : GoInt)).toBasic()) ((null : Slice<GoUInt32>))]);
            {
                var _j:GoUInt = ((_link : GoUInt));
                Go.cfor(_j < ((512 : GoUInt)), _j++, {
                    var _reverse:GoInt = ((stdgo.math.bits.Bits.reverse16(((_j : GoUInt16))) : GoInt));
                    _reverse = _reverse >> (((((7 : GoUInt)) : GoUInt)));
                    var _off:GoUInt = _j - ((_link : GoUInt));
                    if (false && ((_h._chunks != null ? _h._chunks[_reverse] : ((0 : GoUInt32))) != ((0 : GoUInt32)))) {
                        throw Go.toInterface(((("impossible: overwriting existing chunk" : GoString))));
                    };
                    if (_h._chunks != null) _h._chunks[_reverse] = ((((_off << ((4 : GoUnTypedInt))) | ((10 : GoUInt))) : GoUInt32));
                    if (_h._links != null) _h._links[_off] = new Slice<GoUInt32>(...[for (i in 0 ... ((_numLinks : GoInt)).toBasic()) ((0 : GoUInt32))]);
                });
            };
        };
        for (_i => _n in _lengths) {
            if (_n == ((0 : GoInt))) {
                continue;
            };
            var _code:GoInt = (_nextcode != null ? _nextcode[_n] : ((0 : GoInt)));
            (_nextcode != null ? _nextcode[_n] : ((0 : GoInt)))++;
            var _chunk:GoUInt32 = ((((_i << ((4 : GoUnTypedInt))) | _n) : GoUInt32));
            var _reverse:GoInt = ((stdgo.math.bits.Bits.reverse16(((_code : GoUInt16))) : GoInt));
            _reverse = _reverse >> ((((((16 : GoInt)) - _n) : GoUInt)));
            if (_n <= ((9 : GoInt))) {
                {
                    var _off:GoInt = _reverse;
                    Go.cfor(_off < (_h._chunks != null ? _h._chunks.length : ((0 : GoInt))), _off = _off + (((1 : GoInt)) << ((_n : GoUInt))), {
                        if (false && ((_h._chunks != null ? _h._chunks[_off] : ((0 : GoUInt32))) != ((0 : GoUInt32)))) {
                            throw Go.toInterface(((("impossible: overwriting existing chunk" : GoString))));
                        };
                        if (_h._chunks != null) _h._chunks[_off] = _chunk;
                    });
                };
            } else {
                var _j:GoInt = _reverse & ((511 : GoInt));
                if (false && (((_h._chunks != null ? _h._chunks[_j] : ((0 : GoUInt32))) & ((15 : GoUInt32))) != ((10 : GoUInt32)))) {
                    throw Go.toInterface(((("impossible: not an indirect chunk" : GoString))));
                };
                var _value:GoUInt32 = (_h._chunks != null ? _h._chunks[_j] : ((0 : GoUInt32))) >> ((4 : GoUnTypedInt));
                var _linktab:Slice<GoUInt32> = (_h._links != null ? _h._links[_value] : ((null : Slice<GoUInt32>)));
                _reverse = _reverse >> (((9 : GoUnTypedInt)));
                {
                    var _off:GoInt = _reverse;
                    Go.cfor(_off < (_linktab != null ? _linktab.length : ((0 : GoInt))), _off = _off + (((1 : GoInt)) << (((_n - ((9 : GoInt))) : GoUInt))), {
                        if (false && ((_linktab != null ? _linktab[_off] : ((0 : GoUInt32))) != ((0 : GoUInt32)))) {
                            throw Go.toInterface(((("impossible: overwriting existing chunk" : GoString))));
                        };
                        if (_linktab != null) _linktab[_off] = _chunk;
                    });
                };
            };
        };
        if (false) {
            for (_i => _chunk in _h._chunks) {
                if (_chunk == ((0 : GoUInt32))) {
                    if ((_code == ((1 : GoInt))) && ((_i % ((2 : GoInt))) == ((1 : GoInt)))) {
                        continue;
                    };
                    throw Go.toInterface(((("impossible: missing chunk" : GoString))));
                };
            };
            for (_1 => _linktab in _h._links) {
                for (_2 => _chunk in _linktab) {
                    if (_chunk == ((0 : GoUInt32))) {
                        throw Go.toInterface(((("impossible: missing chunk" : GoString))));
                    };
                };
            };
        };
        return true;
    }
    public var _min : GoInt = ((0 : GoInt));
    public var _chunks : GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 512) ((0 : GoUInt32))]);
    public var _links : Slice<Slice<GoUInt32>> = ((null : Slice<Slice<GoUInt32>>));
    public var _linkMask : GoUInt32 = ((0 : GoUInt32));
    public function new(?_min:GoInt, ?_chunks:GoArray<GoUInt32>, ?_links:Slice<Slice<GoUInt32>>, ?_linkMask:GoUInt32) {
        if (_min != null) this._min = _min;
        if (_chunks != null) this._chunks = _chunks;
        if (_links != null) this._links = _links;
        if (_linkMask != null) this._linkMask = _linkMask;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanDecoder(_min, _chunks, _links, _linkMask);
    }
}
@:structInit @:using(stdgo.compress.flate.Flate.T_decompressor_static_extension) class T_decompressor {
    @:keep
    public function reset(_r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):Error {
        var _f = this;
        _f;
        {
            var __tmp__ = ((({ _r : _makeReader(_r), _bits : _f._bits, _codebits : _f._codebits, _dict : (_f._dict == null ? null : _f._dict.__copy__()), _step : (T_decompressor_static_extension)._nextBlock, _roffset : 0, _b : 0, _nb : 0, _h1 : new T_huffmanDecoder(), _h2 : new T_huffmanDecoder(), _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]), _stepState : 0, _final : false, _err : ((null : stdgo.Error)), _toRead : ((null : Slice<GoUInt8>)), _hl : ((null : Ref<T_huffmanDecoder>)), _hd : ((null : Ref<T_huffmanDecoder>)), _copyLen : 0, _copyDist : 0 } : T_decompressor)) == null ? null : (({ _r : _makeReader(_r), _bits : _f._bits, _codebits : _f._codebits, _dict : (_f._dict == null ? null : _f._dict.__copy__()), _step : (T_decompressor_static_extension)._nextBlock, _roffset : 0, _b : 0, _nb : 0, _h1 : new T_huffmanDecoder(), _h2 : new T_huffmanDecoder(), _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]), _stepState : 0, _final : false, _err : ((null : stdgo.Error)), _toRead : ((null : Slice<GoUInt8>)), _hl : ((null : Ref<T_huffmanDecoder>)), _hd : ((null : Ref<T_huffmanDecoder>)), _copyLen : 0, _copyDist : 0 } : T_decompressor)).__copy__());
            _f._r = __tmp__._r;
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
        _f._dict._init(((32768 : GoInt)), _dict);
        return ((null : stdgo.Error));
    }
    @:keep
    public function _huffSym(_h:T_huffmanDecoder):{ var _0 : GoInt; var _1 : Error; } {
        var _f = this;
        _f;
        var _n:GoUInt = ((_h._min : GoUInt));
        var _nb:GoUInt = _f._nb, _b:GoUInt32 = _f._b;
        while (true) {
            while (_nb < _n) {
                var __tmp__ = _f._r.readByte(), _c:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _f._b = _b;
                    _f._nb = _nb;
                    return { _0 : ((0 : GoInt)), _1 : _noEOF(_err) };
                };
                _f._roffset++;
                _b = _b | (((_c : GoUInt32)) << (_nb & ((31 : GoUInt))));
                _nb = _nb + (((8 : GoUInt)));
            };
            var _chunk:GoUInt32 = (_h._chunks != null ? _h._chunks[_b & ((511 : GoUInt32))] : ((0 : GoUInt32)));
            _n = (((_chunk & ((15 : GoUInt32))) : GoUInt));
            if (_n > ((9 : GoUInt))) {
                _chunk = ((_h._links != null ? _h._links[_chunk >> ((4 : GoUnTypedInt))] : ((null : Slice<GoUInt32>))) != null ? (_h._links != null ? _h._links[_chunk >> ((4 : GoUnTypedInt))] : ((null : Slice<GoUInt32>)))[(_b >> ((9 : GoUnTypedInt))) & _h._linkMask] : ((0 : GoUInt32)));
                _n = (((_chunk & ((15 : GoUInt32))) : GoUInt));
            };
            if (_n <= _nb) {
                if (_n == ((0 : GoUInt))) {
                    _f._b = _b;
                    _f._nb = _nb;
                    _f._err = new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
                    return { _0 : ((0 : GoInt)), _1 : _f._err };
                };
                _f._b = _b >> (_n & ((31 : GoUInt)));
                _f._nb = _nb - _n;
                return { _0 : (((_chunk >> ((4 : GoUnTypedInt))) : GoInt)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    @:keep
    public function _moreBits():Error {
        var _f = this;
        _f;
        var __tmp__ = _f._r.readByte(), _c:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _noEOF(_err);
        };
        _f._roffset++;
        _f._b = _f._b | (((_c : GoUInt32)) << _f._nb);
        _f._nb = _f._nb + (((8 : GoUInt)));
        return ((null : stdgo.Error));
    }
    @:keep
    public function _finishBlock():Void {
        var _f = this;
        _f;
        if (_f._final) {
            if (_f._dict._availRead() > ((0 : GoInt))) {
                _f._toRead = _f._dict._readFlush();
            };
            _f._err = stdgo.io.Io.eof;
        };
        _f._step = (T_decompressor_static_extension)._nextBlock;
    }
    @:keep
    public function _copyData():Void {
        var _f = this;
        _f;
        var _buf:Slice<GoUInt8> = _f._dict._writeSlice();
        if ((_buf != null ? _buf.length : ((0 : GoInt))) > _f._copyLen) {
            _buf = ((_buf.__slice__(0, _f._copyLen) : Slice<GoUInt8>));
        };
        var __tmp__ = stdgo.io.Io.readFull(_f._r, _buf), _cnt:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _f._roffset = _f._roffset + (((_cnt : GoInt64)));
        _f._copyLen = _f._copyLen - (_cnt);
        _f._dict._writeMark(_cnt);
        if (_err != null) {
            _f._err = _noEOF(_err);
            return;
        };
        if ((_f._dict._availWrite() == ((0 : GoInt))) || (_f._copyLen > ((0 : GoInt)))) {
            _f._toRead = _f._dict._readFlush();
            _f._step = (T_decompressor_static_extension)._copyData;
            return;
        };
        _f._finishBlock();
    }
    @:keep
    public function _dataBlock():Void {
        var _f = this;
        _f;
        _f._nb = ((0 : GoUInt));
        _f._b = ((0 : GoUInt32));
        var __tmp__ = stdgo.io.Io.readFull(_f._r, ((_f._buf.__slice__(((0 : GoInt)), ((4 : GoInt))) : Slice<GoUInt8>))), _nr:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _f._roffset = _f._roffset + (((_nr : GoInt64)));
        if (_err != null) {
            _f._err = _noEOF(_err);
            return;
        };
        var _n:GoInt = (((_f._buf != null ? _f._buf[((0 : GoInt))] : ((0 : GoUInt8))) : GoInt)) | ((((_f._buf != null ? _f._buf[((1 : GoInt))] : ((0 : GoUInt8))) : GoInt)) << ((8 : GoUnTypedInt)));
        var _nn:GoInt = (((_f._buf != null ? _f._buf[((2 : GoInt))] : ((0 : GoUInt8))) : GoInt)) | ((((_f._buf != null ? _f._buf[((3 : GoInt))] : ((0 : GoUInt8))) : GoInt)) << ((8 : GoUnTypedInt)));
        if (((_nn : GoUInt16)) != (((-1 ^ _n) : GoUInt16))) {
            _f._err = new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
            return;
        };
        if (_n == ((0 : GoInt))) {
            _f._toRead = _f._dict._readFlush();
            _f._finishBlock();
            return;
        };
        _f._copyLen = _n;
        _f._copyData();
    }
    @:keep
    public function _huffmanBlock():Void {
        var _f = this;
        _f;
        stdgo.internal.Macro.controlFlow({
            {};
            if (_f._stepState == ((0 : GoInt))) {
                @:goto "readLiteral";
            } else if (_f._stepState == ((1 : GoInt))) {
                @:goto "copyHistory";
            };
            @:label("readLiteral") {
                var __tmp__ = _f._huffSym(_f._hl), _v:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _f._err = _err;
                    return;
                };
                var _n:GoUInt = ((0 : GoUInt));
                var _length:GoInt = ((0 : GoInt));
                if (_v < ((256 : GoInt))) {
                    _f._dict._writeByte(((_v : GoByte)));
                    if (_f._dict._availWrite() == ((0 : GoInt))) {
                        _f._toRead = _f._dict._readFlush();
                        _f._step = (T_decompressor_static_extension)._huffmanBlock;
                        _f._stepState = ((0 : GoInt));
                        return;
                    };
                    @:goto "readLiteral";
                } else if (_v == ((256 : GoInt))) {
                    _f._finishBlock();
                    return;
                } else if (_v < ((265 : GoInt))) {
                    _length = _v - ((254 : GoInt));
                    _n = ((0 : GoUInt));
                } else if (_v < ((269 : GoInt))) {
                    _length = (_v * ((2 : GoInt))) - ((519 : GoInt));
                    _n = ((1 : GoUInt));
                } else if (_v < ((273 : GoInt))) {
                    _length = (_v * ((4 : GoInt))) - ((1057 : GoInt));
                    _n = ((2 : GoUInt));
                } else if (_v < ((277 : GoInt))) {
                    _length = (_v * ((8 : GoInt))) - ((2149 : GoInt));
                    _n = ((3 : GoUInt));
                } else if (_v < ((281 : GoInt))) {
                    _length = (_v * ((16 : GoInt))) - ((4365 : GoInt));
                    _n = ((4 : GoUInt));
                } else if (_v < ((285 : GoInt))) {
                    _length = (_v * ((32 : GoInt))) - ((8861 : GoInt));
                    _n = ((5 : GoUInt));
                } else if (_v < ((286 : GoInt))) {
                    _length = ((258 : GoInt));
                    _n = ((0 : GoUInt));
                } else {
                    _f._err = new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
                    return;
                };
                if (_n > ((0 : GoUInt))) {
                    while (_f._nb < _n) {
                        {
                            _err = _f._moreBits();
                            if (_err != null) {
                                _f._err = _err;
                                return;
                            };
                        };
                    };
                    _length = _length + ((((_f._b & ((((((1 : GoUInt32)) << _n) - ((1 : GoUInt32))) : GoUInt32))) : GoInt)));
                    _f._b = _f._b >> (_n);
                    _f._nb = _f._nb - (_n);
                };
                var _dist:GoInt = ((0 : GoInt));
                if (_f._hd == null) {
                    while (_f._nb < ((5 : GoUInt))) {
                        {
                            _err = _f._moreBits();
                            if (_err != null) {
                                _f._err = _err;
                                return;
                            };
                        };
                    };
                    _dist = ((stdgo.math.bits.Bits.reverse8(((((_f._b & ((31 : GoUInt32))) << ((3 : GoUnTypedInt))) : GoUInt8))) : GoInt));
                    _f._b = _f._b >> (((5 : GoUnTypedInt)));
                    _f._nb = _f._nb - (((5 : GoUInt)));
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
                if (_dist < ((4 : GoInt))) {
                    _dist++;
                } else if (_dist < ((30 : GoInt))) {
                    var _nb:GoUInt = (((_dist - ((2 : GoInt))) : GoUInt)) >> ((1 : GoUnTypedInt));
                    var _extra:GoInt = (_dist & ((1 : GoInt))) << _nb;
                    while (_f._nb < _nb) {
                        {
                            _err = _f._moreBits();
                            if (_err != null) {
                                _f._err = _err;
                                return;
                            };
                        };
                    };
                    _extra = _extra | ((((_f._b & ((((((1 : GoUInt32)) << _nb) - ((1 : GoUInt32))) : GoUInt32))) : GoInt)));
                    _f._b = _f._b >> (_nb);
                    _f._nb = _f._nb - (_nb);
                    _dist = ((((1 : GoInt)) << (_nb + ((1 : GoUInt)))) + ((1 : GoInt))) + _extra;
                } else {
                    _f._err = new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
                    return;
                };
                if (_dist > _f._dict._histSize()) {
                    _f._err = new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
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
                var _cnt:GoInt = _f._dict._tryWriteCopy(_f._copyDist, _f._copyLen);
                if (_cnt == ((0 : GoInt))) {
                    _cnt = _f._dict._writeCopy(_f._copyDist, _f._copyLen);
                };
                _f._copyLen = _f._copyLen - (_cnt);
                if ((_f._dict._availWrite() == ((0 : GoInt))) || (_f._copyLen > ((0 : GoInt)))) {
                    _f._toRead = _f._dict._readFlush();
                    _f._step = (T_decompressor_static_extension)._huffmanBlock;
                    _f._stepState = ((1 : GoInt));
                    return;
                };
                @:goto "readLiteral";
            };
        });
    }
    @:keep
    public function _readHuffman():Error {
        var _f = this;
        _f;
        while (_f._nb < ((14 : GoUInt))) {
            {
                var _err:stdgo.Error = _f._moreBits();
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _nlit:GoInt = (((_f._b & ((31 : GoUInt32))) : GoInt)) + ((257 : GoInt));
        if (_nlit > ((286 : GoInt))) {
            return new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
        };
        _f._b = _f._b >> (((5 : GoUnTypedInt)));
        var _ndist:GoInt = (((_f._b & ((31 : GoUInt32))) : GoInt)) + ((1 : GoInt));
        if (_ndist > ((30 : GoInt))) {
            return new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
        };
        _f._b = _f._b >> (((5 : GoUnTypedInt)));
        var _nclen:GoInt = (((_f._b & ((15 : GoUInt32))) : GoInt)) + ((4 : GoInt));
        _f._b = _f._b >> (((4 : GoUnTypedInt)));
        _f._nb = _f._nb - (((14 : GoUInt)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _nclen, _i++, {
                while (_f._nb < ((3 : GoUInt))) {
                    {
                        var _err:stdgo.Error = _f._moreBits();
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
                if (_f._codebits != null) _f._codebits[(_codeOrder != null ? _codeOrder[_i] : ((0 : GoInt)))] = (((_f._b & ((7 : GoUInt32))) : GoInt));
                _f._b = _f._b >> (((3 : GoUnTypedInt)));
                _f._nb = _f._nb - (((3 : GoUInt)));
            });
        };
        {
            var _i:GoInt = _nclen;
            Go.cfor(_i < (_codeOrder != null ? _codeOrder.length : ((0 : GoInt))), _i++, {
                if (_f._codebits != null) _f._codebits[(_codeOrder != null ? _codeOrder[_i] : ((0 : GoInt)))] = ((0 : GoInt));
            });
        };
        if (!_f._h1._init(((_f._codebits.__slice__(((0 : GoInt))) : Slice<GoInt>)))) {
            return new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
        };
        {
            var _i:GoInt = ((0 : GoInt)), _n:GoInt = _nlit + _ndist;
            while (_i < _n) {
                var __tmp__ = _f._huffSym(_f._h1), _x:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if (_x < ((16 : GoInt))) {
                    if (_f._bits != null) _f._bits[_i] = _x;
                    _i++;
                    continue;
                };
                var _rep:GoInt = ((0 : GoInt));
                var _nb:GoUInt = ((0 : GoUInt));
                var _b:GoInt = ((0 : GoInt));
                if (_x == ((16 : GoInt))) {
                    _rep = ((3 : GoInt));
                    _nb = ((2 : GoUInt));
                    if (_i == ((0 : GoInt))) {
                        return new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
                    };
                    _b = (_f._bits != null ? _f._bits[_i - ((1 : GoInt))] : ((0 : GoInt)));
                } else if (_x == ((17 : GoInt))) {
                    _rep = ((3 : GoInt));
                    _nb = ((3 : GoUInt));
                    _b = ((0 : GoInt));
                } else if (_x == ((18 : GoInt))) {
                    _rep = ((11 : GoInt));
                    _nb = ((7 : GoUInt));
                    _b = ((0 : GoInt));
                };
                while (_f._nb < _nb) {
                    {
                        var _err:stdgo.Error = _f._moreBits();
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
                _rep = _rep + ((((_f._b & ((((((1 : GoUInt32)) << _nb) - ((1 : GoUInt32))) : GoUInt32))) : GoInt)));
                _f._b = _f._b >> (_nb);
                _f._nb = _f._nb - (_nb);
                if ((_i + _rep) > _n) {
                    return new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
                };
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < _rep, _j++, {
                        if (_f._bits != null) _f._bits[_i] = _b;
                        _i++;
                    });
                };
            };
        };
        if (!_f._h1._init(((_f._bits.__slice__(((0 : GoInt)), _nlit) : Slice<GoInt>))) || !_f._h2._init(((_f._bits.__slice__(_nlit, _nlit + _ndist) : Slice<GoInt>)))) {
            return new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
        };
        if (_f._h1._min < (_f._bits != null ? _f._bits[((256 : GoInt))] : ((0 : GoInt)))) {
            _f._h1._min = (_f._bits != null ? _f._bits[((256 : GoInt))] : ((0 : GoInt)));
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function close():Error {
        var _f = this;
        _f;
        if (_f._err == stdgo.io.Io.eof) {
            return ((null : stdgo.Error));
        };
        return _f._err;
    }
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _f = this;
        _f;
        while (true) {
            if ((_f._toRead != null ? _f._toRead.length : ((0 : GoInt))) > ((0 : GoInt))) {
                var _n:GoInt = Go.copySlice(_b, _f._toRead);
                _f._toRead = ((_f._toRead.__slice__(_n) : Slice<GoUInt8>));
                if ((_f._toRead != null ? _f._toRead.length : ((0 : GoInt))) == ((0 : GoInt))) {
                    return { _0 : _n, _1 : _f._err };
                };
                return { _0 : _n, _1 : ((null : stdgo.Error)) };
            };
            if (_f._err != null) {
                return { _0 : ((0 : GoInt)), _1 : _f._err };
            };
            _f._step(_f);
            if ((_f._err != null) && ((_f._toRead != null ? _f._toRead.length : ((0 : GoInt))) == ((0 : GoInt)))) {
                _f._toRead = _f._dict._readFlush();
            };
        };
    }
    @:keep
    public function _nextBlock():Void {
        var _f = this;
        _f;
        while (_f._nb < ((3 : GoUInt))) {
            {
                _f._err = _f._moreBits();
                if (_f._err != null) {
                    return;
                };
            };
        };
        _f._final = (_f._b & ((1 : GoUInt32))) == ((1 : GoUInt32));
        _f._b = _f._b >> (((1 : GoUnTypedInt)));
        var _typ:GoUInt32 = _f._b & ((3 : GoUInt32));
        _f._b = _f._b >> (((2 : GoUnTypedInt)));
        _f._nb = _f._nb - (((3 : GoUInt)));
        {
            var __switchIndex__ = -1;
            while (true) {
                if (_typ == ((0 : GoUInt32))) {
                    _f._dataBlock();
                    break;
                } else if (_typ == ((1 : GoUInt32))) {
                    _f._hl = _fixedHuffmanDecoder;
                    _f._hd = null;
                    _f._huffmanBlock();
                    break;
                } else if (_typ == ((2 : GoUInt32))) {
                    {
                        _f._err = _f._readHuffman();
                        if (_f._err != null) {
                            break;
                        };
                    };
                    _f._hl = _f._h1;
                    _f._hd = _f._h2;
                    _f._huffmanBlock();
                    break;
                } else {
                    _f._err = new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
                };
                break;
            };
        };
    }
    public var _r : Reader = ((null : Reader));
    public var _roffset : GoInt64 = ((0 : GoInt64));
    public var _b : GoUInt32 = ((0 : GoUInt32));
    public var _nb : GoUInt = ((0 : GoUInt));
    public var _h1 : T_huffmanDecoder = new T_huffmanDecoder();
    public var _h2 : T_huffmanDecoder = new T_huffmanDecoder();
    public var _bits : Ref<GoArray<GoInt>> = ((null : Ref<GoArray<GoInt>>));
    public var _codebits : Ref<GoArray<GoInt>> = ((null : Ref<GoArray<GoInt>>));
    public var _dict : T_dictDecoder = new T_dictDecoder();
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
    public var _step : Ref<T_decompressor> -> Void = null;
    public var _stepState : GoInt = ((0 : GoInt));
    public var _final : Bool = false;
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _toRead : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _hl : Ref<T_huffmanDecoder> = ((null : Ref<T_huffmanDecoder>));
    public var _hd : Ref<T_huffmanDecoder> = ((null : Ref<T_huffmanDecoder>));
    public var _copyLen : GoInt = ((0 : GoInt));
    public var _copyDist : GoInt = ((0 : GoInt));
    public function new(?_r:Reader, ?_roffset:GoInt64, ?_b:GoUInt32, ?_nb:GoUInt, ?_h1:T_huffmanDecoder, ?_h2:T_huffmanDecoder, ?_bits:Ref<GoArray<GoInt>>, ?_codebits:Ref<GoArray<GoInt>>, ?_dict:T_dictDecoder, ?_buf:GoArray<GoUInt8>, ?_step:Ref<T_decompressor> -> Void, ?_stepState:GoInt, ?_final:Bool, ?_err:stdgo.Error, ?_toRead:Slice<GoUInt8>, ?_hl:Ref<T_huffmanDecoder>, ?_hd:Ref<T_huffmanDecoder>, ?_copyLen:GoInt, ?_copyDist:GoInt) {
        if (_r != null) this._r = _r;
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
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_decompressor(
_r,
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
@:structInit @:using(stdgo.compress.flate.Flate.T_errorWriter_static_extension) class T_errorWriter {
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _e = this;
        _e;
        if (_e.n <= ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.errClosedPipe };
        };
        _e.n--;
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public var n : GoInt = ((0 : GoInt));
    public function new(?n:GoInt) {
        if (n != null) this.n = n;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_errorWriter(n);
    }
}
@:structInit @:local class T__struct_0 {
    public var _previous : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _current : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _t : GoInt32 = ((0 : GoInt32));
    public var _s : GoInt32 = ((0 : GoInt32));
    public var _want : GoInt32 = ((0 : GoInt32));
    public function toString():String return "{" + Go.string(_previous) + " " + Go.string(_current) + " " + Go.string(_t) + " " + Go.string(_s) + " " + Go.string(_want) + "}";
    public function new(?_previous:Slice<GoUInt8>, ?_current:Slice<GoUInt8>, ?_t:GoInt32, ?_s:GoInt32, ?_want:GoInt32, ?toString) {
        if (_previous != null) this._previous = _previous;
        if (_current != null) this._current = _current;
        if (_t != null) this._t = _t;
        if (_s != null) this._s = _s;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_previous, _current, _t, _s, _want);
    }
}
@:structInit @:local class T__struct_1 {
    public var _dist : GoInt = ((0 : GoInt));
    public var _length : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_dist) + " " + Go.string(_length) + "}";
    public function new(?_dist:GoInt, ?_length:GoInt, ?toString) {
        if (_dist != null) this._dist = _dist;
        if (_length != null) this._length = _length;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_dist, _length);
    }
}
@:structInit @:local class T__struct_2 {
    public var _desc : GoString = (("" : GoString));
    public var _stream : GoString = (("" : GoString));
    public var _want : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_desc) + " " + Go.string(_stream) + " " + Go.string(_want) + "}";
    public function new(?_desc:GoString, ?_stream:GoString, ?_want:GoString, ?toString) {
        if (_desc != null) this._desc = _desc;
        if (_stream != null) this._stream = _stream;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_2(_desc, _stream, _want);
    }
}
@:structInit @:local class T__struct_3 {
    public var _input : GoString = (("" : GoString));
    public var _output : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_input) + " " + Go.string(_output) + "}";
    public function new(?_input:GoString, ?_output:GoString, ?toString) {
        if (_input != null) this._input = _input;
        if (_output != null) this._output = _output;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_3(_input, _output);
    }
}
@:structInit @:local class T__struct_4 {
    public var _name : GoString = (("" : GoString));
    public var _file : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_file) + "}";
    public function new(?_name:GoString, ?_file:GoString, ?toString) {
        if (_name != null) this._name = _name;
        if (_file != null) this._file = _file;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_4(_name, _file);
    }
}
@:structInit @:local class T__struct_5 {
    public var _name : GoString = (("" : GoString));
    public var _level : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_level) + "}";
    public function new(?_name:GoString, ?_level:GoInt, ?toString) {
        if (_name != null) this._name = _name;
        if (_level != null) this._level = _level;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_5(_name, _level);
    }
}
@:structInit @:local class T__struct_6 {
    public var _name : GoString = (("" : GoString));
    public var _n : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_n) + "}";
    public function new(?_name:GoString, ?_n:GoInt, ?toString) {
        if (_name != null) this._name = _name;
        if (_n != null) this._n = _n;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_6(_name, _n);
    }
}
@:structInit @:local class T__struct_7 {
    @:embedded
    public var reader : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public function toString():String return "{" + Go.string(reader) + "}";
    public function new(?reader:stdgo.io.Io.Reader, ?toString) {
        if (reader != null) this.reader = reader;
    }
    public function read(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return reader.read(_p);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_7(reader);
    }
}
@:named @:using(stdgo.compress.flate.Flate.T_byLiteral_static_extension) typedef T_byLiteral = Slice<T_literalNode>;
@:named @:using(stdgo.compress.flate.Flate.T_byFreq_static_extension) typedef T_byFreq = Slice<T_literalNode>;
@:named @:using(stdgo.compress.flate.Flate.CorruptInputError_static_extension) typedef CorruptInputError = GoInt64;
@:named @:using(stdgo.compress.flate.Flate.InternalError_static_extension) typedef InternalError = GoString;
@:named @:using(stdgo.compress.flate.Flate.T_token_static_extension) typedef T_token = GoUInt32;
function _hash4(_b:Slice<GoByte>):GoUInt32 {
        return (((((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((24 : GoUnTypedInt)))) * ((506832829 : GoUInt32))) >> ((15 : GoUnTypedInt));
    }
function _bulkHash4(_b:Slice<GoByte>, _dst:Slice<GoUInt32>):Void {
        if ((_b != null ? _b.length : ((0 : GoInt))) < ((4 : GoInt))) {
            return;
        };
        var _hb:GoUInt32 = (((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((24 : GoUnTypedInt)));
        if (_dst != null) _dst[((0 : GoInt))] = (_hb * ((506832829 : GoUInt32))) >> ((15 : GoUnTypedInt));
        var _end:GoInt = ((_b != null ? _b.length : ((0 : GoInt))) - ((4 : GoInt))) + ((1 : GoInt));
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < _end, _i++, {
                _hb = (_hb << ((8 : GoUnTypedInt))) | (((_b != null ? _b[_i + ((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt32));
                if (_dst != null) _dst[_i] = (_hb * ((506832829 : GoUInt32))) >> ((15 : GoUnTypedInt));
            });
        };
    }
function _matchLen(_a:Slice<GoByte>, _b:Slice<GoByte>, _max:GoInt):GoInt {
        _a = ((_a.__slice__(0, _max) : Slice<GoUInt8>));
        _b = ((_b.__slice__(0, (_a != null ? _a.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        for (_i => _av in _a) {
            if ((_b != null ? _b[_i] : ((0 : GoUInt8))) != _av) {
                return _i;
            };
        };
        return _max;
    }
function newWriter(_w:stdgo.io.Io.Writer, _level:GoInt):{ var _0 : Writer; var _1 : Error; } {
        var _dw:Writer = new Writer();
        {
            var _err:stdgo.Error = _dw._d._init(_w, _level);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _dw, _1 : ((null : stdgo.Error)) };
    }
function newWriterDict(_w:stdgo.io.Io.Writer, _level:GoInt, _dict:Slice<GoByte>):{ var _0 : Writer; var _1 : Error; } {
        var _dw:Ref<T_dictWriter> = ((new T_dictWriter(_w) : T_dictWriter));
        var __tmp__ = newWriter(_dw, _level), _zw:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        _zw._d._fillWindow(_dict);
        _zw._dict = (_zw._dict != null ? _zw._dict.__append__(..._dict.__toArray__()) : new Slice<GoUInt8>(..._dict.__toArray__()));
        return { _0 : _zw, _1 : _err };
    }
function _largeDataChunk():Slice<GoByte> {
        var _result:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((100000 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_i => _ in _result) {
            if (_result != null) _result[_i] = ((((_i * _i) & ((255 : GoInt))) : GoByte));
        };
        return _result;
    }
function testBulkHash4(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _x in _deflateTests) {
            var _y:Slice<GoUInt8> = _x._out;
            if ((_y != null ? _y.length : ((0 : GoInt))) < ((4 : GoInt))) {
                continue;
            };
            _y = (_y != null ? _y.__append__(..._y.__toArray__()) : new Slice<GoUInt8>(..._y.__toArray__()));
            {
                var _j:GoInt = ((4 : GoInt));
                Go.cfor(_j < (_y != null ? _y.length : ((0 : GoInt))), _j++, {
                    var _y:Slice<GoUInt8> = ((_y.__slice__(0, _j) : Slice<GoUInt8>));
                    var _dst:Slice<GoUInt32> = new Slice<GoUInt32>(...[for (i in 0 ... ((((_y != null ? _y.length : ((0 : GoInt))) - ((4 : GoInt))) + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt32))]);
                    for (_i => _ in _dst) {
                        if (_dst != null) _dst[_i] = (((_i + ((100 : GoInt))) : GoUInt32));
                    };
                    _bulkHash4(_y, _dst);
                    for (_i => _got in _dst) {
                        var _want:GoUInt32 = _hash4(((_y.__slice__(_i) : Slice<GoUInt8>)));
                        if ((_got != _want) && (_got == (((_i : GoUInt32)) + ((100 : GoUInt32))))) {
                            _t.errorf(((("Len:%d Index:%d, want 0x%08x but not modified" : GoString))), Go.toInterface((_y != null ? _y.length : ((0 : GoInt)))), Go.toInterface(_i), Go.toInterface(_want));
                        } else if (_got != _want) {
                            _t.errorf(((("Len:%d Index:%d, got 0x%08x want:0x%08x" : GoString))), Go.toInterface((_y != null ? _y.length : ((0 : GoInt)))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                        };
                    };
                });
            };
        };
    }
function testDeflate(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _h in _deflateTests) {
            var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
            var __tmp__ = newWriter(_buf, _h._level), _w:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("NewWriter: %v" : GoString))), Go.toInterface(_err));
                continue;
            };
            _w.write(_h._in);
            _w.close();
            if (!stdgo.bytes.Bytes.equal(_buf.bytes(), _h._out)) {
                _t.errorf(((("Deflate(%d, %x) = \n%#v, want \n%#v" : GoString))), Go.toInterface(_h._level), Go.toInterface(_h._in), Go.toInterface(_buf.bytes()), Go.toInterface(_h._out));
            };
        };
    }
function testVeryLongSparseChunk(_t:stdgo.testing.Testing.T_):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(Go.toInterface(((("skipping sparse chunk during short test" : GoString)))));
        };
        var __tmp__ = newWriter(stdgo.io.Io.discard, ((1 : GoInt))), _w:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("NewWriter: %v" : GoString))), Go.toInterface(_err));
            return;
        };
        {
            {
                var __tmp__ = stdgo.io.Io.copy(_w, (({ _l : ((2.3e+09 : GoInt64)), _cur : 0 } : T_sparseReader)));
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.errorf(((("Compress failed: %v" : GoString))), Go.toInterface(_err));
                return;
            };
        };
    }
function _newSyncBuffer():T_syncBuffer {
        return (({ _ready : new Chan<Bool>(((((1 : GoInt)) : GoInt)).toBasic(), () -> false), _buf : new stdgo.bytes.Bytes.Buffer(), _mu : new stdgo.sync.Sync.RWMutex(), _closed : false } : T_syncBuffer));
    }
function _testSync(_t:stdgo.testing.Testing.T_, _level:GoInt, _input:Slice<GoByte>, _name:GoString):Void {
        if ((_input != null ? _input.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return;
        };
        _t.logf(((("--testSync %d, %d, %s" : GoString))), Go.toInterface(_level), Go.toInterface((_input != null ? _input.length : ((0 : GoInt)))), Go.toInterface(_name));
        var _buf:Ref<T_syncBuffer> = _newSyncBuffer();
        var _buf1:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        _buf.writeMode();
        var __tmp__ = newWriter(stdgo.io.Io.multiWriter(_buf, _buf1), _level), _w:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("NewWriter: %v" : GoString))), Go.toInterface(_err));
            return;
        };
        var _r:stdgo.io.Io.ReadCloser = newReader(_buf);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((2 : GoInt)), _i++, {
                var _lo:GoInt = ((0 : GoInt)), _hi:GoInt = ((0 : GoInt));
                if (_i == ((0 : GoInt))) {
                    {
                        final __tmp__0 = ((0 : GoInt));
                        final __tmp__1 = ((_input != null ? _input.length : ((0 : GoInt))) + ((1 : GoInt))) / ((2 : GoInt));
                        _lo = __tmp__0;
                        _hi = __tmp__1;
                    };
                } else {
                    {
                        final __tmp__0 = ((_input != null ? _input.length : ((0 : GoInt))) + ((1 : GoInt))) / ((2 : GoInt));
                        final __tmp__1 = (_input != null ? _input.length : ((0 : GoInt)));
                        _lo = __tmp__0;
                        _hi = __tmp__1;
                    };
                };
                _t.logf(((("#%d: write %d-%d" : GoString))), Go.toInterface(_i), Go.toInterface(_lo), Go.toInterface(_hi));
                {
                    var __tmp__ = _w.write(((_input.__slice__(_lo, _hi) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.errorf(((("testSync: write: %v" : GoString))), Go.toInterface(_err));
                        return;
                    };
                };
                if (_i == ((0 : GoInt))) {
                    {
                        var _err:stdgo.Error = _w.flush();
                        if (_err != null) {
                            _t.errorf(((("testSync: flush: %v" : GoString))), Go.toInterface(_err));
                            return;
                        };
                    };
                } else {
                    {
                        var _err:stdgo.Error = _w.close();
                        if (_err != null) {
                            _t.errorf(((("testSync: close: %v" : GoString))), Go.toInterface(_err));
                        };
                    };
                };
                _buf.readMode();
                var _out:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_hi - _lo) + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                var __tmp__ = stdgo.io.Io.readAtLeast(_r, _out, _hi - _lo), _m:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _t.logf(((("#%d: read %d" : GoString))), Go.toInterface(_i), Go.toInterface(_m));
                if ((_m != (_hi - _lo)) || (_err != null)) {
                    _t.errorf(((("testSync/%d (%d, %d, %s): read %d: %d, %v (%d left)" : GoString))), Go.toInterface(_i), Go.toInterface(_level), Go.toInterface((_input != null ? _input.length : ((0 : GoInt)))), Go.toInterface(_name), Go.toInterface(_hi - _lo), Go.toInterface(_m), Go.toInterface(_err), Go.toInterface(_buf._buf.len()));
                    return;
                };
                if (!stdgo.bytes.Bytes.equal(((_input.__slice__(_lo, _hi) : Slice<GoUInt8>)), ((_out.__slice__(0, _hi - _lo) : Slice<GoUInt8>)))) {
                    _t.errorf(((("testSync/%d: read wrong bytes: %x vs %x" : GoString))), Go.toInterface(_i), Go.toInterface(((_input.__slice__(_lo, _hi) : Slice<GoUInt8>))), Go.toInterface(((_out.__slice__(0, _hi - _lo) : Slice<GoUInt8>))));
                    return;
                };
                _buf.writeMode();
            });
        };
        _buf.readMode();
        var _out:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = _r.read(_out), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n > ((0 : GoInt))) || (_err != stdgo.io.Io.eof)) {
                _t.errorf(((("testSync (%d, %d, %s): final Read: %d, %v (hex: %x)" : GoString))), Go.toInterface(_level), Go.toInterface((_input != null ? _input.length : ((0 : GoInt)))), Go.toInterface(_name), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(((_out.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>))));
            };
        };
        if (_buf._buf.len() != ((0 : GoInt))) {
            _t.errorf(((("testSync (%d, %d, %s): extra data at end" : GoString))), Go.toInterface(_level), Go.toInterface((_input != null ? _input.length : ((0 : GoInt)))), Go.toInterface(_name));
        };
        _r.close();
        _r = newReader(_buf1);
        {
            var __tmp__ = stdgo.io.Io.readAll(_r);
            _out = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.errorf(((("testSync: read: %s" : GoString))), Go.toInterface(_err));
            return;
        };
        _r.close();
        if (!stdgo.bytes.Bytes.equal(_input, _out)) {
            _t.errorf(((("testSync: decompress(compress(data)) != data: level=%d input=%s" : GoString))), Go.toInterface(_level), Go.toInterface(_name));
        };
    }
function _testToFromWithLevelAndLimit(_t:stdgo.testing.Testing.T_, _level:GoInt, _input:Slice<GoByte>, _name:GoString, _limit:GoInt):Void {
        var _buffer:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var __tmp__ = newWriter(_buffer, _level), _w:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("NewWriter: %v" : GoString))), Go.toInterface(_err));
            return;
        };
        _w.write(_input);
        _w.close();
        if ((_limit > ((0 : GoInt))) && (_buffer.len() > _limit)) {
            _t.errorf(((("level: %d, len(compress(data)) = %d > limit = %d" : GoString))), Go.toInterface(_level), Go.toInterface(_buffer.len()), Go.toInterface(_limit));
            return;
        };
        if (_limit > ((0 : GoInt))) {
            _t.logf(((("level: %d, size:%.2f%%, %d b\n" : GoString))), Go.toInterface(_level), Go.toInterface((((_buffer.len() * ((100 : GoInt))) : GoFloat64)) / ((_limit : GoFloat64))), Go.toInterface(_buffer.len()));
        };
        var _r:stdgo.io.Io.ReadCloser = newReader(_buffer);
        var __tmp__ = stdgo.io.Io.readAll(_r), _out:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("read: %s" : GoString))), Go.toInterface(_err));
            return;
        };
        _r.close();
        if (!stdgo.bytes.Bytes.equal(_input, _out)) {
            _t.errorf(((("decompress(compress(data)) != data: level=%d input=%s" : GoString))), Go.toInterface(_level), Go.toInterface(_name));
            return;
        };
        _testSync(_t, _level, _input, _name);
    }
function _testToFromWithLimit(_t:stdgo.testing.Testing.T_, _input:Slice<GoByte>, _name:GoString, _limit:GoArray<GoInt>):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((10 : GoInt)), _i++, {
                _testToFromWithLevelAndLimit(_t, _i, _input, _name, (_limit != null ? _limit[_i] : ((0 : GoInt))));
            });
        };
        _testToFromWithLevelAndLimit(_t, ((-2 : GoInt)), _input, _name, (_limit != null ? _limit[((10 : GoInt))] : ((0 : GoInt))));
    }
function testDeflateInflate(_t:stdgo.testing.Testing.T_):Void {
        _t.parallel();
        for (_i => _h in _deflateInflateTests) {
            if (stdgo.testing.Testing.short() && ((_h._in != null ? _h._in.length : ((0 : GoInt))) > ((10000 : GoInt)))) {
                continue;
            };
            _testToFromWithLimit(_t, _h._in, stdgo.fmt.Fmt.sprintf(((("#%d" : GoString))), Go.toInterface(_i)), ((new GoArray<GoInt>(...([].concat([for (i in 0 ... 11) 0]))) : GoArray<GoInt>)));
        };
    }
function testReverseBits(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _h in _reverseBitsTests) {
            {
                var _v:GoUInt16 = _reverseBits(_h._in, _h._bitCount);
                if (_v != _h._out) {
                    _t.errorf(((("reverseBits(%v,%v) = %v, want %v" : GoString))), Go.toInterface(_h._in), Go.toInterface(_h._bitCount), Go.toInterface(_v), Go.toInterface(_h._out));
                };
            };
        };
    }
function testDeflateInflateString(_t:stdgo.testing.Testing.T_):Void {
        _t.parallel();
        if (stdgo.testing.Testing.short() && (stdgo.internal.testenv.Testenv.builder() == ((("" : GoString))))) {
            _t.skip(Go.toInterface(((("skipping in short mode" : GoString)))));
        };
        for (_0 => _test in _deflateInflateStringTests) {
            var __tmp__ = stdgo.os.Os.readFile(_test._filename), _gold:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
            _testToFromWithLimit(_t, _gold, _test._label, (_test._limit == null ? null : _test._limit.__copy__()));
            if (stdgo.testing.Testing.short()) {
                break;
            };
        };
    }
function testReaderDict(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var __tmp__ = newWriter(_b, ((5 : GoInt))), _w:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("NewWriter: %v" : GoString))), Go.toInterface(_err));
        };
        _w.write(((((("hello world" : GoString))) : Slice<GoByte>)));
        _w.flush();
        _b.reset();
        _w.write(((((("hello again world" : GoString))) : Slice<GoByte>)));
        _w.close();
        var _r:stdgo.io.Io.ReadCloser = newReaderDict(_b, ((((("hello world" : GoString))) : Slice<GoByte>)));
        var __tmp__ = stdgo.io.Io.readAll(_r), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        if (((_data : GoString)) != ((("hello again world" : GoString)))) {
            _t.fatalf(((("read returned %q want %q" : GoString))), Go.toInterface(((_data : GoString))), Go.toInterface(((("hello again world" : GoString)))));
        };
    }
function testWriterDict(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var __tmp__ = newWriter(_b, ((5 : GoInt))), _w:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("NewWriter: %v" : GoString))), Go.toInterface(_err));
        };
        _w.write(((((("hello world" : GoString))) : Slice<GoByte>)));
        _w.flush();
        _b.reset();
        _w.write(((((("hello again world" : GoString))) : Slice<GoByte>)));
        _w.close();
        var _b1:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        {
            var __tmp__ = newWriterDict(_b1, ((5 : GoInt)), ((((("hello world" : GoString))) : Slice<GoByte>)));
            _w = __tmp__._0;
        };
        _w.write(((((("hello again world" : GoString))) : Slice<GoByte>)));
        _w.close();
        if (!stdgo.bytes.Bytes.equal(_b1.bytes(), _b.bytes())) {
            _t.fatalf(((("writer wrote %q want %q" : GoString))), Go.toInterface(_b1.bytes()), Go.toInterface(_b.bytes()));
        };
    }
function testRegression2508(_t:stdgo.testing.Testing.T_):Void {
        if (stdgo.testing.Testing.short()) {
            _t.logf(((("test disabled with -short" : GoString))));
            return;
        };
        var __tmp__ = newWriter(stdgo.io.Io.discard, ((1 : GoInt))), _w:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("NewWriter: %v" : GoString))), Go.toInterface(_err));
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((131072 : GoInt)), _i++, {
                {
                    var __tmp__ = _w.write(_buf), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(((("writer failed: %v" : GoString))), Go.toInterface(_err));
                    };
                };
            });
        };
        _w.close();
    }
function testWriterReset(_t:stdgo.testing.Testing.T_):Void {
        _t.parallel();
        {
            var _level:GoInt = ((0 : GoInt));
            Go.cfor(_level <= ((9 : GoInt)), _level++, {
                if (stdgo.testing.Testing.short() && (_level > ((1 : GoInt)))) {
                    break;
                };
                var __tmp__ = newWriter(stdgo.io.Io.discard, _level), _w:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(((("NewWriter: %v" : GoString))), Go.toInterface(_err));
                };
                var _buf:Slice<GoUInt8> = ((((("hello world" : GoString))) : Slice<GoByte>));
                var _n:GoInt = ((1024 : GoInt));
                if (stdgo.testing.Testing.short()) {
                    _n = ((10 : GoInt));
                };
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _n, _i++, {
                        _w.write(_buf);
                    });
                };
                _w.reset(stdgo.io.Io.discard);
                var __tmp__ = newWriter(stdgo.io.Io.discard, _level), _wref:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(((("NewWriter: %v" : GoString))), Go.toInterface(_err));
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
                Go.copySlice(((_w._d._hashMatch.__slice__(0) : Slice<GoUInt32>)), ((_wref._d._hashMatch.__slice__(0) : Slice<GoUInt32>)));
                if ((_w._d._tokens != null ? _w._d._tokens.length : ((0 : GoInt))) != ((0 : GoInt))) {
                    _t.errorf(((("level %d Writer not reset after Reset. %d tokens were present" : GoString))), Go.toInterface(_level), Go.toInterface((_w._d._tokens != null ? _w._d._tokens.length : ((0 : GoInt)))));
                };
                _w._d._tokens = _wref._d._tokens;
                _w._d._window = _wref._d._window;
                if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_w), Go.toInterface(_wref))) {
                    _t.errorf(((("level %d Writer not reset after Reset" : GoString))), Go.toInterface(_level));
                };
            });
        };
        var _levels:Slice<GoInt> = ((new Slice<GoInt>(((0 : GoInt)), ((1 : GoInt)), ((2 : GoInt)), ((5 : GoInt)), ((9 : GoInt))) : Slice<GoInt>));
        for (_0 => _level in _levels) {
            _t.run(stdgo.fmt.Fmt.sprint(_level), function(_t:stdgo.testing.Testing.T_):Void {
                _testResetOutput(_t, _level, ((null : Slice<GoUInt8>)));
            });
        };
        _t.run(((("dict" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            for (_0 => _level in _levels) {
                _t.run(stdgo.fmt.Fmt.sprint(_level), function(_t:stdgo.testing.Testing.T_):Void {
                    _testResetOutput(_t, _level, ((null : Slice<GoUInt8>)));
                });
            };
        });
    }
function _testResetOutput(_t:stdgo.testing.Testing.T_, _level:GoInt, _dict:Slice<GoByte>):Void {
        var _writeData:Ref<Writer> -> Void = function(_w:Writer):Void {
            var _msg:Slice<GoUInt8> = ((((("now is the time for all good gophers" : GoString))) : Slice<GoByte>));
            _w.write(_msg);
            _w.flush();
            var _hello:Slice<GoUInt8> = ((((("hello world" : GoString))) : Slice<GoByte>));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((1024 : GoInt)), _i++, {
                    _w.write(_hello);
                });
            };
            var _fill:Slice<GoUInt8> = stdgo.bytes.Bytes.repeat(((((("x" : GoString))) : Slice<GoByte>)), ((65000 : GoInt)));
            _w.write(_fill);
        };
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _w:Writer = ((null : Ref<Writer>));
        var _err:Error = ((null : stdgo.Error));
        if (_dict == null) {
            {
                var __tmp__ = newWriter(_buf, _level);
                _w = __tmp__._0;
                _err = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = newWriterDict(_buf, _level, _dict);
                _w = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            _t.fatalf(((("NewWriter: %v" : GoString))), Go.toInterface(_err));
        };
        _writeData(_w);
        _w.close();
        var _out1:Slice<GoUInt8> = _buf.bytes();
        var _buf2:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        _w.reset(_buf2);
        _writeData(_w);
        _w.close();
        var _out2:Slice<GoUInt8> = _buf2.bytes();
        if ((_out1 != null ? _out1.length : ((0 : GoInt))) != (_out2 != null ? _out2.length : ((0 : GoInt)))) {
            _t.errorf(((("got %d, expected %d bytes" : GoString))), Go.toInterface((_out2 != null ? _out2.length : ((0 : GoInt)))), Go.toInterface((_out1 != null ? _out1.length : ((0 : GoInt)))));
            return;
        };
        if (!stdgo.bytes.Bytes.equal(_out1, _out2)) {
            var _mm:GoInt = ((0 : GoInt));
            for (_i => _b in ((_out1.__slice__(0, (_out2 != null ? _out2.length : ((0 : GoInt)))) : Slice<GoUInt8>))) {
                if (_b != (_out2 != null ? _out2[_i] : ((0 : GoUInt8)))) {
                    _t.errorf(((("mismatch index %d: %#02x, expected %#02x" : GoString))), Go.toInterface(_i), Go.toInterface((_out2 != null ? _out2[_i] : ((0 : GoUInt8)))), Go.toInterface(_b));
                };
                _mm++;
                if (_mm == ((10 : GoInt))) {
                    _t.fatal(Go.toInterface(((("Stopping" : GoString)))));
                };
            };
        };
        _t.logf(((("got %d bytes" : GoString))), Go.toInterface((_out1 != null ? _out1.length : ((0 : GoInt)))));
    }
function testBestSpeed(_t:stdgo.testing.Testing.T_):Void {
        stdgo.internal.Macro.controlFlow({
            _t.parallel();
            var _abc:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((128 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            for (_i => _ in _abc) {
                if (_abc != null) _abc[_i] = ((_i : GoByte));
            };
            var _abcabc:Slice<GoUInt8> = stdgo.bytes.Bytes.repeat(_abc, ((131072 : GoInt)) / (_abc != null ? _abc.length : ((0 : GoInt))));
            var _want:Slice<GoByte> = ((null : Slice<GoUInt8>));
            var _testCases:Slice<Slice<GoInt>> = ((new Slice<Slice<GoInt>>(
((new Slice<GoInt>(((65536 : GoInt)), ((0 : GoInt))) : Slice<GoInt>)),
((new Slice<GoInt>(((65536 : GoInt)), ((1 : GoInt))) : Slice<GoInt>)),
((new Slice<GoInt>(((65536 : GoInt)), ((1 : GoInt)), ((256 : GoInt))) : Slice<GoInt>)),
((new Slice<GoInt>(((65536 : GoInt)), ((1 : GoInt)), ((65536 : GoInt))) : Slice<GoInt>)),
((new Slice<GoInt>(((65536 : GoInt)), ((14 : GoInt))) : Slice<GoInt>)),
((new Slice<GoInt>(((65536 : GoInt)), ((15 : GoInt))) : Slice<GoInt>)),
((new Slice<GoInt>(((65536 : GoInt)), ((16 : GoInt))) : Slice<GoInt>)),
((new Slice<GoInt>(((65536 : GoInt)), ((16 : GoInt)), ((256 : GoInt))) : Slice<GoInt>)),
((new Slice<GoInt>(((65536 : GoInt)), ((16 : GoInt)), ((65536 : GoInt))) : Slice<GoInt>)),
((new Slice<GoInt>(((65536 : GoInt)), ((127 : GoInt))) : Slice<GoInt>)),
((new Slice<GoInt>(((65536 : GoInt)), ((128 : GoInt))) : Slice<GoInt>)),
((new Slice<GoInt>(((65536 : GoInt)), ((128 : GoInt)), ((256 : GoInt))) : Slice<GoInt>)),
((new Slice<GoInt>(((65536 : GoInt)), ((128 : GoInt)), ((65536 : GoInt))) : Slice<GoInt>)),
((new Slice<GoInt>(((65536 : GoInt)), ((129 : GoInt))) : Slice<GoInt>)),
((new Slice<GoInt>(((65536 : GoInt)), ((65536 : GoInt)), ((256 : GoInt))) : Slice<GoInt>)),
((new Slice<GoInt>(((65536 : GoInt)), ((65536 : GoInt)), ((65536 : GoInt))) : Slice<GoInt>))) : Slice<Slice<GoInt>>));
            for (_i => _tc in _testCases) {
                if ((_i >= ((3 : GoInt))) && stdgo.testing.Testing.short()) {
                    break;
                };
                for (_0 => _firstN in ((new Slice<GoInt>(((1 : GoInt)), ((65534 : GoInt)), ((65535 : GoInt)), ((65536 : GoInt)), ((65537 : GoInt)), ((131072 : GoInt))) : Slice<GoInt>))) {
                    if (_tc != null) _tc[((0 : GoInt))] = _firstN;
                    @:label("outer") for (_1 => _flush in ((new Slice<Bool>(false, true) : Slice<Bool>))) {
                        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
                        _want = ((_want.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>));
                        var __tmp__ = newWriter(_buf, ((1 : GoInt))), _w:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.errorf(((("i=%d, firstN=%d, flush=%t: NewWriter: %v" : GoString))), Go.toInterface(_i), Go.toInterface(_firstN), Go.toInterface(_flush), Go.toInterface(_err));
                            continue;
                        };
                        for (_2 => _n in _tc) {
                            _want = (_want != null ? _want.__append__(...((_abcabc.__slice__(0, _n) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_abcabc.__slice__(0, _n) : Slice<GoUInt8>)).__toArray__()));
                            {
                                var __tmp__ = _w.write(((_abcabc.__slice__(0, _n) : Slice<GoUInt8>))), _3:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _t.errorf(((("i=%d, firstN=%d, flush=%t: Write: %v" : GoString))), Go.toInterface(_i), Go.toInterface(_firstN), Go.toInterface(_flush), Go.toInterface(_err));
                                    continue;
                                };
                            };
                            if (!_flush) {
                                continue;
                            };
                            {
                                var _err:stdgo.Error = _w.flush();
                                if (_err != null) {
                                    _t.errorf(((("i=%d, firstN=%d, flush=%t: Flush: %v" : GoString))), Go.toInterface(_i), Go.toInterface(_firstN), Go.toInterface(_flush), Go.toInterface(_err));
                                    continue;
                                };
                            };
                        };
                        {
                            var _err:stdgo.Error = _w.close();
                            if (_err != null) {
                                _t.errorf(((("i=%d, firstN=%d, flush=%t: Close: %v" : GoString))), Go.toInterface(_i), Go.toInterface(_firstN), Go.toInterface(_flush), Go.toInterface(_err));
                                continue;
                            };
                        };
                        var _r:stdgo.io.Io.ReadCloser = newReader(_buf);
                        var __tmp__ = stdgo.io.Io.readAll(_r), _got:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.errorf(((("i=%d, firstN=%d, flush=%t: ReadAll: %v" : GoString))), Go.toInterface(_i), Go.toInterface(_firstN), Go.toInterface(_flush), Go.toInterface(_err));
                            continue;
                        };
                        _r.close();
                        if (!stdgo.bytes.Bytes.equal(_got, _want)) {
                            _t.errorf(((("i=%d, firstN=%d, flush=%t: corruption during deflate-then-inflate" : GoString))), Go.toInterface(_i), Go.toInterface(_firstN), Go.toInterface(_flush));
                            continue;
                        };
                    };
                };
            };
        });
    }
function testWriterPersistentError(_t:stdgo.testing.Testing.T_):Void {
        _t.parallel();
        var __tmp__ = stdgo.os.Os.readFile(((("../../testdata/Isaac.Newton-Opticks.txt" : GoString)))), _d:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("ReadFile: %v" : GoString))), Go.toInterface(_err));
        };
        _d = ((_d.__slice__(0, ((10000 : GoInt))) : Slice<GoUInt8>));
        var __tmp__ = newWriter(((null : stdgo.io.Io.Writer)), ((-1 : GoInt))), _zw:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("NewWriter: %v" : GoString))), Go.toInterface(_err));
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((1000 : GoInt)), _i++, {
                var _fw:Ref<T_failWriter> = ((new T_failWriter(_i) : T_failWriter));
                _zw.reset(_fw);
                var __tmp__ = _zw.write(_d), _0:GoInt = __tmp__._0, _werr:stdgo.Error = __tmp__._1;
                var _cerr:stdgo.Error = _zw.close();
                if ((_werr != _errIO) && (_werr != null)) {
                    _t.errorf(((("test %d, mismatching Write error: got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_werr), Go.toInterface(_errIO));
                };
                if ((_cerr != _errIO) && (_fw._n < ((0 : GoInt)))) {
                    _t.errorf(((("test %d, mismatching Close error: got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_cerr), Go.toInterface(_errIO));
                };
                if (_fw._n >= ((0 : GoInt))) {
                    return;
                };
            });
        };
    }
function testBestSpeedMatch(_t:stdgo.testing.Testing.T_):Void {
        _t.parallel();
        var _cases:Slice<T__struct_0> = ((new Slice<T__struct_0>(
((({ _previous : ((new Slice<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8))) : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((-3 : GoInt32)), _s : ((3 : GoInt32)), _want : ((6 : GoInt32)) } : T__struct_0)) == null ? null : (({ _previous : ((new Slice<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8))) : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((-3 : GoInt32)), _s : ((3 : GoInt32)), _want : ((6 : GoInt32)) } : T__struct_0)).__copy__()),
((({ _previous : ((new Slice<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8))) : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((2 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((-3 : GoInt32)), _s : ((3 : GoInt32)), _want : ((3 : GoInt32)) } : T__struct_0)) == null ? null : (({ _previous : ((new Slice<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8))) : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((2 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((-3 : GoInt32)), _s : ((3 : GoInt32)), _want : ((3 : GoInt32)) } : T__struct_0)).__copy__()),
((({ _previous : ((new Slice<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8)), ((1 : GoUInt8))) : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((-3 : GoInt32)), _s : ((3 : GoInt32)), _want : ((2 : GoInt32)) } : T__struct_0)) == null ? null : (({ _previous : ((new Slice<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8)), ((1 : GoUInt8))) : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((-3 : GoInt32)), _s : ((3 : GoInt32)), _want : ((2 : GoInt32)) } : T__struct_0)).__copy__()),
((({ _previous : ((new Slice<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8))) : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((-1 : GoInt32)), _s : ((0 : GoInt32)), _want : ((4 : GoInt32)) } : T__struct_0)) == null ? null : (({ _previous : ((new Slice<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8))) : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((-1 : GoInt32)), _s : ((0 : GoInt32)), _want : ((4 : GoInt32)) } : T__struct_0)).__copy__()),
((({ _previous : ((new Slice<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8))) : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((-7 : GoInt32)), _s : ((4 : GoInt32)), _want : ((5 : GoInt32)) } : T__struct_0)) == null ? null : (({ _previous : ((new Slice<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8))) : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((-7 : GoInt32)), _s : ((4 : GoInt32)), _want : ((5 : GoInt32)) } : T__struct_0)).__copy__()),
((({ _previous : ((new Slice<GoUInt8>(((9 : GoUInt8)), ((9 : GoUInt8)), ((9 : GoUInt8)), ((9 : GoUInt8)), ((9 : GoUInt8))) : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((-1 : GoInt32)), _s : ((0 : GoInt32)), _want : ((0 : GoInt32)) } : T__struct_0)) == null ? null : (({ _previous : ((new Slice<GoUInt8>(((9 : GoUInt8)), ((9 : GoUInt8)), ((9 : GoUInt8)), ((9 : GoUInt8)), ((9 : GoUInt8))) : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((-1 : GoInt32)), _s : ((0 : GoInt32)), _want : ((0 : GoInt32)) } : T__struct_0)).__copy__()),
((({ _previous : ((new Slice<GoUInt8>(((9 : GoUInt8)), ((9 : GoUInt8)), ((9 : GoUInt8)), ((9 : GoUInt8)), ((9 : GoUInt8))) : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((9 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((0 : GoInt32)), _s : ((1 : GoInt32)), _want : ((0 : GoInt32)) } : T__struct_0)) == null ? null : (({ _previous : ((new Slice<GoUInt8>(((9 : GoUInt8)), ((9 : GoUInt8)), ((9 : GoUInt8)), ((9 : GoUInt8)), ((9 : GoUInt8))) : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((9 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((0 : GoInt32)), _s : ((1 : GoInt32)), _want : ((0 : GoInt32)) } : T__struct_0)).__copy__()),
((({ _previous : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((9 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((-5 : GoInt32)), _s : ((1 : GoInt32)), _want : ((0 : GoInt32)) } : T__struct_0)) == null ? null : (({ _previous : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((9 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((-5 : GoInt32)), _s : ((1 : GoInt32)), _want : ((0 : GoInt32)) } : T__struct_0)).__copy__()),
((({ _previous : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((9 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((-1 : GoInt32)), _s : ((1 : GoInt32)), _want : ((0 : GoInt32)) } : T__struct_0)) == null ? null : (({ _previous : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((9 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((-1 : GoInt32)), _s : ((1 : GoInt32)), _want : ((0 : GoInt32)) } : T__struct_0)).__copy__()),
((({ _previous : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((0 : GoInt32)), _s : ((1 : GoInt32)), _want : ((3 : GoInt32)) } : T__struct_0)) == null ? null : (({ _previous : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((0 : GoInt32)), _s : ((1 : GoInt32)), _want : ((3 : GoInt32)) } : T__struct_0)).__copy__()),
((({ _previous : ((new Slice<GoUInt8>(((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((-3 : GoInt32)), _s : ((0 : GoInt32)), _want : ((3 : GoInt32)) } : T__struct_0)) == null ? null : (({ _previous : ((new Slice<GoUInt8>(((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _current : ((new Slice<GoUInt8>(((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>)), _t : ((-3 : GoInt32)), _s : ((0 : GoInt32)), _want : ((3 : GoInt32)) } : T__struct_0)).__copy__()),
((({ _previous : new Slice<GoUInt8>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _current : new Slice<GoUInt8>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _t : ((-1000 : GoInt32)), _s : ((0 : GoInt32)), _want : ((254 : GoInt32)) } : T__struct_0)) == null ? null : (({ _previous : new Slice<GoUInt8>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _current : new Slice<GoUInt8>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _t : ((-1000 : GoInt32)), _s : ((0 : GoInt32)), _want : ((254 : GoInt32)) } : T__struct_0)).__copy__()),
((({ _previous : new Slice<GoUInt8>(...[for (i in 0 ... ((((200 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _current : new Slice<GoUInt8>(...[for (i in 0 ... ((((500 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _t : ((-200 : GoInt32)), _s : ((0 : GoInt32)), _want : ((254 : GoInt32)) } : T__struct_0)) == null ? null : (({ _previous : new Slice<GoUInt8>(...[for (i in 0 ... ((((200 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _current : new Slice<GoUInt8>(...[for (i in 0 ... ((((500 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _t : ((-200 : GoInt32)), _s : ((0 : GoInt32)), _want : ((254 : GoInt32)) } : T__struct_0)).__copy__()),
((({ _previous : new Slice<GoUInt8>(...[for (i in 0 ... ((((200 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _current : new Slice<GoUInt8>(...[for (i in 0 ... ((((500 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _t : ((0 : GoInt32)), _s : ((1 : GoInt32)), _want : ((254 : GoInt32)) } : T__struct_0)) == null ? null : (({ _previous : new Slice<GoUInt8>(...[for (i in 0 ... ((((200 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _current : new Slice<GoUInt8>(...[for (i in 0 ... ((((500 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _t : ((0 : GoInt32)), _s : ((1 : GoInt32)), _want : ((254 : GoInt32)) } : T__struct_0)).__copy__()),
((({ _previous : new Slice<GoUInt8>(...[for (i in 0 ... ((((254 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _current : new Slice<GoUInt8>(...[for (i in 0 ... ((((500 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _t : ((-254 : GoInt32)), _s : ((0 : GoInt32)), _want : ((254 : GoInt32)) } : T__struct_0)) == null ? null : (({ _previous : new Slice<GoUInt8>(...[for (i in 0 ... ((((254 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _current : new Slice<GoUInt8>(...[for (i in 0 ... ((((500 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _t : ((-254 : GoInt32)), _s : ((0 : GoInt32)), _want : ((254 : GoInt32)) } : T__struct_0)).__copy__()),
((({ _previous : new Slice<GoUInt8>(...[for (i in 0 ... ((((200 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _current : new Slice<GoUInt8>(...[for (i in 0 ... ((((500 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _t : ((-200 : GoInt32)), _s : ((400 : GoInt32)), _want : ((100 : GoInt32)) } : T__struct_0)) == null ? null : (({ _previous : new Slice<GoUInt8>(...[for (i in 0 ... ((((200 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _current : new Slice<GoUInt8>(...[for (i in 0 ... ((((500 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _t : ((-200 : GoInt32)), _s : ((400 : GoInt32)), _want : ((100 : GoInt32)) } : T__struct_0)).__copy__()),
((({ _previous : new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _current : new Slice<GoUInt8>(...[for (i in 0 ... ((((500 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _t : ((200 : GoInt32)), _s : ((400 : GoInt32)), _want : ((100 : GoInt32)) } : T__struct_0)) == null ? null : (({ _previous : new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _current : new Slice<GoUInt8>(...[for (i in 0 ... ((((500 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _t : ((200 : GoInt32)), _s : ((400 : GoInt32)), _want : ((100 : GoInt32)) } : T__struct_0)).__copy__())) : Slice<T__struct_0>));
        for (_i => _c in _cases) {
            var _e:T_deflateFast = ((({ _prev : _c._previous, _table : new GoArray<T_tableEntry>(...[for (i in 0 ... 16384) new T_tableEntry()]), _cur : 0 } : T_deflateFast)) == null ? null : (({ _prev : _c._previous, _table : new GoArray<T_tableEntry>(...[for (i in 0 ... 16384) new T_tableEntry()]), _cur : 0 } : T_deflateFast)).__copy__());
            var _got:GoInt32 = _e._matchLen(_c._s, _c._t, _c._current);
            if (_got != _c._want) {
                _t.errorf(((("Test %d: match length, want %d, got %d" : GoString))), Go.toInterface(_i), Go.toInterface(_c._want), Go.toInterface(_got));
            };
        };
    }
function testBestSpeedMaxMatchOffset(_t:stdgo.testing.Testing.T_):Void {
        _t.parallel();
        {};
        for (_0 => _matchBefore in ((new Slice<Bool>(false, true) : Slice<Bool>))) {
            for (_1 => _extra in ((new Slice<GoInt>(((0 : GoInt)), ((14 : GoInt)), ((15 : GoInt)), ((16 : GoInt)), ((30 : GoInt))) : Slice<GoInt>))) {
                {
                    var _offsetAdj:GoInt = ((-5 : GoInt));
                    Go.cfor(_offsetAdj <= ((5 : GoInt)), _offsetAdj++, {
                        var _report:(GoString, stdgo.Error) -> Void = function(_desc:GoString, _err:Error):Void {
                            _t.errorf(((("matchBefore=%t, extra=%d, offsetAdj=%d: %s%v" : GoString))), Go.toInterface(_matchBefore), Go.toInterface(_extra), Go.toInterface(_offsetAdj), Go.toInterface(_desc), Go.toInterface(_err));
                        };
                        var _offset:GoInt = ((32768 : GoInt)) + _offsetAdj;
                        var _src:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_offset + (((("abcdefgh" : GoString))) != null ? ((("abcdefgh" : GoString))).length : ((0 : GoInt)))) + _extra : GoInt)).toBasic()) ((0 : GoUInt8))]);
                        Go.copySlice(_src, ((("abcdefgh" : GoString))));
                        if (!_matchBefore) {
                            Go.copySlice(((_src.__slice__(_offset - (((("stuvwxyz" : GoString))) != null ? ((("stuvwxyz" : GoString))).length : ((0 : GoInt)))) : Slice<GoUInt8>)), ((("stuvwxyz" : GoString))));
                        };
                        Go.copySlice(((_src.__slice__(_offset) : Slice<GoUInt8>)), ((("abcdefgh" : GoString))));
                        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
                        var __tmp__ = newWriter(_buf, ((1 : GoInt))), _w:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _report(((("NewWriter: " : GoString))), _err);
                            continue;
                        };
                        {
                            var __tmp__ = _w.write(_src), _2:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                _report(((("Write: " : GoString))), _err);
                                continue;
                            };
                        };
                        {
                            var _err:stdgo.Error = _w.close();
                            if (_err != null) {
                                _report(((("Writer.Close: " : GoString))), _err);
                                continue;
                            };
                        };
                        var _r:stdgo.io.Io.ReadCloser = newReader(_buf);
                        var __tmp__ = stdgo.io.Io.readAll(_r), _dst:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        _r.close();
                        if (_err != null) {
                            _report(((("ReadAll: " : GoString))), _err);
                            continue;
                        };
                        if (!stdgo.bytes.Bytes.equal(_dst, _src)) {
                            _report(((("" : GoString))), stdgo.fmt.Fmt.errorf(((("bytes differ after round-tripping" : GoString)))));
                            continue;
                        };
                    });
                };
            };
        };
    }
function testBestSpeedShiftOffsets(_t:stdgo.testing.Testing.T_):Void {
        var _enc:Ref<T_deflateFast> = _newDeflateFast();
        var _testData:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((32 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _rng:Ref<stdgo.math.rand.Rand.Rand> = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(((0 : GoInt64))));
        for (_i => _ in _testData) {
            if (_testData != null) _testData[_i] = ((_rng.uint32() : GoByte));
        };
        var _wantFirstTokens:GoInt = (_enc._encode(((null : Slice<T_token>)), _testData) != null ? _enc._encode(((null : Slice<T_token>)), _testData).length : ((0 : GoInt)));
        var _wantSecondTokens:GoInt = (_enc._encode(((null : Slice<T_token>)), _testData) != null ? _enc._encode(((null : Slice<T_token>)), _testData).length : ((0 : GoInt)));
        if (_wantFirstTokens <= _wantSecondTokens) {
            _t.fatalf(((("test needs matches between inputs to be generated" : GoString))));
        };
        _enc._cur = ((2147352577 : GoInt32)) - (((_testData != null ? _testData.length : ((0 : GoInt))) : GoInt32));
        var _got:GoInt = (_enc._encode(((null : Slice<T_token>)), _testData) != null ? _enc._encode(((null : Slice<T_token>)), _testData).length : ((0 : GoInt)));
        if (_wantFirstTokens != _got) {
            _t.errorf(((("got %d, want %d tokens" : GoString))), Go.toInterface(_got), Go.toInterface(_wantFirstTokens));
        };
        if (_enc._cur != ((2147352577 : GoInt32))) {
            _t.errorf(((("got %d, want e.cur to be at bufferReset (%d)" : GoString))), Go.toInterface(_enc._cur), Go.toInterface(((2147352577 : GoInt))));
        };
        _got = (_enc._encode(((null : Slice<T_token>)), _testData) != null ? _enc._encode(((null : Slice<T_token>)), _testData).length : ((0 : GoInt)));
        if (_wantSecondTokens != _got) {
            _t.errorf(((("got %d, want %d token" : GoString))), Go.toInterface(_got), Go.toInterface(_wantSecondTokens));
        };
        if (_enc._cur >= ((2147352577 : GoInt32))) {
            _t.errorf(((("want e.cur to be < bufferReset (%d), got %d" : GoString))), Go.toInterface(((2147352577 : GoInt))), Go.toInterface(_enc._cur));
        };
        _enc._cur = ((2147352577 : GoInt32));
        _enc._shiftOffsets();
        _got = (_enc._encode(((null : Slice<T_token>)), _testData) != null ? _enc._encode(((null : Slice<T_token>)), _testData).length : ((0 : GoInt)));
        if (_wantFirstTokens != _got) {
            _t.errorf(((("got %d, want %d tokens" : GoString))), Go.toInterface(_got), Go.toInterface(_wantFirstTokens));
        };
    }
function testMaxStackSize(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _n:GoInt = stdgo.runtime.debug.Debug.setMaxStack(((65536 : GoInt)));
            {
                var _a0 = _n;
                __deferstack__.unshift(() -> stdgo.runtime.debug.Debug.setMaxStack(_a0));
            };
            var _wg:stdgo.sync.Sync.WaitGroup = new stdgo.sync.Sync.WaitGroup();
            __deferstack__.unshift(() -> _wg.wait());
            var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1048576 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var _level:GoInt = ((-2 : GoInt));
                Go.cfor(_level <= ((9 : GoInt)), _level++, {
                    _wg.add(((1 : GoInt)));
                    Go.routine(() -> {
                        var a = function(_level:GoInt):Void {
                            __deferstack__.unshift(() -> _wg.done());
                            var __tmp__ = newWriter(stdgo.io.Io.discard, _level), _zw:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                _t.errorf(((("level %d, NewWriter() = %v, want nil" : GoString))), Go.toInterface(_level), Go.toInterface(_err));
                            };
                            {
                                var __tmp__ = _zw.write(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if ((_n != (_b != null ? _b.length : ((0 : GoInt)))) || (_err != null)) {
                                    _t.errorf(((("level %d, Write() = (%d, %v), want (%d, nil)" : GoString))), Go.toInterface(_level), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((_b != null ? _b.length : ((0 : GoInt)))));
                                };
                            };
                            {
                                var _err:stdgo.Error = _zw.close();
                                if (_err != null) {
                                    _t.errorf(((("level %d, Close() = %v, want nil" : GoString))), Go.toInterface(_level), Go.toInterface(_err));
                                };
                            };
                            _zw.reset(stdgo.io.Io.discard);
                        };
                        a(_level);
                    });
                });
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function _load32(_b:Slice<GoByte>, _i:GoInt32):GoUInt32 {
        _b = ((_b.__slice__(_i, _i + ((4 : GoInt32))) : Slice<GoUInt8>)).__setCap__((((_b != null ? _b.length : ((0 : GoInt))) : GoInt)) - ((1 : GoInt)));
        return (((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((24 : GoUnTypedInt)));
    }
function _load64(_b:Slice<GoByte>, _i:GoInt32):GoUInt64 {
        _b = ((_b.__slice__(_i, _i + ((8 : GoInt32))) : Slice<GoUInt8>)).__setCap__((((_b != null ? _b.length : ((0 : GoInt))) : GoInt)) - ((1 : GoInt)));
        return (((((((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)))) | ((((_b != null ? _b[((4 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)))) | ((((_b != null ? _b[((5 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)))) | ((((_b != null ? _b[((6 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)))) | ((((_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
    }
function _hash(_u:GoUInt32):GoUInt32 {
        return (_u * ((506832829 : GoUInt32))) >> ((18 : GoUnTypedInt));
    }
function _newDeflateFast():T_deflateFast {
        return (({ _cur : ((65535 : GoInt32)), _prev : new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((65535 : GoInt)) : GoInt)).toBasic()), _table : new GoArray<T_tableEntry>(...[for (i in 0 ... 16384) new T_tableEntry()]) } : T_deflateFast));
    }
function _emitLiteral(_dst:Slice<T_token>, _lit:Slice<GoByte>):Slice<T_token> {
        for (_0 => _v in _lit) {
            _dst = (_dst != null ? _dst.__append__(_literalToken(((_v : GoUInt32)))) : new Slice<T_token>(_literalToken(((_v : GoUInt32)))));
        };
        return _dst;
    }
function testDictDecoder(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _poemRefs:Slice<T__struct_1> = ((new Slice<T__struct_1>(
((new T__struct_1(((0 : GoInt)), ((38 : GoInt))) : T__struct_1)),
((new T__struct_1(((33 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((48 : GoInt))) : T__struct_1)),
((new T__struct_1(((79 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((11 : GoInt))) : T__struct_1)),
((new T__struct_1(((34 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((6 : GoInt))) : T__struct_1)),
((new T__struct_1(((23 : GoInt)), ((7 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((8 : GoInt))) : T__struct_1)),
((new T__struct_1(((50 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((2 : GoInt))) : T__struct_1)),
((new T__struct_1(((69 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((34 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((97 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((43 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((6 : GoInt))) : T__struct_1)),
((new T__struct_1(((7 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((88 : GoInt)), ((7 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((12 : GoInt))) : T__struct_1)),
((new T__struct_1(((80 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((2 : GoInt))) : T__struct_1)),
((new T__struct_1(((141 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((1 : GoInt))) : T__struct_1)),
((new T__struct_1(((196 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((157 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((6 : GoInt))) : T__struct_1)),
((new T__struct_1(((181 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((2 : GoInt))) : T__struct_1)),
((new T__struct_1(((23 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((77 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((28 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((128 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((110 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((70 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((85 : GoInt)), ((6 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((2 : GoInt))) : T__struct_1)),
((new T__struct_1(((182 : GoInt)), ((6 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((133 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((7 : GoInt))) : T__struct_1)),
((new T__struct_1(((47 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((20 : GoInt))) : T__struct_1)),
((new T__struct_1(((112 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((1 : GoInt))) : T__struct_1)),
((new T__struct_1(((58 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((8 : GoInt))) : T__struct_1)),
((new T__struct_1(((59 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((173 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((114 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((92 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((2 : GoInt))) : T__struct_1)),
((new T__struct_1(((71 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((2 : GoInt))) : T__struct_1)),
((new T__struct_1(((76 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((1 : GoInt))) : T__struct_1)),
((new T__struct_1(((46 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((96 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((130 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((360 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((178 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((7 : GoInt))) : T__struct_1)),
((new T__struct_1(((75 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((45 : GoInt)), ((6 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((6 : GoInt))) : T__struct_1)),
((new T__struct_1(((299 : GoInt)), ((6 : GoInt))) : T__struct_1)),
((new T__struct_1(((180 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((70 : GoInt)), ((6 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((1 : GoInt))) : T__struct_1)),
((new T__struct_1(((48 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((66 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((47 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((9 : GoInt))) : T__struct_1)),
((new T__struct_1(((325 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((1 : GoInt))) : T__struct_1)),
((new T__struct_1(((359 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((318 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((2 : GoInt))) : T__struct_1)),
((new T__struct_1(((199 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((1 : GoInt))) : T__struct_1)),
((new T__struct_1(((344 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((248 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((10 : GoInt))) : T__struct_1)),
((new T__struct_1(((310 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((93 : GoInt)), ((6 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((252 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((157 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((2 : GoInt))) : T__struct_1)),
((new T__struct_1(((273 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((14 : GoInt))) : T__struct_1)),
((new T__struct_1(((99 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((1 : GoInt))) : T__struct_1)),
((new T__struct_1(((464 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((2 : GoInt))) : T__struct_1)),
((new T__struct_1(((92 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((495 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((1 : GoInt))) : T__struct_1)),
((new T__struct_1(((322 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((16 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((402 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((2 : GoInt))) : T__struct_1)),
((new T__struct_1(((237 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((2 : GoInt))) : T__struct_1)),
((new T__struct_1(((432 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((1 : GoInt))) : T__struct_1)),
((new T__struct_1(((483 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((2 : GoInt))) : T__struct_1)),
((new T__struct_1(((294 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((2 : GoInt))) : T__struct_1)),
((new T__struct_1(((306 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((113 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((1 : GoInt))) : T__struct_1)),
((new T__struct_1(((26 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((164 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((488 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((1 : GoInt))) : T__struct_1)),
((new T__struct_1(((542 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((248 : GoInt)), ((6 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((205 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((8 : GoInt))) : T__struct_1)),
((new T__struct_1(((48 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((449 : GoInt)), ((6 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((2 : GoInt))) : T__struct_1)),
((new T__struct_1(((192 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((328 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((9 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((433 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((622 : GoInt)), ((25 : GoInt))) : T__struct_1)),
((new T__struct_1(((615 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((46 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((2 : GoInt))) : T__struct_1)),
((new T__struct_1(((104 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((475 : GoInt)), ((10 : GoInt))) : T__struct_1)),
((new T__struct_1(((549 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((597 : GoInt)), ((8 : GoInt))) : T__struct_1)),
((new T__struct_1(((314 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((1 : GoInt))) : T__struct_1)),
((new T__struct_1(((473 : GoInt)), ((6 : GoInt))) : T__struct_1)),
((new T__struct_1(((317 : GoInt)), ((5 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((1 : GoInt))) : T__struct_1)),
((new T__struct_1(((400 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((109 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((151 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((48 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((4 : GoInt))) : T__struct_1)),
((new T__struct_1(((125 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((108 : GoInt)), ((3 : GoInt))) : T__struct_1)),
((new T__struct_1(((0 : GoInt)), ((2 : GoInt))) : T__struct_1))) : Slice<T__struct_1>));
        var _got:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer(), _want:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _dd:T_dictDecoder = new T_dictDecoder();
        _dd._init(((2048 : GoInt)), ((null : Slice<GoUInt8>)));
        var _writeCopy:(GoInt, GoInt) -> Void = function(_dist:GoInt, _length:GoInt):Void {
            while (_length > ((0 : GoInt))) {
                var _cnt:GoInt = _dd._tryWriteCopy(_dist, _length);
                if (_cnt == ((0 : GoInt))) {
                    _cnt = _dd._writeCopy(_dist, _length);
                };
                _length = _length - (_cnt);
                if (_dd._availWrite() == ((0 : GoInt))) {
                    _got.write(_dd._readFlush());
                };
            };
        };
        var _writeString:GoString -> Void = function(_str:GoString):Void {
            while ((_str != null ? _str.length : ((0 : GoInt))) > ((0 : GoInt))) {
                var _cnt:GoInt = Go.copySlice(_dd._writeSlice(), _str);
                _str = ((_str.__slice__(_cnt) : GoString));
                _dd._writeMark(_cnt);
                if (_dd._availWrite() == ((0 : GoInt))) {
                    _got.write(_dd._readFlush());
                };
            };
        };
        _writeString(((("." : GoString))));
        _want.writeByte(((((("." : GoString))).code : GoRune)));
        var _str:GoString = ((("The Road Not Taken\nRobert Frost\n\nTwo roads diverged in a yellow wood,\nAnd sorry I could not travel both\nAnd be one traveler, long I stood\nAnd looked down one as far as I could\nTo where it bent in the undergrowth;\n\nThen took the other, as just as fair,\nAnd having perhaps the better claim,\nBecause it was grassy and wanted wear;\nThough as for that the passing there\nHad worn them really about the same,\n\nAnd both that morning equally lay\nIn leaves no step had trodden black.\nOh, I kept the first for another day!\nYet knowing how way leads on to way,\nI doubted if I should ever come back.\n\nI shall be telling this with a sigh\nSomewhere ages and ages hence:\nTwo roads diverged in a wood, and I-\nI took the one less traveled by,\nAnd that has made all the difference.\n" : GoString)));
        for (_0 => _ref in _poemRefs) {
            if (_ref._dist == ((0 : GoInt))) {
                _writeString(((_str.__slice__(0, _ref._length) : GoString)));
            } else {
                _writeCopy(_ref._dist, _ref._length);
            };
            _str = ((_str.__slice__(_ref._length) : GoString));
        };
        _want.writeString(((("The Road Not Taken\nRobert Frost\n\nTwo roads diverged in a yellow wood,\nAnd sorry I could not travel both\nAnd be one traveler, long I stood\nAnd looked down one as far as I could\nTo where it bent in the undergrowth;\n\nThen took the other, as just as fair,\nAnd having perhaps the better claim,\nBecause it was grassy and wanted wear;\nThough as for that the passing there\nHad worn them really about the same,\n\nAnd both that morning equally lay\nIn leaves no step had trodden black.\nOh, I kept the first for another day!\nYet knowing how way leads on to way,\nI doubted if I should ever come back.\n\nI shall be telling this with a sigh\nSomewhere ages and ages hence:\nTwo roads diverged in a wood, and I-\nI took the one less traveled by,\nAnd that has made all the difference.\n" : GoString))));
        _writeCopy(_dd._histSize(), ((33 : GoInt)));
        _want.write(((_want.bytes().__slice__(0, ((33 : GoInt))) : Slice<GoUInt8>)));
        _writeString(((("ABC\n" : GoString))));
        _writeCopy((((("ABC\n" : GoString))) != null ? ((("ABC\n" : GoString))).length : ((0 : GoInt))), ((236 : GoInt)));
        _want.writeString(stdgo.strings.Strings.repeat(((("ABC\n" : GoString))), ((60 : GoInt))));
        _writeString(((("The quick brown fox jumped over the lazy dog!\n" : GoString))));
        _writeCopy((((("The quick brown fox jumped over the lazy dog!\n" : GoString))) != null ? ((("The quick brown fox jumped over the lazy dog!\n" : GoString))).length : ((0 : GoInt))), ((414 : GoInt)));
        _want.writeString(stdgo.strings.Strings.repeat(((("The quick brown fox jumped over the lazy dog!\n" : GoString))), ((10 : GoInt))));
        _writeString(((("." : GoString))));
        _writeCopy(((1 : GoInt)), ((9 : GoInt)));
        _want.writeString(stdgo.strings.Strings.repeat(((("." : GoString))), ((10 : GoInt))));
        _writeString(stdgo.strings.Strings.toUpper(((("The Road Not Taken\nRobert Frost\n\nTwo roads diverged in a yellow wood,\nAnd sorry I could not travel both\nAnd be one traveler, long I stood\nAnd looked down one as far as I could\nTo where it bent in the undergrowth;\n\nThen took the other, as just as fair,\nAnd having perhaps the better claim,\nBecause it was grassy and wanted wear;\nThough as for that the passing there\nHad worn them really about the same,\n\nAnd both that morning equally lay\nIn leaves no step had trodden black.\nOh, I kept the first for another day!\nYet knowing how way leads on to way,\nI doubted if I should ever come back.\n\nI shall be telling this with a sigh\nSomewhere ages and ages hence:\nTwo roads diverged in a wood, and I-\nI took the one less traveled by,\nAnd that has made all the difference.\n" : GoString)))));
        _writeCopy((((("The Road Not Taken\nRobert Frost\n\nTwo roads diverged in a yellow wood,\nAnd sorry I could not travel both\nAnd be one traveler, long I stood\nAnd looked down one as far as I could\nTo where it bent in the undergrowth;\n\nThen took the other, as just as fair,\nAnd having perhaps the better claim,\nBecause it was grassy and wanted wear;\nThough as for that the passing there\nHad worn them really about the same,\n\nAnd both that morning equally lay\nIn leaves no step had trodden black.\nOh, I kept the first for another day!\nYet knowing how way leads on to way,\nI doubted if I should ever come back.\n\nI shall be telling this with a sigh\nSomewhere ages and ages hence:\nTwo roads diverged in a wood, and I-\nI took the one less traveled by,\nAnd that has made all the difference.\n" : GoString))) != null ? ((("The Road Not Taken\nRobert Frost\n\nTwo roads diverged in a yellow wood,\nAnd sorry I could not travel both\nAnd be one traveler, long I stood\nAnd looked down one as far as I could\nTo where it bent in the undergrowth;\n\nThen took the other, as just as fair,\nAnd having perhaps the better claim,\nBecause it was grassy and wanted wear;\nThough as for that the passing there\nHad worn them really about the same,\n\nAnd both that morning equally lay\nIn leaves no step had trodden black.\nOh, I kept the first for another day!\nYet knowing how way leads on to way,\nI doubted if I should ever come back.\n\nI shall be telling this with a sigh\nSomewhere ages and ages hence:\nTwo roads diverged in a wood, and I-\nI took the one less traveled by,\nAnd that has made all the difference.\n" : GoString))).length : ((0 : GoInt))), ((5341 : GoInt)));
        _want.writeString(stdgo.strings.Strings.repeat(stdgo.strings.Strings.toUpper(((("The Road Not Taken\nRobert Frost\n\nTwo roads diverged in a yellow wood,\nAnd sorry I could not travel both\nAnd be one traveler, long I stood\nAnd looked down one as far as I could\nTo where it bent in the undergrowth;\n\nThen took the other, as just as fair,\nAnd having perhaps the better claim,\nBecause it was grassy and wanted wear;\nThough as for that the passing there\nHad worn them really about the same,\n\nAnd both that morning equally lay\nIn leaves no step had trodden black.\nOh, I kept the first for another day!\nYet knowing how way leads on to way,\nI doubted if I should ever come back.\n\nI shall be telling this with a sigh\nSomewhere ages and ages hence:\nTwo roads diverged in a wood, and I-\nI took the one less traveled by,\nAnd that has made all the difference.\n" : GoString)))), ((8 : GoInt))));
        _writeCopy(_dd._histSize(), ((10 : GoInt)));
        _want.write(((((_want.bytes().__slice__(_want.len() - _dd._histSize()) : Slice<GoUInt8>)).__slice__(0, ((10 : GoInt))) : Slice<GoUInt8>)));
        _got.write(_dd._readFlush());
        if (((_got.toString() : GoString)) != ((_want.toString() : GoString))) {
            _t.errorf(((("final string mismatch:\ngot  %q\nwant %q" : GoString))), Go.toInterface(((_got.toString() : GoString))), Go.toInterface(((_want.toString() : GoString))));
        };
    }
function testIssue5915(_t:stdgo.testing.Testing.T_):Void {
        var _bits:Slice<GoInt> = ((new Slice<GoInt>(
((4 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((6 : GoInt)),
((4 : GoInt)),
((3 : GoInt)),
((2 : GoInt)),
((3 : GoInt)),
((3 : GoInt)),
((4 : GoInt)),
((4 : GoInt)),
((5 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((5 : GoInt)),
((5 : GoInt)),
((6 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((11 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((7 : GoInt)),
((8 : GoInt)),
((6 : GoInt)),
((0 : GoInt)),
((11 : GoInt)),
((0 : GoInt)),
((8 : GoInt)),
((0 : GoInt)),
((6 : GoInt)),
((6 : GoInt)),
((10 : GoInt)),
((8 : GoInt))) : Slice<GoInt>));
        var _h:T_huffmanDecoder = new T_huffmanDecoder();
        if (_h._init(_bits)) {
            _t.fatalf(((("Given sequence of bits is bad, and should not succeed." : GoString))));
        };
    }
function testIssue5962(_t:stdgo.testing.Testing.T_):Void {
        var _bits:Slice<GoInt> = ((new Slice<GoInt>(
((4 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((6 : GoInt)),
((4 : GoInt)),
((3 : GoInt)),
((2 : GoInt)),
((3 : GoInt)),
((3 : GoInt)),
((4 : GoInt)),
((4 : GoInt)),
((5 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((5 : GoInt)),
((5 : GoInt)),
((6 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((0 : GoInt)),
((11 : GoInt))) : Slice<GoInt>));
        var _h:T_huffmanDecoder = new T_huffmanDecoder();
        if (_h._init(_bits)) {
            _t.fatalf(((("Given sequence of bits is bad, and should not succeed." : GoString))));
        };
    }
function testIssue6255(_t:stdgo.testing.Testing.T_):Void {
        var _bits1:Slice<GoInt> = ((new Slice<GoInt>(
((1 : GoInt)),
((2 : GoInt)),
((3 : GoInt)),
((4 : GoInt)),
((5 : GoInt)),
((6 : GoInt)),
((7 : GoInt)),
((8 : GoInt)),
((9 : GoInt)),
((10 : GoInt)),
((11 : GoInt)),
((11 : GoInt))) : Slice<GoInt>));
        var _bits2:Slice<GoInt> = ((new Slice<GoInt>(((11 : GoInt)), ((13 : GoInt))) : Slice<GoInt>));
        var _h:T_huffmanDecoder = new T_huffmanDecoder();
        if (!_h._init(_bits1)) {
            _t.fatalf(((("Given sequence of bits is good and should succeed." : GoString))));
        };
        if (_h._init(_bits2)) {
            _t.fatalf(((("Given sequence of bits is bad and should not succeed." : GoString))));
        };
    }
function testInvalidEncoding(_t:stdgo.testing.Testing.T_):Void {
        var _h:T_huffmanDecoder = new T_huffmanDecoder();
        if (!_h._init(((new Slice<GoInt>(((1 : GoInt))) : Slice<GoInt>)))) {
            _t.fatal(Go.toInterface(((("Failed to initialize Huffman decoder" : GoString)))));
        };
        var _f:T_decompressor = new T_decompressor();
        _f._r = stdgo.bytes.Bytes.newReader(((new Slice<GoUInt8>(((255 : GoUInt8))) : Slice<GoUInt8>)));
        var __tmp__ = _f._huffSym(_h), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.fatal(Go.toInterface(((("Should have rejected invalid bit sequence" : GoString)))));
        };
    }
function testInvalidBits(_t:stdgo.testing.Testing.T_):Void {
        var _oversubscribed:Slice<GoInt> = ((new Slice<GoInt>(((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((4 : GoInt)), ((4 : GoInt)), ((5 : GoInt))) : Slice<GoInt>));
        var _incomplete:Slice<GoInt> = ((new Slice<GoInt>(((1 : GoInt)), ((2 : GoInt)), ((4 : GoInt)), ((4 : GoInt))) : Slice<GoInt>));
        var _h:T_huffmanDecoder = new T_huffmanDecoder();
        if (_h._init(_oversubscribed)) {
            _t.fatal(Go.toInterface(((("Should reject oversubscribed bit-length set" : GoString)))));
        };
        if (_h._init(_incomplete)) {
            _t.fatal(Go.toInterface(((("Should reject incomplete bit-length set" : GoString)))));
        };
    }
function testStreams(_t:stdgo.testing.Testing.T_):Void {
        var _testCases:Slice<T__struct_2> = ((new Slice<T__struct_2>(
((new T__struct_2(((("degenerate HCLenTree" : GoString))), ((("05e001000000000010000000000000000000000000000000000000000000000000000000000000000004" : GoString))), ((("fail" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, empty HLitTree, empty HDistTree" : GoString))), ((("05e001040000000000000000000000000000000000000000000000000000000000000000000000000010" : GoString))), ((("fail" : GoString)))) : T__struct_2)),
((new T__struct_2(((("empty HCLenTree" : GoString))), ((("05e001000000000000000000000000000000000000000000000000000000000000000000000000000010" : GoString))), ((("fail" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, complete HLitTree, empty HDistTree, use missing HDist symbol" : GoString))), ((("000100feff000de00104000000001000000000000000000000000000000000000000000000000000000000000000002c" : GoString))), ((("fail" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, complete HLitTree, degenerate HDistTree, use missing HDist symbol" : GoString))), ((("000100feff000de001000000000000000000000000000000000000000000000000000000000000000610000000004070" : GoString))), ((("fail" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, empty HLitTree, empty HDistTree" : GoString))), ((("05e00104000000001004000000000000000000000000000000000000000000000000000000000000000000000008" : GoString))), ((("fail" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, empty HLitTree, degenerate HDistTree" : GoString))), ((("05e00104000000001004000000000000000000000000000000000000000000000000000000000000000800000008" : GoString))), ((("fail" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, degenerate HLitTree, degenerate HDistTree, use missing HLit symbol" : GoString))), ((("05e00104000000001000000000000000000000000000000000000000000000000000000000000000001c" : GoString))), ((("fail" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, complete HLitTree, too large HDistTree" : GoString))), ((("edff870500000000200400000000000000000000000000000000000000000000000000000000000000080000000000000004" : GoString))), ((("fail" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, complete HLitTree, empty HDistTree, excessive repeater code" : GoString))), ((("edfd870500000000200400000000000000000000000000000000000000000000000000000000000000e8b100" : GoString))), ((("fail" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, complete HLitTree, empty HDistTree of normal length 30" : GoString))), ((("05fd01240000000000f8ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff07000000fe01" : GoString))), ((("" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, complete HLitTree, empty HDistTree of excessive length 31" : GoString))), ((("05fe01240000000000f8ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff07000000fc03" : GoString))), ((("fail" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, over-subscribed HLitTree, empty HDistTree" : GoString))), ((("05e001240000000000fcffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff07f00f" : GoString))), ((("fail" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, under-subscribed HLitTree, empty HDistTree" : GoString))), ((("05e001240000000000fcfffffffffffffffffffffffffffffffffffffffffffffffffffffcffffffff07f00f" : GoString))), ((("fail" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, complete HLitTree with single code, empty HDistTree" : GoString))), ((("05e001240000000000f8ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff07f00f" : GoString))), ((("01" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, complete HLitTree with multiple codes, empty HDistTree" : GoString))), ((("05e301240000000000f8ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff07807f" : GoString))), ((("01" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, complete HLitTree, degenerate HDistTree, use valid HDist symbol" : GoString))), ((("000100feff000de00104000000001000000000000000000000000000000000000000000000000000000000000000003c" : GoString))), ((("00000000" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, degenerate HLitTree, degenerate HDistTree" : GoString))), ((("05e00104000000001000000000000000000000000000000000000000000000000000000000000000000c" : GoString))), ((("" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, degenerate HLitTree, empty HDistTree" : GoString))), ((("05e001040000000010000000000000000000000000000000000000000000000000000000000000000004" : GoString))), ((("" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, complete HLitTree, empty HDistTree, spanning repeater code" : GoString))), ((("edfd870500000000200400000000000000000000000000000000000000000000000000000000000000e8b000" : GoString))), ((("" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree with length codes, complete HLitTree, empty HDistTree" : GoString))), ((("ede00104000000001000000000000000000000000000000000000000000000000000000000000000000400004000" : GoString))), ((("" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, complete HLitTree, degenerate HDistTree, use valid HLit symbol 284 with count 31" : GoString))), ((("000100feff00ede0010400000000100000000000000000000000000000000000000000000000000000000000000000040000407f00" : GoString))), ((("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" : GoString)))) : T__struct_2)),
((new T__struct_2(((("complete HCLenTree, complete HLitTree, degenerate HDistTree, use valid HLit and HDist symbols" : GoString))), ((("0cc2010d00000082b0ac4aff0eb07d27060000ffff" : GoString))), ((("616263616263" : GoString)))) : T__struct_2)),
((new T__struct_2(((("fixed block, use reserved symbol 287" : GoString))), ((("33180700" : GoString))), ((("fail" : GoString)))) : T__struct_2)),
((new T__struct_2(((("raw block" : GoString))), ((("010100feff11" : GoString))), ((("11" : GoString)))) : T__struct_2)),
((new T__struct_2(((("issue 10426 - over-subscribed HCLenTree causes a hang" : GoString))), ((("344c4a4e494d4b070000ff2e2eff2e2e2e2e2eff" : GoString))), ((("fail" : GoString)))) : T__struct_2)),
((new T__struct_2(((("issue 11030 - empty HDistTree unexpectedly leads to error" : GoString))), ((("05c0070600000080400fff37a0ca" : GoString))), ((("" : GoString)))) : T__struct_2)),
((new T__struct_2(((("issue 11033 - empty HDistTree unexpectedly leads to error" : GoString))), ((("050fb109c020cca5d017dcbca044881ee1034ec149c8980bbc413c2ab35be9dcb1473449922449922411202306ee97b0383a521b4ffdcf3217f9f7d3adb701" : GoString))), ((("3130303634342068652e706870005d05355f7ed957ff084a90925d19e3ebc6d0c6d7" : GoString)))) : T__struct_2))) : Slice<T__struct_2>));
        for (_i => _tc in _testCases) {
            var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_tc._stream), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            {
                var __tmp__ = stdgo.io.Io.readAll(newReader(stdgo.bytes.Bytes.newReader(_data)));
                _data = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_tc._want == ((("fail" : GoString)))) {
                if (_err == null) {
                    _t.errorf(((("#%d (%s): got nil error, want non-nil" : GoString))), Go.toInterface(_i), Go.toInterface(_tc._desc));
                };
            } else {
                if (_err != null) {
                    _t.errorf(((("#%d (%s): %v" : GoString))), Go.toInterface(_i), Go.toInterface(_tc._desc), Go.toInterface(_err));
                    continue;
                };
                {
                    var _got:GoString = stdgo.encoding.hex.Hex.encodeToString(_data);
                    if (_got != _tc._want) {
                        _t.errorf(((("#%d (%s):\ngot  %q\nwant %q" : GoString))), Go.toInterface(_i), Go.toInterface(_tc._desc), Go.toInterface(_got), Go.toInterface(_tc._want));
                    };
                };
            };
        };
    }
function testTruncatedStreams(_t:stdgo.testing.Testing.T_):Void {
        {};
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((21 : GoInt)), _i++, {
                var _r:stdgo.io.Io.ReadCloser = newReader(stdgo.strings.Strings.newReader((((((haxe.io.Bytes.ofHex("00") : GoString)) + (("\x0C" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("F3") : GoString)) + ((haxe.io.Bytes.ofHex("FF") : GoString)) + (("hello, world" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("FF") : GoString)) + ((haxe.io.Bytes.ofHex("FF") : GoString))).__slice__(0, _i) : GoString))));
                var __tmp__ = stdgo.io.Io.copy(stdgo.io.Io.discard, _r), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != stdgo.io.Io.errUnexpectedEOF) {
                    _t.errorf(((("io.Copy(%d) on truncated stream: got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(stdgo.io.Io.errUnexpectedEOF));
                };
            });
        };
    }
function testReaderEarlyEOF(_t:stdgo.testing.Testing.T_):Void {
        _t.parallel();
        var _testSizes:Slice<GoInt> = ((new Slice<GoInt>(
((1 : GoInt)),
((2 : GoInt)),
((3 : GoInt)),
((4 : GoInt)),
((5 : GoInt)),
((6 : GoInt)),
((7 : GoInt)),
((8 : GoInt)),
((100 : GoInt)),
((1000 : GoInt)),
((10000 : GoInt)),
((100000 : GoInt)),
((128 : GoInt)),
((1024 : GoInt)),
((16384 : GoInt)),
((131072 : GoInt)),
((32768 : GoInt)),
((65536 : GoInt)),
((98304 : GoInt))) : Slice<GoInt>));
        var _maxSize:GoInt = ((0 : GoInt));
        for (_0 => _n in _testSizes) {
            if (_maxSize < _n) {
                _maxSize = _n;
            };
        };
        var _readBuf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((40 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _data:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_maxSize : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_i => _ in _data) {
            if (_data != null) _data[_i] = ((_i : GoByte));
        };
        for (_1 => _sz in _testSizes) {
            if (stdgo.testing.Testing.short() && (_sz > ((32768 : GoInt)))) {
                continue;
            };
            for (_2 => _flush in ((new Slice<Bool>(true, false) : Slice<Bool>))) {
                var _earlyEOF:Bool = true;
                var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
                var __tmp__ = newWriter(_buf, ((5 : GoInt))), _w:Ref<Writer> = __tmp__._0, _3:stdgo.Error = __tmp__._1;
                _w.write(((_data.__slice__(0, _sz) : Slice<GoUInt8>)));
                if (_flush) {
                    _w.flush();
                    _earlyEOF = false;
                };
                _w.close();
                var _r:stdgo.io.Io.ReadCloser = newReader(_buf);
                while (true) {
                    var __tmp__ = _r.read(_readBuf), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == stdgo.io.Io.eof) {
                        if (((((_r.__underlying__().value : Dynamic)) : T_decompressor))._dict._availWrite() == ((32768 : GoInt))) {
                            _earlyEOF = false;
                        };
                        if ((_n == ((0 : GoInt))) && _earlyEOF) {
                            _t.errorf(((("On size:%d flush:%v, Read() = (0, io.EOF), want (n, io.EOF)" : GoString))), Go.toInterface(_sz), Go.toInterface(_flush));
                        };
                        if ((_n != ((0 : GoInt))) && !_earlyEOF) {
                            _t.errorf(((("On size:%d flush:%v, Read() = (%d, io.EOF), want (0, io.EOF)" : GoString))), Go.toInterface(_sz), Go.toInterface(_flush), Go.toInterface(_n));
                        };
                        break;
                    };
                    if (_err != null) {
                        _t.fatal(Go.toInterface(_err));
                    };
                };
            };
        };
    }
function _newHuffmanBitWriter(_w:stdgo.io.Io.Writer):T_huffmanBitWriter {
        return (({ _writer : _w, _literalFreq : new Slice<GoInt32>(...[for (i in 0 ... ((((286 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]), _offsetFreq : new Slice<GoInt32>(...[for (i in 0 ... ((((30 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]), _codegen : new Slice<GoUInt8>(...[for (i in 0 ... ((((317 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _literalEncoding : _newHuffmanEncoder(((286 : GoInt))), _codegenEncoding : _newHuffmanEncoder(((19 : GoInt))), _offsetEncoding : _newHuffmanEncoder(((30 : GoInt))), _bits : 0, _nbits : 0, _bytes : new GoArray<GoUInt8>(...[for (i in 0 ... 248) ((0 : GoUInt8))]), _codegenFreq : new GoArray<GoInt32>(...[for (i in 0 ... 19) ((0 : GoInt32))]), _nbytes : 0, _err : ((null : stdgo.Error)) } : T_huffmanBitWriter));
    }
function _histogram(_b:Slice<GoByte>, _h:Slice<GoInt32>):Void {
        _h = ((_h.__slice__(0, ((256 : GoInt))) : Slice<GoInt32>));
        for (_0 => _t in _b) {
            (_h != null ? _h[_t] : ((0 : GoInt32)))++;
        };
    }
function testBlockHuff(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = stdgo.path.filepath.Filepath.glob(((("testdata/huffman-*.in" : GoString)))), _match:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        for (_0 => _in in _match) {
            var _out:GoString = _in;
            if (stdgo.strings.Strings.hasSuffix(_in, (((".in" : GoString))))) {
                _out = ((_in.__slice__(0, (_in != null ? _in.length : ((0 : GoInt))) - ((((".in" : GoString))) != null ? (((".in" : GoString))).length : ((0 : GoInt)))) : GoString)) + (((".golden" : GoString)));
            };
            _testBlockHuff(_t, _in, _out);
        };
    }
function _testBlockHuff(_t:stdgo.testing.Testing.T_, _in:GoString, _out:GoString):Void {
        var __tmp__ = stdgo.os.Os.readFile(_in), _all:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(Go.toInterface(_err));
            return;
        };
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _bw:Ref<T_huffmanBitWriter> = _newHuffmanBitWriter(_buf);
        _bw._writeBlockHuff(false, _all);
        _bw._flush();
        var _got:Slice<GoUInt8> = _buf.bytes();
        var __tmp__ = stdgo.os.Os.readFile(_out), _want:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) && !_update.value) {
            _t.error(Go.toInterface(_err));
            return;
        };
        _t.logf(((("Testing %q" : GoString))), Go.toInterface(_in));
        if (!stdgo.bytes.Bytes.equal(_got, _want)) {
            if (_update.value) {
                if (_in != _out) {
                    _t.logf(((("Updating %q" : GoString))), Go.toInterface(_out));
                    {
                        var _err:stdgo.Error = stdgo.os.Os.writeFile(_out, _got, ((438 : GoUInt32)));
                        if (_err != null) {
                            _t.error(Go.toInterface(_err));
                        };
                    };
                    return;
                };
                _t.errorf(((("WARNING: -update did not rewrite input file %s" : GoString))), Go.toInterface(_in));
            };
            _t.errorf(((("%q != %q (see %q)" : GoString))), Go.toInterface(_in), Go.toInterface(_out), Go.toInterface(_in + (((".got" : GoString)))));
            {
                var _err:stdgo.Error = stdgo.os.Os.writeFile(_in + (((".got" : GoString))), _got, ((438 : GoUInt32)));
                if (_err != null) {
                    _t.error(Go.toInterface(_err));
                };
            };
            return;
        };
        _t.log(Go.toInterface(((("Output ok" : GoString)))));
        _buf.reset();
        _bw._reset(_buf);
        _bw._writeBlockHuff(false, _all);
        _bw._flush();
        _got = _buf.bytes();
        if (!stdgo.bytes.Bytes.equal(_got, _want)) {
            _t.errorf(((("after reset %q != %q (see %q)" : GoString))), Go.toInterface(_in), Go.toInterface(_out), Go.toInterface(_in + (((".reset.got" : GoString)))));
            {
                var _err:stdgo.Error = stdgo.os.Os.writeFile(_in + (((".reset.got" : GoString))), _got, ((438 : GoUInt32)));
                if (_err != null) {
                    _t.error(Go.toInterface(_err));
                };
            };
            return;
        };
        _t.log(Go.toInterface(((("Reset ok" : GoString)))));
        _testWriterEOF(_t, ((("huff" : GoString))), ((({ _input : _in, _tokens : ((null : Slice<T_token>)), _want : "", _wantNoInput : "" } : T_huffTest)) == null ? null : (({ _input : _in, _tokens : ((null : Slice<T_token>)), _want : "", _wantNoInput : "" } : T_huffTest)).__copy__()), true);
    }
function testWriteBlock(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _writeBlockTests) {
            _testBlock(_t, (_test == null ? null : _test.__copy__()), ((("wb" : GoString))));
        };
    }
function testWriteBlockDynamic(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _writeBlockTests) {
            _testBlock(_t, (_test == null ? null : _test.__copy__()), ((("dyn" : GoString))));
        };
    }
function _testBlock(_t:stdgo.testing.Testing.T_, _test:T_huffTest, _ttype:GoString):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_test._want != ((("" : GoString)))) {
                _test._want = stdgo.fmt.Fmt.sprintf(_test._want, Go.toInterface(_ttype));
            };
            _test._wantNoInput = stdgo.fmt.Fmt.sprintf(_test._wantNoInput, Go.toInterface(_ttype));
            if (_update.value) {
                if (_test._input != ((("" : GoString)))) {
                    _t.logf(((("Updating %q" : GoString))), Go.toInterface(_test._want));
                    var __tmp__ = stdgo.os.Os.readFile(_test._input), _input:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.error(Go.toInterface(_err));
                        return;
                    };
                    var __tmp__ = stdgo.os.Os.create(_test._want), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.error(Go.toInterface(_err));
                        return;
                    };
                    __deferstack__.unshift(() -> _f.close());
                    var _bw:Ref<T_huffmanBitWriter> = _newHuffmanBitWriter(_f);
                    _writeToType(_t, _ttype, _bw, _test._tokens, _input);
                };
                _t.logf(((("Updating %q" : GoString))), Go.toInterface(_test._wantNoInput));
                var __tmp__ = stdgo.os.Os.create(_test._wantNoInput), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.error(Go.toInterface(_err));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                __deferstack__.unshift(() -> _f.close());
                var _bw:Ref<T_huffmanBitWriter> = _newHuffmanBitWriter(_f);
                _writeToType(_t, _ttype, _bw, _test._tokens, ((null : Slice<GoUInt8>)));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (_test._input != ((("" : GoString)))) {
                _t.logf(((("Testing %q" : GoString))), Go.toInterface(_test._want));
                var __tmp__ = stdgo.os.Os.readFile(_test._input), _input:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.error(Go.toInterface(_err));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                var __tmp__ = stdgo.os.Os.readFile(_test._want), _want:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.error(Go.toInterface(_err));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
                var _bw:Ref<T_huffmanBitWriter> = _newHuffmanBitWriter(_buf);
                _writeToType(_t, _ttype, _bw, _test._tokens, _input);
                var _got:Slice<GoUInt8> = _buf.bytes();
                if (!stdgo.bytes.Bytes.equal(_got, _want)) {
                    _t.errorf(((("writeBlock did not yield expected result for file %q with input. See %q" : GoString))), Go.toInterface(_test._want), Go.toInterface(_test._want + (((".got" : GoString)))));
                    {
                        var _err:stdgo.Error = stdgo.os.Os.writeFile(_test._want + (((".got" : GoString))), _got, ((438 : GoUInt32)));
                        if (_err != null) {
                            _t.error(Go.toInterface(_err));
                        };
                    };
                };
                _t.log(Go.toInterface(((("Output ok" : GoString)))));
                _buf.reset();
                _bw._reset(_buf);
                _writeToType(_t, _ttype, _bw, _test._tokens, _input);
                _bw._flush();
                _got = _buf.bytes();
                if (!stdgo.bytes.Bytes.equal(_got, _want)) {
                    _t.errorf(((("reset: writeBlock did not yield expected result for file %q with input. See %q" : GoString))), Go.toInterface(_test._want), Go.toInterface(_test._want + (((".reset.got" : GoString)))));
                    {
                        var _err:stdgo.Error = stdgo.os.Os.writeFile(_test._want + (((".reset.got" : GoString))), _got, ((438 : GoUInt32)));
                        if (_err != null) {
                            _t.error(Go.toInterface(_err));
                        };
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                _t.log(Go.toInterface(((("Reset ok" : GoString)))));
                _testWriterEOF(_t, ((("wb" : GoString))), (_test == null ? null : _test.__copy__()), true);
            };
            _t.logf(((("Testing %q" : GoString))), Go.toInterface(_test._wantNoInput));
            var __tmp__ = stdgo.os.Os.readFile(_test._wantNoInput), _wantNI:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
            var _bw:Ref<T_huffmanBitWriter> = _newHuffmanBitWriter(_buf);
            _writeToType(_t, _ttype, _bw, _test._tokens, ((null : Slice<GoUInt8>)));
            var _got:Slice<GoUInt8> = _buf.bytes();
            if (!stdgo.bytes.Bytes.equal(_got, _wantNI)) {
                _t.errorf(((("writeBlock did not yield expected result for file %q with input. See %q" : GoString))), Go.toInterface(_test._wantNoInput), Go.toInterface(_test._wantNoInput + (((".got" : GoString)))));
                {
                    var _err:stdgo.Error = stdgo.os.Os.writeFile(_test._want + (((".got" : GoString))), _got, ((438 : GoUInt32)));
                    if (_err != null) {
                        _t.error(Go.toInterface(_err));
                    };
                };
            } else if (((_got != null ? _got[((0 : GoInt))] : ((0 : GoUInt8))) & ((1 : GoUInt8))) == ((1 : GoUInt8))) {
                _t.error(Go.toInterface(((("got unexpected EOF" : GoString)))));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _t.log(Go.toInterface(((("Output ok" : GoString)))));
            _buf.reset();
            _bw._reset(_buf);
            _writeToType(_t, _ttype, _bw, _test._tokens, ((null : Slice<GoUInt8>)));
            _bw._flush();
            _got = _buf.bytes();
            if (!stdgo.bytes.Bytes.equal(_got, _wantNI)) {
                _t.errorf(((("reset: writeBlock did not yield expected result for file %q without input. See %q" : GoString))), Go.toInterface(_test._want), Go.toInterface(_test._want + (((".reset.got" : GoString)))));
                {
                    var _err:stdgo.Error = stdgo.os.Os.writeFile(_test._want + (((".reset.got" : GoString))), _got, ((438 : GoUInt32)));
                    if (_err != null) {
                        _t.error(Go.toInterface(_err));
                    };
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _t.log(Go.toInterface(((("Reset ok" : GoString)))));
            _testWriterEOF(_t, ((("wb" : GoString))), (_test == null ? null : _test.__copy__()), false);
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function _writeToType(_t:stdgo.testing.Testing.T_, _ttype:GoString, _bw:T_huffmanBitWriter, _tok:Slice<T_token>, _input:Slice<GoByte>):Void {
        if (_ttype == ((("wb" : GoString)))) {
            _bw._writeBlock(_tok, false, _input);
        } else if (_ttype == ((("dyn" : GoString)))) {
            _bw._writeBlockDynamic(_tok, false, _input);
        } else {
            throw Go.toInterface(((("unknown test type" : GoString))));
        };
        if (_bw._err != null) {
            _t.error(Go.toInterface(_bw._err));
            return;
        };
        _bw._flush();
        if (_bw._err != null) {
            _t.error(Go.toInterface(_bw._err));
            return;
        };
    }
function _testWriterEOF(_t:stdgo.testing.Testing.T_, _ttype:GoString, _test:T_huffTest, _useInput:Bool):Void {
        if (_useInput && (_test._input == ((("" : GoString))))) {
            return;
        };
        var _input:Slice<GoByte> = ((null : Slice<GoUInt8>));
        if (_useInput) {
            var _err:Error = ((null : stdgo.Error));
            {
                var __tmp__ = stdgo.os.Os.readFile(_test._input);
                _input = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.error(Go.toInterface(_err));
                return;
            };
        };
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _bw:Ref<T_huffmanBitWriter> = _newHuffmanBitWriter(_buf);
        if (_ttype == ((("wb" : GoString)))) {
            _bw._writeBlock(_test._tokens, true, _input);
        } else if (_ttype == ((("dyn" : GoString)))) {
            _bw._writeBlockDynamic(_test._tokens, true, _input);
        } else if (_ttype == ((("huff" : GoString)))) {
            _bw._writeBlockHuff(true, _input);
        } else {
            throw Go.toInterface(((("unknown test type" : GoString))));
        };
        if (_bw._err != null) {
            _t.error(Go.toInterface(_bw._err));
            return;
        };
        _bw._flush();
        if (_bw._err != null) {
            _t.error(Go.toInterface(_bw._err));
            return;
        };
        var _b:Slice<GoUInt8> = _buf.bytes();
        if ((_b != null ? _b.length : ((0 : GoInt))) == ((0 : GoInt))) {
            _t.error(Go.toInterface(((("no output received" : GoString)))));
            return;
        };
        if (((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) & ((1 : GoUInt8))) != ((1 : GoUInt8))) {
            _t.errorf(((("block not marked with EOF for input %q" : GoString))), Go.toInterface(_test._input));
            return;
        };
        _t.log(Go.toInterface(((("EOF ok" : GoString)))));
    }
function _maxNode():T_literalNode {
        return ((new T_literalNode(((65535 : GoUInt16)), ((2147483647 : GoInt32))) : T_literalNode));
    }
function _newHuffmanEncoder(_size:GoInt):T_huffmanEncoder {
        return (({ _codes : new Slice<T_hcode>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) new T_hcode()]), _freqcache : ((null : Slice<T_literalNode>)), _bitCount : new GoArray<GoInt32>(...[for (i in 0 ... 17) ((0 : GoInt32))]), _lns : new T_byLiteral(), _lfs : new T_byFreq() } : T_huffmanEncoder));
    }
function _generateFixedLiteralEncoding():T_huffmanEncoder {
        var _h:Ref<T_huffmanEncoder> = _newHuffmanEncoder(((286 : GoInt)));
        var _codes:Slice<T_hcode> = _h._codes;
        var _ch:GoUInt16 = ((0 : GoUInt16));
        {
            _ch = ((0 : GoUInt16));
            Go.cfor(_ch < ((286 : GoUInt16)), _ch++, {
                var _bits:GoUInt16 = ((0 : GoUInt16));
                var _size:GoUInt16 = ((0 : GoUInt16));
                {
                    var __switchIndex__ = -1;
                    while (true) {
                        if (_ch < ((144 : GoUInt16))) {
                            _bits = _ch + ((48 : GoUInt16));
                            _size = ((8 : GoUInt16));
                            break;
                            break;
                        } else if (_ch < ((256 : GoUInt16))) {
                            _bits = (_ch + ((400 : GoUInt16))) - ((144 : GoUInt16));
                            _size = ((9 : GoUInt16));
                            break;
                            break;
                        } else if (_ch < ((280 : GoUInt16))) {
                            _bits = _ch - ((256 : GoUInt16));
                            _size = ((7 : GoUInt16));
                            break;
                            break;
                        } else {
                            _bits = (_ch + ((192 : GoUInt16))) - ((280 : GoUInt16));
                            _size = ((8 : GoUInt16));
                        };
                        break;
                    };
                };
                if (_codes != null) _codes[_ch] = ((({ _code : _reverseBits(_bits, ((_size : GoByte))), _len : _size } : T_hcode)) == null ? null : (({ _code : _reverseBits(_bits, ((_size : GoByte))), _len : _size } : T_hcode)).__copy__());
            });
        };
        return _h;
    }
function _generateFixedOffsetEncoding():T_huffmanEncoder {
        var _h:Ref<T_huffmanEncoder> = _newHuffmanEncoder(((30 : GoInt)));
        var _codes:Slice<T_hcode> = _h._codes;
        for (_ch => _ in _codes) {
            if (_codes != null) _codes[_ch] = ((({ _code : _reverseBits(((_ch : GoUInt16)), ((5 : GoUInt8))), _len : ((5 : GoUInt16)) } : T_hcode)) == null ? null : (({ _code : _reverseBits(((_ch : GoUInt16)), ((5 : GoUInt8))), _len : ((5 : GoUInt16)) } : T_hcode)).__copy__());
        };
        return _h;
    }
function _reverseBits(_number:GoUInt16, _bitLength:GoByte):GoUInt16 {
        return stdgo.math.bits.Bits.reverse16(_number << (((16 : GoUInt8)) - _bitLength));
    }
function _noEOF(_e:Error):Error {
        if (_e == stdgo.io.Io.eof) {
            return stdgo.io.Io.errUnexpectedEOF;
        };
        return _e;
    }
function _makeReader(_r:stdgo.io.Io.Reader):Reader {
        {
            var __tmp__ = try {
                { value : ((((_r.__underlying__().value : Dynamic)) : Reader)), ok : true };
            } catch(_) {
                { value : ((null : Reader)), ok : false };
            }, _rr = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _rr;
            };
        };
        return stdgo.bufio.Bufio.newReader(_r);
    }
function _fixedHuffmanDecoderInit():Void {
        _fixedOnce.do_(function():Void {
            var _bits:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 288) ((0 : GoInt))]);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((144 : GoInt)), _i++, {
                    if (_bits != null) _bits[_i] = ((8 : GoInt));
                });
            };
            {
                var _i:GoInt = ((144 : GoInt));
                Go.cfor(_i < ((256 : GoInt)), _i++, {
                    if (_bits != null) _bits[_i] = ((9 : GoInt));
                });
            };
            {
                var _i:GoInt = ((256 : GoInt));
                Go.cfor(_i < ((280 : GoInt)), _i++, {
                    if (_bits != null) _bits[_i] = ((7 : GoInt));
                });
            };
            {
                var _i:GoInt = ((280 : GoInt));
                Go.cfor(_i < ((288 : GoInt)), _i++, {
                    if (_bits != null) _bits[_i] = ((8 : GoInt));
                });
            };
            _fixedHuffmanDecoder._init(((_bits.__slice__(0) : Slice<GoInt>)));
        });
    }
function newReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.ReadCloser {
        _fixedHuffmanDecoderInit();
        var _f:T_decompressor = new T_decompressor();
        _f._r = _makeReader(_r);
        _f._bits = new GoArray<GoInt>(...[for (i in 0 ... 316) ((0 : GoInt))]);
        _f._codebits = new GoArray<GoInt>(...[for (i in 0 ... 19) ((0 : GoInt))]);
        _f._step = (T_decompressor_static_extension)._nextBlock;
        _f._dict._init(((32768 : GoInt)), ((null : Slice<GoUInt8>)));
        return _f;
    }
function newReaderDict(_r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):stdgo.io.Io.ReadCloser {
        _fixedHuffmanDecoderInit();
        var _f:T_decompressor = new T_decompressor();
        _f._r = _makeReader(_r);
        _f._bits = new GoArray<GoInt>(...[for (i in 0 ... 316) ((0 : GoInt))]);
        _f._codebits = new GoArray<GoInt>(...[for (i in 0 ... 19) ((0 : GoInt))]);
        _f._step = (T_decompressor_static_extension)._nextBlock;
        _f._dict._init(((32768 : GoInt)), _dict);
        return _f;
    }
function testReset(_t:stdgo.testing.Testing.T_):Void {
        var _ss:Slice<GoString> = ((new Slice<GoString>(((("lorem ipsum izzle fo rizzle" : GoString))), ((("the quick brown fox jumped over" : GoString)))) : Slice<GoString>));
        var _deflated:Slice<stdgo.bytes.Bytes.Buffer> = new Slice<stdgo.bytes.Bytes.Buffer>(...[for (i in 0 ... ((((2 : GoInt)) : GoInt)).toBasic()) new stdgo.bytes.Bytes.Buffer()]);
        for (_i => _s in _ss) {
            var __tmp__ = newWriter((_deflated != null ? _deflated[_i] : new stdgo.bytes.Bytes.Buffer()), ((1 : GoInt))), _w:Ref<Writer> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
            _w.write(((_s : Slice<GoByte>)));
            _w.close();
        };
        var _inflated:Slice<stdgo.bytes.Bytes.Buffer> = new Slice<stdgo.bytes.Bytes.Buffer>(...[for (i in 0 ... ((((2 : GoInt)) : GoInt)).toBasic()) new stdgo.bytes.Bytes.Buffer()]);
        var _f:stdgo.io.Io.ReadCloser = newReader((_deflated != null ? _deflated[((0 : GoInt))] : new stdgo.bytes.Bytes.Buffer()));
        stdgo.io.Io.copy((_inflated != null ? _inflated[((0 : GoInt))] : new stdgo.bytes.Bytes.Buffer()), _f);
        ((((_f.__underlying__().value : Dynamic)) : Resetter)).reset((_deflated != null ? _deflated[((1 : GoInt))] : new stdgo.bytes.Bytes.Buffer()), ((null : Slice<GoUInt8>)));
        stdgo.io.Io.copy((_inflated != null ? _inflated[((1 : GoInt))] : new stdgo.bytes.Bytes.Buffer()), _f);
        _f.close();
        for (_i => _s in _ss) {
            if (_s != (((_inflated != null ? _inflated[_i] : new stdgo.bytes.Bytes.Buffer()).toString() : GoString))) {
                _t.errorf(((("inflated[%d]:\ngot  %q\nwant %q" : GoString))), Go.toInterface(_i), Go.toInterface((_inflated != null ? _inflated[_i] : new stdgo.bytes.Bytes.Buffer())), Go.toInterface(_s));
            };
        };
    }
function testReaderTruncated(_t:stdgo.testing.Testing.T_):Void {
        var _vectors:Slice<T__struct_3> = ((new Slice<T__struct_3>(((new T__struct_3((((haxe.io.Bytes.ofHex("00") : GoString))), ((("" : GoString)))) : T__struct_3)), ((new T__struct_3((((haxe.io.Bytes.ofHex("00") : GoString)) + (("\x0C" : GoString))), ((("" : GoString)))) : T__struct_3)), ((new T__struct_3((((haxe.io.Bytes.ofHex("00") : GoString)) + (("\x0C" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((("" : GoString)))) : T__struct_3)), ((new T__struct_3((((haxe.io.Bytes.ofHex("00") : GoString)) + (("\x0C" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("f3") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString))), ((("" : GoString)))) : T__struct_3)), ((new T__struct_3((((haxe.io.Bytes.ofHex("00") : GoString)) + (("\x0C" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("f3") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("hello" : GoString))), ((("hello" : GoString)))) : T__struct_3)), ((new T__struct_3((((haxe.io.Bytes.ofHex("00") : GoString)) + (("\x0C" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + ((haxe.io.Bytes.ofHex("f3") : GoString)) + ((haxe.io.Bytes.ofHex("ff") : GoString)) + (("hello, world" : GoString))), ((("hello, world" : GoString)))) : T__struct_3)), ((new T__struct_3((((haxe.io.Bytes.ofHex("02") : GoString))), ((("" : GoString)))) : T__struct_3)), ((new T__struct_3((((haxe.io.Bytes.ofHex("f2") : GoString)) + (("H" : GoString)) + ((haxe.io.Bytes.ofHex("cd") : GoString))), ((("He" : GoString)))) : T__struct_3)), ((new T__struct_3((((haxe.io.Bytes.ofHex("f2") : GoString)) + (("H͙0a\u0084\t" : GoString))), ((("Hel" : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)))) : T__struct_3)), ((new T__struct_3((((haxe.io.Bytes.ofHex("f2") : GoString)) + (("H͙0a\u0084\t" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))), ((("Hel" : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)))) : T__struct_3))) : Slice<T__struct_3>));
        for (_i => _v in _vectors) {
            var _r:Ref<stdgo.strings.Strings.Reader> = stdgo.strings.Strings.newReader(_v._input);
            var _zr:stdgo.io.Io.ReadCloser = newReader(_r);
            var __tmp__ = stdgo.io.Io.readAll(_zr), _b:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != stdgo.io.Io.errUnexpectedEOF) {
                _t.errorf(((("test %d, error mismatch: got %v, want io.ErrUnexpectedEOF" : GoString))), Go.toInterface(_i), Go.toInterface(_err));
            };
            if (((_b : GoString)) != _v._output) {
                _t.errorf(((("test %d, output mismatch: got %q, want %q" : GoString))), Go.toInterface(_i), Go.toInterface(_b), Go.toInterface(_v._output));
            };
        };
    }
function testResetDict(_t:stdgo.testing.Testing.T_):Void {
        var _dict:Slice<GoUInt8> = ((((("the lorem fox" : GoString))) : Slice<GoByte>));
        var _ss:Slice<GoString> = ((new Slice<GoString>(((("lorem ipsum izzle fo rizzle" : GoString))), ((("the quick brown fox jumped over" : GoString)))) : Slice<GoString>));
        var _deflated:Slice<stdgo.bytes.Bytes.Buffer> = new Slice<stdgo.bytes.Bytes.Buffer>(...[for (i in 0 ... (((_ss != null ? _ss.length : ((0 : GoInt))) : GoInt)).toBasic()) new stdgo.bytes.Bytes.Buffer()]);
        for (_i => _s in _ss) {
            var __tmp__ = newWriterDict((_deflated != null ? _deflated[_i] : new stdgo.bytes.Bytes.Buffer()), ((-1 : GoInt)), _dict), _w:Ref<Writer> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
            _w.write(((_s : Slice<GoByte>)));
            _w.close();
        };
        var _inflated:Slice<stdgo.bytes.Bytes.Buffer> = new Slice<stdgo.bytes.Bytes.Buffer>(...[for (i in 0 ... (((_ss != null ? _ss.length : ((0 : GoInt))) : GoInt)).toBasic()) new stdgo.bytes.Bytes.Buffer()]);
        var _f:stdgo.io.Io.ReadCloser = newReader(((null : stdgo.io.Io.Reader)));
        for (_i => _ in _inflated) {
            ((((_f.__underlying__().value : Dynamic)) : Resetter)).reset((_deflated != null ? _deflated[_i] : new stdgo.bytes.Bytes.Buffer()), _dict);
            stdgo.io.Io.copy((_inflated != null ? _inflated[_i] : new stdgo.bytes.Bytes.Buffer()), _f);
        };
        _f.close();
        for (_i => _s in _ss) {
            if (_s != (((_inflated != null ? _inflated[_i] : new stdgo.bytes.Bytes.Buffer()).toString() : GoString))) {
                _t.errorf(((("inflated[%d]:\ngot  %q\nwant %q" : GoString))), Go.toInterface(_i), Go.toInterface((_inflated != null ? _inflated[_i] : new stdgo.bytes.Bytes.Buffer())), Go.toInterface(_s));
            };
        };
    }
function testNlitOutOfRange(_t:stdgo.testing.Testing.T_):Void {
        stdgo.io.Io.copy(stdgo.io.Io.discard, newReader(stdgo.strings.Strings.newReader((((haxe.io.Bytes.ofHex("FC") : GoString)) + ((haxe.io.Bytes.ofHex("FE") : GoString)) + (("6" : GoString)) + ((haxe.io.Bytes.ofHex("E7") : GoString)) + (("^" : GoString)) + ((haxe.io.Bytes.ofHex("1C") : GoString)) + ((haxe.io.Bytes.ofHex("EF") : GoString)) + ((haxe.io.Bytes.ofHex("B3") : GoString)) + (("UXw" : GoString)) + ((haxe.io.Bytes.ofHex("B6") : GoString)) + (("V" : GoString)) + ((haxe.io.Bytes.ofHex("B5") : GoString)) + (("C" : GoString)) + ((haxe.io.Bytes.ofHex("F4") : GoString)) + (("o" : GoString)) + ((haxe.io.Bytes.ofHex("F2") : GoString)) + ((haxe.io.Bytes.ofHex("D2") : GoString)) + ((haxe.io.Bytes.ofHex("E6") : GoString)) + (("=" : GoString)) + ((haxe.io.Bytes.ofHex("99") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("85") : GoString)) + ((haxe.io.Bytes.ofHex("8C") : GoString)) + (("H" : GoString)) + ((haxe.io.Bytes.ofHex("EB") : GoString)) + ((haxe.io.Bytes.ofHex("F8") : GoString)) + ((haxe.io.Bytes.ofHex("DA") : GoString)) + ((haxe.io.Bytes.ofHex("83") : GoString)) + ((haxe.io.Bytes.ofHex("04") : GoString)) + (("*u" : GoString)) + ((haxe.io.Bytes.ofHex("C4") : GoString)) + ((haxe.io.Bytes.ofHex("F8") : GoString)) + ((haxe.io.Bytes.ofHex("0F") : GoString)) + ((haxe.io.Bytes.ofHex("12") : GoString)) + ((haxe.io.Bytes.ofHex("11") : GoString)) + ((haxe.io.Bytes.ofHex("B9") : GoString)) + ((haxe.io.Bytes.ofHex("B4") : GoString)) + (("K\t" : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("BE") : GoString)) + ((haxe.io.Bytes.ofHex("8B") : GoString)) + ((haxe.io.Bytes.ofHex("91") : GoString)) + (("L" : GoString))))));
    }
function benchmarkDecode(_b:stdgo.testing.Testing.B):Void {
        _doBench(_b, function(_b:stdgo.testing.Testing.B, _buf0:Slice<GoByte>, _level:GoInt, _n:GoInt):Void {
            _b.reportAllocs();
            _b.stopTimer();
            _b.setBytes(((_n : GoInt64)));
            var _compressed:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
            var __tmp__ = newWriter(_compressed, _level), _w:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _b.fatal(Go.toInterface(_err));
            };
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _n, _i = _i + ((_buf0 != null ? _buf0.length : ((0 : GoInt)))), {
                    if ((_buf0 != null ? _buf0.length : ((0 : GoInt))) > (_n - _i)) {
                        _buf0 = ((_buf0.__slice__(0, _n - _i) : Slice<GoUInt8>));
                    };
                    stdgo.io.Io.copy(_w, stdgo.bytes.Bytes.newReader(_buf0));
                });
            };
            _w.close();
            var _buf1:Slice<GoUInt8> = _compressed.bytes();
            {
                final __tmp__0 = ((null : Slice<GoUInt8>));
                final __tmp__1 = null;
                final __tmp__2 = null;
                _buf0 = __tmp__0;
                _compressed = __tmp__1;
                _w = __tmp__2;
            };
            stdgo.runtime.Runtime.gc();
            _b.startTimer();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    stdgo.io.Io.copy(stdgo.io.Io.discard, newReader(stdgo.bytes.Bytes.newReader(_buf1)));
                });
            };
        });
    }
function _doBench(_b:stdgo.testing.Testing.B, _f:(_b:stdgo.testing.Testing.B, _buf:Slice<GoByte>, _level:GoInt, _n:GoInt) -> Void):Void {
        for (_0 => _suite in _suites) {
            var __tmp__ = stdgo.os.Os.readFile(_suite._file), _buf:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _b.fatal(Go.toInterface(_err));
            };
            if ((_buf != null ? _buf.length : ((0 : GoInt))) == ((0 : GoInt))) {
                _b.fatalf(((("test file %q has no data" : GoString))), Go.toInterface(_suite._file));
            };
            for (_1 => _l in _levelTests) {
                for (_2 => _s in _sizes) {
                    _b.run((((_suite._name + ((("/" : GoString)))) + _l._name) + ((("/" : GoString)))) + _s._name, function(_b:stdgo.testing.Testing.B):Void {
                        _f(_b, _buf, _l._level, _s._n);
                    });
                };
            };
        };
    }
function _literalToken(_literal:GoUInt32):T_token {
        return (((((0 : GoUInt32)) + _literal) : T_token));
    }
function _matchToken(_xlength:GoUInt32, _xoffset:GoUInt32):T_token {
        return ((((((1073741824 : GoUInt32)) + (_xlength << ((22 : GoUnTypedInt)))) + _xoffset) : T_token));
    }
function _lengthCode(_len:GoUInt32):GoUInt32 {
        return (_lengthCodes != null ? _lengthCodes[_len] : ((0 : GoUInt32)));
    }
function _offsetCode(_off:GoUInt32):GoUInt32 {
        if (_off < (((_offsetCodes != null ? _offsetCodes.length : ((0 : GoInt))) : GoUInt32))) {
            return (_offsetCodes != null ? _offsetCodes[_off] : ((0 : GoUInt32)));
        };
        if ((_off >> ((7 : GoUnTypedInt))) < (((_offsetCodes != null ? _offsetCodes.length : ((0 : GoInt))) : GoUInt32))) {
            return (_offsetCodes != null ? _offsetCodes[_off >> ((7 : GoUnTypedInt))] : ((0 : GoUInt32))) + ((14 : GoUInt32));
        };
        return (_offsetCodes != null ? _offsetCodes[_off >> ((14 : GoUnTypedInt))] : ((0 : GoUInt32))) + ((28 : GoUInt32));
    }
function benchmarkEncode(_b:stdgo.testing.Testing.B):Void {
        _doBench(_b, function(_b:stdgo.testing.Testing.B, _buf0:Slice<GoByte>, _level:GoInt, _n:GoInt):Void {
            _b.stopTimer();
            _b.setBytes(((_n : GoInt64)));
            var _buf1:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _n, _i = _i + ((_buf0 != null ? _buf0.length : ((0 : GoInt)))), {
                    if ((_buf0 != null ? _buf0.length : ((0 : GoInt))) > (_n - _i)) {
                        _buf0 = ((_buf0.__slice__(0, _n - _i) : Slice<GoUInt8>));
                    };
                    Go.copySlice(((_buf1.__slice__(_i) : Slice<GoUInt8>)), _buf0);
                });
            };
            _buf0 = ((null : Slice<GoUInt8>));
            var __tmp__ = newWriter(stdgo.io.Io.discard, _level), _w:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _b.fatal(Go.toInterface(_err));
            };
            stdgo.runtime.Runtime.gc();
            _b.startTimer();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _b.n, _i++, {
                    _w.reset(stdgo.io.Io.discard);
                    _w.write(_buf1);
                    _w.close();
                });
            };
        });
    }
function testWriteError(_t:stdgo.testing.Testing.T_):Void {
        _t.parallel();
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _n:GoInt = ((65536 : GoInt));
        if (!stdgo.testing.Testing.short()) {
            _n = _n * (((4 : GoInt)));
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                stdgo.fmt.Fmt.fprintf(_buf, ((("asdasfasf%d%dfghfgujyut%dyutyu\n" : GoString))), Go.toInterface(_i), Go.toInterface(_i), Go.toInterface(_i));
            });
        };
        var _in:Slice<GoUInt8> = _buf.bytes();
        var _copyBuffer:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((128 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _l:GoInt = ((0 : GoInt));
            Go.cfor(_l < ((10 : GoInt)), _l++, {
                {
                    var _fail:GoInt = ((1 : GoInt));
                    Go.cfor(_fail <= ((256 : GoInt)), _fail = _fail * (((2 : GoInt))), {
                        var _ew:Ref<T_errorWriter> = (({ n : _fail } : T_errorWriter));
                        var __tmp__ = newWriter(_ew, _l), _w:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.fatalf(((("NewWriter: level %d: %v" : GoString))), Go.toInterface(_l), Go.toInterface(_err));
                        };
                        var __tmp__ = stdgo.io.Io.copyBuffer(_w, ((new T__struct_7(stdgo.bytes.Bytes.newBuffer(_in)) : T__struct_7)), _copyBuffer), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            _t.fatalf(((("Level %d: Expected an error, writer was %#v" : GoString))), Go.toInterface(_l), Go.toInterface(_ew));
                        };
                        var __tmp__ = _w.write(((new Slice<GoUInt8>(((1 : GoUInt8)), ((2 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8))) : Slice<GoUInt8>))), _n2:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_n2 != ((0 : GoInt))) {
                            _t.fatal(Go.toInterface(((("Level" : GoString)))), Go.toInterface(_l), Go.toInterface(((("Expected 0 length write, got" : GoString)))), Go.toInterface(_n));
                        };
                        if (_err == null) {
                            _t.fatal(Go.toInterface(((("Level" : GoString)))), Go.toInterface(_l), Go.toInterface(((("Expected an error" : GoString)))));
                        };
                        _err = _w.flush();
                        if (_err == null) {
                            _t.fatal(Go.toInterface(((("Level" : GoString)))), Go.toInterface(_l), Go.toInterface(((("Expected an error on flush" : GoString)))));
                        };
                        _err = _w.close();
                        if (_err == null) {
                            _t.fatal(Go.toInterface(((("Level" : GoString)))), Go.toInterface(_l), Go.toInterface(((("Expected an error on close" : GoString)))));
                        };
                        _w.reset(stdgo.io.Io.discard);
                        {
                            var __tmp__ = _w.write(((new Slice<GoUInt8>(((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8)), ((6 : GoUInt8))) : Slice<GoUInt8>)));
                            _n2 = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            _t.fatal(Go.toInterface(((("Level" : GoString)))), Go.toInterface(_l), Go.toInterface(((("Got unexpected error after reset:" : GoString)))), Go.toInterface(_err));
                        };
                        if (_n2 == ((0 : GoInt))) {
                            _t.fatal(Go.toInterface(((("Level" : GoString)))), Go.toInterface(_l), Go.toInterface(((("Got 0 length write, expected > 0" : GoString)))));
                        };
                        if (stdgo.testing.Testing.short()) {
                            return;
                        };
                    });
                };
            });
        };
    }
function testDeterministic(_t:stdgo.testing.Testing.T_):Void {
        _t.parallel();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= ((9 : GoInt)), _i++, {
                _t.run(stdgo.fmt.Fmt.sprint(((("L" : GoString))), _i), function(_t:stdgo.testing.Testing.T_):Void {
                    _testDeterministic(_i, _t);
                });
            });
        };
        _t.run(((("LM2" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            _testDeterministic(((-2 : GoInt)), _t);
        });
    }
function _testDeterministic(_i:GoInt, _t:stdgo.testing.Testing.T_):Void {
        _t.parallel();
        var _length:GoInt = ((1966550 : GoInt));
        if (stdgo.testing.Testing.short()) {
            _length = _length / (((10 : GoInt)));
        };
        var _rng:Ref<stdgo.math.rand.Rand.Rand> = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(((1 : GoInt64))));
        var _t1:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_length : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_i => _ in _t1) {
            if (_t1 != null) _t1[_i] = (((_rng.int63() & ((7 : GoInt64))) : GoByte));
        };
        var _b1:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _br:Ref<stdgo.bytes.Bytes.Buffer> = stdgo.bytes.Bytes.newBuffer(_t1);
        var __tmp__ = newWriter(_b1, _i), _w:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _cbuf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((787 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.copyBuffer(_w, ((new T__struct_7(_br) : T__struct_7)), _cbuf);
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        _w.close();
        var _b2:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        _cbuf = new Slice<GoUInt8>(...[for (i in 0 ... ((((81761 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _br2:Ref<stdgo.bytes.Bytes.Buffer> = stdgo.bytes.Bytes.newBuffer(_t1);
        var __tmp__ = newWriter(_b2, _i), _w2:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo.io.Io.copyBuffer(_w2, ((new T__struct_7(_br2) : T__struct_7)), _cbuf);
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        _w2.close();
        var _b1b:Slice<GoUInt8> = _b1.bytes();
        var _b2b:Slice<GoUInt8> = _b2.bytes();
        if (!stdgo.bytes.Bytes.equal(_b1b, _b2b)) {
            _t.errorf(((("level %d did not produce deterministic result, result mismatch, len(a) = %d, len(b) = %d" : GoString))), Go.toInterface(_i), Go.toInterface((_b1b != null ? _b1b.length : ((0 : GoInt)))), Go.toInterface((_b2b != null ? _b2b.length : ((0 : GoInt)))));
        };
    }
function testDeflateFast_Reset(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _n:GoInt = ((65536 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                stdgo.fmt.Fmt.fprintf(_buf, ((("asdfasdfasdfasdf%d%dfghfgujyut%dyutyu\n" : GoString))), Go.toInterface(_i), Go.toInterface(_i), Go.toInterface(_i));
            });
        };
        {};
        var _in:Slice<GoUInt8> = _buf.bytes();
        var _offset:GoInt = ((1 : GoInt));
        if (stdgo.testing.Testing.short()) {
            _offset = ((256 : GoInt));
        };
        var _want:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var __tmp__ = newWriter(_want, ((1 : GoInt))), _w:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("NewWriter: level %d: %v" : GoString))), Go.toInterface(((1 : GoInt))), Go.toInterface(_err));
        };
        _w.write(_in);
        _w.write(_in);
        _w.write(_in);
        _w.close();
        Go.cfor(_offset <= ((256 : GoInt)), _offset = _offset * (((2 : GoInt))), {
            var __tmp__ = newWriter(stdgo.io.Io.discard, ((1 : GoInt))), _w:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((("NewWriter: level %d: %v" : GoString))), Go.toInterface(((1 : GoInt))), Go.toInterface(_err));
            };
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((((((2147352577 : GoInt)) - (_in != null ? _in.length : ((0 : GoInt)))) - _offset) - ((32768 : GoInt))) / ((32768 : GoInt))), _i++, {
                    _w._d._reset(((null : stdgo.io.Io.Writer)));
                });
            };
            var _got:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
            _w.reset(_got);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((3 : GoInt)), _i++, {
                    {
                        var __tmp__ = _w.write(_in);
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        _t.fatal(Go.toInterface(_err));
                    };
                });
            };
            _err = _w.close();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            if (!stdgo.bytes.Bytes.equal(_got.bytes(), _want.bytes())) {
                _t.fatalf(((("output did not match at wraparound, len(want)  = %d, len(got) = %d" : GoString))), Go.toInterface(_want.len()), Go.toInterface(_got.len()));
            };
        });
    }
@:keep var _ = {
        try {
            var _offsetFreq:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0 ... ((((30 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]);
            if (_offsetFreq != null) _offsetFreq[((0 : GoInt))] = ((1 : GoInt32));
            _huffOffset = _newHuffmanEncoder(((30 : GoInt)));
            _huffOffset._generate(_offsetFreq, ((15 : GoInt32)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class Resetter_wrapper {
    public var __t__ : Resetter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class Reader_wrapper {
    public var __t__ : Reader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_compressionLevel_wrapper {
    public var __t__ : T_compressionLevel;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_compressor_wrapper {
    @:keep
    public function _close():Error {
        var _d = __t__;
        _d;
        if (_d._err != null) {
            return _d._err;
        };
        _d._sync = true;
        _d._step(_d);
        if (_d._err != null) {
            return _d._err;
        };
        {
            _d._w._writeStoredHeader(((0 : GoInt)), true);
            if (_d._w._err != null) {
                return _d._w._err;
            };
        };
        _d._w._flush();
        return _d._w._err;
    }
    @:keep
    public function _reset(_w:stdgo.io.Io.Writer):Void {
        var _d = __t__;
        _d;
        _d._w._reset(_w);
        _d._sync = false;
        _d._err = ((null : stdgo.Error));
        if (_d._compressionLevel._level == ((0 : GoInt))) {
            _d._windowEnd = ((0 : GoInt));
        } else if (_d._compressionLevel._level == ((1 : GoInt))) {
            _d._windowEnd = ((0 : GoInt));
            _d._tokens = ((_d._tokens.__slice__(0, ((0 : GoInt))) : Slice<T_token>));
            _d._bestSpeed._reset();
        } else {
            _d._chainHead = ((-1 : GoInt));
            for (_i => _ in _d._hashHead) {
                if (_d._hashHead != null) _d._hashHead[_i] = ((0 : GoUInt32));
            };
            for (_i => _ in _d._hashPrev) {
                if (_d._hashPrev != null) _d._hashPrev[_i] = ((0 : GoUInt32));
            };
            _d._hashOffset = ((1 : GoInt));
            {
                final __tmp__0 = ((0 : GoInt));
                final __tmp__1 = ((0 : GoInt));
                _d._index = __tmp__0;
                _d._windowEnd = __tmp__1;
            };
            {
                final __tmp__0 = ((0 : GoInt));
                final __tmp__1 = false;
                _d._blockStart = __tmp__0;
                _d._byteAvailable = __tmp__1;
            };
            _d._tokens = ((_d._tokens.__slice__(0, ((0 : GoInt))) : Slice<T_token>));
            _d._length = ((3 : GoInt));
            _d._offset = ((0 : GoInt));
            _d._hash = ((0 : GoUInt32));
            _d._maxInsertIndex = ((0 : GoInt));
        };
    }
    @:keep
    public function _init(_w:stdgo.io.Io.Writer, _level:GoInt):Error {
        var _d = __t__;
        _d;
        var _err:Error = ((null : stdgo.Error));
        _d._w = _newHuffmanBitWriter(_w);
        {
            var __switchIndex__ = -1;
            while (true) {
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _level == ((0 : GoInt)))) {
                    _d._window = new Slice<GoUInt8>(...[for (i in 0 ... ((((65535 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    _d._fill = (T_compressor_static_extension)._fillStore;
                    _d._step = (T_compressor_static_extension)._store;
                    break;
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _level == ((-2 : GoInt)))) {
                    _d._window = new Slice<GoUInt8>(...[for (i in 0 ... ((((65535 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    _d._fill = (T_compressor_static_extension)._fillStore;
                    _d._step = (T_compressor_static_extension)._storeHuff;
                    break;
                    break;
                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _level == ((1 : GoInt)))) {
                    _d._compressionLevel = ((_levels != null ? _levels[_level] : new T_compressionLevel()) == null ? null : (_levels != null ? _levels[_level] : new T_compressionLevel()).__copy__());
                    _d._window = new Slice<GoUInt8>(...[for (i in 0 ... ((((65535 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    _d._fill = (T_compressor_static_extension)._fillStore;
                    _d._step = (T_compressor_static_extension)._encSpeed;
                    _d._bestSpeed = _newDeflateFast();
                    _d._tokens = new Slice<T_token>(...[for (i in 0 ... ((((65535 : GoInt)) : GoInt)).toBasic()) new T_token()]);
                    break;
                    break;
                } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && _level == ((-1 : GoInt)))) {
                    _level = ((6 : GoInt));
                    @:fallthrough {
                        __switchIndex__ = 4;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (((2 : GoInt)) <= _level) && (_level <= ((9 : GoInt))))) {
                    _d._compressionLevel = ((_levels != null ? _levels[_level] : new T_compressionLevel()) == null ? null : (_levels != null ? _levels[_level] : new T_compressionLevel()).__copy__());
                    _d._initDeflate();
                    _d._fill = (T_compressor_static_extension)._fillDeflate;
                    _d._step = (T_compressor_static_extension)._deflate;
                    break;
                    break;
                } else {
                    return stdgo.fmt.Fmt.errorf(((("flate: invalid compression level %d: want value in range [-2, 9]" : GoString))), Go.toInterface(_level));
                    break;
                };
                break;
            };
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function _syncFlush():Error {
        var _d = __t__;
        _d;
        if (_d._err != null) {
            return _d._err;
        };
        _d._sync = true;
        _d._step(_d);
        if (_d._err == null) {
            _d._w._writeStoredHeader(((0 : GoInt)), false);
            _d._w._flush();
            _d._err = _d._w._err;
        };
        _d._sync = false;
        return _d._err;
    }
    @:keep
    public function _write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _d = __t__;
        _d;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_d._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _d._err };
        };
        _n = (_b != null ? _b.length : ((0 : GoInt)));
        while ((_b != null ? _b.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _d._step(_d);
            _b = ((_b.__slice__(_d._fill(_d, _b)) : Slice<GoUInt8>));
            if (_d._err != null) {
                return { _0 : ((0 : GoInt)), _1 : _d._err };
            };
        };
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function _storeHuff():Void {
        var _d = __t__;
        _d;
        if (((_d._windowEnd < (_d._window != null ? _d._window.length : ((0 : GoInt)))) && !_d._sync) || (_d._windowEnd == ((0 : GoInt)))) {
            return;
        };
        _d._w._writeBlockHuff(false, ((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
        _d._err = _d._w._err;
        _d._windowEnd = ((0 : GoInt));
    }
    @:keep
    public function _store():Void {
        var _d = __t__;
        _d;
        if ((_d._windowEnd > ((0 : GoInt))) && ((_d._windowEnd == ((65535 : GoInt))) || _d._sync)) {
            _d._err = _d._writeStoredBlock(((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
            _d._windowEnd = ((0 : GoInt));
        };
    }
    @:keep
    public function _fillStore(_b:Slice<GoByte>):GoInt {
        var _d = __t__;
        _d;
        var _n:GoInt = Go.copySlice(((_d._window.__slice__(_d._windowEnd) : Slice<GoUInt8>)), _b);
        _d._windowEnd = _d._windowEnd + (_n);
        return _n;
    }
    @:keep
    public function _deflate():Void {
        var _d = __t__;
        _d;
        stdgo.internal.Macro.controlFlow({
            if (((_d._windowEnd - _d._index) < ((262 : GoInt))) && !_d._sync) {
                return;
            };
            _d._maxInsertIndex = _d._windowEnd - ((3 : GoInt));
            if (_d._index < _d._maxInsertIndex) {
                _d._hash = _hash4(((_d._window.__slice__(_d._index, _d._index + ((4 : GoInt))) : Slice<GoUInt8>)));
            };
            @:label("Loop") while (true) {
                if (_d._index > _d._windowEnd) {
                    throw Go.toInterface(((("index > windowEnd" : GoString))));
                };
                var _lookahead:GoInt = _d._windowEnd - _d._index;
                if (_lookahead < ((262 : GoInt))) {
                    if (!_d._sync) {
                        @:break {
                            ____exit____ = true;
                            ____break____ = true;
                            break;
                        };
                    };
                    if (_d._index > _d._windowEnd) {
                        throw Go.toInterface(((("index > windowEnd" : GoString))));
                    };
                    if (_lookahead == ((0 : GoInt))) {
                        if (_d._byteAvailable) {
                            _d._tokens = (_d._tokens != null ? _d._tokens.__append__(_literalToken((((_d._window != null ? _d._window[_d._index - ((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)))) : new Slice<T_token>(_literalToken((((_d._window != null ? _d._window[_d._index - ((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)))));
                            _d._byteAvailable = false;
                        };
                        if ((_d._tokens != null ? _d._tokens.length : ((0 : GoInt))) > ((0 : GoInt))) {
                            {
                                _d._err = _d._writeBlock(_d._tokens, _d._index);
                                if (_d._err != null) {
                                    return;
                                };
                            };
                            _d._tokens = ((_d._tokens.__slice__(0, ((0 : GoInt))) : Slice<T_token>));
                        };
                        @:break {
                            ____exit____ = true;
                            ____break____ = true;
                            break;
                        };
                    };
                };
                if (_d._index < _d._maxInsertIndex) {
                    _d._hash = _hash4(((_d._window.__slice__(_d._index, _d._index + ((4 : GoInt))) : Slice<GoUInt8>)));
                    var _hh:Pointer<GoUInt32> = Go.pointer((_d._hashHead != null ? _d._hashHead[_d._hash & ((131071 : GoUInt32))] : ((0 : GoUInt32))));
                    _d._chainHead = ((_hh.value : GoInt));
                    if (_d._hashPrev != null) _d._hashPrev[_d._index & ((32767 : GoInt))] = ((_d._chainHead : GoUInt32));
                    _hh.value = (((_d._index + _d._hashOffset) : GoUInt32));
                };
                var _prevLength:GoInt = _d._length;
                var _prevOffset:GoInt = _d._offset;
                _d._length = ((3 : GoInt));
                _d._offset = ((0 : GoInt));
                var _minIndex:GoInt = _d._index - ((32768 : GoInt));
                if (_minIndex < ((0 : GoInt))) {
                    _minIndex = ((0 : GoInt));
                };
                if (((_d._chainHead - _d._hashOffset) >= _minIndex) && (((_d._fastSkipHashing != ((2147483647 : GoInt))) && (_lookahead > ((3 : GoInt)))) || (((_d._fastSkipHashing == ((2147483647 : GoInt))) && (_lookahead > _prevLength)) && (_prevLength < _d._lazy)))) {
                    {
                        var __tmp__ = _d._findMatch(_d._index, _d._chainHead - _d._hashOffset, ((3 : GoInt)), _lookahead), _newLength:GoInt = __tmp__._0, _newOffset:GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
                        if (_ok) {
                            _d._length = _newLength;
                            _d._offset = _newOffset;
                        };
                    };
                };
                if (((_d._fastSkipHashing != ((2147483647 : GoInt))) && (_d._length >= ((4 : GoInt)))) || (((_d._fastSkipHashing == ((2147483647 : GoInt))) && (_prevLength >= ((4 : GoInt)))) && (_d._length <= _prevLength))) {
                    if (_d._fastSkipHashing != ((2147483647 : GoInt))) {
                        _d._tokens = (_d._tokens != null ? _d._tokens.__append__(_matchToken((((_d._length - ((3 : GoInt))) : GoUInt32)), (((_d._offset - ((1 : GoInt))) : GoUInt32)))) : new Slice<T_token>(_matchToken((((_d._length - ((3 : GoInt))) : GoUInt32)), (((_d._offset - ((1 : GoInt))) : GoUInt32)))));
                    } else {
                        _d._tokens = (_d._tokens != null ? _d._tokens.__append__(_matchToken((((_prevLength - ((3 : GoInt))) : GoUInt32)), (((_prevOffset - ((1 : GoInt))) : GoUInt32)))) : new Slice<T_token>(_matchToken((((_prevLength - ((3 : GoInt))) : GoUInt32)), (((_prevOffset - ((1 : GoInt))) : GoUInt32)))));
                    };
                    if (_d._length <= _d._fastSkipHashing) {
                        var _newIndex:GoInt = ((0 : GoInt));
                        if (_d._fastSkipHashing != ((2147483647 : GoInt))) {
                            _newIndex = _d._index + _d._length;
                        } else {
                            _newIndex = (_d._index + _prevLength) - ((1 : GoInt));
                        };
                        var _index:GoInt = _d._index;
                        {
                            _index++;
                            Go.cfor(_index < _newIndex, _index++, {
                                if (_index < _d._maxInsertIndex) {
                                    _d._hash = _hash4(((_d._window.__slice__(_index, _index + ((4 : GoInt))) : Slice<GoUInt8>)));
                                    var _hh:Pointer<GoUInt32> = Go.pointer((_d._hashHead != null ? _d._hashHead[_d._hash & ((131071 : GoUInt32))] : ((0 : GoUInt32))));
                                    if (_d._hashPrev != null) _d._hashPrev[_index & ((32767 : GoInt))] = _hh.value;
                                    _hh.value = (((_index + _d._hashOffset) : GoUInt32));
                                };
                            });
                        };
                        _d._index = _index;
                        if (_d._fastSkipHashing == ((2147483647 : GoInt))) {
                            _d._byteAvailable = false;
                            _d._length = ((3 : GoInt));
                        };
                    } else {
                        _d._index = _d._index + (_d._length);
                        if (_d._index < _d._maxInsertIndex) {
                            _d._hash = _hash4(((_d._window.__slice__(_d._index, _d._index + ((4 : GoInt))) : Slice<GoUInt8>)));
                        };
                    };
                    if ((_d._tokens != null ? _d._tokens.length : ((0 : GoInt))) == ((16384 : GoInt))) {
                        {
                            _d._err = _d._writeBlock(_d._tokens, _d._index);
                            if (_d._err != null) {
                                return;
                            };
                        };
                        _d._tokens = ((_d._tokens.__slice__(0, ((0 : GoInt))) : Slice<T_token>));
                    };
                } else {
                    if ((_d._fastSkipHashing != ((2147483647 : GoInt))) || _d._byteAvailable) {
                        var _i:GoInt = _d._index - ((1 : GoInt));
                        if (_d._fastSkipHashing != ((2147483647 : GoInt))) {
                            _i = _d._index;
                        };
                        _d._tokens = (_d._tokens != null ? _d._tokens.__append__(_literalToken((((_d._window != null ? _d._window[_i] : ((0 : GoUInt8))) : GoUInt32)))) : new Slice<T_token>(_literalToken((((_d._window != null ? _d._window[_i] : ((0 : GoUInt8))) : GoUInt32)))));
                        if ((_d._tokens != null ? _d._tokens.length : ((0 : GoInt))) == ((16384 : GoInt))) {
                            {
                                _d._err = _d._writeBlock(_d._tokens, _i + ((1 : GoInt)));
                                if (_d._err != null) {
                                    return;
                                };
                            };
                            _d._tokens = ((_d._tokens.__slice__(0, ((0 : GoInt))) : Slice<T_token>));
                        };
                    };
                    _d._index++;
                    if (_d._fastSkipHashing == ((2147483647 : GoInt))) {
                        _d._byteAvailable = true;
                    };
                };
            };
        });
    }
    @:keep
    public function _initDeflate():Void {
        var _d = __t__;
        _d;
        _d._window = new Slice<GoUInt8>(...[for (i in 0 ... ((((65536 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _d._hashOffset = ((1 : GoInt));
        _d._tokens = new Slice<T_token>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_token()]).__setCap__(((((16385 : GoInt)) : GoInt)).toBasic());
        _d._length = ((3 : GoInt));
        _d._offset = ((0 : GoInt));
        _d._byteAvailable = false;
        _d._index = ((0 : GoInt));
        _d._hash = ((0 : GoUInt32));
        _d._chainHead = ((-1 : GoInt));
        _d._bulkHasher = _bulkHash4;
    }
    @:keep
    public function _encSpeed():Void {
        var _d = __t__;
        _d;
        if (_d._windowEnd < ((65535 : GoInt))) {
            if (!_d._sync) {
                return;
            };
            if (_d._windowEnd < ((128 : GoInt))) {
                if (_d._windowEnd == ((0 : GoInt))) {
                    return;
                } else if (_d._windowEnd <= ((16 : GoInt))) {
                    _d._err = _d._writeStoredBlock(((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
                } else {
                    _d._w._writeBlockHuff(false, ((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
                    _d._err = _d._w._err;
                };
                _d._windowEnd = ((0 : GoInt));
                _d._bestSpeed._reset();
                return;
            };
        };
        _d._tokens = _d._bestSpeed._encode(((_d._tokens.__slice__(0, ((0 : GoInt))) : Slice<T_token>)), ((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
        if ((_d._tokens != null ? _d._tokens.length : ((0 : GoInt))) > (_d._windowEnd - (_d._windowEnd >> ((4 : GoUnTypedInt))))) {
            _d._w._writeBlockHuff(false, ((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
        } else {
            _d._w._writeBlockDynamic(_d._tokens, false, ((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
        };
        _d._err = _d._w._err;
        _d._windowEnd = ((0 : GoInt));
    }
    @:keep
    public function _writeStoredBlock(_buf:Slice<GoByte>):Error {
        var _d = __t__;
        _d;
        {
            _d._w._writeStoredHeader((_buf != null ? _buf.length : ((0 : GoInt))), false);
            if (_d._w._err != null) {
                return _d._w._err;
            };
        };
        _d._w._writeBytes(_buf);
        return _d._w._err;
    }
    @:keep
    public function _findMatch(_pos:GoInt, _prevHead:GoInt, _prevLength:GoInt, _lookahead:GoInt):{ var _0 : GoInt; var _1 : GoInt; var _2 : Bool; } {
        var _d = __t__;
        _d;
        var _length:GoInt = ((0 : GoInt)), _offset:GoInt = ((0 : GoInt)), _ok:Bool = false;
        var _minMatchLook:GoInt = ((258 : GoInt));
        if (_lookahead < _minMatchLook) {
            _minMatchLook = _lookahead;
        };
        var _win:Slice<GoUInt8> = ((_d._window.__slice__(((0 : GoInt)), _pos + _minMatchLook) : Slice<GoUInt8>));
        var _nice:GoInt = (_win != null ? _win.length : ((0 : GoInt))) - _pos;
        if (_d._nice < _nice) {
            _nice = _d._nice;
        };
        var _tries:GoInt = _d._chain;
        _length = _prevLength;
        if (_length >= _d._good) {
            _tries = _tries >> (((2 : GoUnTypedInt)));
        };
        var _wEnd:GoUInt8 = (_win != null ? _win[_pos + _length] : ((0 : GoUInt8)));
        var _wPos:Slice<GoUInt8> = ((_win.__slice__(_pos) : Slice<GoUInt8>));
        var _minIndex:GoInt = _pos - ((32768 : GoInt));
        {
            var _i:GoInt = _prevHead;
            Go.cfor(_tries > ((0 : GoInt)), _tries--, {
                if (_wEnd == (_win != null ? _win[_i + _length] : ((0 : GoUInt8)))) {
                    var _n:GoInt = _matchLen(((_win.__slice__(_i) : Slice<GoUInt8>)), _wPos, _minMatchLook);
                    if ((_n > _length) && ((_n > ((4 : GoInt))) || ((_pos - _i) <= ((4096 : GoInt))))) {
                        _length = _n;
                        _offset = _pos - _i;
                        _ok = true;
                        if (_n >= _nice) {
                            break;
                        };
                        _wEnd = (_win != null ? _win[_pos + _n] : ((0 : GoUInt8)));
                    };
                };
                if (_i == _minIndex) {
                    break;
                };
                _i = (((_d._hashPrev != null ? _d._hashPrev[_i & ((32767 : GoInt))] : ((0 : GoUInt32))) : GoInt)) - _d._hashOffset;
                if ((_i < _minIndex) || (_i < ((0 : GoInt)))) {
                    break;
                };
            });
        };
        return { _0 : _length, _1 : _offset, _2 : _ok };
    }
    @:keep
    public function _fillWindow(_b:Slice<GoByte>):Void {
        var _d = __t__;
        _d;
        if (_d._compressionLevel._level < ((2 : GoInt))) {
            return;
        };
        if ((_d._index != ((0 : GoInt))) || (_d._windowEnd != ((0 : GoInt)))) {
            throw Go.toInterface(((("internal error: fillWindow called with stale data" : GoString))));
        };
        if ((_b != null ? _b.length : ((0 : GoInt))) > ((32768 : GoInt))) {
            _b = ((_b.__slice__((_b != null ? _b.length : ((0 : GoInt))) - ((32768 : GoInt))) : Slice<GoUInt8>));
        };
        var _n:GoInt = Go.copySlice(_d._window, _b);
        var _loops:GoInt = ((_n + ((256 : GoInt))) - ((4 : GoInt))) / ((256 : GoInt));
        {
            var _j:GoInt = ((0 : GoInt));
            Go.cfor(_j < _loops, _j++, {
                var _index:GoInt = _j * ((256 : GoInt));
                var _end:GoInt = ((_index + ((256 : GoInt))) + ((4 : GoInt))) - ((1 : GoInt));
                if (_end > _n) {
                    _end = _n;
                };
                var _toCheck:Slice<GoUInt8> = ((_d._window.__slice__(_index, _end) : Slice<GoUInt8>));
                var _dstSize:GoInt = ((_toCheck != null ? _toCheck.length : ((0 : GoInt))) - ((4 : GoInt))) + ((1 : GoInt));
                if (_dstSize <= ((0 : GoInt))) {
                    continue;
                };
                var _dst:Slice<GoUInt32> = ((_d._hashMatch.__slice__(0, _dstSize) : Slice<GoUInt32>));
                _d._bulkHasher(_toCheck, _dst);
                var _newH:GoUInt32 = ((0 : GoUInt32));
                for (_i => _val in _dst) {
                    var _di:GoInt = _i + _index;
                    _newH = _val;
                    var _hh:Pointer<GoUInt32> = Go.pointer((_d._hashHead != null ? _d._hashHead[_newH & ((131071 : GoUInt32))] : ((0 : GoUInt32))));
                    if (_d._hashPrev != null) _d._hashPrev[_di & ((32767 : GoInt))] = _hh.value;
                    _hh.value = (((_di + _d._hashOffset) : GoUInt32));
                };
                _d._hash = _newH;
            });
        };
        _d._windowEnd = _n;
        _d._index = _n;
    }
    @:keep
    public function _writeBlock(_tokens:Slice<T_token>, _index:GoInt):Error {
        var _d = __t__;
        _d;
        if (_index > ((0 : GoInt))) {
            var _window:Slice<GoByte> = ((null : Slice<GoUInt8>));
            if (_d._blockStart <= _index) {
                _window = ((_d._window.__slice__(_d._blockStart, _index) : Slice<GoUInt8>));
            };
            _d._blockStart = _index;
            _d._w._writeBlock(_tokens, false, _window);
            return _d._w._err;
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function _fillDeflate(_b:Slice<GoByte>):GoInt {
        var _d = __t__;
        _d;
        if (_d._index >= ((65274 : GoInt))) {
            Go.copySlice(_d._window, ((_d._window.__slice__(((32768 : GoInt)), ((65536 : GoInt))) : Slice<GoUInt8>)));
            _d._index = _d._index - (((32768 : GoInt)));
            _d._windowEnd = _d._windowEnd - (((32768 : GoInt)));
            if (_d._blockStart >= ((32768 : GoInt))) {
                _d._blockStart = _d._blockStart - (((32768 : GoInt)));
            } else {
                _d._blockStart = ((2147483647 : GoInt));
            };
            _d._hashOffset = _d._hashOffset + (((32768 : GoInt)));
            if (_d._hashOffset > ((16777216 : GoInt))) {
                var _delta:GoInt = _d._hashOffset - ((1 : GoInt));
                _d._hashOffset = _d._hashOffset - (_delta);
                _d._chainHead = _d._chainHead - (_delta);
                for (_i => _v in ((_d._hashPrev.__slice__(0) : Slice<GoUInt32>))) {
                    if (((_v : GoInt)) > _delta) {
                        if (_d._hashPrev != null) _d._hashPrev[_i] = (((((_v : GoInt)) - _delta) : GoUInt32));
                    } else {
                        if (_d._hashPrev != null) _d._hashPrev[_i] = ((0 : GoUInt32));
                    };
                };
                for (_i => _v in ((_d._hashHead.__slice__(0) : Slice<GoUInt32>))) {
                    if (((_v : GoInt)) > _delta) {
                        if (_d._hashHead != null) _d._hashHead[_i] = (((((_v : GoInt)) - _delta) : GoUInt32));
                    } else {
                        if (_d._hashHead != null) _d._hashHead[_i] = ((0 : GoUInt32));
                    };
                };
            };
        };
        var _n:GoInt = Go.copySlice(((_d._window.__slice__(_d._windowEnd) : Slice<GoUInt8>)), _b);
        _d._windowEnd = _d._windowEnd + (_n);
        return _n;
    }
    public var __t__ : T_compressor;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_compressor_static_extension {
    @:keep
    public static function _close(_d:Ref<T_compressor>):Error {
        _d;
        if (_d._err != null) {
            return _d._err;
        };
        _d._sync = true;
        _d._step(_d);
        if (_d._err != null) {
            return _d._err;
        };
        {
            _d._w._writeStoredHeader(((0 : GoInt)), true);
            if (_d._w._err != null) {
                return _d._w._err;
            };
        };
        _d._w._flush();
        return _d._w._err;
    }
    @:keep
    public static function _reset(_d:Ref<T_compressor>, _w:stdgo.io.Io.Writer):Void {
        _d;
        _d._w._reset(_w);
        _d._sync = false;
        _d._err = ((null : stdgo.Error));
        if (_d._compressionLevel._level == ((0 : GoInt))) {
            _d._windowEnd = ((0 : GoInt));
        } else if (_d._compressionLevel._level == ((1 : GoInt))) {
            _d._windowEnd = ((0 : GoInt));
            _d._tokens = ((_d._tokens.__slice__(0, ((0 : GoInt))) : Slice<T_token>));
            _d._bestSpeed._reset();
        } else {
            _d._chainHead = ((-1 : GoInt));
            for (_i => _ in _d._hashHead) {
                if (_d._hashHead != null) _d._hashHead[_i] = ((0 : GoUInt32));
            };
            for (_i => _ in _d._hashPrev) {
                if (_d._hashPrev != null) _d._hashPrev[_i] = ((0 : GoUInt32));
            };
            _d._hashOffset = ((1 : GoInt));
            {
                final __tmp__0 = ((0 : GoInt));
                final __tmp__1 = ((0 : GoInt));
                _d._index = __tmp__0;
                _d._windowEnd = __tmp__1;
            };
            {
                final __tmp__0 = ((0 : GoInt));
                final __tmp__1 = false;
                _d._blockStart = __tmp__0;
                _d._byteAvailable = __tmp__1;
            };
            _d._tokens = ((_d._tokens.__slice__(0, ((0 : GoInt))) : Slice<T_token>));
            _d._length = ((3 : GoInt));
            _d._offset = ((0 : GoInt));
            _d._hash = ((0 : GoUInt32));
            _d._maxInsertIndex = ((0 : GoInt));
        };
    }
    @:keep
    public static function _init(_d:Ref<T_compressor>, _w:stdgo.io.Io.Writer, _level:GoInt):Error {
        _d;
        var _err:Error = ((null : stdgo.Error));
        _d._w = _newHuffmanBitWriter(_w);
        {
            var __switchIndex__ = -1;
            while (true) {
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _level == ((0 : GoInt)))) {
                    _d._window = new Slice<GoUInt8>(...[for (i in 0 ... ((((65535 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    _d._fill = (T_compressor_static_extension)._fillStore;
                    _d._step = (T_compressor_static_extension)._store;
                    break;
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _level == ((-2 : GoInt)))) {
                    _d._window = new Slice<GoUInt8>(...[for (i in 0 ... ((((65535 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    _d._fill = (T_compressor_static_extension)._fillStore;
                    _d._step = (T_compressor_static_extension)._storeHuff;
                    break;
                    break;
                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _level == ((1 : GoInt)))) {
                    _d._compressionLevel = ((_levels != null ? _levels[_level] : new T_compressionLevel()) == null ? null : (_levels != null ? _levels[_level] : new T_compressionLevel()).__copy__());
                    _d._window = new Slice<GoUInt8>(...[for (i in 0 ... ((((65535 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    _d._fill = (T_compressor_static_extension)._fillStore;
                    _d._step = (T_compressor_static_extension)._encSpeed;
                    _d._bestSpeed = _newDeflateFast();
                    _d._tokens = new Slice<T_token>(...[for (i in 0 ... ((((65535 : GoInt)) : GoInt)).toBasic()) new T_token()]);
                    break;
                    break;
                } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && _level == ((-1 : GoInt)))) {
                    _level = ((6 : GoInt));
                    @:fallthrough {
                        __switchIndex__ = 4;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (((2 : GoInt)) <= _level) && (_level <= ((9 : GoInt))))) {
                    _d._compressionLevel = ((_levels != null ? _levels[_level] : new T_compressionLevel()) == null ? null : (_levels != null ? _levels[_level] : new T_compressionLevel()).__copy__());
                    _d._initDeflate();
                    _d._fill = (T_compressor_static_extension)._fillDeflate;
                    _d._step = (T_compressor_static_extension)._deflate;
                    break;
                    break;
                } else {
                    return stdgo.fmt.Fmt.errorf(((("flate: invalid compression level %d: want value in range [-2, 9]" : GoString))), Go.toInterface(_level));
                    break;
                };
                break;
            };
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public static function _syncFlush(_d:Ref<T_compressor>):Error {
        _d;
        if (_d._err != null) {
            return _d._err;
        };
        _d._sync = true;
        _d._step(_d);
        if (_d._err == null) {
            _d._w._writeStoredHeader(((0 : GoInt)), false);
            _d._w._flush();
            _d._err = _d._w._err;
        };
        _d._sync = false;
        return _d._err;
    }
    @:keep
    public static function _write(_d:Ref<T_compressor>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _d;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_d._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _d._err };
        };
        _n = (_b != null ? _b.length : ((0 : GoInt)));
        while ((_b != null ? _b.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _d._step(_d);
            _b = ((_b.__slice__(_d._fill(_d, _b)) : Slice<GoUInt8>));
            if (_d._err != null) {
                return { _0 : ((0 : GoInt)), _1 : _d._err };
            };
        };
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function _storeHuff(_d:Ref<T_compressor>):Void {
        _d;
        if (((_d._windowEnd < (_d._window != null ? _d._window.length : ((0 : GoInt)))) && !_d._sync) || (_d._windowEnd == ((0 : GoInt)))) {
            return;
        };
        _d._w._writeBlockHuff(false, ((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
        _d._err = _d._w._err;
        _d._windowEnd = ((0 : GoInt));
    }
    @:keep
    public static function _store(_d:Ref<T_compressor>):Void {
        _d;
        if ((_d._windowEnd > ((0 : GoInt))) && ((_d._windowEnd == ((65535 : GoInt))) || _d._sync)) {
            _d._err = _d._writeStoredBlock(((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
            _d._windowEnd = ((0 : GoInt));
        };
    }
    @:keep
    public static function _fillStore(_d:Ref<T_compressor>, _b:Slice<GoByte>):GoInt {
        _d;
        var _n:GoInt = Go.copySlice(((_d._window.__slice__(_d._windowEnd) : Slice<GoUInt8>)), _b);
        _d._windowEnd = _d._windowEnd + (_n);
        return _n;
    }
    @:keep
    public static function _deflate(_d:Ref<T_compressor>):Void {
        _d;
        stdgo.internal.Macro.controlFlow({
            if (((_d._windowEnd - _d._index) < ((262 : GoInt))) && !_d._sync) {
                return;
            };
            _d._maxInsertIndex = _d._windowEnd - ((3 : GoInt));
            if (_d._index < _d._maxInsertIndex) {
                _d._hash = _hash4(((_d._window.__slice__(_d._index, _d._index + ((4 : GoInt))) : Slice<GoUInt8>)));
            };
            @:label("Loop") while (true) {
                if (_d._index > _d._windowEnd) {
                    throw Go.toInterface(((("index > windowEnd" : GoString))));
                };
                var _lookahead:GoInt = _d._windowEnd - _d._index;
                if (_lookahead < ((262 : GoInt))) {
                    if (!_d._sync) {
                        @:break {
                            ____exit____ = true;
                            ____break____ = true;
                            break;
                        };
                    };
                    if (_d._index > _d._windowEnd) {
                        throw Go.toInterface(((("index > windowEnd" : GoString))));
                    };
                    if (_lookahead == ((0 : GoInt))) {
                        if (_d._byteAvailable) {
                            _d._tokens = (_d._tokens != null ? _d._tokens.__append__(_literalToken((((_d._window != null ? _d._window[_d._index - ((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)))) : new Slice<T_token>(_literalToken((((_d._window != null ? _d._window[_d._index - ((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)))));
                            _d._byteAvailable = false;
                        };
                        if ((_d._tokens != null ? _d._tokens.length : ((0 : GoInt))) > ((0 : GoInt))) {
                            {
                                _d._err = _d._writeBlock(_d._tokens, _d._index);
                                if (_d._err != null) {
                                    return;
                                };
                            };
                            _d._tokens = ((_d._tokens.__slice__(0, ((0 : GoInt))) : Slice<T_token>));
                        };
                        @:break {
                            ____exit____ = true;
                            ____break____ = true;
                            break;
                        };
                    };
                };
                if (_d._index < _d._maxInsertIndex) {
                    _d._hash = _hash4(((_d._window.__slice__(_d._index, _d._index + ((4 : GoInt))) : Slice<GoUInt8>)));
                    var _hh:Pointer<GoUInt32> = Go.pointer((_d._hashHead != null ? _d._hashHead[_d._hash & ((131071 : GoUInt32))] : ((0 : GoUInt32))));
                    _d._chainHead = ((_hh.value : GoInt));
                    if (_d._hashPrev != null) _d._hashPrev[_d._index & ((32767 : GoInt))] = ((_d._chainHead : GoUInt32));
                    _hh.value = (((_d._index + _d._hashOffset) : GoUInt32));
                };
                var _prevLength:GoInt = _d._length;
                var _prevOffset:GoInt = _d._offset;
                _d._length = ((3 : GoInt));
                _d._offset = ((0 : GoInt));
                var _minIndex:GoInt = _d._index - ((32768 : GoInt));
                if (_minIndex < ((0 : GoInt))) {
                    _minIndex = ((0 : GoInt));
                };
                if (((_d._chainHead - _d._hashOffset) >= _minIndex) && (((_d._fastSkipHashing != ((2147483647 : GoInt))) && (_lookahead > ((3 : GoInt)))) || (((_d._fastSkipHashing == ((2147483647 : GoInt))) && (_lookahead > _prevLength)) && (_prevLength < _d._lazy)))) {
                    {
                        var __tmp__ = _d._findMatch(_d._index, _d._chainHead - _d._hashOffset, ((3 : GoInt)), _lookahead), _newLength:GoInt = __tmp__._0, _newOffset:GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
                        if (_ok) {
                            _d._length = _newLength;
                            _d._offset = _newOffset;
                        };
                    };
                };
                if (((_d._fastSkipHashing != ((2147483647 : GoInt))) && (_d._length >= ((4 : GoInt)))) || (((_d._fastSkipHashing == ((2147483647 : GoInt))) && (_prevLength >= ((4 : GoInt)))) && (_d._length <= _prevLength))) {
                    if (_d._fastSkipHashing != ((2147483647 : GoInt))) {
                        _d._tokens = (_d._tokens != null ? _d._tokens.__append__(_matchToken((((_d._length - ((3 : GoInt))) : GoUInt32)), (((_d._offset - ((1 : GoInt))) : GoUInt32)))) : new Slice<T_token>(_matchToken((((_d._length - ((3 : GoInt))) : GoUInt32)), (((_d._offset - ((1 : GoInt))) : GoUInt32)))));
                    } else {
                        _d._tokens = (_d._tokens != null ? _d._tokens.__append__(_matchToken((((_prevLength - ((3 : GoInt))) : GoUInt32)), (((_prevOffset - ((1 : GoInt))) : GoUInt32)))) : new Slice<T_token>(_matchToken((((_prevLength - ((3 : GoInt))) : GoUInt32)), (((_prevOffset - ((1 : GoInt))) : GoUInt32)))));
                    };
                    if (_d._length <= _d._fastSkipHashing) {
                        var _newIndex:GoInt = ((0 : GoInt));
                        if (_d._fastSkipHashing != ((2147483647 : GoInt))) {
                            _newIndex = _d._index + _d._length;
                        } else {
                            _newIndex = (_d._index + _prevLength) - ((1 : GoInt));
                        };
                        var _index:GoInt = _d._index;
                        {
                            _index++;
                            Go.cfor(_index < _newIndex, _index++, {
                                if (_index < _d._maxInsertIndex) {
                                    _d._hash = _hash4(((_d._window.__slice__(_index, _index + ((4 : GoInt))) : Slice<GoUInt8>)));
                                    var _hh:Pointer<GoUInt32> = Go.pointer((_d._hashHead != null ? _d._hashHead[_d._hash & ((131071 : GoUInt32))] : ((0 : GoUInt32))));
                                    if (_d._hashPrev != null) _d._hashPrev[_index & ((32767 : GoInt))] = _hh.value;
                                    _hh.value = (((_index + _d._hashOffset) : GoUInt32));
                                };
                            });
                        };
                        _d._index = _index;
                        if (_d._fastSkipHashing == ((2147483647 : GoInt))) {
                            _d._byteAvailable = false;
                            _d._length = ((3 : GoInt));
                        };
                    } else {
                        _d._index = _d._index + (_d._length);
                        if (_d._index < _d._maxInsertIndex) {
                            _d._hash = _hash4(((_d._window.__slice__(_d._index, _d._index + ((4 : GoInt))) : Slice<GoUInt8>)));
                        };
                    };
                    if ((_d._tokens != null ? _d._tokens.length : ((0 : GoInt))) == ((16384 : GoInt))) {
                        {
                            _d._err = _d._writeBlock(_d._tokens, _d._index);
                            if (_d._err != null) {
                                return;
                            };
                        };
                        _d._tokens = ((_d._tokens.__slice__(0, ((0 : GoInt))) : Slice<T_token>));
                    };
                } else {
                    if ((_d._fastSkipHashing != ((2147483647 : GoInt))) || _d._byteAvailable) {
                        var _i:GoInt = _d._index - ((1 : GoInt));
                        if (_d._fastSkipHashing != ((2147483647 : GoInt))) {
                            _i = _d._index;
                        };
                        _d._tokens = (_d._tokens != null ? _d._tokens.__append__(_literalToken((((_d._window != null ? _d._window[_i] : ((0 : GoUInt8))) : GoUInt32)))) : new Slice<T_token>(_literalToken((((_d._window != null ? _d._window[_i] : ((0 : GoUInt8))) : GoUInt32)))));
                        if ((_d._tokens != null ? _d._tokens.length : ((0 : GoInt))) == ((16384 : GoInt))) {
                            {
                                _d._err = _d._writeBlock(_d._tokens, _i + ((1 : GoInt)));
                                if (_d._err != null) {
                                    return;
                                };
                            };
                            _d._tokens = ((_d._tokens.__slice__(0, ((0 : GoInt))) : Slice<T_token>));
                        };
                    };
                    _d._index++;
                    if (_d._fastSkipHashing == ((2147483647 : GoInt))) {
                        _d._byteAvailable = true;
                    };
                };
            };
        });
    }
    @:keep
    public static function _initDeflate(_d:Ref<T_compressor>):Void {
        _d;
        _d._window = new Slice<GoUInt8>(...[for (i in 0 ... ((((65536 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _d._hashOffset = ((1 : GoInt));
        _d._tokens = new Slice<T_token>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_token()]).__setCap__(((((16385 : GoInt)) : GoInt)).toBasic());
        _d._length = ((3 : GoInt));
        _d._offset = ((0 : GoInt));
        _d._byteAvailable = false;
        _d._index = ((0 : GoInt));
        _d._hash = ((0 : GoUInt32));
        _d._chainHead = ((-1 : GoInt));
        _d._bulkHasher = _bulkHash4;
    }
    @:keep
    public static function _encSpeed(_d:Ref<T_compressor>):Void {
        _d;
        if (_d._windowEnd < ((65535 : GoInt))) {
            if (!_d._sync) {
                return;
            };
            if (_d._windowEnd < ((128 : GoInt))) {
                if (_d._windowEnd == ((0 : GoInt))) {
                    return;
                } else if (_d._windowEnd <= ((16 : GoInt))) {
                    _d._err = _d._writeStoredBlock(((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
                } else {
                    _d._w._writeBlockHuff(false, ((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
                    _d._err = _d._w._err;
                };
                _d._windowEnd = ((0 : GoInt));
                _d._bestSpeed._reset();
                return;
            };
        };
        _d._tokens = _d._bestSpeed._encode(((_d._tokens.__slice__(0, ((0 : GoInt))) : Slice<T_token>)), ((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
        if ((_d._tokens != null ? _d._tokens.length : ((0 : GoInt))) > (_d._windowEnd - (_d._windowEnd >> ((4 : GoUnTypedInt))))) {
            _d._w._writeBlockHuff(false, ((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
        } else {
            _d._w._writeBlockDynamic(_d._tokens, false, ((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
        };
        _d._err = _d._w._err;
        _d._windowEnd = ((0 : GoInt));
    }
    @:keep
    public static function _writeStoredBlock(_d:Ref<T_compressor>, _buf:Slice<GoByte>):Error {
        _d;
        {
            _d._w._writeStoredHeader((_buf != null ? _buf.length : ((0 : GoInt))), false);
            if (_d._w._err != null) {
                return _d._w._err;
            };
        };
        _d._w._writeBytes(_buf);
        return _d._w._err;
    }
    @:keep
    public static function _findMatch(_d:Ref<T_compressor>, _pos:GoInt, _prevHead:GoInt, _prevLength:GoInt, _lookahead:GoInt):{ var _0 : GoInt; var _1 : GoInt; var _2 : Bool; } {
        _d;
        var _length:GoInt = ((0 : GoInt)), _offset:GoInt = ((0 : GoInt)), _ok:Bool = false;
        var _minMatchLook:GoInt = ((258 : GoInt));
        if (_lookahead < _minMatchLook) {
            _minMatchLook = _lookahead;
        };
        var _win:Slice<GoUInt8> = ((_d._window.__slice__(((0 : GoInt)), _pos + _minMatchLook) : Slice<GoUInt8>));
        var _nice:GoInt = (_win != null ? _win.length : ((0 : GoInt))) - _pos;
        if (_d._nice < _nice) {
            _nice = _d._nice;
        };
        var _tries:GoInt = _d._chain;
        _length = _prevLength;
        if (_length >= _d._good) {
            _tries = _tries >> (((2 : GoUnTypedInt)));
        };
        var _wEnd:GoUInt8 = (_win != null ? _win[_pos + _length] : ((0 : GoUInt8)));
        var _wPos:Slice<GoUInt8> = ((_win.__slice__(_pos) : Slice<GoUInt8>));
        var _minIndex:GoInt = _pos - ((32768 : GoInt));
        {
            var _i:GoInt = _prevHead;
            Go.cfor(_tries > ((0 : GoInt)), _tries--, {
                if (_wEnd == (_win != null ? _win[_i + _length] : ((0 : GoUInt8)))) {
                    var _n:GoInt = _matchLen(((_win.__slice__(_i) : Slice<GoUInt8>)), _wPos, _minMatchLook);
                    if ((_n > _length) && ((_n > ((4 : GoInt))) || ((_pos - _i) <= ((4096 : GoInt))))) {
                        _length = _n;
                        _offset = _pos - _i;
                        _ok = true;
                        if (_n >= _nice) {
                            break;
                        };
                        _wEnd = (_win != null ? _win[_pos + _n] : ((0 : GoUInt8)));
                    };
                };
                if (_i == _minIndex) {
                    break;
                };
                _i = (((_d._hashPrev != null ? _d._hashPrev[_i & ((32767 : GoInt))] : ((0 : GoUInt32))) : GoInt)) - _d._hashOffset;
                if ((_i < _minIndex) || (_i < ((0 : GoInt)))) {
                    break;
                };
            });
        };
        return { _0 : _length, _1 : _offset, _2 : _ok };
    }
    @:keep
    public static function _fillWindow(_d:Ref<T_compressor>, _b:Slice<GoByte>):Void {
        _d;
        if (_d._compressionLevel._level < ((2 : GoInt))) {
            return;
        };
        if ((_d._index != ((0 : GoInt))) || (_d._windowEnd != ((0 : GoInt)))) {
            throw Go.toInterface(((("internal error: fillWindow called with stale data" : GoString))));
        };
        if ((_b != null ? _b.length : ((0 : GoInt))) > ((32768 : GoInt))) {
            _b = ((_b.__slice__((_b != null ? _b.length : ((0 : GoInt))) - ((32768 : GoInt))) : Slice<GoUInt8>));
        };
        var _n:GoInt = Go.copySlice(_d._window, _b);
        var _loops:GoInt = ((_n + ((256 : GoInt))) - ((4 : GoInt))) / ((256 : GoInt));
        {
            var _j:GoInt = ((0 : GoInt));
            Go.cfor(_j < _loops, _j++, {
                var _index:GoInt = _j * ((256 : GoInt));
                var _end:GoInt = ((_index + ((256 : GoInt))) + ((4 : GoInt))) - ((1 : GoInt));
                if (_end > _n) {
                    _end = _n;
                };
                var _toCheck:Slice<GoUInt8> = ((_d._window.__slice__(_index, _end) : Slice<GoUInt8>));
                var _dstSize:GoInt = ((_toCheck != null ? _toCheck.length : ((0 : GoInt))) - ((4 : GoInt))) + ((1 : GoInt));
                if (_dstSize <= ((0 : GoInt))) {
                    continue;
                };
                var _dst:Slice<GoUInt32> = ((_d._hashMatch.__slice__(0, _dstSize) : Slice<GoUInt32>));
                _d._bulkHasher(_toCheck, _dst);
                var _newH:GoUInt32 = ((0 : GoUInt32));
                for (_i => _val in _dst) {
                    var _di:GoInt = _i + _index;
                    _newH = _val;
                    var _hh:Pointer<GoUInt32> = Go.pointer((_d._hashHead != null ? _d._hashHead[_newH & ((131071 : GoUInt32))] : ((0 : GoUInt32))));
                    if (_d._hashPrev != null) _d._hashPrev[_di & ((32767 : GoInt))] = _hh.value;
                    _hh.value = (((_di + _d._hashOffset) : GoUInt32));
                };
                _d._hash = _newH;
            });
        };
        _d._windowEnd = _n;
        _d._index = _n;
    }
    @:keep
    public static function _writeBlock(_d:Ref<T_compressor>, _tokens:Slice<T_token>, _index:GoInt):Error {
        _d;
        if (_index > ((0 : GoInt))) {
            var _window:Slice<GoByte> = ((null : Slice<GoUInt8>));
            if (_d._blockStart <= _index) {
                _window = ((_d._window.__slice__(_d._blockStart, _index) : Slice<GoUInt8>));
            };
            _d._blockStart = _index;
            _d._w._writeBlock(_tokens, false, _window);
            return _d._w._err;
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public static function _fillDeflate(_d:Ref<T_compressor>, _b:Slice<GoByte>):GoInt {
        _d;
        if (_d._index >= ((65274 : GoInt))) {
            Go.copySlice(_d._window, ((_d._window.__slice__(((32768 : GoInt)), ((65536 : GoInt))) : Slice<GoUInt8>)));
            _d._index = _d._index - (((32768 : GoInt)));
            _d._windowEnd = _d._windowEnd - (((32768 : GoInt)));
            if (_d._blockStart >= ((32768 : GoInt))) {
                _d._blockStart = _d._blockStart - (((32768 : GoInt)));
            } else {
                _d._blockStart = ((2147483647 : GoInt));
            };
            _d._hashOffset = _d._hashOffset + (((32768 : GoInt)));
            if (_d._hashOffset > ((16777216 : GoInt))) {
                var _delta:GoInt = _d._hashOffset - ((1 : GoInt));
                _d._hashOffset = _d._hashOffset - (_delta);
                _d._chainHead = _d._chainHead - (_delta);
                for (_i => _v in ((_d._hashPrev.__slice__(0) : Slice<GoUInt32>))) {
                    if (((_v : GoInt)) > _delta) {
                        if (_d._hashPrev != null) _d._hashPrev[_i] = (((((_v : GoInt)) - _delta) : GoUInt32));
                    } else {
                        if (_d._hashPrev != null) _d._hashPrev[_i] = ((0 : GoUInt32));
                    };
                };
                for (_i => _v in ((_d._hashHead.__slice__(0) : Slice<GoUInt32>))) {
                    if (((_v : GoInt)) > _delta) {
                        if (_d._hashHead != null) _d._hashHead[_i] = (((((_v : GoInt)) - _delta) : GoUInt32));
                    } else {
                        if (_d._hashHead != null) _d._hashHead[_i] = ((0 : GoUInt32));
                    };
                };
            };
        };
        var _n:GoInt = Go.copySlice(((_d._window.__slice__(_d._windowEnd) : Slice<GoUInt8>)), _b);
        _d._windowEnd = _d._windowEnd + (_n);
        return _n;
    }
}
class T_dictWriter_wrapper {
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = __t__;
        _w;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _w._w.write(_b);
    }
    public var __t__ : T_dictWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_dictWriter_static_extension {
    @:keep
    public static function write(_w:Ref<T_dictWriter>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _w;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _w._w.write(_b);
    }
}
class Writer_wrapper {
    @:keep
    public function reset(_dst:stdgo.io.Io.Writer):Void {
        var _w = __t__;
        _w;
        {
            var __tmp__ = try {
                { value : ((((_w._d._w._writer.__underlying__().value : Dynamic)) : T_dictWriter)), ok : true };
            } catch(_) {
                { value : ((null : Ref<T_dictWriter>)), ok : false };
            }, _dw = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _dw._w = _dst;
                _w._d._reset(_dw);
                _w._d._fillWindow(_w._dict);
            } else {
                _w._d._reset(_dst);
            };
        };
    }
    @:keep
    public function close():Error {
        var _w = __t__;
        _w;
        return _w._d._close();
    }
    @:keep
    public function flush():Error {
        var _w = __t__;
        _w;
        return _w._d._syncFlush();
    }
    @:keep
    public function write(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = __t__;
        _w;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _w._d._write(_data);
    }
    public var __t__ : Writer;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Writer_static_extension {
    @:keep
    public static function reset(_w:Ref<Writer>, _dst:stdgo.io.Io.Writer):Void {
        _w;
        {
            var __tmp__ = try {
                { value : ((((_w._d._w._writer.__underlying__().value : Dynamic)) : T_dictWriter)), ok : true };
            } catch(_) {
                { value : ((null : Ref<T_dictWriter>)), ok : false };
            }, _dw = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _dw._w = _dst;
                _w._d._reset(_dw);
                _w._d._fillWindow(_w._dict);
            } else {
                _w._d._reset(_dst);
            };
        };
    }
    @:keep
    public static function close(_w:Ref<Writer>):Error {
        _w;
        return _w._d._close();
    }
    @:keep
    public static function flush(_w:Ref<Writer>):Error {
        _w;
        return _w._d._syncFlush();
    }
    @:keep
    public static function write(_w:Ref<Writer>, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _w;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _w._d._write(_data);
    }
}
class T_deflateTest_wrapper {
    public var __t__ : T_deflateTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_deflateInflateTest_wrapper {
    public var __t__ : T_deflateInflateTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_reverseBitsTest_wrapper {
    public var __t__ : T_reverseBitsTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_sparseReader_wrapper {
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = __t__;
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_r._cur >= _r._l) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        _n = (_b != null ? _b.length : ((0 : GoInt)));
        var _cur:GoInt64 = _r._cur + ((_n : GoInt64));
        if (_cur > _r._l) {
            _n = _n - ((((_cur - _r._l) : GoInt)));
            _cur = _r._l;
        };
        for (_i => _ in ((_b.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>))) {
            if ((_r._cur + ((_i : GoInt64))) >= (_r._l - ((65536 : GoInt64)))) {
                if (_b != null) _b[_i] = ((1 : GoUInt8));
            } else {
                if (_b != null) _b[_i] = ((0 : GoUInt8));
            };
        };
        _r._cur = _cur;
        return { _0 : _n, _1 : _err };
    }
    public var __t__ : T_sparseReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_sparseReader_static_extension {
    @:keep
    public static function read(_r:Ref<T_sparseReader>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_r._cur >= _r._l) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        _n = (_b != null ? _b.length : ((0 : GoInt)));
        var _cur:GoInt64 = _r._cur + ((_n : GoInt64));
        if (_cur > _r._l) {
            _n = _n - ((((_cur - _r._l) : GoInt)));
            _cur = _r._l;
        };
        for (_i => _ in ((_b.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>))) {
            if ((_r._cur + ((_i : GoInt64))) >= (_r._l - ((65536 : GoInt64)))) {
                if (_b != null) _b[_i] = ((1 : GoUInt8));
            } else {
                if (_b != null) _b[_i] = ((0 : GoUInt8));
            };
        };
        _r._cur = _cur;
        return { _0 : _n, _1 : _err };
    }
}
class T_syncBuffer_wrapper {
    @:keep
    public function close():Error {
        var _b = __t__;
        _b;
        _b._closed = true;
        _b._signal();
        return ((null : stdgo.Error));
    }
    @:keep
    public function readMode():Void {
        var _b = __t__;
        _b;
        _b._mu.unlock();
        _b._signal();
    }
    @:keep
    public function writeMode():Void {
        var _b = __t__;
        _b;
        _b._mu.lock();
    }
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _b = __t__;
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = _b._buf.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _b._signal();
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public function _signal():Void {
        var _b = __t__;
        _b;
        Go.select([_b._ready.__send__(true) => {}, {}]);
    }
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _b = __t__;
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        while (true) {
            _b._mu.rlock();
            {
                var __tmp__ = _b._buf.read(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            _b._mu.runlock();
            if ((_n > ((0 : GoInt))) || _b._closed) {
                return { _0 : _n, _1 : _err };
            };
            _b._ready.__get__();
        };
    }
    public var __t__ : T_syncBuffer;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_syncBuffer_static_extension {
    @:keep
    public static function close(_b:Ref<T_syncBuffer>):Error {
        _b;
        _b._closed = true;
        _b._signal();
        return ((null : stdgo.Error));
    }
    @:keep
    public static function readMode(_b:Ref<T_syncBuffer>):Void {
        _b;
        _b._mu.unlock();
        _b._signal();
    }
    @:keep
    public static function writeMode(_b:Ref<T_syncBuffer>):Void {
        _b;
        _b._mu.lock();
    }
    @:keep
    public static function write(_b:Ref<T_syncBuffer>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = _b._buf.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _b._signal();
        return { _0 : _n, _1 : _err };
    }
    @:keep
    public static function _signal(_b:Ref<T_syncBuffer>):Void {
        _b;
        Go.select([_b._ready.__send__(true) => {}, {}]);
    }
    @:keep
    public static function read(_b:Ref<T_syncBuffer>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        while (true) {
            _b._mu.rlock();
            {
                var __tmp__ = _b._buf.read(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            _b._mu.runlock();
            if ((_n > ((0 : GoInt))) || _b._closed) {
                return { _0 : _n, _1 : _err };
            };
            _b._ready.__get__();
        };
    }
}
class T_deflateInflateStringTest_wrapper {
    public var __t__ : T_deflateInflateStringTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_failWriter_wrapper {
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = __t__;
        _w;
        _w._n--;
        if (_w._n == ((-1 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : _errIO };
        };
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : T_failWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_failWriter_static_extension {
    @:keep
    public static function write(_w:Ref<T_failWriter>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _w;
        _w._n--;
        if (_w._n == ((-1 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : _errIO };
        };
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
}
class T_tableEntry_wrapper {
    public var __t__ : T_tableEntry;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_deflateFast_wrapper {
    @:keep
    public function _shiftOffsets():Void {
        var _e = __t__;
        _e;
        if ((_e._prev != null ? _e._prev.length : ((0 : GoInt))) == ((0 : GoInt))) {
            for (_i => _ in ((_e._table.__slice__(0) : Slice<T_tableEntry>))) {
                if (_e._table != null) _e._table[_i] = ((new T_tableEntry() : T_tableEntry));
            };
            _e._cur = ((32769 : GoInt32));
            return;
        };
        for (_i => _ in ((_e._table.__slice__(0) : Slice<T_tableEntry>))) {
            var _v:GoInt32 = (((_e._table != null ? _e._table[_i] : new T_tableEntry())._offset - _e._cur) + ((32768 : GoInt32))) + ((1 : GoInt32));
            if (_v < ((0 : GoInt32))) {
                _v = ((0 : GoInt32));
            };
            (_e._table != null ? _e._table[_i] : new T_tableEntry())._offset = _v;
        };
        _e._cur = ((32769 : GoInt32));
    }
    @:keep
    public function _reset():Void {
        var _e = __t__;
        _e;
        _e._prev = ((_e._prev.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>));
        _e._cur = _e._cur + (((32768 : GoInt32)));
        if (_e._cur >= ((2147352577 : GoInt32))) {
            _e._shiftOffsets();
        };
    }
    @:keep
    public function _matchLen(_s:GoInt32, _t:GoInt32, _src:Slice<GoByte>):GoInt32 {
        var _e = __t__;
        _e;
        var _s1:GoInt = (((_s : GoInt)) + ((258 : GoInt))) - ((4 : GoInt));
        if (_s1 > (_src != null ? _src.length : ((0 : GoInt)))) {
            _s1 = (_src != null ? _src.length : ((0 : GoInt)));
        };
        if (_t >= ((0 : GoInt32))) {
            var _b:Slice<GoUInt8> = ((_src.__slice__(_t) : Slice<GoUInt8>));
            var _a:Slice<GoUInt8> = ((_src.__slice__(_s, _s1) : Slice<GoUInt8>));
            _b = ((_b.__slice__(0, (_a != null ? _a.length : ((0 : GoInt)))) : Slice<GoUInt8>));
            for (_i => _ in _a) {
                if ((_a != null ? _a[_i] : ((0 : GoUInt8))) != (_b != null ? _b[_i] : ((0 : GoUInt8)))) {
                    return ((_i : GoInt32));
                };
            };
            return (((_a != null ? _a.length : ((0 : GoInt))) : GoInt32));
        };
        var _tp:GoInt32 = (((_e._prev != null ? _e._prev.length : ((0 : GoInt))) : GoInt32)) + _t;
        if (_tp < ((0 : GoInt32))) {
            return ((0 : GoInt32));
        };
        var _a:Slice<GoUInt8> = ((_src.__slice__(_s, _s1) : Slice<GoUInt8>));
        var _b:Slice<GoUInt8> = ((_e._prev.__slice__(_tp) : Slice<GoUInt8>));
        if ((_b != null ? _b.length : ((0 : GoInt))) > (_a != null ? _a.length : ((0 : GoInt)))) {
            _b = ((_b.__slice__(0, (_a != null ? _a.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        };
        _a = ((_a.__slice__(0, (_b != null ? _b.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        for (_i => _ in _b) {
            if ((_a != null ? _a[_i] : ((0 : GoUInt8))) != (_b != null ? _b[_i] : ((0 : GoUInt8)))) {
                return ((_i : GoInt32));
            };
        };
        var _n:GoInt32 = (((_b != null ? _b.length : ((0 : GoInt))) : GoInt32));
        if ((((_s + _n) : GoInt)) == _s1) {
            return _n;
        };
        _a = ((_src.__slice__(_s + _n, _s1) : Slice<GoUInt8>));
        _b = ((_src.__slice__(0, (_a != null ? _a.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        for (_i => _ in _a) {
            if ((_a != null ? _a[_i] : ((0 : GoUInt8))) != (_b != null ? _b[_i] : ((0 : GoUInt8)))) {
                return ((_i : GoInt32)) + _n;
            };
        };
        return (((_a != null ? _a.length : ((0 : GoInt))) : GoInt32)) + _n;
    }
    @:keep
    public function _encode(_dst:Slice<T_token>, _src:Slice<GoByte>):Slice<T_token> {
        var _e = __t__;
        _e;
        return stdgo.internal.Macro.controlFlow({
            if (_e._cur >= ((2147352577 : GoInt32))) {
                _e._shiftOffsets();
            };
            if ((_src != null ? _src.length : ((0 : GoInt))) < ((17 : GoInt))) {
                _e._cur = _e._cur + (((65535 : GoInt32)));
                _e._prev = ((_e._prev.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>));
                return _emitLiteral(_dst, _src);
            };
            var _sLimit:GoInt32 = ((((_src != null ? _src.length : ((0 : GoInt))) - ((15 : GoInt))) : GoInt32));
            var _nextEmit:GoInt32 = ((((0 : GoInt32)) : GoInt32));
            var _s:GoInt32 = ((((0 : GoInt32)) : GoInt32));
            var _cv:GoUInt32 = _load32(_src, _s);
            var _nextHash:GoUInt32 = _hash(_cv);
            while (true) {
                var _skip:GoInt32 = ((((32 : GoInt32)) : GoInt32));
                var _nextS:GoInt32 = _s;
                var _candidate:T_tableEntry = new T_tableEntry();
                while (true) {
                    _s = _nextS;
                    var _bytesBetweenHashLookups:GoInt32 = _skip >> ((5 : GoUnTypedInt));
                    _nextS = _s + _bytesBetweenHashLookups;
                    _skip = _skip + (_bytesBetweenHashLookups);
                    if (_nextS > _sLimit) {
                        @:goto "emitRemainder";
                    };
                    _candidate = ((_e._table != null ? _e._table[_nextHash & ((16383 : GoUInt32))] : new T_tableEntry()) == null ? null : (_e._table != null ? _e._table[_nextHash & ((16383 : GoUInt32))] : new T_tableEntry()).__copy__());
                    var _now:GoUInt32 = _load32(_src, _nextS);
                    if (_e._table != null) _e._table[_nextHash & ((16383 : GoUInt32))] = ((({ _offset : _s + _e._cur, _val : _cv } : T_tableEntry)) == null ? null : (({ _offset : _s + _e._cur, _val : _cv } : T_tableEntry)).__copy__());
                    _nextHash = _hash(_now);
                    var _offset:GoInt32 = _s - (_candidate._offset - _e._cur);
                    if ((_offset > ((32768 : GoInt32))) || (_cv != _candidate._val)) {
                        _cv = _now;
                        continue;
                    };
                    break;
                };
                _dst = _emitLiteral(_dst, ((_src.__slice__(_nextEmit, _s) : Slice<GoUInt8>)));
                while (true) {
                    _s = _s + (((4 : GoInt32)));
                    var _t:GoInt32 = (_candidate._offset - _e._cur) + ((4 : GoInt32));
                    var _l:GoInt32 = _e._matchLen(_s, _t, _src);
                    _dst = (_dst != null ? _dst.__append__(_matchToken(((((_l + ((4 : GoInt32))) - ((3 : GoInt32))) : GoUInt32)), ((((_s - _t) - ((1 : GoInt32))) : GoUInt32)))) : new Slice<T_token>(_matchToken(((((_l + ((4 : GoInt32))) - ((3 : GoInt32))) : GoUInt32)), ((((_s - _t) - ((1 : GoInt32))) : GoUInt32)))));
                    _s = _s + (_l);
                    _nextEmit = _s;
                    if (_s >= _sLimit) {
                        @:goto "emitRemainder";
                    };
                    var _x:GoUInt64 = _load64(_src, _s - ((1 : GoInt32)));
                    var _prevHash:GoUInt32 = _hash(((_x : GoUInt32)));
                    if (_e._table != null) _e._table[_prevHash & ((16383 : GoUInt32))] = ((({ _offset : (_e._cur + _s) - ((1 : GoInt32)), _val : ((_x : GoUInt32)) } : T_tableEntry)) == null ? null : (({ _offset : (_e._cur + _s) - ((1 : GoInt32)), _val : ((_x : GoUInt32)) } : T_tableEntry)).__copy__());
                    _x = _x >> (((8 : GoUnTypedInt)));
                    var _currHash:GoUInt32 = _hash(((_x : GoUInt32)));
                    _candidate = ((_e._table != null ? _e._table[_currHash & ((16383 : GoUInt32))] : new T_tableEntry()) == null ? null : (_e._table != null ? _e._table[_currHash & ((16383 : GoUInt32))] : new T_tableEntry()).__copy__());
                    if (_e._table != null) _e._table[_currHash & ((16383 : GoUInt32))] = ((({ _offset : _e._cur + _s, _val : ((_x : GoUInt32)) } : T_tableEntry)) == null ? null : (({ _offset : _e._cur + _s, _val : ((_x : GoUInt32)) } : T_tableEntry)).__copy__());
                    var _offset:GoInt32 = _s - (_candidate._offset - _e._cur);
                    if ((_offset > ((32768 : GoInt32))) || (((_x : GoUInt32)) != _candidate._val)) {
                        _cv = (((_x >> ((8 : GoUnTypedInt))) : GoUInt32));
                        _nextHash = _hash(_cv);
                        _s++;
                        break;
                    };
                };
            };
            @:label("emitRemainder") if (((_nextEmit : GoInt)) < (_src != null ? _src.length : ((0 : GoInt)))) {
                _dst = _emitLiteral(_dst, ((_src.__slice__(_nextEmit) : Slice<GoUInt8>)));
            };
            _e._cur = _e._cur + ((((_src != null ? _src.length : ((0 : GoInt))) : GoInt32)));
            _e._prev = ((_e._prev.__slice__(0, (_src != null ? _src.length : ((0 : GoInt)))) : Slice<GoUInt8>));
            Go.copySlice(_e._prev, _src);
            return _dst;
        });
    }
    public var __t__ : T_deflateFast;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_deflateFast_static_extension {
    @:keep
    public static function _shiftOffsets(_e:Ref<T_deflateFast>):Void {
        _e;
        if ((_e._prev != null ? _e._prev.length : ((0 : GoInt))) == ((0 : GoInt))) {
            for (_i => _ in ((_e._table.__slice__(0) : Slice<T_tableEntry>))) {
                if (_e._table != null) _e._table[_i] = ((new T_tableEntry() : T_tableEntry));
            };
            _e._cur = ((32769 : GoInt32));
            return;
        };
        for (_i => _ in ((_e._table.__slice__(0) : Slice<T_tableEntry>))) {
            var _v:GoInt32 = (((_e._table != null ? _e._table[_i] : new T_tableEntry())._offset - _e._cur) + ((32768 : GoInt32))) + ((1 : GoInt32));
            if (_v < ((0 : GoInt32))) {
                _v = ((0 : GoInt32));
            };
            (_e._table != null ? _e._table[_i] : new T_tableEntry())._offset = _v;
        };
        _e._cur = ((32769 : GoInt32));
    }
    @:keep
    public static function _reset(_e:Ref<T_deflateFast>):Void {
        _e;
        _e._prev = ((_e._prev.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>));
        _e._cur = _e._cur + (((32768 : GoInt32)));
        if (_e._cur >= ((2147352577 : GoInt32))) {
            _e._shiftOffsets();
        };
    }
    @:keep
    public static function _matchLen(_e:Ref<T_deflateFast>, _s:GoInt32, _t:GoInt32, _src:Slice<GoByte>):GoInt32 {
        _e;
        var _s1:GoInt = (((_s : GoInt)) + ((258 : GoInt))) - ((4 : GoInt));
        if (_s1 > (_src != null ? _src.length : ((0 : GoInt)))) {
            _s1 = (_src != null ? _src.length : ((0 : GoInt)));
        };
        if (_t >= ((0 : GoInt32))) {
            var _b:Slice<GoUInt8> = ((_src.__slice__(_t) : Slice<GoUInt8>));
            var _a:Slice<GoUInt8> = ((_src.__slice__(_s, _s1) : Slice<GoUInt8>));
            _b = ((_b.__slice__(0, (_a != null ? _a.length : ((0 : GoInt)))) : Slice<GoUInt8>));
            for (_i => _ in _a) {
                if ((_a != null ? _a[_i] : ((0 : GoUInt8))) != (_b != null ? _b[_i] : ((0 : GoUInt8)))) {
                    return ((_i : GoInt32));
                };
            };
            return (((_a != null ? _a.length : ((0 : GoInt))) : GoInt32));
        };
        var _tp:GoInt32 = (((_e._prev != null ? _e._prev.length : ((0 : GoInt))) : GoInt32)) + _t;
        if (_tp < ((0 : GoInt32))) {
            return ((0 : GoInt32));
        };
        var _a:Slice<GoUInt8> = ((_src.__slice__(_s, _s1) : Slice<GoUInt8>));
        var _b:Slice<GoUInt8> = ((_e._prev.__slice__(_tp) : Slice<GoUInt8>));
        if ((_b != null ? _b.length : ((0 : GoInt))) > (_a != null ? _a.length : ((0 : GoInt)))) {
            _b = ((_b.__slice__(0, (_a != null ? _a.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        };
        _a = ((_a.__slice__(0, (_b != null ? _b.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        for (_i => _ in _b) {
            if ((_a != null ? _a[_i] : ((0 : GoUInt8))) != (_b != null ? _b[_i] : ((0 : GoUInt8)))) {
                return ((_i : GoInt32));
            };
        };
        var _n:GoInt32 = (((_b != null ? _b.length : ((0 : GoInt))) : GoInt32));
        if ((((_s + _n) : GoInt)) == _s1) {
            return _n;
        };
        _a = ((_src.__slice__(_s + _n, _s1) : Slice<GoUInt8>));
        _b = ((_src.__slice__(0, (_a != null ? _a.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        for (_i => _ in _a) {
            if ((_a != null ? _a[_i] : ((0 : GoUInt8))) != (_b != null ? _b[_i] : ((0 : GoUInt8)))) {
                return ((_i : GoInt32)) + _n;
            };
        };
        return (((_a != null ? _a.length : ((0 : GoInt))) : GoInt32)) + _n;
    }
    @:keep
    public static function _encode(_e:Ref<T_deflateFast>, _dst:Slice<T_token>, _src:Slice<GoByte>):Slice<T_token> {
        _e;
        return stdgo.internal.Macro.controlFlow({
            if (_e._cur >= ((2147352577 : GoInt32))) {
                _e._shiftOffsets();
            };
            if ((_src != null ? _src.length : ((0 : GoInt))) < ((17 : GoInt))) {
                _e._cur = _e._cur + (((65535 : GoInt32)));
                _e._prev = ((_e._prev.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>));
                return _emitLiteral(_dst, _src);
            };
            var _sLimit:GoInt32 = ((((_src != null ? _src.length : ((0 : GoInt))) - ((15 : GoInt))) : GoInt32));
            var _nextEmit:GoInt32 = ((((0 : GoInt32)) : GoInt32));
            var _s:GoInt32 = ((((0 : GoInt32)) : GoInt32));
            var _cv:GoUInt32 = _load32(_src, _s);
            var _nextHash:GoUInt32 = _hash(_cv);
            while (true) {
                var _skip:GoInt32 = ((((32 : GoInt32)) : GoInt32));
                var _nextS:GoInt32 = _s;
                var _candidate:T_tableEntry = new T_tableEntry();
                while (true) {
                    _s = _nextS;
                    var _bytesBetweenHashLookups:GoInt32 = _skip >> ((5 : GoUnTypedInt));
                    _nextS = _s + _bytesBetweenHashLookups;
                    _skip = _skip + (_bytesBetweenHashLookups);
                    if (_nextS > _sLimit) {
                        @:goto "emitRemainder";
                    };
                    _candidate = ((_e._table != null ? _e._table[_nextHash & ((16383 : GoUInt32))] : new T_tableEntry()) == null ? null : (_e._table != null ? _e._table[_nextHash & ((16383 : GoUInt32))] : new T_tableEntry()).__copy__());
                    var _now:GoUInt32 = _load32(_src, _nextS);
                    if (_e._table != null) _e._table[_nextHash & ((16383 : GoUInt32))] = ((({ _offset : _s + _e._cur, _val : _cv } : T_tableEntry)) == null ? null : (({ _offset : _s + _e._cur, _val : _cv } : T_tableEntry)).__copy__());
                    _nextHash = _hash(_now);
                    var _offset:GoInt32 = _s - (_candidate._offset - _e._cur);
                    if ((_offset > ((32768 : GoInt32))) || (_cv != _candidate._val)) {
                        _cv = _now;
                        continue;
                    };
                    break;
                };
                _dst = _emitLiteral(_dst, ((_src.__slice__(_nextEmit, _s) : Slice<GoUInt8>)));
                while (true) {
                    _s = _s + (((4 : GoInt32)));
                    var _t:GoInt32 = (_candidate._offset - _e._cur) + ((4 : GoInt32));
                    var _l:GoInt32 = _e._matchLen(_s, _t, _src);
                    _dst = (_dst != null ? _dst.__append__(_matchToken(((((_l + ((4 : GoInt32))) - ((3 : GoInt32))) : GoUInt32)), ((((_s - _t) - ((1 : GoInt32))) : GoUInt32)))) : new Slice<T_token>(_matchToken(((((_l + ((4 : GoInt32))) - ((3 : GoInt32))) : GoUInt32)), ((((_s - _t) - ((1 : GoInt32))) : GoUInt32)))));
                    _s = _s + (_l);
                    _nextEmit = _s;
                    if (_s >= _sLimit) {
                        @:goto "emitRemainder";
                    };
                    var _x:GoUInt64 = _load64(_src, _s - ((1 : GoInt32)));
                    var _prevHash:GoUInt32 = _hash(((_x : GoUInt32)));
                    if (_e._table != null) _e._table[_prevHash & ((16383 : GoUInt32))] = ((({ _offset : (_e._cur + _s) - ((1 : GoInt32)), _val : ((_x : GoUInt32)) } : T_tableEntry)) == null ? null : (({ _offset : (_e._cur + _s) - ((1 : GoInt32)), _val : ((_x : GoUInt32)) } : T_tableEntry)).__copy__());
                    _x = _x >> (((8 : GoUnTypedInt)));
                    var _currHash:GoUInt32 = _hash(((_x : GoUInt32)));
                    _candidate = ((_e._table != null ? _e._table[_currHash & ((16383 : GoUInt32))] : new T_tableEntry()) == null ? null : (_e._table != null ? _e._table[_currHash & ((16383 : GoUInt32))] : new T_tableEntry()).__copy__());
                    if (_e._table != null) _e._table[_currHash & ((16383 : GoUInt32))] = ((({ _offset : _e._cur + _s, _val : ((_x : GoUInt32)) } : T_tableEntry)) == null ? null : (({ _offset : _e._cur + _s, _val : ((_x : GoUInt32)) } : T_tableEntry)).__copy__());
                    var _offset:GoInt32 = _s - (_candidate._offset - _e._cur);
                    if ((_offset > ((32768 : GoInt32))) || (((_x : GoUInt32)) != _candidate._val)) {
                        _cv = (((_x >> ((8 : GoUnTypedInt))) : GoUInt32));
                        _nextHash = _hash(_cv);
                        _s++;
                        break;
                    };
                };
            };
            @:label("emitRemainder") if (((_nextEmit : GoInt)) < (_src != null ? _src.length : ((0 : GoInt)))) {
                _dst = _emitLiteral(_dst, ((_src.__slice__(_nextEmit) : Slice<GoUInt8>)));
            };
            _e._cur = _e._cur + ((((_src != null ? _src.length : ((0 : GoInt))) : GoInt32)));
            _e._prev = ((_e._prev.__slice__(0, (_src != null ? _src.length : ((0 : GoInt)))) : Slice<GoUInt8>));
            Go.copySlice(_e._prev, _src);
            return _dst;
        });
    }
}
class T_dictDecoder_wrapper {
    @:keep
    public function _readFlush():Slice<GoByte> {
        var _dd = __t__;
        _dd;
        var _toRead:Slice<GoUInt8> = ((_dd._hist.__slice__(_dd._rdPos, _dd._wrPos) : Slice<GoUInt8>));
        _dd._rdPos = _dd._wrPos;
        if (_dd._wrPos == (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)))) {
            {
                final __tmp__0 = ((0 : GoInt));
                final __tmp__1 = ((0 : GoInt));
                _dd._wrPos = __tmp__0;
                _dd._rdPos = __tmp__1;
            };
            _dd._full = true;
        };
        return _toRead;
    }
    @:keep
    public function _tryWriteCopy(_dist:GoInt, _length:GoInt):GoInt {
        var _dd = __t__;
        _dd;
        var _dstPos:GoInt = _dd._wrPos;
        var _endPos:GoInt = _dstPos + _length;
        if ((_dstPos < _dist) || (_endPos > (_dd._hist != null ? _dd._hist.length : ((0 : GoInt))))) {
            return ((0 : GoInt));
        };
        var _dstBase:GoInt = _dstPos;
        var _srcPos:GoInt = _dstPos - _dist;
        while (_dstPos < _endPos) {
            _dstPos = _dstPos + (Go.copySlice(((_dd._hist.__slice__(_dstPos, _endPos) : Slice<GoUInt8>)), ((_dd._hist.__slice__(_srcPos, _dstPos) : Slice<GoUInt8>))));
        };
        _dd._wrPos = _dstPos;
        return _dstPos - _dstBase;
    }
    @:keep
    public function _writeCopy(_dist:GoInt, _length:GoInt):GoInt {
        var _dd = __t__;
        _dd;
        var _dstBase:GoInt = _dd._wrPos;
        var _dstPos:GoInt = _dstBase;
        var _srcPos:GoInt = _dstPos - _dist;
        var _endPos:GoInt = _dstPos + _length;
        if (_endPos > (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)))) {
            _endPos = (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)));
        };
        if (_srcPos < ((0 : GoInt))) {
            _srcPos = _srcPos + ((_dd._hist != null ? _dd._hist.length : ((0 : GoInt))));
            _dstPos = _dstPos + (Go.copySlice(((_dd._hist.__slice__(_dstPos, _endPos) : Slice<GoUInt8>)), ((_dd._hist.__slice__(_srcPos) : Slice<GoUInt8>))));
            _srcPos = ((0 : GoInt));
        };
        while (_dstPos < _endPos) {
            _dstPos = _dstPos + (Go.copySlice(((_dd._hist.__slice__(_dstPos, _endPos) : Slice<GoUInt8>)), ((_dd._hist.__slice__(_srcPos, _dstPos) : Slice<GoUInt8>))));
        };
        _dd._wrPos = _dstPos;
        return _dstPos - _dstBase;
    }
    @:keep
    public function _writeByte(_c:GoByte):Void {
        var _dd = __t__;
        _dd;
        if (_dd._hist != null) _dd._hist[_dd._wrPos] = _c;
        _dd._wrPos++;
    }
    @:keep
    public function _writeMark(_cnt:GoInt):Void {
        var _dd = __t__;
        _dd;
        _dd._wrPos = _dd._wrPos + (_cnt);
    }
    @:keep
    public function _writeSlice():Slice<GoByte> {
        var _dd = __t__;
        _dd;
        return ((_dd._hist.__slice__(_dd._wrPos) : Slice<GoUInt8>));
    }
    @:keep
    public function _availWrite():GoInt {
        var _dd = __t__;
        _dd;
        return (_dd._hist != null ? _dd._hist.length : ((0 : GoInt))) - _dd._wrPos;
    }
    @:keep
    public function _availRead():GoInt {
        var _dd = __t__;
        _dd;
        return _dd._wrPos - _dd._rdPos;
    }
    @:keep
    public function _histSize():GoInt {
        var _dd = __t__;
        _dd;
        if (_dd._full) {
            return (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)));
        };
        return _dd._wrPos;
    }
    @:keep
    public function _init(_size:GoInt, _dict:Slice<GoByte>):Void {
        var _dd = __t__;
        _dd;
        {
            var __tmp__ = ((({ _hist : _dd._hist, _wrPos : 0, _rdPos : 0, _full : false } : T_dictDecoder)) == null ? null : (({ _hist : _dd._hist, _wrPos : 0, _rdPos : 0, _full : false } : T_dictDecoder)).__copy__());
            _dd._hist = __tmp__._hist;
            _dd._wrPos = __tmp__._wrPos;
            _dd._rdPos = __tmp__._rdPos;
            _dd._full = __tmp__._full;
        };
        if ((_dd._hist != null ? _dd._hist.cap() : ((0 : GoInt))) < _size) {
            _dd._hist = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
        };
        _dd._hist = ((_dd._hist.__slice__(0, _size) : Slice<GoUInt8>));
        if ((_dict != null ? _dict.length : ((0 : GoInt))) > (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)))) {
            _dict = ((_dict.__slice__((_dict != null ? _dict.length : ((0 : GoInt))) - (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        };
        _dd._wrPos = Go.copySlice(_dd._hist, _dict);
        if (_dd._wrPos == (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)))) {
            _dd._wrPos = ((0 : GoInt));
            _dd._full = true;
        };
        _dd._rdPos = _dd._wrPos;
    }
    public var __t__ : T_dictDecoder;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_dictDecoder_static_extension {
    @:keep
    public static function _readFlush(_dd:Ref<T_dictDecoder>):Slice<GoByte> {
        _dd;
        var _toRead:Slice<GoUInt8> = ((_dd._hist.__slice__(_dd._rdPos, _dd._wrPos) : Slice<GoUInt8>));
        _dd._rdPos = _dd._wrPos;
        if (_dd._wrPos == (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)))) {
            {
                final __tmp__0 = ((0 : GoInt));
                final __tmp__1 = ((0 : GoInt));
                _dd._wrPos = __tmp__0;
                _dd._rdPos = __tmp__1;
            };
            _dd._full = true;
        };
        return _toRead;
    }
    @:keep
    public static function _tryWriteCopy(_dd:Ref<T_dictDecoder>, _dist:GoInt, _length:GoInt):GoInt {
        _dd;
        var _dstPos:GoInt = _dd._wrPos;
        var _endPos:GoInt = _dstPos + _length;
        if ((_dstPos < _dist) || (_endPos > (_dd._hist != null ? _dd._hist.length : ((0 : GoInt))))) {
            return ((0 : GoInt));
        };
        var _dstBase:GoInt = _dstPos;
        var _srcPos:GoInt = _dstPos - _dist;
        while (_dstPos < _endPos) {
            _dstPos = _dstPos + (Go.copySlice(((_dd._hist.__slice__(_dstPos, _endPos) : Slice<GoUInt8>)), ((_dd._hist.__slice__(_srcPos, _dstPos) : Slice<GoUInt8>))));
        };
        _dd._wrPos = _dstPos;
        return _dstPos - _dstBase;
    }
    @:keep
    public static function _writeCopy(_dd:Ref<T_dictDecoder>, _dist:GoInt, _length:GoInt):GoInt {
        _dd;
        var _dstBase:GoInt = _dd._wrPos;
        var _dstPos:GoInt = _dstBase;
        var _srcPos:GoInt = _dstPos - _dist;
        var _endPos:GoInt = _dstPos + _length;
        if (_endPos > (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)))) {
            _endPos = (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)));
        };
        if (_srcPos < ((0 : GoInt))) {
            _srcPos = _srcPos + ((_dd._hist != null ? _dd._hist.length : ((0 : GoInt))));
            _dstPos = _dstPos + (Go.copySlice(((_dd._hist.__slice__(_dstPos, _endPos) : Slice<GoUInt8>)), ((_dd._hist.__slice__(_srcPos) : Slice<GoUInt8>))));
            _srcPos = ((0 : GoInt));
        };
        while (_dstPos < _endPos) {
            _dstPos = _dstPos + (Go.copySlice(((_dd._hist.__slice__(_dstPos, _endPos) : Slice<GoUInt8>)), ((_dd._hist.__slice__(_srcPos, _dstPos) : Slice<GoUInt8>))));
        };
        _dd._wrPos = _dstPos;
        return _dstPos - _dstBase;
    }
    @:keep
    public static function _writeByte(_dd:Ref<T_dictDecoder>, _c:GoByte):Void {
        _dd;
        if (_dd._hist != null) _dd._hist[_dd._wrPos] = _c;
        _dd._wrPos++;
    }
    @:keep
    public static function _writeMark(_dd:Ref<T_dictDecoder>, _cnt:GoInt):Void {
        _dd;
        _dd._wrPos = _dd._wrPos + (_cnt);
    }
    @:keep
    public static function _writeSlice(_dd:Ref<T_dictDecoder>):Slice<GoByte> {
        _dd;
        return ((_dd._hist.__slice__(_dd._wrPos) : Slice<GoUInt8>));
    }
    @:keep
    public static function _availWrite(_dd:Ref<T_dictDecoder>):GoInt {
        _dd;
        return (_dd._hist != null ? _dd._hist.length : ((0 : GoInt))) - _dd._wrPos;
    }
    @:keep
    public static function _availRead(_dd:Ref<T_dictDecoder>):GoInt {
        _dd;
        return _dd._wrPos - _dd._rdPos;
    }
    @:keep
    public static function _histSize(_dd:Ref<T_dictDecoder>):GoInt {
        _dd;
        if (_dd._full) {
            return (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)));
        };
        return _dd._wrPos;
    }
    @:keep
    public static function _init(_dd:Ref<T_dictDecoder>, _size:GoInt, _dict:Slice<GoByte>):Void {
        _dd;
        {
            var __tmp__ = ((({ _hist : _dd._hist, _wrPos : 0, _rdPos : 0, _full : false } : T_dictDecoder)) == null ? null : (({ _hist : _dd._hist, _wrPos : 0, _rdPos : 0, _full : false } : T_dictDecoder)).__copy__());
            _dd._hist = __tmp__._hist;
            _dd._wrPos = __tmp__._wrPos;
            _dd._rdPos = __tmp__._rdPos;
            _dd._full = __tmp__._full;
        };
        if ((_dd._hist != null ? _dd._hist.cap() : ((0 : GoInt))) < _size) {
            _dd._hist = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
        };
        _dd._hist = ((_dd._hist.__slice__(0, _size) : Slice<GoUInt8>));
        if ((_dict != null ? _dict.length : ((0 : GoInt))) > (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)))) {
            _dict = ((_dict.__slice__((_dict != null ? _dict.length : ((0 : GoInt))) - (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        };
        _dd._wrPos = Go.copySlice(_dd._hist, _dict);
        if (_dd._wrPos == (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)))) {
            _dd._wrPos = ((0 : GoInt));
            _dd._full = true;
        };
        _dd._rdPos = _dd._wrPos;
    }
}
class T_huffmanBitWriter_wrapper {
    @:keep
    public function _writeBlockHuff(_eof:Bool, _input:Slice<GoByte>):Void {
        var _w = __t__;
        _w;
        if (_w._err != null) {
            return;
        };
        for (_i => _ in _w._literalFreq) {
            if (_w._literalFreq != null) _w._literalFreq[_i] = ((0 : GoInt32));
        };
        _histogram(_input, _w._literalFreq);
        if (_w._literalFreq != null) _w._literalFreq[((256 : GoInt))] = ((1 : GoInt32));
        {};
        if (_w._offsetFreq != null) _w._offsetFreq[((0 : GoInt))] = ((1 : GoInt32));
        {};
        _w._literalEncoding._generate(_w._literalFreq, ((15 : GoInt32)));
        var _numCodegens:GoInt = ((0 : GoInt));
        _w._generateCodegen(((257 : GoInt)), ((1 : GoInt)), _w._literalEncoding, _huffOffset);
        _w._codegenEncoding._generate(((_w._codegenFreq.__slice__(0) : Slice<GoInt32>)), ((7 : GoInt32)));
        var __tmp__ = _w._dynamicSize(_w._literalEncoding, _huffOffset, ((0 : GoInt))), _size:GoInt = __tmp__._0, _numCodegens:GoInt = __tmp__._1;
        {
            var __tmp__ = _w._storedSize(_input), _ssize:GoInt = __tmp__._0, _storable:Bool = __tmp__._1;
            if (_storable && (_ssize < (_size + (_size >> ((4 : GoUnTypedInt)))))) {
                _w._writeStoredHeader((_input != null ? _input.length : ((0 : GoInt))), _eof);
                _w._writeBytes(_input);
                return;
            };
        };
        _w._writeDynamicHeader(((257 : GoInt)), ((1 : GoInt)), _numCodegens, _eof);
        var _encoding:Slice<T_hcode> = ((_w._literalEncoding._codes.__slice__(0, ((257 : GoInt))) : Slice<T_hcode>));
        var _n:GoInt = _w._nbytes;
        for (_0 => _t in _input) {
            var _c:T_hcode = ((_encoding != null ? _encoding[_t] : new T_hcode()) == null ? null : (_encoding != null ? _encoding[_t] : new T_hcode()).__copy__());
            _w._bits = _w._bits | (((_c._code : GoUInt64)) << _w._nbits);
            _w._nbits = _w._nbits + (((_c._len : GoUInt)));
            if (_w._nbits < ((48 : GoUInt))) {
                continue;
            };
            var _bits:GoUInt64 = _w._bits;
            _w._bits = _w._bits >> (((48 : GoUnTypedInt)));
            _w._nbits = _w._nbits - (((48 : GoUInt)));
            var _bytes:Slice<GoUInt8> = ((_w._bytes.__slice__(_n, _n + ((6 : GoInt))) : Slice<GoUInt8>));
            if (_bytes != null) _bytes[((0 : GoInt))] = ((_bits : GoByte));
            if (_bytes != null) _bytes[((1 : GoInt))] = (((_bits >> ((8 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((2 : GoInt))] = (((_bits >> ((16 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((3 : GoInt))] = (((_bits >> ((24 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((4 : GoInt))] = (((_bits >> ((32 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((5 : GoInt))] = (((_bits >> ((40 : GoUnTypedInt))) : GoByte));
            _n = _n + (((6 : GoInt)));
            if (_n < ((240 : GoInt))) {
                continue;
            };
            _w._write(((_w._bytes.__slice__(0, _n) : Slice<GoUInt8>)));
            if (_w._err != null) {
                return;
            };
            _n = ((0 : GoInt));
        };
        _w._nbytes = _n;
        _w._writeCode(((_encoding != null ? _encoding[((256 : GoInt))] : new T_hcode()) == null ? null : (_encoding != null ? _encoding[((256 : GoInt))] : new T_hcode()).__copy__()));
    }
    @:keep
    public function _writeTokens(_tokens:Slice<T_token>, _leCodes:Slice<T_hcode>, _oeCodes:Slice<T_hcode>):Void {
        var _w = __t__;
        _w;
        if (_w._err != null) {
            return;
        };
        for (_0 => _t in _tokens) {
            if (_t < ((1073741824 : GoUInt32))) {
                _w._writeCode(((_leCodes != null ? _leCodes[_t._literal()] : new T_hcode()) == null ? null : (_leCodes != null ? _leCodes[_t._literal()] : new T_hcode()).__copy__()));
                continue;
            };
            var _length:GoUInt32 = _t._length();
            var _lengthCode:GoUInt32 = _lengthCode(_length);
            _w._writeCode(((_leCodes != null ? _leCodes[_lengthCode + ((257 : GoUInt32))] : new T_hcode()) == null ? null : (_leCodes != null ? _leCodes[_lengthCode + ((257 : GoUInt32))] : new T_hcode()).__copy__()));
            var _extraLengthBits:GoUInt = (((_lengthExtraBits != null ? _lengthExtraBits[_lengthCode] : ((0 : GoInt8))) : GoUInt));
            if (_extraLengthBits > ((0 : GoUInt))) {
                var _extraLength:GoInt32 = (((_length - (_lengthBase != null ? _lengthBase[_lengthCode] : ((0 : GoUInt32)))) : GoInt32));
                _w._writeBits(_extraLength, _extraLengthBits);
            };
            var _offset:GoUInt32 = _t._offset();
            var _offsetCode:GoUInt32 = _offsetCode(_offset);
            _w._writeCode(((_oeCodes != null ? _oeCodes[_offsetCode] : new T_hcode()) == null ? null : (_oeCodes != null ? _oeCodes[_offsetCode] : new T_hcode()).__copy__()));
            var _extraOffsetBits:GoUInt = (((_offsetExtraBits != null ? _offsetExtraBits[_offsetCode] : ((0 : GoInt8))) : GoUInt));
            if (_extraOffsetBits > ((0 : GoUInt))) {
                var _extraOffset:GoInt32 = (((_offset - (_offsetBase != null ? _offsetBase[_offsetCode] : ((0 : GoUInt32)))) : GoInt32));
                _w._writeBits(_extraOffset, _extraOffsetBits);
            };
        };
    }
    @:keep
    public function _indexTokens(_tokens:Slice<T_token>):{ var _0 : GoInt; var _1 : GoInt; } {
        var _w = __t__;
        _w;
        var _numLiterals:GoInt = ((0 : GoInt)), _numOffsets:GoInt = ((0 : GoInt));
        for (_i => _ in _w._literalFreq) {
            if (_w._literalFreq != null) _w._literalFreq[_i] = ((0 : GoInt32));
        };
        for (_i => _ in _w._offsetFreq) {
            if (_w._offsetFreq != null) _w._offsetFreq[_i] = ((0 : GoInt32));
        };
        for (_0 => _t in _tokens) {
            if (_t < ((1073741824 : GoUInt32))) {
                (_w._literalFreq != null ? _w._literalFreq[_t._literal()] : ((0 : GoInt32)))++;
                continue;
            };
            var _length:GoUInt32 = _t._length();
            var _offset:GoUInt32 = _t._offset();
            (_w._literalFreq != null ? _w._literalFreq[((257 : GoUInt32)) + _lengthCode(_length)] : ((0 : GoInt32)))++;
            (_w._offsetFreq != null ? _w._offsetFreq[_offsetCode(_offset)] : ((0 : GoInt32)))++;
        };
        _numLiterals = (_w._literalFreq != null ? _w._literalFreq.length : ((0 : GoInt)));
        while ((_w._literalFreq != null ? _w._literalFreq[_numLiterals - ((1 : GoInt))] : ((0 : GoInt32))) == ((0 : GoInt32))) {
            _numLiterals--;
        };
        _numOffsets = (_w._offsetFreq != null ? _w._offsetFreq.length : ((0 : GoInt)));
        while ((_numOffsets > ((0 : GoInt))) && ((_w._offsetFreq != null ? _w._offsetFreq[_numOffsets - ((1 : GoInt))] : ((0 : GoInt32))) == ((0 : GoInt32)))) {
            _numOffsets--;
        };
        if (_numOffsets == ((0 : GoInt))) {
            if (_w._offsetFreq != null) _w._offsetFreq[((0 : GoInt))] = ((1 : GoInt32));
            _numOffsets = ((1 : GoInt));
        };
        _w._literalEncoding._generate(_w._literalFreq, ((15 : GoInt32)));
        _w._offsetEncoding._generate(_w._offsetFreq, ((15 : GoInt32)));
        return { _0 : _numLiterals, _1 : _numOffsets };
    }
    @:keep
    public function _writeBlockDynamic(_tokens:Slice<T_token>, _eof:Bool, _input:Slice<GoByte>):Void {
        var _w = __t__;
        _w;
        if (_w._err != null) {
            return;
        };
        _tokens = (_tokens != null ? _tokens.__append__(((256 : GoUInt32))) : new Slice<T_token>(((256 : GoUInt32))));
        var __tmp__ = _w._indexTokens(_tokens), _numLiterals:GoInt = __tmp__._0, _numOffsets:GoInt = __tmp__._1;
        _w._generateCodegen(_numLiterals, _numOffsets, _w._literalEncoding, _w._offsetEncoding);
        _w._codegenEncoding._generate(((_w._codegenFreq.__slice__(0) : Slice<GoInt32>)), ((7 : GoInt32)));
        var __tmp__ = _w._dynamicSize(_w._literalEncoding, _w._offsetEncoding, ((0 : GoInt))), _size:GoInt = __tmp__._0, _numCodegens:GoInt = __tmp__._1;
        {
            var __tmp__ = _w._storedSize(_input), _ssize:GoInt = __tmp__._0, _storable:Bool = __tmp__._1;
            if (_storable && (_ssize < (_size + (_size >> ((4 : GoUnTypedInt)))))) {
                _w._writeStoredHeader((_input != null ? _input.length : ((0 : GoInt))), _eof);
                _w._writeBytes(_input);
                return;
            };
        };
        _w._writeDynamicHeader(_numLiterals, _numOffsets, _numCodegens, _eof);
        _w._writeTokens(_tokens, _w._literalEncoding._codes, _w._offsetEncoding._codes);
    }
    @:keep
    public function _writeBlock(_tokens:Slice<T_token>, _eof:Bool, _input:Slice<GoByte>):Void {
        var _w = __t__;
        _w;
        if (_w._err != null) {
            return;
        };
        _tokens = (_tokens != null ? _tokens.__append__(((256 : GoUInt32))) : new Slice<T_token>(((256 : GoUInt32))));
        var __tmp__ = _w._indexTokens(_tokens), _numLiterals:GoInt = __tmp__._0, _numOffsets:GoInt = __tmp__._1;
        var _extraBits:GoInt = ((0 : GoInt));
        var __tmp__ = _w._storedSize(_input), _storedSize:GoInt = __tmp__._0, _storable:Bool = __tmp__._1;
        if (_storable) {
            {
                var _lengthCode:GoInt = ((265 : GoInt));
                Go.cfor(_lengthCode < _numLiterals, _lengthCode++, {
                    _extraBits = _extraBits + ((((_w._literalFreq != null ? _w._literalFreq[_lengthCode] : ((0 : GoInt32))) : GoInt)) * (((_lengthExtraBits != null ? _lengthExtraBits[_lengthCode - ((257 : GoInt))] : ((0 : GoInt8))) : GoInt)));
                });
            };
            {
                var _offsetCode:GoInt = ((4 : GoInt));
                Go.cfor(_offsetCode < _numOffsets, _offsetCode++, {
                    _extraBits = _extraBits + ((((_w._offsetFreq != null ? _w._offsetFreq[_offsetCode] : ((0 : GoInt32))) : GoInt)) * (((_offsetExtraBits != null ? _offsetExtraBits[_offsetCode] : ((0 : GoInt8))) : GoInt)));
                });
            };
        };
        var _literalEncoding:Ref<T_huffmanEncoder> = _fixedLiteralEncoding;
        var _offsetEncoding:Ref<T_huffmanEncoder> = _fixedOffsetEncoding;
        var _size:GoInt = _w._fixedSize(_extraBits);
        var _numCodegens:GoInt = ((0 : GoInt));
        _w._generateCodegen(_numLiterals, _numOffsets, _w._literalEncoding, _w._offsetEncoding);
        _w._codegenEncoding._generate(((_w._codegenFreq.__slice__(0) : Slice<GoInt32>)), ((7 : GoInt32)));
        var __tmp__ = _w._dynamicSize(_w._literalEncoding, _w._offsetEncoding, _extraBits), _dynamicSize:GoInt = __tmp__._0, _numCodegens:GoInt = __tmp__._1;
        if (_dynamicSize < _size) {
            _size = _dynamicSize;
            _literalEncoding = _w._literalEncoding;
            _offsetEncoding = _w._offsetEncoding;
        };
        if (_storable && (_storedSize < _size)) {
            _w._writeStoredHeader((_input != null ? _input.length : ((0 : GoInt))), _eof);
            _w._writeBytes(_input);
            return;
        };
        if (_literalEncoding == _fixedLiteralEncoding) {
            _w._writeFixedHeader(_eof);
        } else {
            _w._writeDynamicHeader(_numLiterals, _numOffsets, _numCodegens, _eof);
        };
        _w._writeTokens(_tokens, _literalEncoding._codes, _offsetEncoding._codes);
    }
    @:keep
    public function _writeFixedHeader(_isEof:Bool):Void {
        var _w = __t__;
        _w;
        if (_w._err != null) {
            return;
        };
        var _value:GoInt32 = ((2 : GoInt32));
        if (_isEof) {
            _value = ((3 : GoInt32));
        };
        _w._writeBits(_value, ((3 : GoUInt)));
    }
    @:keep
    public function _writeStoredHeader(_length:GoInt, _isEof:Bool):Void {
        var _w = __t__;
        _w;
        if (_w._err != null) {
            return;
        };
        var _flag:GoInt32 = ((0 : GoInt32));
        if (_isEof) {
            _flag = ((1 : GoInt32));
        };
        _w._writeBits(_flag, ((3 : GoUInt)));
        _w._flush();
        _w._writeBits(((_length : GoInt32)), ((16 : GoUInt)));
        _w._writeBits((((-1 ^ ((_length : GoUInt16))) : GoInt32)), ((16 : GoUInt)));
    }
    @:keep
    public function _writeDynamicHeader(_numLiterals:GoInt, _numOffsets:GoInt, _numCodegens:GoInt, _isEof:Bool):Void {
        var _w = __t__;
        _w;
        if (_w._err != null) {
            return;
        };
        var _firstBits:GoInt32 = ((4 : GoInt32));
        if (_isEof) {
            _firstBits = ((5 : GoInt32));
        };
        _w._writeBits(_firstBits, ((3 : GoUInt)));
        _w._writeBits((((_numLiterals - ((257 : GoInt))) : GoInt32)), ((5 : GoUInt)));
        _w._writeBits((((_numOffsets - ((1 : GoInt))) : GoInt32)), ((5 : GoUInt)));
        _w._writeBits((((_numCodegens - ((4 : GoInt))) : GoInt32)), ((4 : GoUInt)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _numCodegens, _i++, {
                var _value:GoUInt = (((_w._codegenEncoding._codes != null ? _w._codegenEncoding._codes[(_codegenOrder != null ? _codegenOrder[_i] : ((0 : GoUInt32)))] : new T_hcode())._len : GoUInt));
                _w._writeBits(((_value : GoInt32)), ((3 : GoUInt)));
            });
        };
        var _i:GoInt = ((0 : GoInt));
        while (true) {
            var _codeWord:GoInt = (((_w._codegen != null ? _w._codegen[_i] : ((0 : GoUInt8))) : GoInt));
            _i++;
            if (_codeWord == ((255 : GoInt))) {
                break;
            };
            _w._writeCode(((_w._codegenEncoding._codes != null ? _w._codegenEncoding._codes[((_codeWord : GoUInt32))] : new T_hcode()) == null ? null : (_w._codegenEncoding._codes != null ? _w._codegenEncoding._codes[((_codeWord : GoUInt32))] : new T_hcode()).__copy__()));
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (_codeWord == ((16 : GoInt))) {
                        _w._writeBits((((_w._codegen != null ? _w._codegen[_i] : ((0 : GoUInt8))) : GoInt32)), ((2 : GoUInt)));
                        _i++;
                        break;
                        break;
                    } else if (_codeWord == ((17 : GoInt))) {
                        _w._writeBits((((_w._codegen != null ? _w._codegen[_i] : ((0 : GoUInt8))) : GoInt32)), ((3 : GoUInt)));
                        _i++;
                        break;
                        break;
                    } else if (_codeWord == ((18 : GoInt))) {
                        _w._writeBits((((_w._codegen != null ? _w._codegen[_i] : ((0 : GoUInt8))) : GoInt32)), ((7 : GoUInt)));
                        _i++;
                        break;
                        break;
                    };
                    break;
                };
            };
        };
    }
    @:keep
    public function _writeCode(_c:T_hcode):Void {
        var _w = __t__;
        _w;
        if (_w._err != null) {
            return;
        };
        _w._bits = _w._bits | (((_c._code : GoUInt64)) << _w._nbits);
        _w._nbits = _w._nbits + (((_c._len : GoUInt)));
        if (_w._nbits >= ((48 : GoUInt))) {
            var _bits:GoUInt64 = _w._bits;
            _w._bits = _w._bits >> (((48 : GoUnTypedInt)));
            _w._nbits = _w._nbits - (((48 : GoUInt)));
            var _n:GoInt = _w._nbytes;
            var _bytes:Slice<GoUInt8> = ((_w._bytes.__slice__(_n, _n + ((6 : GoInt))) : Slice<GoUInt8>));
            if (_bytes != null) _bytes[((0 : GoInt))] = ((_bits : GoByte));
            if (_bytes != null) _bytes[((1 : GoInt))] = (((_bits >> ((8 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((2 : GoInt))] = (((_bits >> ((16 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((3 : GoInt))] = (((_bits >> ((24 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((4 : GoInt))] = (((_bits >> ((32 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((5 : GoInt))] = (((_bits >> ((40 : GoUnTypedInt))) : GoByte));
            _n = _n + (((6 : GoInt)));
            if (_n >= ((240 : GoInt))) {
                _w._write(((_w._bytes.__slice__(0, _n) : Slice<GoUInt8>)));
                _n = ((0 : GoInt));
            };
            _w._nbytes = _n;
        };
    }
    @:keep
    public function _storedSize(_in:Slice<GoByte>):{ var _0 : GoInt; var _1 : Bool; } {
        var _w = __t__;
        _w;
        if (_in == null) {
            return { _0 : ((0 : GoInt)), _1 : false };
        };
        if ((_in != null ? _in.length : ((0 : GoInt))) <= ((65535 : GoInt))) {
            return { _0 : ((_in != null ? _in.length : ((0 : GoInt))) + ((5 : GoInt))) * ((8 : GoInt)), _1 : true };
        };
        return { _0 : ((0 : GoInt)), _1 : false };
    }
    @:keep
    public function _fixedSize(_extraBits:GoInt):GoInt {
        var _w = __t__;
        _w;
        return ((((3 : GoInt)) + _fixedLiteralEncoding._bitLength(_w._literalFreq)) + _fixedOffsetEncoding._bitLength(_w._offsetFreq)) + _extraBits;
    }
    @:keep
    public function _dynamicSize(_litEnc:T_huffmanEncoder, _offEnc:T_huffmanEncoder, _extraBits:GoInt):{ var _0 : GoInt; var _1 : GoInt; } {
        var _w = __t__;
        _w;
        var _size:GoInt = ((0 : GoInt)), _numCodegens:GoInt = ((0 : GoInt));
        _numCodegens = (_w._codegenFreq != null ? _w._codegenFreq.length : ((0 : GoInt)));
        while ((_numCodegens > ((4 : GoInt))) && ((_w._codegenFreq != null ? _w._codegenFreq[(_codegenOrder != null ? _codegenOrder[_numCodegens - ((1 : GoInt))] : ((0 : GoUInt32)))] : ((0 : GoInt32))) == ((0 : GoInt32)))) {
            _numCodegens--;
        };
        var _header:GoInt = ((((((17 : GoInt)) + (((3 : GoInt)) * _numCodegens)) + _w._codegenEncoding._bitLength(((_w._codegenFreq.__slice__(0) : Slice<GoInt32>)))) + ((((_w._codegenFreq != null ? _w._codegenFreq[((16 : GoInt))] : ((0 : GoInt32))) : GoInt)) * ((2 : GoInt)))) + ((((_w._codegenFreq != null ? _w._codegenFreq[((17 : GoInt))] : ((0 : GoInt32))) : GoInt)) * ((3 : GoInt)))) + ((((_w._codegenFreq != null ? _w._codegenFreq[((18 : GoInt))] : ((0 : GoInt32))) : GoInt)) * ((7 : GoInt)));
        _size = ((_header + _litEnc._bitLength(_w._literalFreq)) + _offEnc._bitLength(_w._offsetFreq)) + _extraBits;
        return { _0 : _size, _1 : _numCodegens };
    }
    @:keep
    public function _generateCodegen(_numLiterals:GoInt, _numOffsets:GoInt, _litEnc:T_huffmanEncoder, _offEnc:T_huffmanEncoder):Void {
        var _w = __t__;
        _w;
        for (_i => _ in _w._codegenFreq) {
            if (_w._codegenFreq != null) _w._codegenFreq[_i] = ((0 : GoInt32));
        };
        var _codegen:Slice<GoUInt8> = _w._codegen;
        var _cgnl:Slice<GoUInt8> = ((_codegen.__slice__(0, _numLiterals) : Slice<GoUInt8>));
        for (_i => _ in _cgnl) {
            if (_cgnl != null) _cgnl[_i] = (((_litEnc._codes != null ? _litEnc._codes[_i] : new T_hcode())._len : GoUInt8));
        };
        _cgnl = ((_codegen.__slice__(_numLiterals, _numLiterals + _numOffsets) : Slice<GoUInt8>));
        for (_i => _ in _cgnl) {
            if (_cgnl != null) _cgnl[_i] = (((_offEnc._codes != null ? _offEnc._codes[_i] : new T_hcode())._len : GoUInt8));
        };
        if (_codegen != null) _codegen[_numLiterals + _numOffsets] = ((255 : GoUInt8));
        var _size:GoUInt8 = (_codegen != null ? _codegen[((0 : GoInt))] : ((0 : GoUInt8)));
        var _count:GoInt = ((1 : GoInt));
        var _outIndex:GoInt = ((0 : GoInt));
        {
            var _inIndex:GoInt = ((1 : GoInt));
            Go.cfor(_size != ((255 : GoUInt8)), _inIndex++, {
                var _nextSize:GoUInt8 = (_codegen != null ? _codegen[_inIndex] : ((0 : GoUInt8)));
                if (_nextSize == _size) {
                    _count++;
                    continue;
                };
                if (_size != ((0 : GoUInt8))) {
                    if (_codegen != null) _codegen[_outIndex] = _size;
                    _outIndex++;
                    (_w._codegenFreq != null ? _w._codegenFreq[_size] : ((0 : GoInt32)))++;
                    _count--;
                    while (_count >= ((3 : GoInt))) {
                        var _n:GoInt = ((6 : GoInt));
                        if (_n > _count) {
                            _n = _count;
                        };
                        if (_codegen != null) _codegen[_outIndex] = ((16 : GoUInt8));
                        _outIndex++;
                        if (_codegen != null) _codegen[_outIndex] = (((_n - ((3 : GoInt))) : GoUInt8));
                        _outIndex++;
                        (_w._codegenFreq != null ? _w._codegenFreq[((16 : GoInt))] : ((0 : GoInt32)))++;
                        _count = _count - (_n);
                    };
                } else {
                    while (_count >= ((11 : GoInt))) {
                        var _n:GoInt = ((138 : GoInt));
                        if (_n > _count) {
                            _n = _count;
                        };
                        if (_codegen != null) _codegen[_outIndex] = ((18 : GoUInt8));
                        _outIndex++;
                        if (_codegen != null) _codegen[_outIndex] = (((_n - ((11 : GoInt))) : GoUInt8));
                        _outIndex++;
                        (_w._codegenFreq != null ? _w._codegenFreq[((18 : GoInt))] : ((0 : GoInt32)))++;
                        _count = _count - (_n);
                    };
                    if (_count >= ((3 : GoInt))) {
                        if (_codegen != null) _codegen[_outIndex] = ((17 : GoUInt8));
                        _outIndex++;
                        if (_codegen != null) _codegen[_outIndex] = (((_count - ((3 : GoInt))) : GoUInt8));
                        _outIndex++;
                        (_w._codegenFreq != null ? _w._codegenFreq[((17 : GoInt))] : ((0 : GoInt32)))++;
                        _count = ((0 : GoInt));
                    };
                };
                _count--;
                Go.cfor(_count >= ((0 : GoInt)), _count--, {
                    if (_codegen != null) _codegen[_outIndex] = _size;
                    _outIndex++;
                    (_w._codegenFreq != null ? _w._codegenFreq[_size] : ((0 : GoInt32)))++;
                });
                _size = _nextSize;
                _count = ((1 : GoInt));
            });
        };
        if (_codegen != null) _codegen[_outIndex] = ((255 : GoUInt8));
    }
    @:keep
    public function _writeBytes(_bytes:Slice<GoByte>):Void {
        var _w = __t__;
        _w;
        if (_w._err != null) {
            return;
        };
        var _n:GoInt = _w._nbytes;
        if ((_w._nbits & ((7 : GoUInt))) != ((0 : GoUInt))) {
            _w._err = new InternalError_wrapper(Go.pointer(((((("writeBytes with unfinished bits" : GoString))) : InternalError))));
            return;
        };
        while (_w._nbits != ((0 : GoUInt))) {
            if (_w._bytes != null) _w._bytes[_n] = ((_w._bits : GoByte));
            _w._bits = _w._bits >> (((8 : GoUnTypedInt)));
            _w._nbits = _w._nbits - (((8 : GoUInt)));
            _n++;
        };
        if (_n != ((0 : GoInt))) {
            _w._write(((_w._bytes.__slice__(0, _n) : Slice<GoUInt8>)));
        };
        _w._nbytes = ((0 : GoInt));
        _w._write(_bytes);
    }
    @:keep
    public function _writeBits(_b:GoInt32, _nb:GoUInt):Void {
        var _w = __t__;
        _w;
        if (_w._err != null) {
            return;
        };
        _w._bits = _w._bits | (((_b : GoUInt64)) << _w._nbits);
        _w._nbits = _w._nbits + (_nb);
        if (_w._nbits >= ((48 : GoUInt))) {
            var _bits:GoUInt64 = _w._bits;
            _w._bits = _w._bits >> (((48 : GoUnTypedInt)));
            _w._nbits = _w._nbits - (((48 : GoUInt)));
            var _n:GoInt = _w._nbytes;
            var _bytes:Slice<GoUInt8> = ((_w._bytes.__slice__(_n, _n + ((6 : GoInt))) : Slice<GoUInt8>));
            if (_bytes != null) _bytes[((0 : GoInt))] = ((_bits : GoByte));
            if (_bytes != null) _bytes[((1 : GoInt))] = (((_bits >> ((8 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((2 : GoInt))] = (((_bits >> ((16 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((3 : GoInt))] = (((_bits >> ((24 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((4 : GoInt))] = (((_bits >> ((32 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((5 : GoInt))] = (((_bits >> ((40 : GoUnTypedInt))) : GoByte));
            _n = _n + (((6 : GoInt)));
            if (_n >= ((240 : GoInt))) {
                _w._write(((_w._bytes.__slice__(0, _n) : Slice<GoUInt8>)));
                _n = ((0 : GoInt));
            };
            _w._nbytes = _n;
        };
    }
    @:keep
    public function _write(_b:Slice<GoByte>):Void {
        var _w = __t__;
        _w;
        if (_w._err != null) {
            return;
        };
        {
            var __tmp__ = _w._writer.write(_b);
            _w._err = __tmp__._1;
        };
    }
    @:keep
    public function _flush():Void {
        var _w = __t__;
        _w;
        if (_w._err != null) {
            _w._nbits = ((0 : GoUInt));
            return;
        };
        var _n:GoInt = _w._nbytes;
        while (_w._nbits != ((0 : GoUInt))) {
            if (_w._bytes != null) _w._bytes[_n] = ((_w._bits : GoByte));
            _w._bits = _w._bits >> (((8 : GoUnTypedInt)));
            if (_w._nbits > ((8 : GoUInt))) {
                _w._nbits = _w._nbits - (((8 : GoUInt)));
            } else {
                _w._nbits = ((0 : GoUInt));
            };
            _n++;
        };
        _w._bits = ((0 : GoUInt64));
        _w._write(((_w._bytes.__slice__(0, _n) : Slice<GoUInt8>)));
        _w._nbytes = ((0 : GoInt));
    }
    @:keep
    public function _reset(_writer:stdgo.io.Io.Writer):Void {
        var _w = __t__;
        _w;
        _w._writer = _writer;
        {
            final __tmp__0 = ((0 : GoUInt64));
            final __tmp__1 = ((0 : GoUInt));
            final __tmp__2 = ((0 : GoInt));
            final __tmp__3 = ((null : stdgo.Error));
            _w._bits = __tmp__0;
            _w._nbits = __tmp__1;
            _w._nbytes = __tmp__2;
            _w._err = __tmp__3;
        };
    }
    public var __t__ : T_huffmanBitWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_huffmanBitWriter_static_extension {
    @:keep
    public static function _writeBlockHuff(_w:Ref<T_huffmanBitWriter>, _eof:Bool, _input:Slice<GoByte>):Void {
        _w;
        if (_w._err != null) {
            return;
        };
        for (_i => _ in _w._literalFreq) {
            if (_w._literalFreq != null) _w._literalFreq[_i] = ((0 : GoInt32));
        };
        _histogram(_input, _w._literalFreq);
        if (_w._literalFreq != null) _w._literalFreq[((256 : GoInt))] = ((1 : GoInt32));
        {};
        if (_w._offsetFreq != null) _w._offsetFreq[((0 : GoInt))] = ((1 : GoInt32));
        {};
        _w._literalEncoding._generate(_w._literalFreq, ((15 : GoInt32)));
        var _numCodegens:GoInt = ((0 : GoInt));
        _w._generateCodegen(((257 : GoInt)), ((1 : GoInt)), _w._literalEncoding, _huffOffset);
        _w._codegenEncoding._generate(((_w._codegenFreq.__slice__(0) : Slice<GoInt32>)), ((7 : GoInt32)));
        var __tmp__ = _w._dynamicSize(_w._literalEncoding, _huffOffset, ((0 : GoInt))), _size:GoInt = __tmp__._0, _numCodegens:GoInt = __tmp__._1;
        {
            var __tmp__ = _w._storedSize(_input), _ssize:GoInt = __tmp__._0, _storable:Bool = __tmp__._1;
            if (_storable && (_ssize < (_size + (_size >> ((4 : GoUnTypedInt)))))) {
                _w._writeStoredHeader((_input != null ? _input.length : ((0 : GoInt))), _eof);
                _w._writeBytes(_input);
                return;
            };
        };
        _w._writeDynamicHeader(((257 : GoInt)), ((1 : GoInt)), _numCodegens, _eof);
        var _encoding:Slice<T_hcode> = ((_w._literalEncoding._codes.__slice__(0, ((257 : GoInt))) : Slice<T_hcode>));
        var _n:GoInt = _w._nbytes;
        for (_0 => _t in _input) {
            var _c:T_hcode = ((_encoding != null ? _encoding[_t] : new T_hcode()) == null ? null : (_encoding != null ? _encoding[_t] : new T_hcode()).__copy__());
            _w._bits = _w._bits | (((_c._code : GoUInt64)) << _w._nbits);
            _w._nbits = _w._nbits + (((_c._len : GoUInt)));
            if (_w._nbits < ((48 : GoUInt))) {
                continue;
            };
            var _bits:GoUInt64 = _w._bits;
            _w._bits = _w._bits >> (((48 : GoUnTypedInt)));
            _w._nbits = _w._nbits - (((48 : GoUInt)));
            var _bytes:Slice<GoUInt8> = ((_w._bytes.__slice__(_n, _n + ((6 : GoInt))) : Slice<GoUInt8>));
            if (_bytes != null) _bytes[((0 : GoInt))] = ((_bits : GoByte));
            if (_bytes != null) _bytes[((1 : GoInt))] = (((_bits >> ((8 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((2 : GoInt))] = (((_bits >> ((16 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((3 : GoInt))] = (((_bits >> ((24 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((4 : GoInt))] = (((_bits >> ((32 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((5 : GoInt))] = (((_bits >> ((40 : GoUnTypedInt))) : GoByte));
            _n = _n + (((6 : GoInt)));
            if (_n < ((240 : GoInt))) {
                continue;
            };
            _w._write(((_w._bytes.__slice__(0, _n) : Slice<GoUInt8>)));
            if (_w._err != null) {
                return;
            };
            _n = ((0 : GoInt));
        };
        _w._nbytes = _n;
        _w._writeCode(((_encoding != null ? _encoding[((256 : GoInt))] : new T_hcode()) == null ? null : (_encoding != null ? _encoding[((256 : GoInt))] : new T_hcode()).__copy__()));
    }
    @:keep
    public static function _writeTokens(_w:Ref<T_huffmanBitWriter>, _tokens:Slice<T_token>, _leCodes:Slice<T_hcode>, _oeCodes:Slice<T_hcode>):Void {
        _w;
        if (_w._err != null) {
            return;
        };
        for (_0 => _t in _tokens) {
            if (_t < ((1073741824 : GoUInt32))) {
                _w._writeCode(((_leCodes != null ? _leCodes[_t._literal()] : new T_hcode()) == null ? null : (_leCodes != null ? _leCodes[_t._literal()] : new T_hcode()).__copy__()));
                continue;
            };
            var _length:GoUInt32 = _t._length();
            var _lengthCode:GoUInt32 = _lengthCode(_length);
            _w._writeCode(((_leCodes != null ? _leCodes[_lengthCode + ((257 : GoUInt32))] : new T_hcode()) == null ? null : (_leCodes != null ? _leCodes[_lengthCode + ((257 : GoUInt32))] : new T_hcode()).__copy__()));
            var _extraLengthBits:GoUInt = (((_lengthExtraBits != null ? _lengthExtraBits[_lengthCode] : ((0 : GoInt8))) : GoUInt));
            if (_extraLengthBits > ((0 : GoUInt))) {
                var _extraLength:GoInt32 = (((_length - (_lengthBase != null ? _lengthBase[_lengthCode] : ((0 : GoUInt32)))) : GoInt32));
                _w._writeBits(_extraLength, _extraLengthBits);
            };
            var _offset:GoUInt32 = _t._offset();
            var _offsetCode:GoUInt32 = _offsetCode(_offset);
            _w._writeCode(((_oeCodes != null ? _oeCodes[_offsetCode] : new T_hcode()) == null ? null : (_oeCodes != null ? _oeCodes[_offsetCode] : new T_hcode()).__copy__()));
            var _extraOffsetBits:GoUInt = (((_offsetExtraBits != null ? _offsetExtraBits[_offsetCode] : ((0 : GoInt8))) : GoUInt));
            if (_extraOffsetBits > ((0 : GoUInt))) {
                var _extraOffset:GoInt32 = (((_offset - (_offsetBase != null ? _offsetBase[_offsetCode] : ((0 : GoUInt32)))) : GoInt32));
                _w._writeBits(_extraOffset, _extraOffsetBits);
            };
        };
    }
    @:keep
    public static function _indexTokens(_w:Ref<T_huffmanBitWriter>, _tokens:Slice<T_token>):{ var _0 : GoInt; var _1 : GoInt; } {
        _w;
        var _numLiterals:GoInt = ((0 : GoInt)), _numOffsets:GoInt = ((0 : GoInt));
        for (_i => _ in _w._literalFreq) {
            if (_w._literalFreq != null) _w._literalFreq[_i] = ((0 : GoInt32));
        };
        for (_i => _ in _w._offsetFreq) {
            if (_w._offsetFreq != null) _w._offsetFreq[_i] = ((0 : GoInt32));
        };
        for (_0 => _t in _tokens) {
            if (_t < ((1073741824 : GoUInt32))) {
                (_w._literalFreq != null ? _w._literalFreq[_t._literal()] : ((0 : GoInt32)))++;
                continue;
            };
            var _length:GoUInt32 = _t._length();
            var _offset:GoUInt32 = _t._offset();
            (_w._literalFreq != null ? _w._literalFreq[((257 : GoUInt32)) + _lengthCode(_length)] : ((0 : GoInt32)))++;
            (_w._offsetFreq != null ? _w._offsetFreq[_offsetCode(_offset)] : ((0 : GoInt32)))++;
        };
        _numLiterals = (_w._literalFreq != null ? _w._literalFreq.length : ((0 : GoInt)));
        while ((_w._literalFreq != null ? _w._literalFreq[_numLiterals - ((1 : GoInt))] : ((0 : GoInt32))) == ((0 : GoInt32))) {
            _numLiterals--;
        };
        _numOffsets = (_w._offsetFreq != null ? _w._offsetFreq.length : ((0 : GoInt)));
        while ((_numOffsets > ((0 : GoInt))) && ((_w._offsetFreq != null ? _w._offsetFreq[_numOffsets - ((1 : GoInt))] : ((0 : GoInt32))) == ((0 : GoInt32)))) {
            _numOffsets--;
        };
        if (_numOffsets == ((0 : GoInt))) {
            if (_w._offsetFreq != null) _w._offsetFreq[((0 : GoInt))] = ((1 : GoInt32));
            _numOffsets = ((1 : GoInt));
        };
        _w._literalEncoding._generate(_w._literalFreq, ((15 : GoInt32)));
        _w._offsetEncoding._generate(_w._offsetFreq, ((15 : GoInt32)));
        return { _0 : _numLiterals, _1 : _numOffsets };
    }
    @:keep
    public static function _writeBlockDynamic(_w:Ref<T_huffmanBitWriter>, _tokens:Slice<T_token>, _eof:Bool, _input:Slice<GoByte>):Void {
        _w;
        if (_w._err != null) {
            return;
        };
        _tokens = (_tokens != null ? _tokens.__append__(((256 : GoUInt32))) : new Slice<T_token>(((256 : GoUInt32))));
        var __tmp__ = _w._indexTokens(_tokens), _numLiterals:GoInt = __tmp__._0, _numOffsets:GoInt = __tmp__._1;
        _w._generateCodegen(_numLiterals, _numOffsets, _w._literalEncoding, _w._offsetEncoding);
        _w._codegenEncoding._generate(((_w._codegenFreq.__slice__(0) : Slice<GoInt32>)), ((7 : GoInt32)));
        var __tmp__ = _w._dynamicSize(_w._literalEncoding, _w._offsetEncoding, ((0 : GoInt))), _size:GoInt = __tmp__._0, _numCodegens:GoInt = __tmp__._1;
        {
            var __tmp__ = _w._storedSize(_input), _ssize:GoInt = __tmp__._0, _storable:Bool = __tmp__._1;
            if (_storable && (_ssize < (_size + (_size >> ((4 : GoUnTypedInt)))))) {
                _w._writeStoredHeader((_input != null ? _input.length : ((0 : GoInt))), _eof);
                _w._writeBytes(_input);
                return;
            };
        };
        _w._writeDynamicHeader(_numLiterals, _numOffsets, _numCodegens, _eof);
        _w._writeTokens(_tokens, _w._literalEncoding._codes, _w._offsetEncoding._codes);
    }
    @:keep
    public static function _writeBlock(_w:Ref<T_huffmanBitWriter>, _tokens:Slice<T_token>, _eof:Bool, _input:Slice<GoByte>):Void {
        _w;
        if (_w._err != null) {
            return;
        };
        _tokens = (_tokens != null ? _tokens.__append__(((256 : GoUInt32))) : new Slice<T_token>(((256 : GoUInt32))));
        var __tmp__ = _w._indexTokens(_tokens), _numLiterals:GoInt = __tmp__._0, _numOffsets:GoInt = __tmp__._1;
        var _extraBits:GoInt = ((0 : GoInt));
        var __tmp__ = _w._storedSize(_input), _storedSize:GoInt = __tmp__._0, _storable:Bool = __tmp__._1;
        if (_storable) {
            {
                var _lengthCode:GoInt = ((265 : GoInt));
                Go.cfor(_lengthCode < _numLiterals, _lengthCode++, {
                    _extraBits = _extraBits + ((((_w._literalFreq != null ? _w._literalFreq[_lengthCode] : ((0 : GoInt32))) : GoInt)) * (((_lengthExtraBits != null ? _lengthExtraBits[_lengthCode - ((257 : GoInt))] : ((0 : GoInt8))) : GoInt)));
                });
            };
            {
                var _offsetCode:GoInt = ((4 : GoInt));
                Go.cfor(_offsetCode < _numOffsets, _offsetCode++, {
                    _extraBits = _extraBits + ((((_w._offsetFreq != null ? _w._offsetFreq[_offsetCode] : ((0 : GoInt32))) : GoInt)) * (((_offsetExtraBits != null ? _offsetExtraBits[_offsetCode] : ((0 : GoInt8))) : GoInt)));
                });
            };
        };
        var _literalEncoding:Ref<T_huffmanEncoder> = _fixedLiteralEncoding;
        var _offsetEncoding:Ref<T_huffmanEncoder> = _fixedOffsetEncoding;
        var _size:GoInt = _w._fixedSize(_extraBits);
        var _numCodegens:GoInt = ((0 : GoInt));
        _w._generateCodegen(_numLiterals, _numOffsets, _w._literalEncoding, _w._offsetEncoding);
        _w._codegenEncoding._generate(((_w._codegenFreq.__slice__(0) : Slice<GoInt32>)), ((7 : GoInt32)));
        var __tmp__ = _w._dynamicSize(_w._literalEncoding, _w._offsetEncoding, _extraBits), _dynamicSize:GoInt = __tmp__._0, _numCodegens:GoInt = __tmp__._1;
        if (_dynamicSize < _size) {
            _size = _dynamicSize;
            _literalEncoding = _w._literalEncoding;
            _offsetEncoding = _w._offsetEncoding;
        };
        if (_storable && (_storedSize < _size)) {
            _w._writeStoredHeader((_input != null ? _input.length : ((0 : GoInt))), _eof);
            _w._writeBytes(_input);
            return;
        };
        if (_literalEncoding == _fixedLiteralEncoding) {
            _w._writeFixedHeader(_eof);
        } else {
            _w._writeDynamicHeader(_numLiterals, _numOffsets, _numCodegens, _eof);
        };
        _w._writeTokens(_tokens, _literalEncoding._codes, _offsetEncoding._codes);
    }
    @:keep
    public static function _writeFixedHeader(_w:Ref<T_huffmanBitWriter>, _isEof:Bool):Void {
        _w;
        if (_w._err != null) {
            return;
        };
        var _value:GoInt32 = ((2 : GoInt32));
        if (_isEof) {
            _value = ((3 : GoInt32));
        };
        _w._writeBits(_value, ((3 : GoUInt)));
    }
    @:keep
    public static function _writeStoredHeader(_w:Ref<T_huffmanBitWriter>, _length:GoInt, _isEof:Bool):Void {
        _w;
        if (_w._err != null) {
            return;
        };
        var _flag:GoInt32 = ((0 : GoInt32));
        if (_isEof) {
            _flag = ((1 : GoInt32));
        };
        _w._writeBits(_flag, ((3 : GoUInt)));
        _w._flush();
        _w._writeBits(((_length : GoInt32)), ((16 : GoUInt)));
        _w._writeBits((((-1 ^ ((_length : GoUInt16))) : GoInt32)), ((16 : GoUInt)));
    }
    @:keep
    public static function _writeDynamicHeader(_w:Ref<T_huffmanBitWriter>, _numLiterals:GoInt, _numOffsets:GoInt, _numCodegens:GoInt, _isEof:Bool):Void {
        _w;
        if (_w._err != null) {
            return;
        };
        var _firstBits:GoInt32 = ((4 : GoInt32));
        if (_isEof) {
            _firstBits = ((5 : GoInt32));
        };
        _w._writeBits(_firstBits, ((3 : GoUInt)));
        _w._writeBits((((_numLiterals - ((257 : GoInt))) : GoInt32)), ((5 : GoUInt)));
        _w._writeBits((((_numOffsets - ((1 : GoInt))) : GoInt32)), ((5 : GoUInt)));
        _w._writeBits((((_numCodegens - ((4 : GoInt))) : GoInt32)), ((4 : GoUInt)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _numCodegens, _i++, {
                var _value:GoUInt = (((_w._codegenEncoding._codes != null ? _w._codegenEncoding._codes[(_codegenOrder != null ? _codegenOrder[_i] : ((0 : GoUInt32)))] : new T_hcode())._len : GoUInt));
                _w._writeBits(((_value : GoInt32)), ((3 : GoUInt)));
            });
        };
        var _i:GoInt = ((0 : GoInt));
        while (true) {
            var _codeWord:GoInt = (((_w._codegen != null ? _w._codegen[_i] : ((0 : GoUInt8))) : GoInt));
            _i++;
            if (_codeWord == ((255 : GoInt))) {
                break;
            };
            _w._writeCode(((_w._codegenEncoding._codes != null ? _w._codegenEncoding._codes[((_codeWord : GoUInt32))] : new T_hcode()) == null ? null : (_w._codegenEncoding._codes != null ? _w._codegenEncoding._codes[((_codeWord : GoUInt32))] : new T_hcode()).__copy__()));
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (_codeWord == ((16 : GoInt))) {
                        _w._writeBits((((_w._codegen != null ? _w._codegen[_i] : ((0 : GoUInt8))) : GoInt32)), ((2 : GoUInt)));
                        _i++;
                        break;
                        break;
                    } else if (_codeWord == ((17 : GoInt))) {
                        _w._writeBits((((_w._codegen != null ? _w._codegen[_i] : ((0 : GoUInt8))) : GoInt32)), ((3 : GoUInt)));
                        _i++;
                        break;
                        break;
                    } else if (_codeWord == ((18 : GoInt))) {
                        _w._writeBits((((_w._codegen != null ? _w._codegen[_i] : ((0 : GoUInt8))) : GoInt32)), ((7 : GoUInt)));
                        _i++;
                        break;
                        break;
                    };
                    break;
                };
            };
        };
    }
    @:keep
    public static function _writeCode(_w:Ref<T_huffmanBitWriter>, _c:T_hcode):Void {
        _w;
        if (_w._err != null) {
            return;
        };
        _w._bits = _w._bits | (((_c._code : GoUInt64)) << _w._nbits);
        _w._nbits = _w._nbits + (((_c._len : GoUInt)));
        if (_w._nbits >= ((48 : GoUInt))) {
            var _bits:GoUInt64 = _w._bits;
            _w._bits = _w._bits >> (((48 : GoUnTypedInt)));
            _w._nbits = _w._nbits - (((48 : GoUInt)));
            var _n:GoInt = _w._nbytes;
            var _bytes:Slice<GoUInt8> = ((_w._bytes.__slice__(_n, _n + ((6 : GoInt))) : Slice<GoUInt8>));
            if (_bytes != null) _bytes[((0 : GoInt))] = ((_bits : GoByte));
            if (_bytes != null) _bytes[((1 : GoInt))] = (((_bits >> ((8 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((2 : GoInt))] = (((_bits >> ((16 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((3 : GoInt))] = (((_bits >> ((24 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((4 : GoInt))] = (((_bits >> ((32 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((5 : GoInt))] = (((_bits >> ((40 : GoUnTypedInt))) : GoByte));
            _n = _n + (((6 : GoInt)));
            if (_n >= ((240 : GoInt))) {
                _w._write(((_w._bytes.__slice__(0, _n) : Slice<GoUInt8>)));
                _n = ((0 : GoInt));
            };
            _w._nbytes = _n;
        };
    }
    @:keep
    public static function _storedSize(_w:Ref<T_huffmanBitWriter>, _in:Slice<GoByte>):{ var _0 : GoInt; var _1 : Bool; } {
        _w;
        if (_in == null) {
            return { _0 : ((0 : GoInt)), _1 : false };
        };
        if ((_in != null ? _in.length : ((0 : GoInt))) <= ((65535 : GoInt))) {
            return { _0 : ((_in != null ? _in.length : ((0 : GoInt))) + ((5 : GoInt))) * ((8 : GoInt)), _1 : true };
        };
        return { _0 : ((0 : GoInt)), _1 : false };
    }
    @:keep
    public static function _fixedSize(_w:Ref<T_huffmanBitWriter>, _extraBits:GoInt):GoInt {
        _w;
        return ((((3 : GoInt)) + _fixedLiteralEncoding._bitLength(_w._literalFreq)) + _fixedOffsetEncoding._bitLength(_w._offsetFreq)) + _extraBits;
    }
    @:keep
    public static function _dynamicSize(_w:Ref<T_huffmanBitWriter>, _litEnc:T_huffmanEncoder, _offEnc:T_huffmanEncoder, _extraBits:GoInt):{ var _0 : GoInt; var _1 : GoInt; } {
        _w;
        var _size:GoInt = ((0 : GoInt)), _numCodegens:GoInt = ((0 : GoInt));
        _numCodegens = (_w._codegenFreq != null ? _w._codegenFreq.length : ((0 : GoInt)));
        while ((_numCodegens > ((4 : GoInt))) && ((_w._codegenFreq != null ? _w._codegenFreq[(_codegenOrder != null ? _codegenOrder[_numCodegens - ((1 : GoInt))] : ((0 : GoUInt32)))] : ((0 : GoInt32))) == ((0 : GoInt32)))) {
            _numCodegens--;
        };
        var _header:GoInt = ((((((17 : GoInt)) + (((3 : GoInt)) * _numCodegens)) + _w._codegenEncoding._bitLength(((_w._codegenFreq.__slice__(0) : Slice<GoInt32>)))) + ((((_w._codegenFreq != null ? _w._codegenFreq[((16 : GoInt))] : ((0 : GoInt32))) : GoInt)) * ((2 : GoInt)))) + ((((_w._codegenFreq != null ? _w._codegenFreq[((17 : GoInt))] : ((0 : GoInt32))) : GoInt)) * ((3 : GoInt)))) + ((((_w._codegenFreq != null ? _w._codegenFreq[((18 : GoInt))] : ((0 : GoInt32))) : GoInt)) * ((7 : GoInt)));
        _size = ((_header + _litEnc._bitLength(_w._literalFreq)) + _offEnc._bitLength(_w._offsetFreq)) + _extraBits;
        return { _0 : _size, _1 : _numCodegens };
    }
    @:keep
    public static function _generateCodegen(_w:Ref<T_huffmanBitWriter>, _numLiterals:GoInt, _numOffsets:GoInt, _litEnc:T_huffmanEncoder, _offEnc:T_huffmanEncoder):Void {
        _w;
        for (_i => _ in _w._codegenFreq) {
            if (_w._codegenFreq != null) _w._codegenFreq[_i] = ((0 : GoInt32));
        };
        var _codegen:Slice<GoUInt8> = _w._codegen;
        var _cgnl:Slice<GoUInt8> = ((_codegen.__slice__(0, _numLiterals) : Slice<GoUInt8>));
        for (_i => _ in _cgnl) {
            if (_cgnl != null) _cgnl[_i] = (((_litEnc._codes != null ? _litEnc._codes[_i] : new T_hcode())._len : GoUInt8));
        };
        _cgnl = ((_codegen.__slice__(_numLiterals, _numLiterals + _numOffsets) : Slice<GoUInt8>));
        for (_i => _ in _cgnl) {
            if (_cgnl != null) _cgnl[_i] = (((_offEnc._codes != null ? _offEnc._codes[_i] : new T_hcode())._len : GoUInt8));
        };
        if (_codegen != null) _codegen[_numLiterals + _numOffsets] = ((255 : GoUInt8));
        var _size:GoUInt8 = (_codegen != null ? _codegen[((0 : GoInt))] : ((0 : GoUInt8)));
        var _count:GoInt = ((1 : GoInt));
        var _outIndex:GoInt = ((0 : GoInt));
        {
            var _inIndex:GoInt = ((1 : GoInt));
            Go.cfor(_size != ((255 : GoUInt8)), _inIndex++, {
                var _nextSize:GoUInt8 = (_codegen != null ? _codegen[_inIndex] : ((0 : GoUInt8)));
                if (_nextSize == _size) {
                    _count++;
                    continue;
                };
                if (_size != ((0 : GoUInt8))) {
                    if (_codegen != null) _codegen[_outIndex] = _size;
                    _outIndex++;
                    (_w._codegenFreq != null ? _w._codegenFreq[_size] : ((0 : GoInt32)))++;
                    _count--;
                    while (_count >= ((3 : GoInt))) {
                        var _n:GoInt = ((6 : GoInt));
                        if (_n > _count) {
                            _n = _count;
                        };
                        if (_codegen != null) _codegen[_outIndex] = ((16 : GoUInt8));
                        _outIndex++;
                        if (_codegen != null) _codegen[_outIndex] = (((_n - ((3 : GoInt))) : GoUInt8));
                        _outIndex++;
                        (_w._codegenFreq != null ? _w._codegenFreq[((16 : GoInt))] : ((0 : GoInt32)))++;
                        _count = _count - (_n);
                    };
                } else {
                    while (_count >= ((11 : GoInt))) {
                        var _n:GoInt = ((138 : GoInt));
                        if (_n > _count) {
                            _n = _count;
                        };
                        if (_codegen != null) _codegen[_outIndex] = ((18 : GoUInt8));
                        _outIndex++;
                        if (_codegen != null) _codegen[_outIndex] = (((_n - ((11 : GoInt))) : GoUInt8));
                        _outIndex++;
                        (_w._codegenFreq != null ? _w._codegenFreq[((18 : GoInt))] : ((0 : GoInt32)))++;
                        _count = _count - (_n);
                    };
                    if (_count >= ((3 : GoInt))) {
                        if (_codegen != null) _codegen[_outIndex] = ((17 : GoUInt8));
                        _outIndex++;
                        if (_codegen != null) _codegen[_outIndex] = (((_count - ((3 : GoInt))) : GoUInt8));
                        _outIndex++;
                        (_w._codegenFreq != null ? _w._codegenFreq[((17 : GoInt))] : ((0 : GoInt32)))++;
                        _count = ((0 : GoInt));
                    };
                };
                _count--;
                Go.cfor(_count >= ((0 : GoInt)), _count--, {
                    if (_codegen != null) _codegen[_outIndex] = _size;
                    _outIndex++;
                    (_w._codegenFreq != null ? _w._codegenFreq[_size] : ((0 : GoInt32)))++;
                });
                _size = _nextSize;
                _count = ((1 : GoInt));
            });
        };
        if (_codegen != null) _codegen[_outIndex] = ((255 : GoUInt8));
    }
    @:keep
    public static function _writeBytes(_w:Ref<T_huffmanBitWriter>, _bytes:Slice<GoByte>):Void {
        _w;
        if (_w._err != null) {
            return;
        };
        var _n:GoInt = _w._nbytes;
        if ((_w._nbits & ((7 : GoUInt))) != ((0 : GoUInt))) {
            _w._err = new InternalError_wrapper(Go.pointer(((((("writeBytes with unfinished bits" : GoString))) : InternalError))));
            return;
        };
        while (_w._nbits != ((0 : GoUInt))) {
            if (_w._bytes != null) _w._bytes[_n] = ((_w._bits : GoByte));
            _w._bits = _w._bits >> (((8 : GoUnTypedInt)));
            _w._nbits = _w._nbits - (((8 : GoUInt)));
            _n++;
        };
        if (_n != ((0 : GoInt))) {
            _w._write(((_w._bytes.__slice__(0, _n) : Slice<GoUInt8>)));
        };
        _w._nbytes = ((0 : GoInt));
        _w._write(_bytes);
    }
    @:keep
    public static function _writeBits(_w:Ref<T_huffmanBitWriter>, _b:GoInt32, _nb:GoUInt):Void {
        _w;
        if (_w._err != null) {
            return;
        };
        _w._bits = _w._bits | (((_b : GoUInt64)) << _w._nbits);
        _w._nbits = _w._nbits + (_nb);
        if (_w._nbits >= ((48 : GoUInt))) {
            var _bits:GoUInt64 = _w._bits;
            _w._bits = _w._bits >> (((48 : GoUnTypedInt)));
            _w._nbits = _w._nbits - (((48 : GoUInt)));
            var _n:GoInt = _w._nbytes;
            var _bytes:Slice<GoUInt8> = ((_w._bytes.__slice__(_n, _n + ((6 : GoInt))) : Slice<GoUInt8>));
            if (_bytes != null) _bytes[((0 : GoInt))] = ((_bits : GoByte));
            if (_bytes != null) _bytes[((1 : GoInt))] = (((_bits >> ((8 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((2 : GoInt))] = (((_bits >> ((16 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((3 : GoInt))] = (((_bits >> ((24 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((4 : GoInt))] = (((_bits >> ((32 : GoUnTypedInt))) : GoByte));
            if (_bytes != null) _bytes[((5 : GoInt))] = (((_bits >> ((40 : GoUnTypedInt))) : GoByte));
            _n = _n + (((6 : GoInt)));
            if (_n >= ((240 : GoInt))) {
                _w._write(((_w._bytes.__slice__(0, _n) : Slice<GoUInt8>)));
                _n = ((0 : GoInt));
            };
            _w._nbytes = _n;
        };
    }
    @:keep
    public static function _write(_w:Ref<T_huffmanBitWriter>, _b:Slice<GoByte>):Void {
        _w;
        if (_w._err != null) {
            return;
        };
        {
            var __tmp__ = _w._writer.write(_b);
            _w._err = __tmp__._1;
        };
    }
    @:keep
    public static function _flush(_w:Ref<T_huffmanBitWriter>):Void {
        _w;
        if (_w._err != null) {
            _w._nbits = ((0 : GoUInt));
            return;
        };
        var _n:GoInt = _w._nbytes;
        while (_w._nbits != ((0 : GoUInt))) {
            if (_w._bytes != null) _w._bytes[_n] = ((_w._bits : GoByte));
            _w._bits = _w._bits >> (((8 : GoUnTypedInt)));
            if (_w._nbits > ((8 : GoUInt))) {
                _w._nbits = _w._nbits - (((8 : GoUInt)));
            } else {
                _w._nbits = ((0 : GoUInt));
            };
            _n++;
        };
        _w._bits = ((0 : GoUInt64));
        _w._write(((_w._bytes.__slice__(0, _n) : Slice<GoUInt8>)));
        _w._nbytes = ((0 : GoInt));
    }
    @:keep
    public static function _reset(_w:Ref<T_huffmanBitWriter>, _writer:stdgo.io.Io.Writer):Void {
        _w;
        _w._writer = _writer;
        {
            final __tmp__0 = ((0 : GoUInt64));
            final __tmp__1 = ((0 : GoUInt));
            final __tmp__2 = ((0 : GoInt));
            final __tmp__3 = ((null : stdgo.Error));
            _w._bits = __tmp__0;
            _w._nbits = __tmp__1;
            _w._nbytes = __tmp__2;
            _w._err = __tmp__3;
        };
    }
}
class T_huffTest_wrapper {
    public var __t__ : T_huffTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_hcode_wrapper {
    @:keep
    public function _set(_code:GoUInt16, _length:GoUInt16):Void {
        var _h = __t__;
        _h;
        _h._len = _length;
        _h._code = _code;
    }
    public var __t__ : T_hcode;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_hcode_static_extension {
    @:keep
    public static function _set(_h:Ref<T_hcode>, _code:GoUInt16, _length:GoUInt16):Void {
        _h;
        _h._len = _length;
        _h._code = _code;
    }
}
class T_huffmanEncoder_wrapper {
    @:keep
    public function _generate(_freq:Slice<GoInt32>, _maxBits:GoInt32):Void {
        var _h = __t__;
        _h;
        if (_h._freqcache == null) {
            _h._freqcache = new Slice<T_literalNode>(...[for (i in 0 ... ((((287 : GoInt)) : GoInt)).toBasic()) new T_literalNode()]);
        };
        var _list:Slice<T_literalNode> = ((_h._freqcache.__slice__(0, (_freq != null ? _freq.length : ((0 : GoInt))) + ((1 : GoInt))) : Slice<T_literalNode>));
        var _count:GoInt = ((0 : GoInt));
        for (_i => _f in _freq) {
            if (_f != ((0 : GoInt32))) {
                if (_list != null) _list[_count] = ((new T_literalNode(((_i : GoUInt16)), _f) : T_literalNode));
                _count++;
            } else {
                if (_list != null) _list[_count] = ((new T_literalNode() : T_literalNode));
                (_h._codes != null ? _h._codes[_i] : new T_hcode())._len = ((0 : GoUInt16));
            };
        };
        if (_list != null) _list[(_freq != null ? _freq.length : ((0 : GoInt)))] = ((new T_literalNode() : T_literalNode));
        _list = ((_list.__slice__(0, _count) : Slice<T_literalNode>));
        if (_count <= ((2 : GoInt))) {
            for (_i => _node in _list) {
                (_h._codes != null ? _h._codes[_node._literal] : new T_hcode())._set(((_i : GoUInt16)), ((1 : GoUInt16)));
            };
            return;
        };
        _h._lfs._sort(_list);
        var _bitCount:Slice<GoInt32> = _h._bitCounts(_list, _maxBits);
        _h._assignEncodingAndSize(_bitCount, _list);
    }
    @:keep
    public function _assignEncodingAndSize(_bitCount:Slice<GoInt32>, _list:Slice<T_literalNode>):Void {
        var _h = __t__;
        _h;
        var _code:GoUInt16 = ((((0 : GoUInt16)) : GoUInt16));
        for (_n => stdgo.math.bits.Bits in _bitCount) {
            _code = _code << (((1 : GoUnTypedInt)));
            if ((_n == ((0 : GoInt))) || (stdgo.math.bits.Bits == ((0 : GoInt32)))) {
                continue;
            };
            var _chunk:Slice<T_literalNode> = ((_list.__slice__((_list != null ? _list.length : ((0 : GoInt))) - ((stdgo.math.bits.Bits : GoInt))) : Slice<T_literalNode>));
            _h._lns._sort(_chunk);
            for (_0 => _node in _chunk) {
                if (_h._codes != null) _h._codes[_node._literal] = ((({ _code : _reverseBits(_code, ((_n : GoUInt8))), _len : ((_n : GoUInt16)) } : T_hcode)) == null ? null : (({ _code : _reverseBits(_code, ((_n : GoUInt8))), _len : ((_n : GoUInt16)) } : T_hcode)).__copy__());
                _code++;
            };
            _list = ((_list.__slice__(((0 : GoInt)), _len(_list) - ((stdgo.math.bits.Bits : GoInt))) : Slice<T_literalNode>));
        };
    }
    @:keep
    public function _bitCounts(_list:Slice<T_literalNode>, _maxBits:GoInt32):Slice<GoInt32> {
        var _h = __t__;
        _h;
        if (_maxBits >= ((16 : GoInt32))) {
            throw Go.toInterface(((("flate: maxBits too large" : GoString))));
        };
        var _n:GoInt32 = (((_list != null ? _list.length : ((0 : GoInt))) : GoInt32));
        _list = ((_list.__slice__(((0 : GoInt)), _n + ((1 : GoInt32))) : Slice<T_literalNode>));
        if (_list != null) _list[_n] = (_maxNode() == null ? null : _maxNode().__copy__());
        if (_maxBits > (_n - ((1 : GoInt32)))) {
            _maxBits = _n - ((1 : GoInt32));
        };
        var _levels:GoArray<T_levelInfo> = new GoArray<T_levelInfo>(...[for (i in 0 ... 16) new T_levelInfo()]);
        var _leafCounts:GoArray<GoArray<GoInt32>> = new GoArray<GoArray<GoInt32>>(...[for (i in 0 ... 16) new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])]);
        {
            var _level:GoInt32 = ((((1 : GoInt32)) : GoInt32));
            Go.cfor(_level <= _maxBits, _level++, {
                if (_levels != null) _levels[_level] = ((({ _level : _level, _lastFreq : (_list != null ? _list[((1 : GoInt))] : new T_literalNode())._freq, _nextCharFreq : (_list != null ? _list[((2 : GoInt))] : new T_literalNode())._freq, _nextPairFreq : (_list != null ? _list[((0 : GoInt))] : new T_literalNode())._freq + (_list != null ? _list[((1 : GoInt))] : new T_literalNode())._freq, _needed : 0 } : T_levelInfo)) == null ? null : (({ _level : _level, _lastFreq : (_list != null ? _list[((1 : GoInt))] : new T_literalNode())._freq, _nextCharFreq : (_list != null ? _list[((2 : GoInt))] : new T_literalNode())._freq, _nextPairFreq : (_list != null ? _list[((0 : GoInt))] : new T_literalNode())._freq + (_list != null ? _list[((1 : GoInt))] : new T_literalNode())._freq, _needed : 0 } : T_levelInfo)).__copy__());
                if ((_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])) != null) (_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]))[_level] = ((2 : GoInt32));
                if (_level == ((1 : GoInt32))) {
                    (_levels != null ? _levels[_level] : new T_levelInfo())._nextPairFreq = ((2147483647 : GoInt32));
                };
            });
        };
        (_levels != null ? _levels[_maxBits] : new T_levelInfo())._needed = (((2 : GoInt32)) * _n) - ((4 : GoInt32));
        var _level:GoInt32 = _maxBits;
        while (true) {
            var _l:Ref<T_levelInfo> = (_levels != null ? _levels[_level] : new T_levelInfo());
            if ((_l._nextPairFreq == ((2147483647 : GoInt32))) && (_l._nextCharFreq == ((2147483647 : GoInt32)))) {
                _l._needed = ((0 : GoInt32));
                (_levels != null ? _levels[_level + ((1 : GoInt32))] : new T_levelInfo())._nextPairFreq = ((2147483647 : GoInt32));
                _level++;
                continue;
            };
            var _prevFreq:GoInt32 = _l._lastFreq;
            if (_l._nextCharFreq < _l._nextPairFreq) {
                var _n:GoInt32 = ((_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])) != null ? (_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]))[_level] : ((0 : GoInt32))) + ((1 : GoInt32));
                _l._lastFreq = _l._nextCharFreq;
                if ((_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])) != null) (_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]))[_level] = _n;
                _l._nextCharFreq = (_list != null ? _list[_n] : new T_literalNode())._freq;
            } else {
                _l._lastFreq = _l._nextPairFreq;
                Go.copySlice((((_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])).__slice__(0, _level) : Slice<GoInt32>)), (((_leafCounts != null ? _leafCounts[_level - ((1 : GoInt32))] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])).__slice__(0, _level) : Slice<GoInt32>)));
                (_levels != null ? _levels[_l._level - ((1 : GoInt32))] : new T_levelInfo())._needed = ((2 : GoInt32));
            };
            {
                _l._needed--;
                if (_l._needed == ((0 : GoInt32))) {
                    if (_l._level == _maxBits) {
                        break;
                    };
                    (_levels != null ? _levels[_l._level + ((1 : GoInt32))] : new T_levelInfo())._nextPairFreq = _prevFreq + _l._lastFreq;
                    _level++;
                } else {
                    while ((_levels != null ? _levels[_level - ((1 : GoInt32))] : new T_levelInfo())._needed > ((0 : GoInt32))) {
                        _level--;
                    };
                };
            };
        };
        if (((_leafCounts != null ? _leafCounts[_maxBits] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])) != null ? (_leafCounts != null ? _leafCounts[_maxBits] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]))[_maxBits] : ((0 : GoInt32))) != _n) {
            throw Go.toInterface(((("leafCounts[maxBits][maxBits] != n" : GoString))));
        };
        var _bitCount:Slice<GoInt32> = ((_h._bitCount.__slice__(0, _maxBits + ((1 : GoInt32))) : Slice<GoInt32>));
        var _bits:GoInt = ((1 : GoInt));
        var _counts:Ref<GoArray<GoInt32>> = (_leafCounts != null ? _leafCounts[_maxBits] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]));
        {
            var _level:GoInt32 = _maxBits;
            Go.cfor(_level > ((0 : GoInt32)), _level--, {
                if (_bitCount != null) _bitCount[_bits] = (_counts != null ? _counts[_level] : ((0 : GoInt32))) - (_counts != null ? _counts[_level - ((1 : GoInt32))] : ((0 : GoInt32)));
                _bits++;
            });
        };
        return _bitCount;
    }
    @:keep
    public function _bitLength(_freq:Slice<GoInt32>):GoInt {
        var _h = __t__;
        _h;
        var _total:GoInt = ((0 : GoInt));
        for (_i => _f in _freq) {
            if (_f != ((0 : GoInt32))) {
                _total = _total + (((_f : GoInt)) * (((_h._codes != null ? _h._codes[_i] : new T_hcode())._len : GoInt)));
            };
        };
        return _total;
    }
    public var __t__ : T_huffmanEncoder;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_huffmanEncoder_static_extension {
    @:keep
    public static function _generate(_h:Ref<T_huffmanEncoder>, _freq:Slice<GoInt32>, _maxBits:GoInt32):Void {
        _h;
        if (_h._freqcache == null) {
            _h._freqcache = new Slice<T_literalNode>(...[for (i in 0 ... ((((287 : GoInt)) : GoInt)).toBasic()) new T_literalNode()]);
        };
        var _list:Slice<T_literalNode> = ((_h._freqcache.__slice__(0, (_freq != null ? _freq.length : ((0 : GoInt))) + ((1 : GoInt))) : Slice<T_literalNode>));
        var _count:GoInt = ((0 : GoInt));
        for (_i => _f in _freq) {
            if (_f != ((0 : GoInt32))) {
                if (_list != null) _list[_count] = ((new T_literalNode(((_i : GoUInt16)), _f) : T_literalNode));
                _count++;
            } else {
                if (_list != null) _list[_count] = ((new T_literalNode() : T_literalNode));
                (_h._codes != null ? _h._codes[_i] : new T_hcode())._len = ((0 : GoUInt16));
            };
        };
        if (_list != null) _list[(_freq != null ? _freq.length : ((0 : GoInt)))] = ((new T_literalNode() : T_literalNode));
        _list = ((_list.__slice__(0, _count) : Slice<T_literalNode>));
        if (_count <= ((2 : GoInt))) {
            for (_i => _node in _list) {
                (_h._codes != null ? _h._codes[_node._literal] : new T_hcode())._set(((_i : GoUInt16)), ((1 : GoUInt16)));
            };
            return;
        };
        _h._lfs._sort(_list);
        var _bitCount:Slice<GoInt32> = _h._bitCounts(_list, _maxBits);
        _h._assignEncodingAndSize(_bitCount, _list);
    }
    @:keep
    public static function _assignEncodingAndSize(_h:Ref<T_huffmanEncoder>, _bitCount:Slice<GoInt32>, _list:Slice<T_literalNode>):Void {
        _h;
        var _code:GoUInt16 = ((((0 : GoUInt16)) : GoUInt16));
        for (_n => stdgo.math.bits.Bits in _bitCount) {
            _code = _code << (((1 : GoUnTypedInt)));
            if ((_n == ((0 : GoInt))) || (stdgo.math.bits.Bits == ((0 : GoInt32)))) {
                continue;
            };
            var _chunk:Slice<T_literalNode> = ((_list.__slice__((_list != null ? _list.length : ((0 : GoInt))) - ((stdgo.math.bits.Bits : GoInt))) : Slice<T_literalNode>));
            _h._lns._sort(_chunk);
            for (_0 => _node in _chunk) {
                if (_h._codes != null) _h._codes[_node._literal] = ((({ _code : _reverseBits(_code, ((_n : GoUInt8))), _len : ((_n : GoUInt16)) } : T_hcode)) == null ? null : (({ _code : _reverseBits(_code, ((_n : GoUInt8))), _len : ((_n : GoUInt16)) } : T_hcode)).__copy__());
                _code++;
            };
            _list = ((_list.__slice__(((0 : GoInt)), _len(_list) - ((stdgo.math.bits.Bits : GoInt))) : Slice<T_literalNode>));
        };
    }
    @:keep
    public static function _bitCounts(_h:Ref<T_huffmanEncoder>, _list:Slice<T_literalNode>, _maxBits:GoInt32):Slice<GoInt32> {
        _h;
        if (_maxBits >= ((16 : GoInt32))) {
            throw Go.toInterface(((("flate: maxBits too large" : GoString))));
        };
        var _n:GoInt32 = (((_list != null ? _list.length : ((0 : GoInt))) : GoInt32));
        _list = ((_list.__slice__(((0 : GoInt)), _n + ((1 : GoInt32))) : Slice<T_literalNode>));
        if (_list != null) _list[_n] = (_maxNode() == null ? null : _maxNode().__copy__());
        if (_maxBits > (_n - ((1 : GoInt32)))) {
            _maxBits = _n - ((1 : GoInt32));
        };
        var _levels:GoArray<T_levelInfo> = new GoArray<T_levelInfo>(...[for (i in 0 ... 16) new T_levelInfo()]);
        var _leafCounts:GoArray<GoArray<GoInt32>> = new GoArray<GoArray<GoInt32>>(...[for (i in 0 ... 16) new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])]);
        {
            var _level:GoInt32 = ((((1 : GoInt32)) : GoInt32));
            Go.cfor(_level <= _maxBits, _level++, {
                if (_levels != null) _levels[_level] = ((({ _level : _level, _lastFreq : (_list != null ? _list[((1 : GoInt))] : new T_literalNode())._freq, _nextCharFreq : (_list != null ? _list[((2 : GoInt))] : new T_literalNode())._freq, _nextPairFreq : (_list != null ? _list[((0 : GoInt))] : new T_literalNode())._freq + (_list != null ? _list[((1 : GoInt))] : new T_literalNode())._freq, _needed : 0 } : T_levelInfo)) == null ? null : (({ _level : _level, _lastFreq : (_list != null ? _list[((1 : GoInt))] : new T_literalNode())._freq, _nextCharFreq : (_list != null ? _list[((2 : GoInt))] : new T_literalNode())._freq, _nextPairFreq : (_list != null ? _list[((0 : GoInt))] : new T_literalNode())._freq + (_list != null ? _list[((1 : GoInt))] : new T_literalNode())._freq, _needed : 0 } : T_levelInfo)).__copy__());
                if ((_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])) != null) (_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]))[_level] = ((2 : GoInt32));
                if (_level == ((1 : GoInt32))) {
                    (_levels != null ? _levels[_level] : new T_levelInfo())._nextPairFreq = ((2147483647 : GoInt32));
                };
            });
        };
        (_levels != null ? _levels[_maxBits] : new T_levelInfo())._needed = (((2 : GoInt32)) * _n) - ((4 : GoInt32));
        var _level:GoInt32 = _maxBits;
        while (true) {
            var _l:Ref<T_levelInfo> = (_levels != null ? _levels[_level] : new T_levelInfo());
            if ((_l._nextPairFreq == ((2147483647 : GoInt32))) && (_l._nextCharFreq == ((2147483647 : GoInt32)))) {
                _l._needed = ((0 : GoInt32));
                (_levels != null ? _levels[_level + ((1 : GoInt32))] : new T_levelInfo())._nextPairFreq = ((2147483647 : GoInt32));
                _level++;
                continue;
            };
            var _prevFreq:GoInt32 = _l._lastFreq;
            if (_l._nextCharFreq < _l._nextPairFreq) {
                var _n:GoInt32 = ((_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])) != null ? (_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]))[_level] : ((0 : GoInt32))) + ((1 : GoInt32));
                _l._lastFreq = _l._nextCharFreq;
                if ((_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])) != null) (_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]))[_level] = _n;
                _l._nextCharFreq = (_list != null ? _list[_n] : new T_literalNode())._freq;
            } else {
                _l._lastFreq = _l._nextPairFreq;
                Go.copySlice((((_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])).__slice__(0, _level) : Slice<GoInt32>)), (((_leafCounts != null ? _leafCounts[_level - ((1 : GoInt32))] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])).__slice__(0, _level) : Slice<GoInt32>)));
                (_levels != null ? _levels[_l._level - ((1 : GoInt32))] : new T_levelInfo())._needed = ((2 : GoInt32));
            };
            {
                _l._needed--;
                if (_l._needed == ((0 : GoInt32))) {
                    if (_l._level == _maxBits) {
                        break;
                    };
                    (_levels != null ? _levels[_l._level + ((1 : GoInt32))] : new T_levelInfo())._nextPairFreq = _prevFreq + _l._lastFreq;
                    _level++;
                } else {
                    while ((_levels != null ? _levels[_level - ((1 : GoInt32))] : new T_levelInfo())._needed > ((0 : GoInt32))) {
                        _level--;
                    };
                };
            };
        };
        if (((_leafCounts != null ? _leafCounts[_maxBits] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])) != null ? (_leafCounts != null ? _leafCounts[_maxBits] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]))[_maxBits] : ((0 : GoInt32))) != _n) {
            throw Go.toInterface(((("leafCounts[maxBits][maxBits] != n" : GoString))));
        };
        var _bitCount:Slice<GoInt32> = ((_h._bitCount.__slice__(0, _maxBits + ((1 : GoInt32))) : Slice<GoInt32>));
        var _bits:GoInt = ((1 : GoInt));
        var _counts:Ref<GoArray<GoInt32>> = (_leafCounts != null ? _leafCounts[_maxBits] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]));
        {
            var _level:GoInt32 = _maxBits;
            Go.cfor(_level > ((0 : GoInt32)), _level--, {
                if (_bitCount != null) _bitCount[_bits] = (_counts != null ? _counts[_level] : ((0 : GoInt32))) - (_counts != null ? _counts[_level - ((1 : GoInt32))] : ((0 : GoInt32)));
                _bits++;
            });
        };
        return _bitCount;
    }
    @:keep
    public static function _bitLength(_h:Ref<T_huffmanEncoder>, _freq:Slice<GoInt32>):GoInt {
        _h;
        var _total:GoInt = ((0 : GoInt));
        for (_i => _f in _freq) {
            if (_f != ((0 : GoInt32))) {
                _total = _total + (((_f : GoInt)) * (((_h._codes != null ? _h._codes[_i] : new T_hcode())._len : GoInt)));
            };
        };
        return _total;
    }
}
class T_literalNode_wrapper {
    public var __t__ : T_literalNode;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_levelInfo_wrapper {
    public var __t__ : T_levelInfo;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class ReadError_wrapper {
    @:keep
    public function error():GoString {
        var _e = __t__;
        _e;
        return ((((("flate: read error at offset " : GoString))) + stdgo.strconv.Strconv.formatInt(_e.offset, ((10 : GoInt)))) + (((": " : GoString)))) + _e.err.error();
    }
    public var __t__ : ReadError;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class ReadError_static_extension {
    @:keep
    public static function error(_e:Ref<ReadError>):GoString {
        _e;
        return ((((("flate: read error at offset " : GoString))) + stdgo.strconv.Strconv.formatInt(_e.offset, ((10 : GoInt)))) + (((": " : GoString)))) + _e.err.error();
    }
}
class WriteError_wrapper {
    @:keep
    public function error():GoString {
        var _e = __t__;
        _e;
        return ((((("flate: write error at offset " : GoString))) + stdgo.strconv.Strconv.formatInt(_e.offset, ((10 : GoInt)))) + (((": " : GoString)))) + _e.err.error();
    }
    public var __t__ : WriteError;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class WriteError_static_extension {
    @:keep
    public static function error(_e:Ref<WriteError>):GoString {
        _e;
        return ((((("flate: write error at offset " : GoString))) + stdgo.strconv.Strconv.formatInt(_e.offset, ((10 : GoInt)))) + (((": " : GoString)))) + _e.err.error();
    }
}
class T_huffmanDecoder_wrapper {
    @:keep
    public function _init(_lengths:Slice<GoInt>):Bool {
        var _h = __t__;
        _h;
        {};
        if (_h._min != ((0 : GoInt))) {
            {
                var __tmp__ = ((new T_huffmanDecoder() : T_huffmanDecoder));
                _h._min = __tmp__._min;
                _h._chunks = __tmp__._chunks;
                _h._links = __tmp__._links;
                _h._linkMask = __tmp__._linkMask;
            };
        };
        var _count:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 16) ((0 : GoInt))]);
        var _min:GoInt = ((0 : GoInt)), _max:GoInt = ((0 : GoInt));
        for (_0 => _n in _lengths) {
            if (_n == ((0 : GoInt))) {
                continue;
            };
            if ((_min == ((0 : GoInt))) || (_n < _min)) {
                _min = _n;
            };
            if (_n > _max) {
                _max = _n;
            };
            (_count != null ? _count[_n] : ((0 : GoInt)))++;
        };
        if (_max == ((0 : GoInt))) {
            return true;
        };
        var _code:GoInt = ((0 : GoInt));
        var _nextcode:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 16) ((0 : GoInt))]);
        {
            var _i:GoInt = _min;
            Go.cfor(_i <= _max, _i++, {
                _code = _code << (((1 : GoUnTypedInt)));
                if (_nextcode != null) _nextcode[_i] = _code;
                _code = _code + ((_count != null ? _count[_i] : ((0 : GoInt))));
            });
        };
        if ((_code != (((1 : GoInt)) << ((_max : GoUInt)))) && !((_code == ((1 : GoInt))) && (_max == ((1 : GoInt))))) {
            return false;
        };
        _h._min = _min;
        if (_max > ((9 : GoInt))) {
            var _numLinks:GoInt = ((1 : GoInt)) << (((_max : GoUInt)) - ((9 : GoUInt)));
            _h._linkMask = (((_numLinks - ((1 : GoInt))) : GoUInt32));
            var _link:GoInt = (_nextcode != null ? _nextcode[((10 : GoInt))] : ((0 : GoInt))) >> ((1 : GoUnTypedInt));
            _h._links = new Slice<Slice<GoUInt32>>(...[for (i in 0 ... ((((512 : GoInt)) - _link : GoInt)).toBasic()) ((null : Slice<GoUInt32>))]);
            {
                var _j:GoUInt = ((_link : GoUInt));
                Go.cfor(_j < ((512 : GoUInt)), _j++, {
                    var _reverse:GoInt = ((stdgo.math.bits.Bits.reverse16(((_j : GoUInt16))) : GoInt));
                    _reverse = _reverse >> (((((7 : GoUInt)) : GoUInt)));
                    var _off:GoUInt = _j - ((_link : GoUInt));
                    if (false && ((_h._chunks != null ? _h._chunks[_reverse] : ((0 : GoUInt32))) != ((0 : GoUInt32)))) {
                        throw Go.toInterface(((("impossible: overwriting existing chunk" : GoString))));
                    };
                    if (_h._chunks != null) _h._chunks[_reverse] = ((((_off << ((4 : GoUnTypedInt))) | ((10 : GoUInt))) : GoUInt32));
                    if (_h._links != null) _h._links[_off] = new Slice<GoUInt32>(...[for (i in 0 ... ((_numLinks : GoInt)).toBasic()) ((0 : GoUInt32))]);
                });
            };
        };
        for (_i => _n in _lengths) {
            if (_n == ((0 : GoInt))) {
                continue;
            };
            var _code:GoInt = (_nextcode != null ? _nextcode[_n] : ((0 : GoInt)));
            (_nextcode != null ? _nextcode[_n] : ((0 : GoInt)))++;
            var _chunk:GoUInt32 = ((((_i << ((4 : GoUnTypedInt))) | _n) : GoUInt32));
            var _reverse:GoInt = ((stdgo.math.bits.Bits.reverse16(((_code : GoUInt16))) : GoInt));
            _reverse = _reverse >> ((((((16 : GoInt)) - _n) : GoUInt)));
            if (_n <= ((9 : GoInt))) {
                {
                    var _off:GoInt = _reverse;
                    Go.cfor(_off < (_h._chunks != null ? _h._chunks.length : ((0 : GoInt))), _off = _off + (((1 : GoInt)) << ((_n : GoUInt))), {
                        if (false && ((_h._chunks != null ? _h._chunks[_off] : ((0 : GoUInt32))) != ((0 : GoUInt32)))) {
                            throw Go.toInterface(((("impossible: overwriting existing chunk" : GoString))));
                        };
                        if (_h._chunks != null) _h._chunks[_off] = _chunk;
                    });
                };
            } else {
                var _j:GoInt = _reverse & ((511 : GoInt));
                if (false && (((_h._chunks != null ? _h._chunks[_j] : ((0 : GoUInt32))) & ((15 : GoUInt32))) != ((10 : GoUInt32)))) {
                    throw Go.toInterface(((("impossible: not an indirect chunk" : GoString))));
                };
                var _value:GoUInt32 = (_h._chunks != null ? _h._chunks[_j] : ((0 : GoUInt32))) >> ((4 : GoUnTypedInt));
                var _linktab:Slice<GoUInt32> = (_h._links != null ? _h._links[_value] : ((null : Slice<GoUInt32>)));
                _reverse = _reverse >> (((9 : GoUnTypedInt)));
                {
                    var _off:GoInt = _reverse;
                    Go.cfor(_off < (_linktab != null ? _linktab.length : ((0 : GoInt))), _off = _off + (((1 : GoInt)) << (((_n - ((9 : GoInt))) : GoUInt))), {
                        if (false && ((_linktab != null ? _linktab[_off] : ((0 : GoUInt32))) != ((0 : GoUInt32)))) {
                            throw Go.toInterface(((("impossible: overwriting existing chunk" : GoString))));
                        };
                        if (_linktab != null) _linktab[_off] = _chunk;
                    });
                };
            };
        };
        if (false) {
            for (_i => _chunk in _h._chunks) {
                if (_chunk == ((0 : GoUInt32))) {
                    if ((_code == ((1 : GoInt))) && ((_i % ((2 : GoInt))) == ((1 : GoInt)))) {
                        continue;
                    };
                    throw Go.toInterface(((("impossible: missing chunk" : GoString))));
                };
            };
            for (_1 => _linktab in _h._links) {
                for (_2 => _chunk in _linktab) {
                    if (_chunk == ((0 : GoUInt32))) {
                        throw Go.toInterface(((("impossible: missing chunk" : GoString))));
                    };
                };
            };
        };
        return true;
    }
    public var __t__ : T_huffmanDecoder;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_huffmanDecoder_static_extension {
    @:keep
    public static function _init(_h:Ref<T_huffmanDecoder>, _lengths:Slice<GoInt>):Bool {
        _h;
        {};
        if (_h._min != ((0 : GoInt))) {
            {
                var __tmp__ = ((new T_huffmanDecoder() : T_huffmanDecoder));
                _h._min = __tmp__._min;
                _h._chunks = __tmp__._chunks;
                _h._links = __tmp__._links;
                _h._linkMask = __tmp__._linkMask;
            };
        };
        var _count:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 16) ((0 : GoInt))]);
        var _min:GoInt = ((0 : GoInt)), _max:GoInt = ((0 : GoInt));
        for (_0 => _n in _lengths) {
            if (_n == ((0 : GoInt))) {
                continue;
            };
            if ((_min == ((0 : GoInt))) || (_n < _min)) {
                _min = _n;
            };
            if (_n > _max) {
                _max = _n;
            };
            (_count != null ? _count[_n] : ((0 : GoInt)))++;
        };
        if (_max == ((0 : GoInt))) {
            return true;
        };
        var _code:GoInt = ((0 : GoInt));
        var _nextcode:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 16) ((0 : GoInt))]);
        {
            var _i:GoInt = _min;
            Go.cfor(_i <= _max, _i++, {
                _code = _code << (((1 : GoUnTypedInt)));
                if (_nextcode != null) _nextcode[_i] = _code;
                _code = _code + ((_count != null ? _count[_i] : ((0 : GoInt))));
            });
        };
        if ((_code != (((1 : GoInt)) << ((_max : GoUInt)))) && !((_code == ((1 : GoInt))) && (_max == ((1 : GoInt))))) {
            return false;
        };
        _h._min = _min;
        if (_max > ((9 : GoInt))) {
            var _numLinks:GoInt = ((1 : GoInt)) << (((_max : GoUInt)) - ((9 : GoUInt)));
            _h._linkMask = (((_numLinks - ((1 : GoInt))) : GoUInt32));
            var _link:GoInt = (_nextcode != null ? _nextcode[((10 : GoInt))] : ((0 : GoInt))) >> ((1 : GoUnTypedInt));
            _h._links = new Slice<Slice<GoUInt32>>(...[for (i in 0 ... ((((512 : GoInt)) - _link : GoInt)).toBasic()) ((null : Slice<GoUInt32>))]);
            {
                var _j:GoUInt = ((_link : GoUInt));
                Go.cfor(_j < ((512 : GoUInt)), _j++, {
                    var _reverse:GoInt = ((stdgo.math.bits.Bits.reverse16(((_j : GoUInt16))) : GoInt));
                    _reverse = _reverse >> (((((7 : GoUInt)) : GoUInt)));
                    var _off:GoUInt = _j - ((_link : GoUInt));
                    if (false && ((_h._chunks != null ? _h._chunks[_reverse] : ((0 : GoUInt32))) != ((0 : GoUInt32)))) {
                        throw Go.toInterface(((("impossible: overwriting existing chunk" : GoString))));
                    };
                    if (_h._chunks != null) _h._chunks[_reverse] = ((((_off << ((4 : GoUnTypedInt))) | ((10 : GoUInt))) : GoUInt32));
                    if (_h._links != null) _h._links[_off] = new Slice<GoUInt32>(...[for (i in 0 ... ((_numLinks : GoInt)).toBasic()) ((0 : GoUInt32))]);
                });
            };
        };
        for (_i => _n in _lengths) {
            if (_n == ((0 : GoInt))) {
                continue;
            };
            var _code:GoInt = (_nextcode != null ? _nextcode[_n] : ((0 : GoInt)));
            (_nextcode != null ? _nextcode[_n] : ((0 : GoInt)))++;
            var _chunk:GoUInt32 = ((((_i << ((4 : GoUnTypedInt))) | _n) : GoUInt32));
            var _reverse:GoInt = ((stdgo.math.bits.Bits.reverse16(((_code : GoUInt16))) : GoInt));
            _reverse = _reverse >> ((((((16 : GoInt)) - _n) : GoUInt)));
            if (_n <= ((9 : GoInt))) {
                {
                    var _off:GoInt = _reverse;
                    Go.cfor(_off < (_h._chunks != null ? _h._chunks.length : ((0 : GoInt))), _off = _off + (((1 : GoInt)) << ((_n : GoUInt))), {
                        if (false && ((_h._chunks != null ? _h._chunks[_off] : ((0 : GoUInt32))) != ((0 : GoUInt32)))) {
                            throw Go.toInterface(((("impossible: overwriting existing chunk" : GoString))));
                        };
                        if (_h._chunks != null) _h._chunks[_off] = _chunk;
                    });
                };
            } else {
                var _j:GoInt = _reverse & ((511 : GoInt));
                if (false && (((_h._chunks != null ? _h._chunks[_j] : ((0 : GoUInt32))) & ((15 : GoUInt32))) != ((10 : GoUInt32)))) {
                    throw Go.toInterface(((("impossible: not an indirect chunk" : GoString))));
                };
                var _value:GoUInt32 = (_h._chunks != null ? _h._chunks[_j] : ((0 : GoUInt32))) >> ((4 : GoUnTypedInt));
                var _linktab:Slice<GoUInt32> = (_h._links != null ? _h._links[_value] : ((null : Slice<GoUInt32>)));
                _reverse = _reverse >> (((9 : GoUnTypedInt)));
                {
                    var _off:GoInt = _reverse;
                    Go.cfor(_off < (_linktab != null ? _linktab.length : ((0 : GoInt))), _off = _off + (((1 : GoInt)) << (((_n - ((9 : GoInt))) : GoUInt))), {
                        if (false && ((_linktab != null ? _linktab[_off] : ((0 : GoUInt32))) != ((0 : GoUInt32)))) {
                            throw Go.toInterface(((("impossible: overwriting existing chunk" : GoString))));
                        };
                        if (_linktab != null) _linktab[_off] = _chunk;
                    });
                };
            };
        };
        if (false) {
            for (_i => _chunk in _h._chunks) {
                if (_chunk == ((0 : GoUInt32))) {
                    if ((_code == ((1 : GoInt))) && ((_i % ((2 : GoInt))) == ((1 : GoInt)))) {
                        continue;
                    };
                    throw Go.toInterface(((("impossible: missing chunk" : GoString))));
                };
            };
            for (_1 => _linktab in _h._links) {
                for (_2 => _chunk in _linktab) {
                    if (_chunk == ((0 : GoUInt32))) {
                        throw Go.toInterface(((("impossible: missing chunk" : GoString))));
                    };
                };
            };
        };
        return true;
    }
}
class T_decompressor_wrapper {
    @:keep
    public function reset(_r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):Error {
        var _f = __t__;
        _f;
        {
            var __tmp__ = ((({ _r : _makeReader(_r), _bits : _f._bits, _codebits : _f._codebits, _dict : (_f._dict == null ? null : _f._dict.__copy__()), _step : (T_decompressor_static_extension)._nextBlock, _roffset : 0, _b : 0, _nb : 0, _h1 : new T_huffmanDecoder(), _h2 : new T_huffmanDecoder(), _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]), _stepState : 0, _final : false, _err : ((null : stdgo.Error)), _toRead : ((null : Slice<GoUInt8>)), _hl : ((null : Ref<T_huffmanDecoder>)), _hd : ((null : Ref<T_huffmanDecoder>)), _copyLen : 0, _copyDist : 0 } : T_decompressor)) == null ? null : (({ _r : _makeReader(_r), _bits : _f._bits, _codebits : _f._codebits, _dict : (_f._dict == null ? null : _f._dict.__copy__()), _step : (T_decompressor_static_extension)._nextBlock, _roffset : 0, _b : 0, _nb : 0, _h1 : new T_huffmanDecoder(), _h2 : new T_huffmanDecoder(), _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]), _stepState : 0, _final : false, _err : ((null : stdgo.Error)), _toRead : ((null : Slice<GoUInt8>)), _hl : ((null : Ref<T_huffmanDecoder>)), _hd : ((null : Ref<T_huffmanDecoder>)), _copyLen : 0, _copyDist : 0 } : T_decompressor)).__copy__());
            _f._r = __tmp__._r;
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
        _f._dict._init(((32768 : GoInt)), _dict);
        return ((null : stdgo.Error));
    }
    @:keep
    public function _huffSym(_h:T_huffmanDecoder):{ var _0 : GoInt; var _1 : Error; } {
        var _f = __t__;
        _f;
        var _n:GoUInt = ((_h._min : GoUInt));
        var _nb:GoUInt = _f._nb, _b:GoUInt32 = _f._b;
        while (true) {
            while (_nb < _n) {
                var __tmp__ = _f._r.readByte(), _c:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _f._b = _b;
                    _f._nb = _nb;
                    return { _0 : ((0 : GoInt)), _1 : _noEOF(_err) };
                };
                _f._roffset++;
                _b = _b | (((_c : GoUInt32)) << (_nb & ((31 : GoUInt))));
                _nb = _nb + (((8 : GoUInt)));
            };
            var _chunk:GoUInt32 = (_h._chunks != null ? _h._chunks[_b & ((511 : GoUInt32))] : ((0 : GoUInt32)));
            _n = (((_chunk & ((15 : GoUInt32))) : GoUInt));
            if (_n > ((9 : GoUInt))) {
                _chunk = ((_h._links != null ? _h._links[_chunk >> ((4 : GoUnTypedInt))] : ((null : Slice<GoUInt32>))) != null ? (_h._links != null ? _h._links[_chunk >> ((4 : GoUnTypedInt))] : ((null : Slice<GoUInt32>)))[(_b >> ((9 : GoUnTypedInt))) & _h._linkMask] : ((0 : GoUInt32)));
                _n = (((_chunk & ((15 : GoUInt32))) : GoUInt));
            };
            if (_n <= _nb) {
                if (_n == ((0 : GoUInt))) {
                    _f._b = _b;
                    _f._nb = _nb;
                    _f._err = new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
                    return { _0 : ((0 : GoInt)), _1 : _f._err };
                };
                _f._b = _b >> (_n & ((31 : GoUInt)));
                _f._nb = _nb - _n;
                return { _0 : (((_chunk >> ((4 : GoUnTypedInt))) : GoInt)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    @:keep
    public function _moreBits():Error {
        var _f = __t__;
        _f;
        var __tmp__ = _f._r.readByte(), _c:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _noEOF(_err);
        };
        _f._roffset++;
        _f._b = _f._b | (((_c : GoUInt32)) << _f._nb);
        _f._nb = _f._nb + (((8 : GoUInt)));
        return ((null : stdgo.Error));
    }
    @:keep
    public function _finishBlock():Void {
        var _f = __t__;
        _f;
        if (_f._final) {
            if (_f._dict._availRead() > ((0 : GoInt))) {
                _f._toRead = _f._dict._readFlush();
            };
            _f._err = stdgo.io.Io.eof;
        };
        _f._step = (T_decompressor_static_extension)._nextBlock;
    }
    @:keep
    public function _copyData():Void {
        var _f = __t__;
        _f;
        var _buf:Slice<GoUInt8> = _f._dict._writeSlice();
        if ((_buf != null ? _buf.length : ((0 : GoInt))) > _f._copyLen) {
            _buf = ((_buf.__slice__(0, _f._copyLen) : Slice<GoUInt8>));
        };
        var __tmp__ = stdgo.io.Io.readFull(_f._r, _buf), _cnt:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _f._roffset = _f._roffset + (((_cnt : GoInt64)));
        _f._copyLen = _f._copyLen - (_cnt);
        _f._dict._writeMark(_cnt);
        if (_err != null) {
            _f._err = _noEOF(_err);
            return;
        };
        if ((_f._dict._availWrite() == ((0 : GoInt))) || (_f._copyLen > ((0 : GoInt)))) {
            _f._toRead = _f._dict._readFlush();
            _f._step = (T_decompressor_static_extension)._copyData;
            return;
        };
        _f._finishBlock();
    }
    @:keep
    public function _dataBlock():Void {
        var _f = __t__;
        _f;
        _f._nb = ((0 : GoUInt));
        _f._b = ((0 : GoUInt32));
        var __tmp__ = stdgo.io.Io.readFull(_f._r, ((_f._buf.__slice__(((0 : GoInt)), ((4 : GoInt))) : Slice<GoUInt8>))), _nr:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _f._roffset = _f._roffset + (((_nr : GoInt64)));
        if (_err != null) {
            _f._err = _noEOF(_err);
            return;
        };
        var _n:GoInt = (((_f._buf != null ? _f._buf[((0 : GoInt))] : ((0 : GoUInt8))) : GoInt)) | ((((_f._buf != null ? _f._buf[((1 : GoInt))] : ((0 : GoUInt8))) : GoInt)) << ((8 : GoUnTypedInt)));
        var _nn:GoInt = (((_f._buf != null ? _f._buf[((2 : GoInt))] : ((0 : GoUInt8))) : GoInt)) | ((((_f._buf != null ? _f._buf[((3 : GoInt))] : ((0 : GoUInt8))) : GoInt)) << ((8 : GoUnTypedInt)));
        if (((_nn : GoUInt16)) != (((-1 ^ _n) : GoUInt16))) {
            _f._err = new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
            return;
        };
        if (_n == ((0 : GoInt))) {
            _f._toRead = _f._dict._readFlush();
            _f._finishBlock();
            return;
        };
        _f._copyLen = _n;
        _f._copyData();
    }
    @:keep
    public function _huffmanBlock():Void {
        var _f = __t__;
        _f;
        stdgo.internal.Macro.controlFlow({
            {};
            if (_f._stepState == ((0 : GoInt))) {
                @:goto "readLiteral";
            } else if (_f._stepState == ((1 : GoInt))) {
                @:goto "copyHistory";
            };
            @:label("readLiteral") {
                var __tmp__ = _f._huffSym(_f._hl), _v:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _f._err = _err;
                    return;
                };
                var _n:GoUInt = ((0 : GoUInt));
                var _length:GoInt = ((0 : GoInt));
                if (_v < ((256 : GoInt))) {
                    _f._dict._writeByte(((_v : GoByte)));
                    if (_f._dict._availWrite() == ((0 : GoInt))) {
                        _f._toRead = _f._dict._readFlush();
                        _f._step = (T_decompressor_static_extension)._huffmanBlock;
                        _f._stepState = ((0 : GoInt));
                        return;
                    };
                    @:goto "readLiteral";
                } else if (_v == ((256 : GoInt))) {
                    _f._finishBlock();
                    return;
                } else if (_v < ((265 : GoInt))) {
                    _length = _v - ((254 : GoInt));
                    _n = ((0 : GoUInt));
                } else if (_v < ((269 : GoInt))) {
                    _length = (_v * ((2 : GoInt))) - ((519 : GoInt));
                    _n = ((1 : GoUInt));
                } else if (_v < ((273 : GoInt))) {
                    _length = (_v * ((4 : GoInt))) - ((1057 : GoInt));
                    _n = ((2 : GoUInt));
                } else if (_v < ((277 : GoInt))) {
                    _length = (_v * ((8 : GoInt))) - ((2149 : GoInt));
                    _n = ((3 : GoUInt));
                } else if (_v < ((281 : GoInt))) {
                    _length = (_v * ((16 : GoInt))) - ((4365 : GoInt));
                    _n = ((4 : GoUInt));
                } else if (_v < ((285 : GoInt))) {
                    _length = (_v * ((32 : GoInt))) - ((8861 : GoInt));
                    _n = ((5 : GoUInt));
                } else if (_v < ((286 : GoInt))) {
                    _length = ((258 : GoInt));
                    _n = ((0 : GoUInt));
                } else {
                    _f._err = new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
                    return;
                };
                if (_n > ((0 : GoUInt))) {
                    while (_f._nb < _n) {
                        {
                            _err = _f._moreBits();
                            if (_err != null) {
                                _f._err = _err;
                                return;
                            };
                        };
                    };
                    _length = _length + ((((_f._b & ((((((1 : GoUInt32)) << _n) - ((1 : GoUInt32))) : GoUInt32))) : GoInt)));
                    _f._b = _f._b >> (_n);
                    _f._nb = _f._nb - (_n);
                };
                var _dist:GoInt = ((0 : GoInt));
                if (_f._hd == null) {
                    while (_f._nb < ((5 : GoUInt))) {
                        {
                            _err = _f._moreBits();
                            if (_err != null) {
                                _f._err = _err;
                                return;
                            };
                        };
                    };
                    _dist = ((stdgo.math.bits.Bits.reverse8(((((_f._b & ((31 : GoUInt32))) << ((3 : GoUnTypedInt))) : GoUInt8))) : GoInt));
                    _f._b = _f._b >> (((5 : GoUnTypedInt)));
                    _f._nb = _f._nb - (((5 : GoUInt)));
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
                if (_dist < ((4 : GoInt))) {
                    _dist++;
                } else if (_dist < ((30 : GoInt))) {
                    var _nb:GoUInt = (((_dist - ((2 : GoInt))) : GoUInt)) >> ((1 : GoUnTypedInt));
                    var _extra:GoInt = (_dist & ((1 : GoInt))) << _nb;
                    while (_f._nb < _nb) {
                        {
                            _err = _f._moreBits();
                            if (_err != null) {
                                _f._err = _err;
                                return;
                            };
                        };
                    };
                    _extra = _extra | ((((_f._b & ((((((1 : GoUInt32)) << _nb) - ((1 : GoUInt32))) : GoUInt32))) : GoInt)));
                    _f._b = _f._b >> (_nb);
                    _f._nb = _f._nb - (_nb);
                    _dist = ((((1 : GoInt)) << (_nb + ((1 : GoUInt)))) + ((1 : GoInt))) + _extra;
                } else {
                    _f._err = new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
                    return;
                };
                if (_dist > _f._dict._histSize()) {
                    _f._err = new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
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
                var _cnt:GoInt = _f._dict._tryWriteCopy(_f._copyDist, _f._copyLen);
                if (_cnt == ((0 : GoInt))) {
                    _cnt = _f._dict._writeCopy(_f._copyDist, _f._copyLen);
                };
                _f._copyLen = _f._copyLen - (_cnt);
                if ((_f._dict._availWrite() == ((0 : GoInt))) || (_f._copyLen > ((0 : GoInt)))) {
                    _f._toRead = _f._dict._readFlush();
                    _f._step = (T_decompressor_static_extension)._huffmanBlock;
                    _f._stepState = ((1 : GoInt));
                    return;
                };
                @:goto "readLiteral";
            };
        });
    }
    @:keep
    public function _readHuffman():Error {
        var _f = __t__;
        _f;
        while (_f._nb < ((14 : GoUInt))) {
            {
                var _err:stdgo.Error = _f._moreBits();
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _nlit:GoInt = (((_f._b & ((31 : GoUInt32))) : GoInt)) + ((257 : GoInt));
        if (_nlit > ((286 : GoInt))) {
            return new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
        };
        _f._b = _f._b >> (((5 : GoUnTypedInt)));
        var _ndist:GoInt = (((_f._b & ((31 : GoUInt32))) : GoInt)) + ((1 : GoInt));
        if (_ndist > ((30 : GoInt))) {
            return new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
        };
        _f._b = _f._b >> (((5 : GoUnTypedInt)));
        var _nclen:GoInt = (((_f._b & ((15 : GoUInt32))) : GoInt)) + ((4 : GoInt));
        _f._b = _f._b >> (((4 : GoUnTypedInt)));
        _f._nb = _f._nb - (((14 : GoUInt)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _nclen, _i++, {
                while (_f._nb < ((3 : GoUInt))) {
                    {
                        var _err:stdgo.Error = _f._moreBits();
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
                if (_f._codebits != null) _f._codebits[(_codeOrder != null ? _codeOrder[_i] : ((0 : GoInt)))] = (((_f._b & ((7 : GoUInt32))) : GoInt));
                _f._b = _f._b >> (((3 : GoUnTypedInt)));
                _f._nb = _f._nb - (((3 : GoUInt)));
            });
        };
        {
            var _i:GoInt = _nclen;
            Go.cfor(_i < (_codeOrder != null ? _codeOrder.length : ((0 : GoInt))), _i++, {
                if (_f._codebits != null) _f._codebits[(_codeOrder != null ? _codeOrder[_i] : ((0 : GoInt)))] = ((0 : GoInt));
            });
        };
        if (!_f._h1._init(((_f._codebits.__slice__(((0 : GoInt))) : Slice<GoInt>)))) {
            return new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
        };
        {
            var _i:GoInt = ((0 : GoInt)), _n:GoInt = _nlit + _ndist;
            while (_i < _n) {
                var __tmp__ = _f._huffSym(_f._h1), _x:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if (_x < ((16 : GoInt))) {
                    if (_f._bits != null) _f._bits[_i] = _x;
                    _i++;
                    continue;
                };
                var _rep:GoInt = ((0 : GoInt));
                var _nb:GoUInt = ((0 : GoUInt));
                var _b:GoInt = ((0 : GoInt));
                if (_x == ((16 : GoInt))) {
                    _rep = ((3 : GoInt));
                    _nb = ((2 : GoUInt));
                    if (_i == ((0 : GoInt))) {
                        return new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
                    };
                    _b = (_f._bits != null ? _f._bits[_i - ((1 : GoInt))] : ((0 : GoInt)));
                } else if (_x == ((17 : GoInt))) {
                    _rep = ((3 : GoInt));
                    _nb = ((3 : GoUInt));
                    _b = ((0 : GoInt));
                } else if (_x == ((18 : GoInt))) {
                    _rep = ((11 : GoInt));
                    _nb = ((7 : GoUInt));
                    _b = ((0 : GoInt));
                };
                while (_f._nb < _nb) {
                    {
                        var _err:stdgo.Error = _f._moreBits();
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
                _rep = _rep + ((((_f._b & ((((((1 : GoUInt32)) << _nb) - ((1 : GoUInt32))) : GoUInt32))) : GoInt)));
                _f._b = _f._b >> (_nb);
                _f._nb = _f._nb - (_nb);
                if ((_i + _rep) > _n) {
                    return new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
                };
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < _rep, _j++, {
                        if (_f._bits != null) _f._bits[_i] = _b;
                        _i++;
                    });
                };
            };
        };
        if (!_f._h1._init(((_f._bits.__slice__(((0 : GoInt)), _nlit) : Slice<GoInt>))) || !_f._h2._init(((_f._bits.__slice__(_nlit, _nlit + _ndist) : Slice<GoInt>)))) {
            return new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
        };
        if (_f._h1._min < (_f._bits != null ? _f._bits[((256 : GoInt))] : ((0 : GoInt)))) {
            _f._h1._min = (_f._bits != null ? _f._bits[((256 : GoInt))] : ((0 : GoInt)));
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function close():Error {
        var _f = __t__;
        _f;
        if (_f._err == stdgo.io.Io.eof) {
            return ((null : stdgo.Error));
        };
        return _f._err;
    }
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _f = __t__;
        _f;
        while (true) {
            if ((_f._toRead != null ? _f._toRead.length : ((0 : GoInt))) > ((0 : GoInt))) {
                var _n:GoInt = Go.copySlice(_b, _f._toRead);
                _f._toRead = ((_f._toRead.__slice__(_n) : Slice<GoUInt8>));
                if ((_f._toRead != null ? _f._toRead.length : ((0 : GoInt))) == ((0 : GoInt))) {
                    return { _0 : _n, _1 : _f._err };
                };
                return { _0 : _n, _1 : ((null : stdgo.Error)) };
            };
            if (_f._err != null) {
                return { _0 : ((0 : GoInt)), _1 : _f._err };
            };
            _f._step(_f);
            if ((_f._err != null) && ((_f._toRead != null ? _f._toRead.length : ((0 : GoInt))) == ((0 : GoInt)))) {
                _f._toRead = _f._dict._readFlush();
            };
        };
    }
    @:keep
    public function _nextBlock():Void {
        var _f = __t__;
        _f;
        while (_f._nb < ((3 : GoUInt))) {
            {
                _f._err = _f._moreBits();
                if (_f._err != null) {
                    return;
                };
            };
        };
        _f._final = (_f._b & ((1 : GoUInt32))) == ((1 : GoUInt32));
        _f._b = _f._b >> (((1 : GoUnTypedInt)));
        var _typ:GoUInt32 = _f._b & ((3 : GoUInt32));
        _f._b = _f._b >> (((2 : GoUnTypedInt)));
        _f._nb = _f._nb - (((3 : GoUInt)));
        {
            var __switchIndex__ = -1;
            while (true) {
                if (_typ == ((0 : GoUInt32))) {
                    _f._dataBlock();
                    break;
                } else if (_typ == ((1 : GoUInt32))) {
                    _f._hl = _fixedHuffmanDecoder;
                    _f._hd = null;
                    _f._huffmanBlock();
                    break;
                } else if (_typ == ((2 : GoUInt32))) {
                    {
                        _f._err = _f._readHuffman();
                        if (_f._err != null) {
                            break;
                        };
                    };
                    _f._hl = _f._h1;
                    _f._hd = _f._h2;
                    _f._huffmanBlock();
                    break;
                } else {
                    _f._err = new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
                };
                break;
            };
        };
    }
    public var __t__ : T_decompressor;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_decompressor_static_extension {
    @:keep
    public static function reset(_f:Ref<T_decompressor>, _r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):Error {
        _f;
        {
            var __tmp__ = ((({ _r : _makeReader(_r), _bits : _f._bits, _codebits : _f._codebits, _dict : (_f._dict == null ? null : _f._dict.__copy__()), _step : (T_decompressor_static_extension)._nextBlock, _roffset : 0, _b : 0, _nb : 0, _h1 : new T_huffmanDecoder(), _h2 : new T_huffmanDecoder(), _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]), _stepState : 0, _final : false, _err : ((null : stdgo.Error)), _toRead : ((null : Slice<GoUInt8>)), _hl : ((null : Ref<T_huffmanDecoder>)), _hd : ((null : Ref<T_huffmanDecoder>)), _copyLen : 0, _copyDist : 0 } : T_decompressor)) == null ? null : (({ _r : _makeReader(_r), _bits : _f._bits, _codebits : _f._codebits, _dict : (_f._dict == null ? null : _f._dict.__copy__()), _step : (T_decompressor_static_extension)._nextBlock, _roffset : 0, _b : 0, _nb : 0, _h1 : new T_huffmanDecoder(), _h2 : new T_huffmanDecoder(), _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]), _stepState : 0, _final : false, _err : ((null : stdgo.Error)), _toRead : ((null : Slice<GoUInt8>)), _hl : ((null : Ref<T_huffmanDecoder>)), _hd : ((null : Ref<T_huffmanDecoder>)), _copyLen : 0, _copyDist : 0 } : T_decompressor)).__copy__());
            _f._r = __tmp__._r;
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
        _f._dict._init(((32768 : GoInt)), _dict);
        return ((null : stdgo.Error));
    }
    @:keep
    public static function _huffSym(_f:Ref<T_decompressor>, _h:T_huffmanDecoder):{ var _0 : GoInt; var _1 : Error; } {
        _f;
        var _n:GoUInt = ((_h._min : GoUInt));
        var _nb:GoUInt = _f._nb, _b:GoUInt32 = _f._b;
        while (true) {
            while (_nb < _n) {
                var __tmp__ = _f._r.readByte(), _c:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _f._b = _b;
                    _f._nb = _nb;
                    return { _0 : ((0 : GoInt)), _1 : _noEOF(_err) };
                };
                _f._roffset++;
                _b = _b | (((_c : GoUInt32)) << (_nb & ((31 : GoUInt))));
                _nb = _nb + (((8 : GoUInt)));
            };
            var _chunk:GoUInt32 = (_h._chunks != null ? _h._chunks[_b & ((511 : GoUInt32))] : ((0 : GoUInt32)));
            _n = (((_chunk & ((15 : GoUInt32))) : GoUInt));
            if (_n > ((9 : GoUInt))) {
                _chunk = ((_h._links != null ? _h._links[_chunk >> ((4 : GoUnTypedInt))] : ((null : Slice<GoUInt32>))) != null ? (_h._links != null ? _h._links[_chunk >> ((4 : GoUnTypedInt))] : ((null : Slice<GoUInt32>)))[(_b >> ((9 : GoUnTypedInt))) & _h._linkMask] : ((0 : GoUInt32)));
                _n = (((_chunk & ((15 : GoUInt32))) : GoUInt));
            };
            if (_n <= _nb) {
                if (_n == ((0 : GoUInt))) {
                    _f._b = _b;
                    _f._nb = _nb;
                    _f._err = new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
                    return { _0 : ((0 : GoInt)), _1 : _f._err };
                };
                _f._b = _b >> (_n & ((31 : GoUInt)));
                _f._nb = _nb - _n;
                return { _0 : (((_chunk >> ((4 : GoUnTypedInt))) : GoInt)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    @:keep
    public static function _moreBits(_f:Ref<T_decompressor>):Error {
        _f;
        var __tmp__ = _f._r.readByte(), _c:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _noEOF(_err);
        };
        _f._roffset++;
        _f._b = _f._b | (((_c : GoUInt32)) << _f._nb);
        _f._nb = _f._nb + (((8 : GoUInt)));
        return ((null : stdgo.Error));
    }
    @:keep
    public static function _finishBlock(_f:Ref<T_decompressor>):Void {
        _f;
        if (_f._final) {
            if (_f._dict._availRead() > ((0 : GoInt))) {
                _f._toRead = _f._dict._readFlush();
            };
            _f._err = stdgo.io.Io.eof;
        };
        _f._step = (T_decompressor_static_extension)._nextBlock;
    }
    @:keep
    public static function _copyData(_f:Ref<T_decompressor>):Void {
        _f;
        var _buf:Slice<GoUInt8> = _f._dict._writeSlice();
        if ((_buf != null ? _buf.length : ((0 : GoInt))) > _f._copyLen) {
            _buf = ((_buf.__slice__(0, _f._copyLen) : Slice<GoUInt8>));
        };
        var __tmp__ = stdgo.io.Io.readFull(_f._r, _buf), _cnt:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _f._roffset = _f._roffset + (((_cnt : GoInt64)));
        _f._copyLen = _f._copyLen - (_cnt);
        _f._dict._writeMark(_cnt);
        if (_err != null) {
            _f._err = _noEOF(_err);
            return;
        };
        if ((_f._dict._availWrite() == ((0 : GoInt))) || (_f._copyLen > ((0 : GoInt)))) {
            _f._toRead = _f._dict._readFlush();
            _f._step = (T_decompressor_static_extension)._copyData;
            return;
        };
        _f._finishBlock();
    }
    @:keep
    public static function _dataBlock(_f:Ref<T_decompressor>):Void {
        _f;
        _f._nb = ((0 : GoUInt));
        _f._b = ((0 : GoUInt32));
        var __tmp__ = stdgo.io.Io.readFull(_f._r, ((_f._buf.__slice__(((0 : GoInt)), ((4 : GoInt))) : Slice<GoUInt8>))), _nr:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _f._roffset = _f._roffset + (((_nr : GoInt64)));
        if (_err != null) {
            _f._err = _noEOF(_err);
            return;
        };
        var _n:GoInt = (((_f._buf != null ? _f._buf[((0 : GoInt))] : ((0 : GoUInt8))) : GoInt)) | ((((_f._buf != null ? _f._buf[((1 : GoInt))] : ((0 : GoUInt8))) : GoInt)) << ((8 : GoUnTypedInt)));
        var _nn:GoInt = (((_f._buf != null ? _f._buf[((2 : GoInt))] : ((0 : GoUInt8))) : GoInt)) | ((((_f._buf != null ? _f._buf[((3 : GoInt))] : ((0 : GoUInt8))) : GoInt)) << ((8 : GoUnTypedInt)));
        if (((_nn : GoUInt16)) != (((-1 ^ _n) : GoUInt16))) {
            _f._err = new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
            return;
        };
        if (_n == ((0 : GoInt))) {
            _f._toRead = _f._dict._readFlush();
            _f._finishBlock();
            return;
        };
        _f._copyLen = _n;
        _f._copyData();
    }
    @:keep
    public static function _huffmanBlock(_f:Ref<T_decompressor>):Void {
        _f;
        stdgo.internal.Macro.controlFlow({
            {};
            if (_f._stepState == ((0 : GoInt))) {
                @:goto "readLiteral";
            } else if (_f._stepState == ((1 : GoInt))) {
                @:goto "copyHistory";
            };
            @:label("readLiteral") {
                var __tmp__ = _f._huffSym(_f._hl), _v:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _f._err = _err;
                    return;
                };
                var _n:GoUInt = ((0 : GoUInt));
                var _length:GoInt = ((0 : GoInt));
                if (_v < ((256 : GoInt))) {
                    _f._dict._writeByte(((_v : GoByte)));
                    if (_f._dict._availWrite() == ((0 : GoInt))) {
                        _f._toRead = _f._dict._readFlush();
                        _f._step = (T_decompressor_static_extension)._huffmanBlock;
                        _f._stepState = ((0 : GoInt));
                        return;
                    };
                    @:goto "readLiteral";
                } else if (_v == ((256 : GoInt))) {
                    _f._finishBlock();
                    return;
                } else if (_v < ((265 : GoInt))) {
                    _length = _v - ((254 : GoInt));
                    _n = ((0 : GoUInt));
                } else if (_v < ((269 : GoInt))) {
                    _length = (_v * ((2 : GoInt))) - ((519 : GoInt));
                    _n = ((1 : GoUInt));
                } else if (_v < ((273 : GoInt))) {
                    _length = (_v * ((4 : GoInt))) - ((1057 : GoInt));
                    _n = ((2 : GoUInt));
                } else if (_v < ((277 : GoInt))) {
                    _length = (_v * ((8 : GoInt))) - ((2149 : GoInt));
                    _n = ((3 : GoUInt));
                } else if (_v < ((281 : GoInt))) {
                    _length = (_v * ((16 : GoInt))) - ((4365 : GoInt));
                    _n = ((4 : GoUInt));
                } else if (_v < ((285 : GoInt))) {
                    _length = (_v * ((32 : GoInt))) - ((8861 : GoInt));
                    _n = ((5 : GoUInt));
                } else if (_v < ((286 : GoInt))) {
                    _length = ((258 : GoInt));
                    _n = ((0 : GoUInt));
                } else {
                    _f._err = new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
                    return;
                };
                if (_n > ((0 : GoUInt))) {
                    while (_f._nb < _n) {
                        {
                            _err = _f._moreBits();
                            if (_err != null) {
                                _f._err = _err;
                                return;
                            };
                        };
                    };
                    _length = _length + ((((_f._b & ((((((1 : GoUInt32)) << _n) - ((1 : GoUInt32))) : GoUInt32))) : GoInt)));
                    _f._b = _f._b >> (_n);
                    _f._nb = _f._nb - (_n);
                };
                var _dist:GoInt = ((0 : GoInt));
                if (_f._hd == null) {
                    while (_f._nb < ((5 : GoUInt))) {
                        {
                            _err = _f._moreBits();
                            if (_err != null) {
                                _f._err = _err;
                                return;
                            };
                        };
                    };
                    _dist = ((stdgo.math.bits.Bits.reverse8(((((_f._b & ((31 : GoUInt32))) << ((3 : GoUnTypedInt))) : GoUInt8))) : GoInt));
                    _f._b = _f._b >> (((5 : GoUnTypedInt)));
                    _f._nb = _f._nb - (((5 : GoUInt)));
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
                if (_dist < ((4 : GoInt))) {
                    _dist++;
                } else if (_dist < ((30 : GoInt))) {
                    var _nb:GoUInt = (((_dist - ((2 : GoInt))) : GoUInt)) >> ((1 : GoUnTypedInt));
                    var _extra:GoInt = (_dist & ((1 : GoInt))) << _nb;
                    while (_f._nb < _nb) {
                        {
                            _err = _f._moreBits();
                            if (_err != null) {
                                _f._err = _err;
                                return;
                            };
                        };
                    };
                    _extra = _extra | ((((_f._b & ((((((1 : GoUInt32)) << _nb) - ((1 : GoUInt32))) : GoUInt32))) : GoInt)));
                    _f._b = _f._b >> (_nb);
                    _f._nb = _f._nb - (_nb);
                    _dist = ((((1 : GoInt)) << (_nb + ((1 : GoUInt)))) + ((1 : GoInt))) + _extra;
                } else {
                    _f._err = new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
                    return;
                };
                if (_dist > _f._dict._histSize()) {
                    _f._err = new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
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
                var _cnt:GoInt = _f._dict._tryWriteCopy(_f._copyDist, _f._copyLen);
                if (_cnt == ((0 : GoInt))) {
                    _cnt = _f._dict._writeCopy(_f._copyDist, _f._copyLen);
                };
                _f._copyLen = _f._copyLen - (_cnt);
                if ((_f._dict._availWrite() == ((0 : GoInt))) || (_f._copyLen > ((0 : GoInt)))) {
                    _f._toRead = _f._dict._readFlush();
                    _f._step = (T_decompressor_static_extension)._huffmanBlock;
                    _f._stepState = ((1 : GoInt));
                    return;
                };
                @:goto "readLiteral";
            };
        });
    }
    @:keep
    public static function _readHuffman(_f:Ref<T_decompressor>):Error {
        _f;
        while (_f._nb < ((14 : GoUInt))) {
            {
                var _err:stdgo.Error = _f._moreBits();
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _nlit:GoInt = (((_f._b & ((31 : GoUInt32))) : GoInt)) + ((257 : GoInt));
        if (_nlit > ((286 : GoInt))) {
            return new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
        };
        _f._b = _f._b >> (((5 : GoUnTypedInt)));
        var _ndist:GoInt = (((_f._b & ((31 : GoUInt32))) : GoInt)) + ((1 : GoInt));
        if (_ndist > ((30 : GoInt))) {
            return new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
        };
        _f._b = _f._b >> (((5 : GoUnTypedInt)));
        var _nclen:GoInt = (((_f._b & ((15 : GoUInt32))) : GoInt)) + ((4 : GoInt));
        _f._b = _f._b >> (((4 : GoUnTypedInt)));
        _f._nb = _f._nb - (((14 : GoUInt)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _nclen, _i++, {
                while (_f._nb < ((3 : GoUInt))) {
                    {
                        var _err:stdgo.Error = _f._moreBits();
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
                if (_f._codebits != null) _f._codebits[(_codeOrder != null ? _codeOrder[_i] : ((0 : GoInt)))] = (((_f._b & ((7 : GoUInt32))) : GoInt));
                _f._b = _f._b >> (((3 : GoUnTypedInt)));
                _f._nb = _f._nb - (((3 : GoUInt)));
            });
        };
        {
            var _i:GoInt = _nclen;
            Go.cfor(_i < (_codeOrder != null ? _codeOrder.length : ((0 : GoInt))), _i++, {
                if (_f._codebits != null) _f._codebits[(_codeOrder != null ? _codeOrder[_i] : ((0 : GoInt)))] = ((0 : GoInt));
            });
        };
        if (!_f._h1._init(((_f._codebits.__slice__(((0 : GoInt))) : Slice<GoInt>)))) {
            return new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
        };
        {
            var _i:GoInt = ((0 : GoInt)), _n:GoInt = _nlit + _ndist;
            while (_i < _n) {
                var __tmp__ = _f._huffSym(_f._h1), _x:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if (_x < ((16 : GoInt))) {
                    if (_f._bits != null) _f._bits[_i] = _x;
                    _i++;
                    continue;
                };
                var _rep:GoInt = ((0 : GoInt));
                var _nb:GoUInt = ((0 : GoUInt));
                var _b:GoInt = ((0 : GoInt));
                if (_x == ((16 : GoInt))) {
                    _rep = ((3 : GoInt));
                    _nb = ((2 : GoUInt));
                    if (_i == ((0 : GoInt))) {
                        return new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
                    };
                    _b = (_f._bits != null ? _f._bits[_i - ((1 : GoInt))] : ((0 : GoInt)));
                } else if (_x == ((17 : GoInt))) {
                    _rep = ((3 : GoInt));
                    _nb = ((3 : GoUInt));
                    _b = ((0 : GoInt));
                } else if (_x == ((18 : GoInt))) {
                    _rep = ((11 : GoInt));
                    _nb = ((7 : GoUInt));
                    _b = ((0 : GoInt));
                };
                while (_f._nb < _nb) {
                    {
                        var _err:stdgo.Error = _f._moreBits();
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
                _rep = _rep + ((((_f._b & ((((((1 : GoUInt32)) << _nb) - ((1 : GoUInt32))) : GoUInt32))) : GoInt)));
                _f._b = _f._b >> (_nb);
                _f._nb = _f._nb - (_nb);
                if ((_i + _rep) > _n) {
                    return new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
                };
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < _rep, _j++, {
                        if (_f._bits != null) _f._bits[_i] = _b;
                        _i++;
                    });
                };
            };
        };
        if (!_f._h1._init(((_f._bits.__slice__(((0 : GoInt)), _nlit) : Slice<GoInt>))) || !_f._h2._init(((_f._bits.__slice__(_nlit, _nlit + _ndist) : Slice<GoInt>)))) {
            return new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
        };
        if (_f._h1._min < (_f._bits != null ? _f._bits[((256 : GoInt))] : ((0 : GoInt)))) {
            _f._h1._min = (_f._bits != null ? _f._bits[((256 : GoInt))] : ((0 : GoInt)));
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public static function close(_f:Ref<T_decompressor>):Error {
        _f;
        if (_f._err == stdgo.io.Io.eof) {
            return ((null : stdgo.Error));
        };
        return _f._err;
    }
    @:keep
    public static function read(_f:Ref<T_decompressor>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _f;
        while (true) {
            if ((_f._toRead != null ? _f._toRead.length : ((0 : GoInt))) > ((0 : GoInt))) {
                var _n:GoInt = Go.copySlice(_b, _f._toRead);
                _f._toRead = ((_f._toRead.__slice__(_n) : Slice<GoUInt8>));
                if ((_f._toRead != null ? _f._toRead.length : ((0 : GoInt))) == ((0 : GoInt))) {
                    return { _0 : _n, _1 : _f._err };
                };
                return { _0 : _n, _1 : ((null : stdgo.Error)) };
            };
            if (_f._err != null) {
                return { _0 : ((0 : GoInt)), _1 : _f._err };
            };
            _f._step(_f);
            if ((_f._err != null) && ((_f._toRead != null ? _f._toRead.length : ((0 : GoInt))) == ((0 : GoInt)))) {
                _f._toRead = _f._dict._readFlush();
            };
        };
    }
    @:keep
    public static function _nextBlock(_f:Ref<T_decompressor>):Void {
        _f;
        while (_f._nb < ((3 : GoUInt))) {
            {
                _f._err = _f._moreBits();
                if (_f._err != null) {
                    return;
                };
            };
        };
        _f._final = (_f._b & ((1 : GoUInt32))) == ((1 : GoUInt32));
        _f._b = _f._b >> (((1 : GoUnTypedInt)));
        var _typ:GoUInt32 = _f._b & ((3 : GoUInt32));
        _f._b = _f._b >> (((2 : GoUnTypedInt)));
        _f._nb = _f._nb - (((3 : GoUInt)));
        {
            var __switchIndex__ = -1;
            while (true) {
                if (_typ == ((0 : GoUInt32))) {
                    _f._dataBlock();
                    break;
                } else if (_typ == ((1 : GoUInt32))) {
                    _f._hl = _fixedHuffmanDecoder;
                    _f._hd = null;
                    _f._huffmanBlock();
                    break;
                } else if (_typ == ((2 : GoUInt32))) {
                    {
                        _f._err = _f._readHuffman();
                        if (_f._err != null) {
                            break;
                        };
                    };
                    _f._hl = _f._h1;
                    _f._hd = _f._h2;
                    _f._huffmanBlock();
                    break;
                } else {
                    _f._err = new CorruptInputError_wrapper(Go.pointer(((_f._roffset : CorruptInputError))));
                };
                break;
            };
        };
    }
}
class T_errorWriter_wrapper {
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _e = __t__;
        _e;
        if (_e.n <= ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.errClosedPipe };
        };
        _e.n--;
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : T_errorWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_errorWriter_static_extension {
    @:keep
    public static function write(_e:Ref<T_errorWriter>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _e;
        if (_e.n <= ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.errClosedPipe };
        };
        _e.n--;
        return { _0 : (_b != null ? _b.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
}
class T__struct_0_wrapper {
    public var __t__ : T__struct_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_1_wrapper {
    public var __t__ : T__struct_1;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_2_wrapper {
    public var __t__ : T__struct_2;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_3_wrapper {
    public var __t__ : T__struct_3;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_4_wrapper {
    public var __t__ : T__struct_4;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_5_wrapper {
    public var __t__ : T__struct_5;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_6_wrapper {
    public var __t__ : T__struct_6;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_7_wrapper {
    public var __t__ : T__struct_7;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_byLiteral_wrapper {
    @:keep
    public function swap(_i:GoInt, _j:GoInt):Void {
        var _s = __t__;
        (_s == null ? null : _s.__copy__());
        {
            final __tmp__0 = ((_s != null ? _s[_j] : new T_literalNode()) == null ? null : (_s != null ? _s[_j] : new T_literalNode()).__copy__());
            final __tmp__1 = ((_s != null ? _s[_i] : new T_literalNode()) == null ? null : (_s != null ? _s[_i] : new T_literalNode()).__copy__());
            if (_s != null) _s[_i] = __tmp__0;
            if (_s != null) _s[_j] = __tmp__1;
        };
    }
    @:keep
    public function less(_i:GoInt, _j:GoInt):Bool {
        var _s = __t__;
        (_s == null ? null : _s.__copy__());
        return (_s != null ? _s[_i] : new T_literalNode())._literal < (_s != null ? _s[_j] : new T_literalNode())._literal;
    }
    @:keep
    public function len():GoInt {
        var _s = __t__;
        (_s == null ? null : _s.__copy__());
        return (_s != null ? _s.length : ((0 : GoInt)));
    }
    @:keep
    public function _sort(_a:Slice<T_literalNode>):Void {
        var _s = __t__;
        _s;
        _s = (((_a : T_byLiteral)) == null ? null : ((_a : T_byLiteral)).__copy__());
        stdgo.sort.Sort.sort(new Ref_wrapper<T_byLiteral>(_s));
    }
    public var __t__ : T_byLiteral;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_byLiteral_static_extension {
    @:keep
    public static function swap(_s:T_byLiteral, _i:GoInt, _j:GoInt):Void {
        (_s == null ? null : _s.__copy__());
        {
            final __tmp__0 = ((_s != null ? _s[_j] : new T_literalNode()) == null ? null : (_s != null ? _s[_j] : new T_literalNode()).__copy__());
            final __tmp__1 = ((_s != null ? _s[_i] : new T_literalNode()) == null ? null : (_s != null ? _s[_i] : new T_literalNode()).__copy__());
            if (_s != null) _s[_i] = __tmp__0;
            if (_s != null) _s[_j] = __tmp__1;
        };
    }
    @:keep
    public static function less(_s:T_byLiteral, _i:GoInt, _j:GoInt):Bool {
        (_s == null ? null : _s.__copy__());
        return (_s != null ? _s[_i] : new T_literalNode())._literal < (_s != null ? _s[_j] : new T_literalNode())._literal;
    }
    @:keep
    public static function len(_s:T_byLiteral):GoInt {
        (_s == null ? null : _s.__copy__());
        return (_s != null ? _s.length : ((0 : GoInt)));
    }
    @:keep
    public static function _sort(_s:Ref<T_byLiteral>, _a:Slice<T_literalNode>):Void {
        _s;
        _s = (((_a : T_byLiteral)) == null ? null : ((_a : T_byLiteral)).__copy__());
        stdgo.sort.Sort.sort(new Ref_wrapper<T_byLiteral>(_s));
    }
}
class T_byFreq_wrapper {
    @:keep
    public function swap(_i:GoInt, _j:GoInt):Void {
        var _s = __t__;
        (_s == null ? null : _s.__copy__());
        {
            final __tmp__0 = ((_s != null ? _s[_j] : new T_literalNode()) == null ? null : (_s != null ? _s[_j] : new T_literalNode()).__copy__());
            final __tmp__1 = ((_s != null ? _s[_i] : new T_literalNode()) == null ? null : (_s != null ? _s[_i] : new T_literalNode()).__copy__());
            if (_s != null) _s[_i] = __tmp__0;
            if (_s != null) _s[_j] = __tmp__1;
        };
    }
    @:keep
    public function less(_i:GoInt, _j:GoInt):Bool {
        var _s = __t__;
        (_s == null ? null : _s.__copy__());
        if ((_s != null ? _s[_i] : new T_literalNode())._freq == (_s != null ? _s[_j] : new T_literalNode())._freq) {
            return (_s != null ? _s[_i] : new T_literalNode())._literal < (_s != null ? _s[_j] : new T_literalNode())._literal;
        };
        return (_s != null ? _s[_i] : new T_literalNode())._freq < (_s != null ? _s[_j] : new T_literalNode())._freq;
    }
    @:keep
    public function len():GoInt {
        var _s = __t__;
        (_s == null ? null : _s.__copy__());
        return (_s != null ? _s.length : ((0 : GoInt)));
    }
    @:keep
    public function _sort(_a:Slice<T_literalNode>):Void {
        var _s = __t__;
        _s;
        _s = (((_a : T_byFreq)) == null ? null : ((_a : T_byFreq)).__copy__());
        stdgo.sort.Sort.sort(new Ref_wrapper<T_byFreq>(_s));
    }
    public var __t__ : T_byFreq;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_byFreq_static_extension {
    @:keep
    public static function swap(_s:T_byFreq, _i:GoInt, _j:GoInt):Void {
        (_s == null ? null : _s.__copy__());
        {
            final __tmp__0 = ((_s != null ? _s[_j] : new T_literalNode()) == null ? null : (_s != null ? _s[_j] : new T_literalNode()).__copy__());
            final __tmp__1 = ((_s != null ? _s[_i] : new T_literalNode()) == null ? null : (_s != null ? _s[_i] : new T_literalNode()).__copy__());
            if (_s != null) _s[_i] = __tmp__0;
            if (_s != null) _s[_j] = __tmp__1;
        };
    }
    @:keep
    public static function less(_s:T_byFreq, _i:GoInt, _j:GoInt):Bool {
        (_s == null ? null : _s.__copy__());
        if ((_s != null ? _s[_i] : new T_literalNode())._freq == (_s != null ? _s[_j] : new T_literalNode())._freq) {
            return (_s != null ? _s[_i] : new T_literalNode())._literal < (_s != null ? _s[_j] : new T_literalNode())._literal;
        };
        return (_s != null ? _s[_i] : new T_literalNode())._freq < (_s != null ? _s[_j] : new T_literalNode())._freq;
    }
    @:keep
    public static function len(_s:T_byFreq):GoInt {
        (_s == null ? null : _s.__copy__());
        return (_s != null ? _s.length : ((0 : GoInt)));
    }
    @:keep
    public static function _sort(_s:Ref<T_byFreq>, _a:Slice<T_literalNode>):Void {
        _s;
        _s = (((_a : T_byFreq)) == null ? null : ((_a : T_byFreq)).__copy__());
        stdgo.sort.Sort.sort(new Ref_wrapper<T_byFreq>(_s));
    }
}
class CorruptInputError_wrapper {
    @:keep
    public function error():GoString {
        var _e = __t__;
        _e;
        return ((("flate: corrupt input before offset " : GoString))) + stdgo.strconv.Strconv.formatInt(((_e : GoInt64)), ((10 : GoInt)));
    }
    public var __t__ : CorruptInputError;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class CorruptInputError_static_extension {
    @:keep
    public static function error(_e:CorruptInputError):GoString {
        _e;
        return ((("flate: corrupt input before offset " : GoString))) + stdgo.strconv.Strconv.formatInt(((_e : GoInt64)), ((10 : GoInt)));
    }
}
class InternalError_wrapper {
    @:keep
    public function error():GoString {
        var _e = __t__;
        _e;
        return ((("flate: internal error: " : GoString))) + ((_e : GoString));
    }
    public var __t__ : InternalError;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class InternalError_static_extension {
    @:keep
    public static function error(_e:InternalError):GoString {
        _e;
        return ((("flate: internal error: " : GoString))) + ((_e : GoString));
    }
}
class T_token_wrapper {
    @:keep
    public function _length():GoUInt32 {
        var _t = __t__;
        _t;
        return ((((_t - ((1073741824 : GoUInt32))) >> ((22 : GoUnTypedInt))) : GoUInt32));
    }
    @:keep
    public function _offset():GoUInt32 {
        var _t = __t__;
        _t;
        return ((_t : GoUInt32)) & ((4194303 : GoUInt32));
    }
    @:keep
    public function _literal():GoUInt32 {
        var _t = __t__;
        _t;
        return (((_t - ((0 : GoUInt32))) : GoUInt32));
    }
    public var __t__ : T_token;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_token_static_extension {
    @:keep
    public static function _length(_t:T_token):GoUInt32 {
        _t;
        return ((((_t - ((1073741824 : GoUInt32))) >> ((22 : GoUnTypedInt))) : GoUInt32));
    }
    @:keep
    public static function _offset(_t:T_token):GoUInt32 {
        _t;
        return ((_t : GoUInt32)) & ((4194303 : GoUInt32));
    }
    @:keep
    public static function _literal(_t:T_token):GoUInt32 {
        _t;
        return (((_t - ((0 : GoUInt32))) : GoUInt32));
    }
}
