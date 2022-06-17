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
var _huffOffset : T_huffmanEncoder = null;
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
    @:embedded
    public var _compressionLevel : T_compressionLevel = new T_compressionLevel();
    public var _w : Ref<T_huffmanBitWriter> = null;
    public var _bulkHasher : (Slice<GoUInt8>, Slice<GoUInt32>) -> Void = null;
    public var _fill : (Ref<T_compressor>, Slice<GoUInt8>) -> GoInt = null;
    public var _step : Ref<T_compressor> -> Void = null;
    public var _sync : Bool = false;
    public var _bestSpeed : Ref<T_deflateFast> = null;
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
    public var _writer : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _bits : GoUInt64 = ((0 : GoUInt64));
    public var _nbits : GoUInt = ((0 : GoUInt));
    public var _bytes : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 248) ((0 : GoUInt8))]);
    public var _codegenFreq : GoArray<GoInt32> = new GoArray<GoInt32>(...[for (i in 0 ... 19) ((0 : GoInt32))]);
    public var _nbytes : GoInt = ((0 : GoInt));
    public var _literalFreq : Slice<GoInt32> = ((null : Slice<GoInt32>));
    public var _offsetFreq : Slice<GoInt32> = ((null : Slice<GoInt32>));
    public var _codegen : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _literalEncoding : Ref<T_huffmanEncoder> = null;
    public var _offsetEncoding : Ref<T_huffmanEncoder> = null;
    public var _codegenEncoding : Ref<T_huffmanEncoder> = null;
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
@:structInit @:using(stdgo.compress.flate.Flate.T_hcode_static_extension) class T_hcode {
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
    public var _r : Reader = ((null : Reader));
    public var _roffset : GoInt64 = ((0 : GoInt64));
    public var _b : GoUInt32 = ((0 : GoUInt32));
    public var _nb : GoUInt = ((0 : GoUInt));
    public var _h1 : T_huffmanDecoder = new T_huffmanDecoder();
    public var _h2 : T_huffmanDecoder = new T_huffmanDecoder();
    public var _bits : Ref<GoArray<GoInt>> = null;
    public var _codebits : Ref<GoArray<GoInt>> = null;
    public var _dict : T_dictDecoder = new T_dictDecoder();
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
    public var _step : Ref<T_decompressor> -> Void = null;
    public var _stepState : GoInt = ((0 : GoInt));
    public var _final : Bool = false;
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _toRead : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _hl : Ref<T_huffmanDecoder> = null;
    public var _hd : Ref<T_huffmanDecoder> = null;
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
@:named @:using(stdgo.compress.flate.Flate.T_byLiteral_static_extension) typedef T_byLiteral = Slice<T_literalNode>;
@:named @:using(stdgo.compress.flate.Flate.T_byFreq_static_extension) typedef T_byFreq = Slice<T_literalNode>;
@:named @:using(stdgo.compress.flate.Flate.CorruptInputError_static_extension) typedef CorruptInputError = GoInt64;
@:named @:using(stdgo.compress.flate.Flate.InternalError_static_extension) typedef InternalError = GoString;
@:named @:using(stdgo.compress.flate.Flate.T_token_static_extension) typedef T_token = GoUInt32;
/**
    // hash4 returns a hash representation of the first 4 bytes
    // of the supplied slice.
    // The caller must ensure that len(b) >= 4.
**/
function _hash4(_b:Slice<GoByte>):GoUInt32 {
        return (((((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((24 : GoUnTypedInt)))) * ((506832829 : GoUInt32))) >> ((15 : GoUnTypedInt));
    }
/**
    // bulkHash4 will compute hashes using the same
    // algorithm as hash4
**/
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
/**
    // matchLen returns the number of matching bytes in a and b
    // up to length 'max'. Both slices must be at least 'max'
    // bytes in size.
**/
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
/**
    // NewWriter returns a new Writer compressing data at the given level.
    // Following zlib, levels range from 1 (BestSpeed) to 9 (BestCompression);
    // higher levels typically run slower but compress more. Level 0
    // (NoCompression) does not attempt any compression; it only adds the
    // necessary DEFLATE framing.
    // Level -1 (DefaultCompression) uses the default compression level.
    // Level -2 (HuffmanOnly) will use Huffman compression only, giving
    // a very fast compression for all types of input, but sacrificing considerable
    // compression efficiency.
    //
    // If level is in the range [-2, 9] then the error returned will be nil.
    // Otherwise the error returned will be non-nil.
**/
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
/**
    // NewWriterDict is like NewWriter but initializes the new
    // Writer with a preset dictionary. The returned Writer behaves
    // as if the dictionary had been written to it without producing
    // any compressed output. The compressed data written to w
    // can only be decompressed by a Reader initialized with the
    // same dictionary.
**/
function newWriterDict(_w:stdgo.io.Io.Writer, _level:GoInt, _dict:Slice<GoByte>):{ var _0 : Writer; var _1 : Error; } {
        var _dw = ((new T_dictWriter(_w) : T_dictWriter));
        var __tmp__ = newWriter(_dw, _level), _zw:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        _zw._d._fillWindow(_dict);
        _zw._dict = (_zw._dict != null ? _zw._dict.__append__(..._dict.__toArray__()) : new Slice<GoUInt8>(..._dict.__toArray__()));
        return { _0 : _zw, _1 : _err };
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
function _newHuffmanBitWriter(_w:stdgo.io.Io.Writer):T_huffmanBitWriter {
        return (({ _writer : _w, _literalFreq : new Slice<GoInt32>(...[for (i in 0 ... ((((286 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]), _offsetFreq : new Slice<GoInt32>(...[for (i in 0 ... ((((30 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]), _codegen : new Slice<GoUInt8>(...[for (i in 0 ... ((((317 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]), _literalEncoding : _newHuffmanEncoder(((286 : GoInt))), _codegenEncoding : _newHuffmanEncoder(((19 : GoInt))), _offsetEncoding : _newHuffmanEncoder(((30 : GoInt))), _bits : 0, _nbits : 0, _bytes : new GoArray<GoUInt8>(...[for (i in 0 ... 248) ((0 : GoUInt8))]), _codegenFreq : new GoArray<GoInt32>(...[for (i in 0 ... 19) ((0 : GoInt32))]), _nbytes : 0, _err : new stdgo.Error() } : T_huffmanBitWriter));
    }
/**
    // histogram accumulates a histogram of b in h.
    //
    // len(h) must be >= 256, and h's elements must be all zeroes.
**/
function _histogram(_b:Slice<GoByte>, _h:Slice<GoInt32>):Void {
        _h = ((_h.__slice__(0, ((256 : GoInt))) : Slice<GoInt32>));
        for (_0 => _t in _b) {
            if (_h != null) _h[_t]++;
        };
    }
function _maxNode():T_literalNode {
        return ((new T_literalNode(((65535 : GoUInt16)), ((2147483647 : GoInt32))) : T_literalNode));
    }
function _newHuffmanEncoder(_size:GoInt):T_huffmanEncoder {
        return (({ _codes : new Slice<T_hcode>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) new T_hcode()]), _freqcache : ((null : Slice<T_literalNode>)), _bitCount : new GoArray<GoInt32>(...[for (i in 0 ... 17) ((0 : GoInt32))]), _lns : new T_byLiteral(), _lfs : new T_byFreq() } : T_huffmanEncoder));
    }
/**
    // Generates a HuffmanCode corresponding to the fixed literal table
**/
function _generateFixedLiteralEncoding():T_huffmanEncoder {
        var _h = _newHuffmanEncoder(((286 : GoInt)));
        var _codes = _h._codes;
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
                if (_codes != null) _codes[_ch] = (({ _code : _reverseBits(_bits, ((_size : GoByte))), _len : _size } : T_hcode));
            });
        };
        return _h;
    }
function _generateFixedOffsetEncoding():T_huffmanEncoder {
        var _h = _newHuffmanEncoder(((30 : GoInt)));
        var _codes = _h._codes;
        for (_ch => _ in _codes) {
            if (_codes != null) _codes[_ch] = (({ _code : _reverseBits(((_ch : GoUInt16)), ((5 : GoUInt8))), _len : ((5 : GoUInt16)) } : T_hcode));
        };
        return _h;
    }
function _reverseBits(_number:GoUInt16, _bitLength:GoByte):GoUInt16 {
        return stdgo.math.bits.Bits.reverse16(_number << (((16 : GoUInt8)) - _bitLength));
    }
/**
    // noEOF returns err, unless err == io.EOF, in which case it returns io.ErrUnexpectedEOF.
**/
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
/**
    // NewReader returns a new ReadCloser that can be used
    // to read the uncompressed version of r.
    // If r does not also implement io.ByteReader,
    // the decompressor may read more data than necessary from r.
    // It is the caller's responsibility to call Close on the ReadCloser
    // when finished reading.
    //
    // The ReadCloser returned by NewReader also implements Resetter.
**/
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
/**
    // NewReaderDict is like NewReader but initializes the reader
    // with a preset dictionary. The returned Reader behaves as if
    // the uncompressed data stream started with the given dictionary,
    // which has already been read. NewReaderDict is typically used
    // to read data compressed by NewWriterDict.
    //
    // The ReadCloser returned by NewReader also implements Resetter.
**/
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
/**
    // Convert a literal into a literal token.
**/
function _literalToken(_literal:GoUInt32):T_token {
        return (((((0 : GoUInt32)) + _literal) : T_token));
    }
/**
    // Convert a < xlength, xoffset > pair into a match token.
**/
function _matchToken(_xlength:GoUInt32, _xoffset:GoUInt32):T_token {
        return ((((((1073741824 : GoUInt32)) + (_xlength << ((22 : GoUnTypedInt)))) + _xoffset) : T_token));
    }
function _lengthCode(_len:GoUInt32):GoUInt32 {
        return (_lengthCodes != null ? _lengthCodes[_len] : ((0 : GoUInt32)));
    }
/**
    // Returns the offset code corresponding to a specific offset
**/
function _offsetCode(_off:GoUInt32):GoUInt32 {
        if (_off < (((_offsetCodes != null ? _offsetCodes.length : ((0 : GoInt))) : GoUInt32))) {
            return (_offsetCodes != null ? _offsetCodes[_off] : ((0 : GoUInt32)));
        };
        if ((_off >> ((7 : GoUnTypedInt))) < (((_offsetCodes != null ? _offsetCodes.length : ((0 : GoInt))) : GoUInt32))) {
            return (_offsetCodes != null ? _offsetCodes[_off >> ((7 : GoUnTypedInt))] : ((0 : GoUInt32))) + ((14 : GoUInt32));
        };
        return (_offsetCodes != null ? _offsetCodes[_off >> ((14 : GoUnTypedInt))] : ((0 : GoUInt32))) + ((28 : GoUInt32));
    }
@:keep var _ = {
        try {
            var _offsetFreq = new Slice<GoInt32>(...[for (i in 0 ... ((((30 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]);
            if (_offsetFreq != null) _offsetFreq[((0 : GoInt))] = ((1 : GoInt32));
            _huffOffset = _newHuffmanEncoder(((30 : GoInt)));
            _huffOffset._generate(_offsetFreq, ((15 : GoInt32)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
@:keep class T_compressor_static_extension {
    @:keep
    public static function _close( _d:T_compressor):Error {
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
    public static function _reset( _d:T_compressor, _w:stdgo.io.Io.Writer):Void {
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
    public static function _init( _d:T_compressor, _w:stdgo.io.Io.Writer, _level:GoInt):Error {
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
    public static function _syncFlush( _d:T_compressor):Error {
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
    public static function _write( _d:T_compressor, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
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
    /**
        // storeHuff compresses and stores the currently added data
        // when the d.window is full or we are at the end of the stream.
        // Any error that occurred will be in d.err
    **/
    @:keep
    public static function _storeHuff( _d:T_compressor):Void {
        if (((_d._windowEnd < (_d._window != null ? _d._window.length : ((0 : GoInt)))) && !_d._sync) || (_d._windowEnd == ((0 : GoInt)))) {
            return;
        };
        _d._w._writeBlockHuff(false, ((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
        _d._err = _d._w._err;
        _d._windowEnd = ((0 : GoInt));
    }
    @:keep
    public static function _store( _d:T_compressor):Void {
        if ((_d._windowEnd > ((0 : GoInt))) && ((_d._windowEnd == ((65535 : GoInt))) || _d._sync)) {
            _d._err = _d._writeStoredBlock(((_d._window.__slice__(0, _d._windowEnd) : Slice<GoUInt8>)));
            _d._windowEnd = ((0 : GoInt));
        };
    }
    @:keep
    public static function _fillStore( _d:T_compressor, _b:Slice<GoByte>):GoInt {
        var _n:GoInt = Go.copySlice(((_d._window.__slice__(_d._windowEnd) : Slice<GoUInt8>)), _b);
        _d._windowEnd = _d._windowEnd + (_n);
        return _n;
    }
    @:keep
    public static function _deflate( _d:T_compressor):Void {
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
                    var _hh = Go.pointer((_d._hashHead != null ? _d._hashHead[_d._hash & ((131071 : GoUInt32))] : ((0 : GoUInt32))));
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
                                    var _hh = Go.pointer((_d._hashHead != null ? _d._hashHead[_d._hash & ((131071 : GoUInt32))] : ((0 : GoUInt32))));
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
    public static function _initDeflate( _d:T_compressor):Void {
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
    /**
        // encSpeed will compress and store the currently added data,
        // if enough has been accumulated or we at the end of the stream.
        // Any error that occurred will be in d.err
    **/
    @:keep
    public static function _encSpeed( _d:T_compressor):Void {
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
    public static function _writeStoredBlock( _d:T_compressor, _buf:Slice<GoByte>):Error {
        {
            _d._w._writeStoredHeader((_buf != null ? _buf.length : ((0 : GoInt))), false);
            if (_d._w._err != null) {
                return _d._w._err;
            };
        };
        _d._w._writeBytes(_buf);
        return _d._w._err;
    }
    /**
        // Try to find a match starting at index whose length is greater than prevSize.
        // We only look at chainCount possibilities before giving up.
    **/
    @:keep
    public static function _findMatch( _d:T_compressor, _pos:GoInt, _prevHead:GoInt, _prevLength:GoInt, _lookahead:GoInt):{ var _0 : GoInt; var _1 : GoInt; var _2 : Bool; } {
        var _length:GoInt = ((0 : GoInt)), _offset:GoInt = ((0 : GoInt)), _ok:Bool = false;
        var _minMatchLook:GoInt = ((258 : GoInt));
        if (_lookahead < _minMatchLook) {
            _minMatchLook = _lookahead;
        };
        var _win = ((_d._window.__slice__(((0 : GoInt)), _pos + _minMatchLook) : Slice<GoUInt8>));
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
        var _wPos = ((_win.__slice__(_pos) : Slice<GoUInt8>));
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
    /**
        // fillWindow will fill the current window with the supplied
        // dictionary and calculate all hashes.
        // This is much faster than doing a full encode.
        // Should only be used after a reset.
    **/
    @:keep
    public static function _fillWindow( _d:T_compressor, _b:Slice<GoByte>):Void {
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
                var _toCheck = ((_d._window.__slice__(_index, _end) : Slice<GoUInt8>));
                var _dstSize:GoInt = ((_toCheck != null ? _toCheck.length : ((0 : GoInt))) - ((4 : GoInt))) + ((1 : GoInt));
                if (_dstSize <= ((0 : GoInt))) {
                    continue;
                };
                var _dst = ((_d._hashMatch.__slice__(0, _dstSize) : Slice<GoUInt32>));
                _d._bulkHasher(_toCheck, _dst);
                var _newH:GoUInt32 = ((0 : GoUInt32));
                for (_i => _val in _dst) {
                    var _di:GoInt = _i + _index;
                    _newH = _val;
                    var _hh = Go.pointer((_d._hashHead != null ? _d._hashHead[_newH & ((131071 : GoUInt32))] : ((0 : GoUInt32))));
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
    public static function _writeBlock( _d:T_compressor, _tokens:Slice<T_token>, _index:GoInt):Error {
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
    public static function _fillDeflate( _d:T_compressor, _b:Slice<GoByte>):GoInt {
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
class T_compressor_wrapper {
    @:keep
    public var _close : () -> Error = null;
    @:keep
    public var _reset : stdgo.io.Io.Writer -> Void = null;
    @:keep
    public var _init : (stdgo.io.Io.Writer, GoInt) -> Error = null;
    @:keep
    public var _syncFlush : () -> Error = null;
    @:keep
    public var _write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // storeHuff compresses and stores the currently added data
        // when the d.window is full or we are at the end of the stream.
        // Any error that occurred will be in d.err
    **/
    @:keep
    public var _storeHuff : () -> Void = null;
    @:keep
    public var _store : () -> Void = null;
    @:keep
    public var _fillStore : Slice<GoByte> -> GoInt = null;
    @:keep
    public var _deflate : () -> Void = null;
    @:keep
    public var _initDeflate : () -> Void = null;
    /**
        // encSpeed will compress and store the currently added data,
        // if enough has been accumulated or we at the end of the stream.
        // Any error that occurred will be in d.err
    **/
    @:keep
    public var _encSpeed : () -> Void = null;
    @:keep
    public var _writeStoredBlock : Slice<GoByte> -> Error = null;
    /**
        // Try to find a match starting at index whose length is greater than prevSize.
        // We only look at chainCount possibilities before giving up.
    **/
    @:keep
    public var _findMatch : (GoInt, GoInt, GoInt, GoInt) -> { var _0 : GoInt; var _1 : GoInt; var _2 : Bool; } = null;
    /**
        // fillWindow will fill the current window with the supplied
        // dictionary and calculate all hashes.
        // This is much faster than doing a full encode.
        // Should only be used after a reset.
    **/
    @:keep
    public var _fillWindow : Slice<GoByte> -> Void = null;
    @:keep
    public var _writeBlock : (Slice<T_token>, GoInt) -> Error = null;
    @:keep
    public var _fillDeflate : Slice<GoByte> -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_compressor;
}
@:keep class T_dictWriter_static_extension {
    @:keep
    public static function write( _w:T_dictWriter, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _w._w.write(_b);
    }
}
class T_dictWriter_wrapper {
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_dictWriter;
}
@:keep class Writer_static_extension {
    /**
        // Reset discards the writer's state and makes it equivalent to
        // the result of NewWriter or NewWriterDict called with dst
        // and w's level and dictionary.
    **/
    @:keep
    public static function reset( _w:Writer, _dst:stdgo.io.Io.Writer):Void {
        {
            var __tmp__ = try {
                { value : ((((_w._d._w._writer.__underlying__().value : Dynamic)) : T_dictWriter)), ok : true };
            } catch(_) {
                { value : null, ok : false };
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
    /**
        // Close flushes and closes the writer.
    **/
    @:keep
    public static function close( _w:Writer):Error {
        return _w._d._close();
    }
    /**
        // Flush flushes any pending data to the underlying writer.
        // It is useful mainly in compressed network protocols, to ensure that
        // a remote reader has enough data to reconstruct a packet.
        // Flush does not return until the data has been written.
        // Calling Flush when there is no pending data still causes the Writer
        // to emit a sync marker of at least 4 bytes.
        // If the underlying writer returns an error, Flush returns that error.
        //
        // In the terminology of the zlib library, Flush is equivalent to Z_SYNC_FLUSH.
    **/
    @:keep
    public static function flush( _w:Writer):Error {
        return _w._d._syncFlush();
    }
    /**
        // Write writes data to w, which will eventually write the
        // compressed form of data to its underlying writer.
    **/
    @:keep
    public static function write( _w:Writer, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _w._d._write(_data);
    }
}
class Writer_wrapper {
    /**
        // Reset discards the writer's state and makes it equivalent to
        // the result of NewWriter or NewWriterDict called with dst
        // and w's level and dictionary.
    **/
    @:keep
    public var reset : stdgo.io.Io.Writer -> Void = null;
    /**
        // Close flushes and closes the writer.
    **/
    @:keep
    public var close : () -> Error = null;
    /**
        // Flush flushes any pending data to the underlying writer.
        // It is useful mainly in compressed network protocols, to ensure that
        // a remote reader has enough data to reconstruct a packet.
        // Flush does not return until the data has been written.
        // Calling Flush when there is no pending data still causes the Writer
        // to emit a sync marker of at least 4 bytes.
        // If the underlying writer returns an error, Flush returns that error.
        //
        // In the terminology of the zlib library, Flush is equivalent to Z_SYNC_FLUSH.
    **/
    @:keep
    public var flush : () -> Error = null;
    /**
        // Write writes data to w, which will eventually write the
        // compressed form of data to its underlying writer.
    **/
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Writer;
}
@:keep class T_deflateFast_static_extension {
    /**
        // shiftOffsets will shift down all match offset.
        // This is only called in rare situations to prevent integer overflow.
        //
        // See https://golang.org/issue/18636 and https://github.com/golang/go/issues/34121.
    **/
    @:keep
    public static function _shiftOffsets( _e:T_deflateFast):Void {
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
    /**
        // Reset resets the encoding history.
        // This ensures that no matches are made to the previous block.
    **/
    @:keep
    public static function _reset( _e:T_deflateFast):Void {
        _e._prev = ((_e._prev.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>));
        _e._cur = _e._cur + (((32768 : GoInt32)));
        if (_e._cur >= ((2147352577 : GoInt32))) {
            _e._shiftOffsets();
        };
    }
    /**
        // matchLen returns the match length between src[s:] and src[t:].
        // t can be negative to indicate the match is starting in e.prev.
        // We assume that src[s-4:s] and src[t-4:t] already match.
    **/
    @:keep
    public static function _matchLen( _e:T_deflateFast, _s:GoInt32, _t:GoInt32, _src:Slice<GoByte>):GoInt32 {
        var _s1:GoInt = (((_s : GoInt)) + ((258 : GoInt))) - ((4 : GoInt));
        if (_s1 > (_src != null ? _src.length : ((0 : GoInt)))) {
            _s1 = (_src != null ? _src.length : ((0 : GoInt)));
        };
        if (_t >= ((0 : GoInt32))) {
            var _b = ((_src.__slice__(_t) : Slice<GoUInt8>));
            var _a = ((_src.__slice__(_s, _s1) : Slice<GoUInt8>));
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
        var _a = ((_src.__slice__(_s, _s1) : Slice<GoUInt8>));
        var _b = ((_e._prev.__slice__(_tp) : Slice<GoUInt8>));
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
    /**
        // encode encodes a block given in src and appends tokens
        // to dst and returns the result.
    **/
    @:keep
    public static function _encode( _e:T_deflateFast, _dst:Slice<T_token>, _src:Slice<GoByte>):Slice<T_token> {
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
                    if (_e._table != null) _e._table[_nextHash & ((16383 : GoUInt32))] = (({ _offset : _s + _e._cur, _val : _cv } : T_tableEntry));
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
                    if (_e._table != null) _e._table[_prevHash & ((16383 : GoUInt32))] = (({ _offset : (_e._cur + _s) - ((1 : GoInt32)), _val : ((_x : GoUInt32)) } : T_tableEntry));
                    _x = _x >> (((8 : GoUnTypedInt)));
                    var _currHash:GoUInt32 = _hash(((_x : GoUInt32)));
                    _candidate = ((_e._table != null ? _e._table[_currHash & ((16383 : GoUInt32))] : new T_tableEntry()) == null ? null : (_e._table != null ? _e._table[_currHash & ((16383 : GoUInt32))] : new T_tableEntry()).__copy__());
                    if (_e._table != null) _e._table[_currHash & ((16383 : GoUInt32))] = (({ _offset : _e._cur + _s, _val : ((_x : GoUInt32)) } : T_tableEntry));
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
class T_deflateFast_wrapper {
    /**
        // shiftOffsets will shift down all match offset.
        // This is only called in rare situations to prevent integer overflow.
        //
        // See https://golang.org/issue/18636 and https://github.com/golang/go/issues/34121.
    **/
    @:keep
    public var _shiftOffsets : () -> Void = null;
    /**
        // Reset resets the encoding history.
        // This ensures that no matches are made to the previous block.
    **/
    @:keep
    public var _reset : () -> Void = null;
    /**
        // matchLen returns the match length between src[s:] and src[t:].
        // t can be negative to indicate the match is starting in e.prev.
        // We assume that src[s-4:s] and src[t-4:t] already match.
    **/
    @:keep
    public var _matchLen : (GoInt32, GoInt32, Slice<GoByte>) -> GoInt32 = null;
    /**
        // encode encodes a block given in src and appends tokens
        // to dst and returns the result.
    **/
    @:keep
    public var _encode : (Slice<T_token>, Slice<GoByte>) -> Slice<T_token> = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_deflateFast;
}
@:keep class T_dictDecoder_static_extension {
    /**
        // readFlush returns a slice of the historical buffer that is ready to be
        // emitted to the user. The data returned by readFlush must be fully consumed
        // before calling any other dictDecoder methods.
    **/
    @:keep
    public static function _readFlush( _dd:T_dictDecoder):Slice<GoByte> {
        var _toRead = ((_dd._hist.__slice__(_dd._rdPos, _dd._wrPos) : Slice<GoUInt8>));
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
    /**
        // tryWriteCopy tries to copy a string at a given (distance, length) to the
        // output. This specialized version is optimized for short distances.
        //
        // This method is designed to be inlined for performance reasons.
        //
        // This invariant must be kept: 0 < dist <= histSize()
    **/
    @:keep
    public static function _tryWriteCopy( _dd:T_dictDecoder, _dist:GoInt, _length:GoInt):GoInt {
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
    /**
        // writeCopy copies a string at a given (dist, length) to the output.
        // This returns the number of bytes copied and may be less than the requested
        // length if the available space in the output buffer is too small.
        //
        // This invariant must be kept: 0 < dist <= histSize()
    **/
    @:keep
    public static function _writeCopy( _dd:T_dictDecoder, _dist:GoInt, _length:GoInt):GoInt {
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
    /**
        // writeByte writes a single byte to the dictionary.
        //
        // This invariant must be kept: 0 < availWrite()
    **/
    @:keep
    public static function _writeByte( _dd:T_dictDecoder, _c:GoByte):Void {
        if (_dd._hist != null) _dd._hist[_dd._wrPos] = _c;
        _dd._wrPos++;
    }
    /**
        // writeMark advances the writer pointer by cnt.
        //
        // This invariant must be kept: 0 <= cnt <= availWrite()
    **/
    @:keep
    public static function _writeMark( _dd:T_dictDecoder, _cnt:GoInt):Void {
        _dd._wrPos = _dd._wrPos + (_cnt);
    }
    /**
        // writeSlice returns a slice of the available buffer to write data to.
        //
        // This invariant will be kept: len(s) <= availWrite()
    **/
    @:keep
    public static function _writeSlice( _dd:T_dictDecoder):Slice<GoByte> {
        return ((_dd._hist.__slice__(_dd._wrPos) : Slice<GoUInt8>));
    }
    /**
        // availWrite reports the available amount of output buffer space.
    **/
    @:keep
    public static function _availWrite( _dd:T_dictDecoder):GoInt {
        return (_dd._hist != null ? _dd._hist.length : ((0 : GoInt))) - _dd._wrPos;
    }
    /**
        // availRead reports the number of bytes that can be flushed by readFlush.
    **/
    @:keep
    public static function _availRead( _dd:T_dictDecoder):GoInt {
        return _dd._wrPos - _dd._rdPos;
    }
    /**
        // histSize reports the total amount of historical data in the dictionary.
    **/
    @:keep
    public static function _histSize( _dd:T_dictDecoder):GoInt {
        if (_dd._full) {
            return (_dd._hist != null ? _dd._hist.length : ((0 : GoInt)));
        };
        return _dd._wrPos;
    }
    /**
        // init initializes dictDecoder to have a sliding window dictionary of the given
        // size. If a preset dict is provided, it will initialize the dictionary with
        // the contents of dict.
    **/
    @:keep
    public static function _init( _dd:T_dictDecoder, _size:GoInt, _dict:Slice<GoByte>):Void {
        {
            var __tmp__ = (({ _hist : _dd._hist, _wrPos : 0, _rdPos : 0, _full : false } : T_dictDecoder));
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
class T_dictDecoder_wrapper {
    /**
        // readFlush returns a slice of the historical buffer that is ready to be
        // emitted to the user. The data returned by readFlush must be fully consumed
        // before calling any other dictDecoder methods.
    **/
    @:keep
    public var _readFlush : () -> Slice<GoByte> = null;
    /**
        // tryWriteCopy tries to copy a string at a given (distance, length) to the
        // output. This specialized version is optimized for short distances.
        //
        // This method is designed to be inlined for performance reasons.
        //
        // This invariant must be kept: 0 < dist <= histSize()
    **/
    @:keep
    public var _tryWriteCopy : (GoInt, GoInt) -> GoInt = null;
    /**
        // writeCopy copies a string at a given (dist, length) to the output.
        // This returns the number of bytes copied and may be less than the requested
        // length if the available space in the output buffer is too small.
        //
        // This invariant must be kept: 0 < dist <= histSize()
    **/
    @:keep
    public var _writeCopy : (GoInt, GoInt) -> GoInt = null;
    /**
        // writeByte writes a single byte to the dictionary.
        //
        // This invariant must be kept: 0 < availWrite()
    **/
    @:keep
    public var _writeByte : GoByte -> Void = null;
    /**
        // writeMark advances the writer pointer by cnt.
        //
        // This invariant must be kept: 0 <= cnt <= availWrite()
    **/
    @:keep
    public var _writeMark : GoInt -> Void = null;
    /**
        // writeSlice returns a slice of the available buffer to write data to.
        //
        // This invariant will be kept: len(s) <= availWrite()
    **/
    @:keep
    public var _writeSlice : () -> Slice<GoByte> = null;
    /**
        // availWrite reports the available amount of output buffer space.
    **/
    @:keep
    public var _availWrite : () -> GoInt = null;
    /**
        // availRead reports the number of bytes that can be flushed by readFlush.
    **/
    @:keep
    public var _availRead : () -> GoInt = null;
    /**
        // histSize reports the total amount of historical data in the dictionary.
    **/
    @:keep
    public var _histSize : () -> GoInt = null;
    /**
        // init initializes dictDecoder to have a sliding window dictionary of the given
        // size. If a preset dict is provided, it will initialize the dictionary with
        // the contents of dict.
    **/
    @:keep
    public var _init : (GoInt, Slice<GoByte>) -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_dictDecoder;
}
@:keep class T_huffmanBitWriter_static_extension {
    /**
        // writeBlockHuff encodes a block of bytes as either
        // Huffman encoded literals or uncompressed bytes if the
        // results only gains very little from compression.
    **/
    @:keep
    public static function _writeBlockHuff( _w:T_huffmanBitWriter, _eof:Bool, _input:Slice<GoByte>):Void {
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
        var _encoding = ((_w._literalEncoding._codes.__slice__(0, ((257 : GoInt))) : Slice<T_hcode>));
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
            var _bytes = ((_w._bytes.__slice__(_n, _n + ((6 : GoInt))) : Slice<GoUInt8>));
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
    /**
        // writeTokens writes a slice of tokens to the output.
        // codes for literal and offset encoding must be supplied.
    **/
    @:keep
    public static function _writeTokens( _w:T_huffmanBitWriter, _tokens:Slice<T_token>, _leCodes:Slice<T_hcode>, _oeCodes:Slice<T_hcode>):Void {
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
    /**
        // indexTokens indexes a slice of tokens, and updates
        // literalFreq and offsetFreq, and generates literalEncoding
        // and offsetEncoding.
        // The number of literal and offset tokens is returned.
    **/
    @:keep
    public static function _indexTokens( _w:T_huffmanBitWriter, _tokens:Slice<T_token>):{ var _0 : GoInt; var _1 : GoInt; } {
        var _numLiterals:GoInt = ((0 : GoInt)), _numOffsets:GoInt = ((0 : GoInt));
        for (_i => _ in _w._literalFreq) {
            if (_w._literalFreq != null) _w._literalFreq[_i] = ((0 : GoInt32));
        };
        for (_i => _ in _w._offsetFreq) {
            if (_w._offsetFreq != null) _w._offsetFreq[_i] = ((0 : GoInt32));
        };
        for (_0 => _t in _tokens) {
            if (_t < ((1073741824 : GoUInt32))) {
                if (_w._literalFreq != null) _w._literalFreq[_t._literal()]++;
                continue;
            };
            var _length:GoUInt32 = _t._length();
            var _offset:GoUInt32 = _t._offset();
            if (_w._literalFreq != null) _w._literalFreq[((257 : GoUInt32)) + _lengthCode(_length)]++;
            if (_w._offsetFreq != null) _w._offsetFreq[_offsetCode(_offset)]++;
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
    /**
        // writeBlockDynamic encodes a block using a dynamic Huffman table.
        // This should be used if the symbols used have a disproportionate
        // histogram distribution.
        // If input is supplied and the compression savings are below 1/16th of the
        // input size the block is stored.
    **/
    @:keep
    public static function _writeBlockDynamic( _w:T_huffmanBitWriter, _tokens:Slice<T_token>, _eof:Bool, _input:Slice<GoByte>):Void {
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
    /**
        // writeBlock will write a block of tokens with the smallest encoding.
        // The original input can be supplied, and if the huffman encoded data
        // is larger than the original bytes, the data will be written as a
        // stored block.
        // If the input is nil, the tokens will always be Huffman encoded.
    **/
    @:keep
    public static function _writeBlock( _w:T_huffmanBitWriter, _tokens:Slice<T_token>, _eof:Bool, _input:Slice<GoByte>):Void {
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
    public static function _writeFixedHeader( _w:T_huffmanBitWriter, _isEof:Bool):Void {
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
    public static function _writeStoredHeader( _w:T_huffmanBitWriter, _length:GoInt, _isEof:Bool):Void {
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
    /**
        // Write the header of a dynamic Huffman block to the output stream.
        //
        //  numLiterals  The number of literals specified in codegen
        //  numOffsets   The number of offsets specified in codegen
        //  numCodegens  The number of codegens used in codegen
    **/
    @:keep
    public static function _writeDynamicHeader( _w:T_huffmanBitWriter, _numLiterals:GoInt, _numOffsets:GoInt, _numCodegens:GoInt, _isEof:Bool):Void {
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
    public static function _writeCode( _w:T_huffmanBitWriter, _c:T_hcode):Void {
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
            var _bytes = ((_w._bytes.__slice__(_n, _n + ((6 : GoInt))) : Slice<GoUInt8>));
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
    /**
        // storedSize calculates the stored size, including header.
        // The function returns the size in bits and whether the block
        // fits inside a single block.
    **/
    @:keep
    public static function _storedSize( _w:T_huffmanBitWriter, _in:Slice<GoByte>):{ var _0 : GoInt; var _1 : Bool; } {
        if (_in == null) {
            return { _0 : ((0 : GoInt)), _1 : false };
        };
        if ((_in != null ? _in.length : ((0 : GoInt))) <= ((65535 : GoInt))) {
            return { _0 : ((_in != null ? _in.length : ((0 : GoInt))) + ((5 : GoInt))) * ((8 : GoInt)), _1 : true };
        };
        return { _0 : ((0 : GoInt)), _1 : false };
    }
    /**
        // fixedSize returns the size of dynamically encoded data in bits.
    **/
    @:keep
    public static function _fixedSize( _w:T_huffmanBitWriter, _extraBits:GoInt):GoInt {
        return ((((3 : GoInt)) + _fixedLiteralEncoding._bitLength(_w._literalFreq)) + _fixedOffsetEncoding._bitLength(_w._offsetFreq)) + _extraBits;
    }
    /**
        // dynamicSize returns the size of dynamically encoded data in bits.
    **/
    @:keep
    public static function _dynamicSize( _w:T_huffmanBitWriter, _litEnc:T_huffmanEncoder, _offEnc:T_huffmanEncoder, _extraBits:GoInt):{ var _0 : GoInt; var _1 : GoInt; } {
        var _size:GoInt = ((0 : GoInt)), _numCodegens:GoInt = ((0 : GoInt));
        _numCodegens = (_w._codegenFreq != null ? _w._codegenFreq.length : ((0 : GoInt)));
        while ((_numCodegens > ((4 : GoInt))) && ((_w._codegenFreq != null ? _w._codegenFreq[(_codegenOrder != null ? _codegenOrder[_numCodegens - ((1 : GoInt))] : ((0 : GoUInt32)))] : ((0 : GoInt32))) == ((0 : GoInt32)))) {
            _numCodegens--;
        };
        var _header:GoInt = ((((((17 : GoInt)) + (((3 : GoInt)) * _numCodegens)) + _w._codegenEncoding._bitLength(((_w._codegenFreq.__slice__(0) : Slice<GoInt32>)))) + ((((_w._codegenFreq != null ? _w._codegenFreq[((16 : GoInt))] : ((0 : GoInt32))) : GoInt)) * ((2 : GoInt)))) + ((((_w._codegenFreq != null ? _w._codegenFreq[((17 : GoInt))] : ((0 : GoInt32))) : GoInt)) * ((3 : GoInt)))) + ((((_w._codegenFreq != null ? _w._codegenFreq[((18 : GoInt))] : ((0 : GoInt32))) : GoInt)) * ((7 : GoInt)));
        _size = ((_header + _litEnc._bitLength(_w._literalFreq)) + _offEnc._bitLength(_w._offsetFreq)) + _extraBits;
        return { _0 : _size, _1 : _numCodegens };
    }
    /**
        // RFC 1951 3.2.7 specifies a special run-length encoding for specifying
        // the literal and offset lengths arrays (which are concatenated into a single
        // array).  This method generates that run-length encoding.
        //
        // The result is written into the codegen array, and the frequencies
        // of each code is written into the codegenFreq array.
        // Codes 0-15 are single byte codes. Codes 16-18 are followed by additional
        // information. Code badCode is an end marker
        //
        //  numLiterals      The number of literals in literalEncoding
        //  numOffsets       The number of offsets in offsetEncoding
        //  litenc, offenc   The literal and offset encoder to use
    **/
    @:keep
    public static function _generateCodegen( _w:T_huffmanBitWriter, _numLiterals:GoInt, _numOffsets:GoInt, _litEnc:T_huffmanEncoder, _offEnc:T_huffmanEncoder):Void {
        for (_i => _ in _w._codegenFreq) {
            if (_w._codegenFreq != null) _w._codegenFreq[_i] = ((0 : GoInt32));
        };
        var _codegen = _w._codegen;
        var _cgnl = ((_codegen.__slice__(0, _numLiterals) : Slice<GoUInt8>));
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
                    if (_w._codegenFreq != null) _w._codegenFreq[_size]++;
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
                        if (_w._codegenFreq != null) _w._codegenFreq[((16 : GoInt))]++;
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
                        if (_w._codegenFreq != null) _w._codegenFreq[((18 : GoInt))]++;
                        _count = _count - (_n);
                    };
                    if (_count >= ((3 : GoInt))) {
                        if (_codegen != null) _codegen[_outIndex] = ((17 : GoUInt8));
                        _outIndex++;
                        if (_codegen != null) _codegen[_outIndex] = (((_count - ((3 : GoInt))) : GoUInt8));
                        _outIndex++;
                        if (_w._codegenFreq != null) _w._codegenFreq[((17 : GoInt))]++;
                        _count = ((0 : GoInt));
                    };
                };
                _count--;
                Go.cfor(_count >= ((0 : GoInt)), _count--, {
                    if (_codegen != null) _codegen[_outIndex] = _size;
                    _outIndex++;
                    if (_w._codegenFreq != null) _w._codegenFreq[_size]++;
                });
                _size = _nextSize;
                _count = ((1 : GoInt));
            });
        };
        if (_codegen != null) _codegen[_outIndex] = ((255 : GoUInt8));
    }
    @:keep
    public static function _writeBytes( _w:T_huffmanBitWriter, _bytes:Slice<GoByte>):Void {
        if (_w._err != null) {
            return;
        };
        var _n:GoInt = _w._nbytes;
        if ((_w._nbits & ((7 : GoUInt))) != ((0 : GoUInt))) {
            _w._err = {
                final __self__ = new InternalError_wrapper(((((("writeBytes with unfinished bits" : GoString))) : InternalError)));
                __self__.error = #if !macro function():GoString return ((((("writeBytes with unfinished bits" : GoString))) : InternalError)).error() #else null #end;
                __self__;
            };
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
    public static function _writeBits( _w:T_huffmanBitWriter, _b:GoInt32, _nb:GoUInt):Void {
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
            var _bytes = ((_w._bytes.__slice__(_n, _n + ((6 : GoInt))) : Slice<GoUInt8>));
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
    public static function _write( _w:T_huffmanBitWriter, _b:Slice<GoByte>):Void {
        if (_w._err != null) {
            return;
        };
        {
            var __tmp__ = _w._writer.write(_b);
            _w._err = __tmp__._1;
        };
    }
    @:keep
    public static function _flush( _w:T_huffmanBitWriter):Void {
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
    public static function _reset( _w:T_huffmanBitWriter, _writer:stdgo.io.Io.Writer):Void {
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
class T_huffmanBitWriter_wrapper {
    /**
        // writeBlockHuff encodes a block of bytes as either
        // Huffman encoded literals or uncompressed bytes if the
        // results only gains very little from compression.
    **/
    @:keep
    public var _writeBlockHuff : (Bool, Slice<GoByte>) -> Void = null;
    /**
        // writeTokens writes a slice of tokens to the output.
        // codes for literal and offset encoding must be supplied.
    **/
    @:keep
    public var _writeTokens : (Slice<T_token>, Slice<T_hcode>, Slice<T_hcode>) -> Void = null;
    /**
        // indexTokens indexes a slice of tokens, and updates
        // literalFreq and offsetFreq, and generates literalEncoding
        // and offsetEncoding.
        // The number of literal and offset tokens is returned.
    **/
    @:keep
    public var _indexTokens : Slice<T_token> -> { var _0 : GoInt; var _1 : GoInt; } = null;
    /**
        // writeBlockDynamic encodes a block using a dynamic Huffman table.
        // This should be used if the symbols used have a disproportionate
        // histogram distribution.
        // If input is supplied and the compression savings are below 1/16th of the
        // input size the block is stored.
    **/
    @:keep
    public var _writeBlockDynamic : (Slice<T_token>, Bool, Slice<GoByte>) -> Void = null;
    /**
        // writeBlock will write a block of tokens with the smallest encoding.
        // The original input can be supplied, and if the huffman encoded data
        // is larger than the original bytes, the data will be written as a
        // stored block.
        // If the input is nil, the tokens will always be Huffman encoded.
    **/
    @:keep
    public var _writeBlock : (Slice<T_token>, Bool, Slice<GoByte>) -> Void = null;
    @:keep
    public var _writeFixedHeader : Bool -> Void = null;
    @:keep
    public var _writeStoredHeader : (GoInt, Bool) -> Void = null;
    /**
        // Write the header of a dynamic Huffman block to the output stream.
        //
        //  numLiterals  The number of literals specified in codegen
        //  numOffsets   The number of offsets specified in codegen
        //  numCodegens  The number of codegens used in codegen
    **/
    @:keep
    public var _writeDynamicHeader : (GoInt, GoInt, GoInt, Bool) -> Void = null;
    @:keep
    public var _writeCode : T_hcode -> Void = null;
    /**
        // storedSize calculates the stored size, including header.
        // The function returns the size in bits and whether the block
        // fits inside a single block.
    **/
    @:keep
    public var _storedSize : Slice<GoByte> -> { var _0 : GoInt; var _1 : Bool; } = null;
    /**
        // fixedSize returns the size of dynamically encoded data in bits.
    **/
    @:keep
    public var _fixedSize : GoInt -> GoInt = null;
    /**
        // dynamicSize returns the size of dynamically encoded data in bits.
    **/
    @:keep
    public var _dynamicSize : (T_huffmanEncoder, T_huffmanEncoder, GoInt) -> { var _0 : GoInt; var _1 : GoInt; } = null;
    /**
        // RFC 1951 3.2.7 specifies a special run-length encoding for specifying
        // the literal and offset lengths arrays (which are concatenated into a single
        // array).  This method generates that run-length encoding.
        //
        // The result is written into the codegen array, and the frequencies
        // of each code is written into the codegenFreq array.
        // Codes 0-15 are single byte codes. Codes 16-18 are followed by additional
        // information. Code badCode is an end marker
        //
        //  numLiterals      The number of literals in literalEncoding
        //  numOffsets       The number of offsets in offsetEncoding
        //  litenc, offenc   The literal and offset encoder to use
    **/
    @:keep
    public var _generateCodegen : (GoInt, GoInt, T_huffmanEncoder, T_huffmanEncoder) -> Void = null;
    @:keep
    public var _writeBytes : Slice<GoByte> -> Void = null;
    @:keep
    public var _writeBits : (GoInt32, GoUInt) -> Void = null;
    @:keep
    public var _write : Slice<GoByte> -> Void = null;
    @:keep
    public var _flush : () -> Void = null;
    @:keep
    public var _reset : stdgo.io.Io.Writer -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_huffmanBitWriter;
}
@:keep class T_hcode_static_extension {
    /**
        // set sets the code and length of an hcode.
    **/
    @:keep
    public static function _set( _h:T_hcode, _code:GoUInt16, _length:GoUInt16):Void {
        _h._len = _length;
        _h._code = _code;
    }
}
class T_hcode_wrapper {
    /**
        // set sets the code and length of an hcode.
    **/
    @:keep
    public var _set : (GoUInt16, GoUInt16) -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_hcode;
}
@:keep class T_huffmanEncoder_static_extension {
    /**
        // Update this Huffman Code object to be the minimum code for the specified frequency count.
        //
        // freq  An array of frequencies, in which frequency[i] gives the frequency of literal i.
        // maxBits  The maximum number of bits to use for any literal.
    **/
    @:keep
    public static function _generate( _h:T_huffmanEncoder, _freq:Slice<GoInt32>, _maxBits:GoInt32):Void {
        if (_h._freqcache == null) {
            _h._freqcache = new Slice<T_literalNode>(...[for (i in 0 ... ((((287 : GoInt)) : GoInt)).toBasic()) new T_literalNode()]);
        };
        var _list = ((_h._freqcache.__slice__(0, (_freq != null ? _freq.length : ((0 : GoInt))) + ((1 : GoInt))) : Slice<T_literalNode>));
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
        var _bitCount = _h._bitCounts(_list, _maxBits);
        _h._assignEncodingAndSize(_bitCount, _list);
    }
    /**
        // Look at the leaves and assign them a bit count and an encoding as specified
        // in RFC 1951 3.2.2
    **/
    @:keep
    public static function _assignEncodingAndSize( _h:T_huffmanEncoder, _bitCount:Slice<GoInt32>, _list:Slice<T_literalNode>):Void {
        var _code:GoUInt16 = ((((0 : GoUInt16)) : GoUInt16));
        for (_n => stdgo.math.bits.Bits in _bitCount) {
            _code = _code << (((1 : GoUnTypedInt)));
            if ((_n == ((0 : GoInt))) || (stdgo.math.bits.Bits == ((0 : GoInt32)))) {
                continue;
            };
            var _chunk = ((_list.__slice__((_list != null ? _list.length : ((0 : GoInt))) - ((stdgo.math.bits.Bits : GoInt))) : Slice<T_literalNode>));
            _h._lns._sort(_chunk);
            for (_0 => _node in _chunk) {
                if (_h._codes != null) _h._codes[_node._literal] = (({ _code : _reverseBits(_code, ((_n : GoUInt8))), _len : ((_n : GoUInt16)) } : T_hcode));
                _code++;
            };
            _list = ((_list.__slice__(((0 : GoInt)), _len(_list) - ((stdgo.math.bits.Bits : GoInt))) : Slice<T_literalNode>));
        };
    }
    /**
        // Return the number of literals assigned to each bit size in the Huffman encoding
        //
        // This method is only called when list.length >= 3
        // The cases of 0, 1, and 2 literals are handled by special case code.
        //
        // list  An array of the literals with non-zero frequencies
        //             and their associated frequencies. The array is in order of increasing
        //             frequency, and has as its last element a special element with frequency
        //             MaxInt32
        // maxBits     The maximum number of bits that should be used to encode any literal.
        //             Must be less than 16.
        // return      An integer array in which array[i] indicates the number of literals
        //             that should be encoded in i bits.
    **/
    @:keep
    public static function _bitCounts( _h:T_huffmanEncoder, _list:Slice<T_literalNode>, _maxBits:GoInt32):Slice<GoInt32> {
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
                if (_levels != null) _levels[_level] = (({ _level : _level, _lastFreq : (_list != null ? _list[((1 : GoInt))] : new T_literalNode())._freq, _nextCharFreq : (_list != null ? _list[((2 : GoInt))] : new T_literalNode())._freq, _nextPairFreq : (_list != null ? _list[((0 : GoInt))] : new T_literalNode())._freq + (_list != null ? _list[((1 : GoInt))] : new T_literalNode())._freq, _needed : 0 } : T_levelInfo));
                if ((_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))])) != null) (_leafCounts != null ? _leafCounts[_level] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]))[_level] = ((2 : GoInt32));
                if (_level == ((1 : GoInt32))) {
                    (_levels != null ? _levels[_level] : new T_levelInfo())._nextPairFreq = ((2147483647 : GoInt32));
                };
            });
        };
        (_levels != null ? _levels[_maxBits] : new T_levelInfo())._needed = (((2 : GoInt32)) * _n) - ((4 : GoInt32));
        var _level:GoInt32 = _maxBits;
        while (true) {
            var _l = (_levels != null ? _levels[_level] : new T_levelInfo());
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
        var _bitCount = ((_h._bitCount.__slice__(0, _maxBits + ((1 : GoInt32))) : Slice<GoInt32>));
        var _bits:GoInt = ((1 : GoInt));
        var _counts = (_leafCounts != null ? _leafCounts[_maxBits] : new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]));
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
    public static function _bitLength( _h:T_huffmanEncoder, _freq:Slice<GoInt32>):GoInt {
        var _total:GoInt = ((0 : GoInt));
        for (_i => _f in _freq) {
            if (_f != ((0 : GoInt32))) {
                _total = _total + (((_f : GoInt)) * (((_h._codes != null ? _h._codes[_i] : new T_hcode())._len : GoInt)));
            };
        };
        return _total;
    }
}
class T_huffmanEncoder_wrapper {
    /**
        // Update this Huffman Code object to be the minimum code for the specified frequency count.
        //
        // freq  An array of frequencies, in which frequency[i] gives the frequency of literal i.
        // maxBits  The maximum number of bits to use for any literal.
    **/
    @:keep
    public var _generate : (Slice<GoInt32>, GoInt32) -> Void = null;
    /**
        // Look at the leaves and assign them a bit count and an encoding as specified
        // in RFC 1951 3.2.2
    **/
    @:keep
    public var _assignEncodingAndSize : (Slice<GoInt32>, Slice<T_literalNode>) -> Void = null;
    /**
        // Return the number of literals assigned to each bit size in the Huffman encoding
        //
        // This method is only called when list.length >= 3
        // The cases of 0, 1, and 2 literals are handled by special case code.
        //
        // list  An array of the literals with non-zero frequencies
        //             and their associated frequencies. The array is in order of increasing
        //             frequency, and has as its last element a special element with frequency
        //             MaxInt32
        // maxBits     The maximum number of bits that should be used to encode any literal.
        //             Must be less than 16.
        // return      An integer array in which array[i] indicates the number of literals
        //             that should be encoded in i bits.
    **/
    @:keep
    public var _bitCounts : (Slice<T_literalNode>, GoInt32) -> Slice<GoInt32> = null;
    @:keep
    public var _bitLength : Slice<GoInt32> -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_huffmanEncoder;
}
@:keep class ReadError_static_extension {
    @:keep
    public static function error( _e:ReadError):GoString {
        return ((((("flate: read error at offset " : GoString))) + stdgo.strconv.Strconv.formatInt(_e.offset, ((10 : GoInt)))) + (((": " : GoString)))) + _e.err.error();
    }
}
class ReadError_wrapper {
    @:keep
    public var error : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : ReadError;
}
@:keep class WriteError_static_extension {
    @:keep
    public static function error( _e:WriteError):GoString {
        return ((((("flate: write error at offset " : GoString))) + stdgo.strconv.Strconv.formatInt(_e.offset, ((10 : GoInt)))) + (((": " : GoString)))) + _e.err.error();
    }
}
class WriteError_wrapper {
    @:keep
    public var error : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : WriteError;
}
@:keep class T_huffmanDecoder_static_extension {
    /**
        // Initialize Huffman decoding tables from array of code lengths.
        // Following this function, h is guaranteed to be initialized into a complete
        // tree (i.e., neither over-subscribed nor under-subscribed). The exception is a
        // degenerate case where the tree has only a single symbol with length 1. Empty
        // trees are permitted.
    **/
    @:keep
    public static function _init( _h:T_huffmanDecoder, _lengths:Slice<GoInt>):Bool {
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
            if (_count != null) _count[_n]++;
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
            if (_nextcode != null) _nextcode[_n]++;
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
                var _linktab = (_h._links != null ? _h._links[_value] : ((null : Slice<GoUInt32>)));
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
class T_huffmanDecoder_wrapper {
    /**
        // Initialize Huffman decoding tables from array of code lengths.
        // Following this function, h is guaranteed to be initialized into a complete
        // tree (i.e., neither over-subscribed nor under-subscribed). The exception is a
        // degenerate case where the tree has only a single symbol with length 1. Empty
        // trees are permitted.
    **/
    @:keep
    public var _init : Slice<GoInt> -> Bool = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_huffmanDecoder;
}
@:keep class T_decompressor_static_extension {
    @:keep
    public static function reset( _f:T_decompressor, _r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):Error {
        {
            var __tmp__ = (({ _r : _makeReader(_r), _bits : _f._bits, _codebits : _f._codebits, _dict : (_f._dict == null ? null : _f._dict.__copy__()), _step : (T_decompressor_static_extension)._nextBlock, _roffset : 0, _b : 0, _nb : 0, _h1 : new T_huffmanDecoder(), _h2 : new T_huffmanDecoder(), _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]), _stepState : 0, _final : false, _err : new stdgo.Error(), _toRead : ((null : Slice<GoUInt8>)), _hl : null, _hd : null, _copyLen : 0, _copyDist : 0 } : T_decompressor));
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
    /**
        // Read the next Huffman-encoded symbol from f according to h.
    **/
    @:keep
    public static function _huffSym( _f:T_decompressor, _h:T_huffmanDecoder):{ var _0 : GoInt; var _1 : Error; } {
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
                    _f._err = {
                        final __self__ = new CorruptInputError_wrapper(((_f._roffset : CorruptInputError)));
                        __self__.error = #if !macro function():GoString return ((_f._roffset : CorruptInputError)).error() #else null #end;
                        __self__;
                    };
                    return { _0 : ((0 : GoInt)), _1 : _f._err };
                };
                _f._b = _b >> (_n & ((31 : GoUInt)));
                _f._nb = _nb - _n;
                return { _0 : (((_chunk >> ((4 : GoUnTypedInt))) : GoInt)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    @:keep
    public static function _moreBits( _f:T_decompressor):Error {
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
    public static function _finishBlock( _f:T_decompressor):Void {
        if (_f._final) {
            if (_f._dict._availRead() > ((0 : GoInt))) {
                _f._toRead = _f._dict._readFlush();
            };
            _f._err = stdgo.io.Io.eof;
        };
        _f._step = (T_decompressor_static_extension)._nextBlock;
    }
    /**
        // copyData copies f.copyLen bytes from the underlying reader into f.hist.
        // It pauses for reads when f.hist is full.
    **/
    @:keep
    public static function _copyData( _f:T_decompressor):Void {
        var _buf = _f._dict._writeSlice();
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
    /**
        // Copy a single uncompressed data block from input to output.
    **/
    @:keep
    public static function _dataBlock( _f:T_decompressor):Void {
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
            _f._err = {
                final __self__ = new CorruptInputError_wrapper(((_f._roffset : CorruptInputError)));
                __self__.error = #if !macro function():GoString return ((_f._roffset : CorruptInputError)).error() #else null #end;
                __self__;
            };
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
    /**
        // Decode a single Huffman block from f.
        // hl and hd are the Huffman states for the lit/length values
        // and the distance values, respectively. If hd == nil, using the
        // fixed distance encoding associated with fixed Huffman blocks.
    **/
    @:keep
    public static function _huffmanBlock( _f:T_decompressor):Void {
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
                    _f._err = {
                        final __self__ = new CorruptInputError_wrapper(((_f._roffset : CorruptInputError)));
                        __self__.error = #if !macro function():GoString return ((_f._roffset : CorruptInputError)).error() #else null #end;
                        __self__;
                    };
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
                    _f._err = {
                        final __self__ = new CorruptInputError_wrapper(((_f._roffset : CorruptInputError)));
                        __self__.error = #if !macro function():GoString return ((_f._roffset : CorruptInputError)).error() #else null #end;
                        __self__;
                    };
                    return;
                };
                if (_dist > _f._dict._histSize()) {
                    _f._err = {
                        final __self__ = new CorruptInputError_wrapper(((_f._roffset : CorruptInputError)));
                        __self__.error = #if !macro function():GoString return ((_f._roffset : CorruptInputError)).error() #else null #end;
                        __self__;
                    };
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
    public static function _readHuffman( _f:T_decompressor):Error {
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
            return {
                final __self__ = new CorruptInputError_wrapper(((_f._roffset : CorruptInputError)));
                __self__.error = #if !macro function():GoString return ((_f._roffset : CorruptInputError)).error() #else null #end;
                __self__;
            };
        };
        _f._b = _f._b >> (((5 : GoUnTypedInt)));
        var _ndist:GoInt = (((_f._b & ((31 : GoUInt32))) : GoInt)) + ((1 : GoInt));
        if (_ndist > ((30 : GoInt))) {
            return {
                final __self__ = new CorruptInputError_wrapper(((_f._roffset : CorruptInputError)));
                __self__.error = #if !macro function():GoString return ((_f._roffset : CorruptInputError)).error() #else null #end;
                __self__;
            };
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
            return {
                final __self__ = new CorruptInputError_wrapper(((_f._roffset : CorruptInputError)));
                __self__.error = #if !macro function():GoString return ((_f._roffset : CorruptInputError)).error() #else null #end;
                __self__;
            };
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
                        return {
                            final __self__ = new CorruptInputError_wrapper(((_f._roffset : CorruptInputError)));
                            __self__.error = #if !macro function():GoString return ((_f._roffset : CorruptInputError)).error() #else null #end;
                            __self__;
                        };
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
                    return {
                        final __self__ = new CorruptInputError_wrapper(((_f._roffset : CorruptInputError)));
                        __self__.error = #if !macro function():GoString return ((_f._roffset : CorruptInputError)).error() #else null #end;
                        __self__;
                    };
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
            return {
                final __self__ = new CorruptInputError_wrapper(((_f._roffset : CorruptInputError)));
                __self__.error = #if !macro function():GoString return ((_f._roffset : CorruptInputError)).error() #else null #end;
                __self__;
            };
        };
        if (_f._h1._min < (_f._bits != null ? _f._bits[((256 : GoInt))] : ((0 : GoInt)))) {
            _f._h1._min = (_f._bits != null ? _f._bits[((256 : GoInt))] : ((0 : GoInt)));
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public static function close( _f:T_decompressor):Error {
        if (_f._err == stdgo.io.Io.eof) {
            return ((null : stdgo.Error));
        };
        return _f._err;
    }
    @:keep
    public static function read( _f:T_decompressor, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
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
    public static function _nextBlock( _f:T_decompressor):Void {
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
                    _f._err = {
                        final __self__ = new CorruptInputError_wrapper(((_f._roffset : CorruptInputError)));
                        __self__.error = #if !macro function():GoString return ((_f._roffset : CorruptInputError)).error() #else null #end;
                        __self__;
                    };
                };
                break;
            };
        };
    }
}
class T_decompressor_wrapper {
    @:keep
    public var reset : (stdgo.io.Io.Reader, Slice<GoByte>) -> Error = null;
    /**
        // Read the next Huffman-encoded symbol from f according to h.
    **/
    @:keep
    public var _huffSym : T_huffmanDecoder -> { var _0 : GoInt; var _1 : Error; } = null;
    @:keep
    public var _moreBits : () -> Error = null;
    @:keep
    public var _finishBlock : () -> Void = null;
    /**
        // copyData copies f.copyLen bytes from the underlying reader into f.hist.
        // It pauses for reads when f.hist is full.
    **/
    @:keep
    public var _copyData : () -> Void = null;
    /**
        // Copy a single uncompressed data block from input to output.
    **/
    @:keep
    public var _dataBlock : () -> Void = null;
    /**
        // Decode a single Huffman block from f.
        // hl and hd are the Huffman states for the lit/length values
        // and the distance values, respectively. If hd == nil, using the
        // fixed distance encoding associated with fixed Huffman blocks.
    **/
    @:keep
    public var _huffmanBlock : () -> Void = null;
    @:keep
    public var _readHuffman : () -> Error = null;
    @:keep
    public var close : () -> Error = null;
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    @:keep
    public var _nextBlock : () -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_decompressor;
}
@:keep class T_byLiteral_static_extension {
    @:keep
    public static function swap( _s:T_byLiteral, _i:GoInt, _j:GoInt):Void {
        {
            final __tmp__0 = ((_s != null ? _s[_j] : new T_literalNode()) == null ? null : (_s != null ? _s[_j] : new T_literalNode()).__copy__());
            final __tmp__1 = ((_s != null ? _s[_i] : new T_literalNode()) == null ? null : (_s != null ? _s[_i] : new T_literalNode()).__copy__());
            if (_s != null) _s[_i] = __tmp__0;
            if (_s != null) _s[_j] = __tmp__1;
        };
    }
    @:keep
    public static function less( _s:T_byLiteral, _i:GoInt, _j:GoInt):Bool {
        return (_s != null ? _s[_i] : new T_literalNode())._literal < (_s != null ? _s[_j] : new T_literalNode())._literal;
    }
    @:keep
    public static function len( _s:T_byLiteral):GoInt {
        return (_s != null ? _s.length : ((0 : GoInt)));
    }
    @:keep
    public static function _sort( _s:T_byLiteral, _a:Slice<T_literalNode>):Void {
        _s = ((_a : T_byLiteral));
        stdgo.sort.Sort.sort(_s);
    }
}
class T_byLiteral_wrapper {
    @:keep
    public var swap : (GoInt, GoInt) -> Void = null;
    @:keep
    public var less : (GoInt, GoInt) -> Bool = null;
    @:keep
    public var len : () -> GoInt = null;
    @:keep
    public var _sort : Slice<T_literalNode> -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_byLiteral;
}
@:keep class T_byFreq_static_extension {
    @:keep
    public static function swap( _s:T_byFreq, _i:GoInt, _j:GoInt):Void {
        {
            final __tmp__0 = ((_s != null ? _s[_j] : new T_literalNode()) == null ? null : (_s != null ? _s[_j] : new T_literalNode()).__copy__());
            final __tmp__1 = ((_s != null ? _s[_i] : new T_literalNode()) == null ? null : (_s != null ? _s[_i] : new T_literalNode()).__copy__());
            if (_s != null) _s[_i] = __tmp__0;
            if (_s != null) _s[_j] = __tmp__1;
        };
    }
    @:keep
    public static function less( _s:T_byFreq, _i:GoInt, _j:GoInt):Bool {
        if ((_s != null ? _s[_i] : new T_literalNode())._freq == (_s != null ? _s[_j] : new T_literalNode())._freq) {
            return (_s != null ? _s[_i] : new T_literalNode())._literal < (_s != null ? _s[_j] : new T_literalNode())._literal;
        };
        return (_s != null ? _s[_i] : new T_literalNode())._freq < (_s != null ? _s[_j] : new T_literalNode())._freq;
    }
    @:keep
    public static function len( _s:T_byFreq):GoInt {
        return (_s != null ? _s.length : ((0 : GoInt)));
    }
    @:keep
    public static function _sort( _s:T_byFreq, _a:Slice<T_literalNode>):Void {
        _s = ((_a : T_byFreq));
        stdgo.sort.Sort.sort(_s);
    }
}
class T_byFreq_wrapper {
    @:keep
    public var swap : (GoInt, GoInt) -> Void = null;
    @:keep
    public var less : (GoInt, GoInt) -> Bool = null;
    @:keep
    public var len : () -> GoInt = null;
    @:keep
    public var _sort : Slice<T_literalNode> -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_byFreq;
}
@:keep class CorruptInputError_static_extension {
    @:keep
    public static function error( _e:CorruptInputError):GoString {
        return ((("flate: corrupt input before offset " : GoString))) + stdgo.strconv.Strconv.formatInt(((_e : GoInt64)), ((10 : GoInt)));
    }
}
class CorruptInputError_wrapper {
    @:keep
    public var error : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : CorruptInputError;
}
@:keep class InternalError_static_extension {
    @:keep
    public static function error( _e:InternalError):GoString {
        return ((("flate: internal error: " : GoString))) + ((_e : GoString));
    }
}
class InternalError_wrapper {
    @:keep
    public var error : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : InternalError;
}
@:keep class T_token_static_extension {
    @:keep
    public static function _length( _t:T_token):GoUInt32 {
        return ((((_t - ((1073741824 : GoUInt32))) >> ((22 : GoUnTypedInt))) : GoUInt32));
    }
    /**
        // Returns the extra offset of a match token
    **/
    @:keep
    public static function _offset( _t:T_token):GoUInt32 {
        return ((_t : GoUInt32)) & ((4194303 : GoUInt32));
    }
    /**
        // Returns the literal of a literal token
    **/
    @:keep
    public static function _literal( _t:T_token):GoUInt32 {
        return (((_t - ((0 : GoUInt32))) : GoUInt32));
    }
}
class T_token_wrapper {
    @:keep
    public var _length : () -> GoUInt32 = null;
    /**
        // Returns the extra offset of a match token
    **/
    @:keep
    public var _offset : () -> GoUInt32 = null;
    /**
        // Returns the literal of a literal token
    **/
    @:keep
    public var _literal : () -> GoUInt32 = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_token;
}
