package stdgo._internal.compress.bzip2;
private var __go2hxdoc__package : Bool;
final _bzip2FileMagic : stdgo.GoUInt64 = (16986i64 : stdgo.GoUInt64);
final _bzip2BlockMagic : stdgo.GoUInt64 = (54156738319193i64 : stdgo.GoUInt64);
final _bzip2FinalMagic : stdgo.GoUInt64 = (25779555029136i64 : stdgo.GoUInt64);
var _crctab : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt32)]);
final _invalidNodeValue : stdgo.GoUInt64 = (65535i64 : stdgo.GoUInt64);
var _digits : stdgo.Slice<stdgo.GoUInt8> = _mustLoadFile(("testdata/e.txt.bz2" : stdgo.GoString));
var _newton : stdgo.Slice<stdgo.GoUInt8> = _mustLoadFile(("testdata/Isaac.Newton-Opticks.txt.bz2" : stdgo.GoString));
var _random : stdgo.Slice<stdgo.GoUInt8> = _mustLoadFile(("testdata/random.data.bz2" : stdgo.GoString));
@:structInit @:private @:using(stdgo._internal.compress.bzip2.Bzip2.T_bitReader_static_extension) class T_bitReader {
    public var _r : stdgo._internal.io.Io.ByteReader = (null : stdgo._internal.io.Io.ByteReader);
    public var _n : stdgo.GoUInt64 = 0;
    public var _bits : stdgo.GoUInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_r:stdgo._internal.io.Io.ByteReader, ?_n:stdgo.GoUInt64, ?_bits:stdgo.GoUInt, ?_err:stdgo.Error) {
        if (_r != null) this._r = _r;
        if (_n != null) this._n = _n;
        if (_bits != null) this._bits = _bits;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bitReader(_r, _n, _bits, _err);
    }
}
@:structInit @:private @:using(stdgo._internal.compress.bzip2.Bzip2.T_reader_static_extension) class T_reader {
    public var _br : stdgo._internal.compress.bzip2.Bzip2.T_bitReader = ({} : stdgo._internal.compress.bzip2.Bzip2.T_bitReader);
    public var _fileCRC : stdgo.GoUInt32 = 0;
    public var _blockCRC : stdgo.GoUInt32 = 0;
    public var _wantBlockCRC : stdgo.GoUInt32 = 0;
    public var _setupDone : Bool = false;
    public var _blockSize : stdgo.GoInt = 0;
    public var _eof : Bool = false;
    public var _c : stdgo.GoArray<stdgo.GoUInt> = new stdgo.GoArray<stdgo.GoUInt>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt)]);
    public var _tt : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _tPos : stdgo.GoUInt32 = 0;
    public var _preRLE : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _preRLEUsed : stdgo.GoInt = 0;
    public var _lastByte : stdgo.GoInt = 0;
    public var _byteRepeats : stdgo.GoUInt = 0;
    public var _repeats : stdgo.GoUInt = 0;
    public function new(?_br:stdgo._internal.compress.bzip2.Bzip2.T_bitReader, ?_fileCRC:stdgo.GoUInt32, ?_blockCRC:stdgo.GoUInt32, ?_wantBlockCRC:stdgo.GoUInt32, ?_setupDone:Bool, ?_blockSize:stdgo.GoInt, ?_eof:Bool, ?_c:stdgo.GoArray<stdgo.GoUInt>, ?_tt:stdgo.Slice<stdgo.GoUInt32>, ?_tPos:stdgo.GoUInt32, ?_preRLE:stdgo.Slice<stdgo.GoUInt32>, ?_preRLEUsed:stdgo.GoInt, ?_lastByte:stdgo.GoInt, ?_byteRepeats:stdgo.GoUInt, ?_repeats:stdgo.GoUInt) {
        if (_br != null) this._br = _br;
        if (_fileCRC != null) this._fileCRC = _fileCRC;
        if (_blockCRC != null) this._blockCRC = _blockCRC;
        if (_wantBlockCRC != null) this._wantBlockCRC = _wantBlockCRC;
        if (_setupDone != null) this._setupDone = _setupDone;
        if (_blockSize != null) this._blockSize = _blockSize;
        if (_eof != null) this._eof = _eof;
        if (_c != null) this._c = _c;
        if (_tt != null) this._tt = _tt;
        if (_tPos != null) this._tPos = _tPos;
        if (_preRLE != null) this._preRLE = _preRLE;
        if (_preRLEUsed != null) this._preRLEUsed = _preRLEUsed;
        if (_lastByte != null) this._lastByte = _lastByte;
        if (_byteRepeats != null) this._byteRepeats = _byteRepeats;
        if (_repeats != null) this._repeats = _repeats;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_reader(
_br,
_fileCRC,
_blockCRC,
_wantBlockCRC,
_setupDone,
_blockSize,
_eof,
_c,
_tt,
_tPos,
_preRLE,
_preRLEUsed,
_lastByte,
_byteRepeats,
_repeats);
    }
}
@:structInit @:private @:using(stdgo._internal.compress.bzip2.Bzip2.T_huffmanTree_static_extension) class T_huffmanTree {
    public var _nodes : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode> = (null : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode>);
    public var _nextNode : stdgo.GoInt = 0;
    public function new(?_nodes:stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode>, ?_nextNode:stdgo.GoInt) {
        if (_nodes != null) this._nodes = _nodes;
        if (_nextNode != null) this._nextNode = _nextNode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanTree(_nodes, _nextNode);
    }
}
@:structInit @:private class T_huffmanNode {
    public var _left : stdgo.GoUInt16 = 0;
    public var _right : stdgo.GoUInt16 = 0;
    public var _leftValue : stdgo.GoUInt16 = 0;
    public var _rightValue : stdgo.GoUInt16 = 0;
    public function new(?_left:stdgo.GoUInt16, ?_right:stdgo.GoUInt16, ?_leftValue:stdgo.GoUInt16, ?_rightValue:stdgo.GoUInt16) {
        if (_left != null) this._left = _left;
        if (_right != null) this._right = _right;
        if (_leftValue != null) this._leftValue = _leftValue;
        if (_rightValue != null) this._rightValue = _rightValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanNode(_left, _right, _leftValue, _rightValue);
    }
}
@:structInit @:private class T_huffmanSymbolLengthPair {
    public var _value : stdgo.GoUInt16 = 0;
    public var _length : stdgo.GoUInt8 = 0;
    public function new(?_value:stdgo.GoUInt16, ?_length:stdgo.GoUInt8) {
        if (_value != null) this._value = _value;
        if (_length != null) this._length = _length;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanSymbolLengthPair(_value, _length);
    }
}
@:structInit @:private class T_huffmanCode {
    public var _code : stdgo.GoUInt32 = 0;
    public var _codeLen : stdgo.GoUInt8 = 0;
    public var _value : stdgo.GoUInt16 = 0;
    public function new(?_code:stdgo.GoUInt32, ?_codeLen:stdgo.GoUInt8, ?_value:stdgo.GoUInt16) {
        if (_code != null) this._code = _code;
        if (_codeLen != null) this._codeLen = _codeLen;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanCode(_code, _codeLen, _value);
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
@:keep @:allow(stdgo._internal.compress.bzip2.Bzip2.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.compress.bzip2.Bzip2.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _desc : stdgo.GoString;
    public var _input : stdgo.Slice<stdgo.GoUInt8>;
    public var _output : stdgo.Slice<stdgo.GoUInt8>;
    public var _fail : Bool;
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
@:keep @:allow(stdgo._internal.compress.bzip2.Bzip2.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.compress.bzip2.Bzip2.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _nbits : stdgo.GoUInt;
    public var _value : stdgo.GoInt;
    public var _fail : Bool;
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
@:keep @:allow(stdgo._internal.compress.bzip2.Bzip2.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.compress.bzip2.Bzip2.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _idx : stdgo.GoInt;
    public var _sym : stdgo.GoUInt8;
};
@:named @:using(stdgo._internal.compress.bzip2.Bzip2.StructuralError_static_extension) typedef StructuralError = stdgo.GoString;
@:named @:using(stdgo._internal.compress.bzip2.Bzip2.T_moveToFrontDecoder_static_extension) typedef T_moveToFrontDecoder = stdgo.Slice<stdgo.GoUInt8>;
function _newBitReader(_r:stdgo._internal.io.Io.Reader):T_bitReader {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io.ByteReader)) : stdgo._internal.io.Io.ByteReader), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io.ByteReader), _1 : false };
        }, _byter = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _byter = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio.newReader(_r));
        };
        return ({ _r : _byter } : stdgo._internal.compress.bzip2.Bzip2.T_bitReader);
    }
function newReader(_r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        var _bz2 = (stdgo.Go.setRef(({} : stdgo._internal.compress.bzip2.Bzip2.T_reader)) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2.T_reader>);
        _bz2._br = _newBitReader(_r)?.__copy__();
        return stdgo.Go.asInterface(_bz2);
    }
function _inverseBWT(_tt:stdgo.Slice<stdgo.GoUInt32>, _origPtr:stdgo.GoUInt, _c:stdgo.Slice<stdgo.GoUInt>):stdgo.GoUInt32 {
        var _sum = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                _sum = (_sum + (_c[(_i : stdgo.GoInt)]) : stdgo.GoUInt);
                _c[(_i : stdgo.GoInt)] = (_sum - _c[(_i : stdgo.GoInt)] : stdgo.GoUInt);
            });
        };
        for (_i => _ in _tt) {
            var _b = (_tt[(_i : stdgo.GoInt)] & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _tt[(_c[(_b : stdgo.GoInt)] : stdgo.GoInt)] = (_tt[(_c[(_b : stdgo.GoInt)] : stdgo.GoInt)] | (((_i : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _c[(_b : stdgo.GoInt)]++;
        };
        return (_tt[(_origPtr : stdgo.GoInt)] >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
    }
function _updateCRC(_val:stdgo.GoUInt32, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32 {
        var _crc = (-1 ^ _val : stdgo.GoUInt32);
        for (__0 => _v in _b) {
            _crc = (_crctab[((((_crc >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte) ^ _v : stdgo.GoUInt8) : stdgo.GoInt)] ^ ((_crc << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        return (-1 ^ _crc);
    }
function _mustDecodeHex(_s:stdgo.GoString):stdgo.Slice<stdgo.GoByte> {
        var __tmp__ = stdgo._internal.encoding.hex.Hex.decodeString(_s?.__copy__()), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        return _b;
    }
function _mustLoadFile(_f:stdgo.GoString):stdgo.Slice<stdgo.GoByte> {
        return new stdgo.Slice<stdgo.GoByte>(0, 0).__setNumber32__();
    }
function _trim(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoString {
        {};
        if (((_b.length) < (1024 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.fmt.Fmt.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_b))?.__copy__();
        };
        return stdgo._internal.fmt.Fmt.sprintf(("%q..." : stdgo.GoString), stdgo.Go.toInterface((_b.__slice__(0, (1024 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))?.__copy__();
    }
function testReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _vectors:stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(12, 12, ...[
({ _desc : ("hello world" : stdgo.GoString), _input : _mustDecodeHex(("425a68393141592653594eece83600000251800010400006449080200031064c4101a7a9a580bb9431f8bb9229c28482776741b0" : stdgo.GoString)), _output : (("hello world\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _fail : false } : T__struct_0),
({ _desc : ("concatenated files" : stdgo.GoString), _input : _mustDecodeHex(("425a68393141592653594eece83600000251800010400006449080200031064c4101a7a9a580bb9431f8bb9229c28482776741b0425a68393141592653594eece83600000251800010400006449080200031064c4101a7a9a580bb9431f8bb9229c28482776741b0" : stdgo.GoString)), _output : (("hello world\nhello world\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _fail : false } : T__struct_0),
({ _desc : ("32B zeros" : stdgo.GoString), _input : _mustDecodeHex(("425a6839314159265359b5aa5098000000600040000004200021008283177245385090b5aa5098" : stdgo.GoString)), _output : (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _fail : false } : T__struct_0),
({ _desc : ("1MiB zeros" : stdgo.GoString), _input : _mustDecodeHex(("425a683931415926535938571ce50008084000c0040008200030cc0529a60806c4201e2ee48a70a12070ae39ca" : stdgo.GoString)), _output : (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _fail : false } : T__struct_0),
({ _desc : ("random data" : stdgo.GoString), _input : _mustLoadFile(("testdata/pass-random1.bz2" : stdgo.GoString)), _output : _mustLoadFile(("testdata/pass-random1.bin" : stdgo.GoString)), _fail : false } : T__struct_0),
({ _desc : ("random data - full symbol range" : stdgo.GoString), _input : _mustLoadFile(("testdata/pass-random2.bz2" : stdgo.GoString)), _output : _mustLoadFile(("testdata/pass-random2.bin" : stdgo.GoString)), _fail : false } : T__struct_0),
({ _desc : ("random data - uses RLE1 stage" : stdgo.GoString), _input : _mustDecodeHex(("425a6839314159265359d992d0f60000137dfe84020310091c1e280e100e042801099210094806c0110002e70806402000546034000034000000f2830000032000d3403264049270eb7a9280d308ca06ad28f6981bee1bf8160727c7364510d73a1e123083421b63f031f63993a0f40051fbf177245385090d992d0f60" : stdgo.GoString)), _output : _mustDecodeHex(("92d5652616ac444a4a04af1a8a3964aca0450d43d6cf233bd03233f4ba92f8719e6c2a2bd4f5f88db07ecd0da3a33b263483db9b2c158786ad6363be35d17335ba" : stdgo.GoString)), _fail : false } : T__struct_0),
({ _desc : ("1MiB sawtooth" : stdgo.GoString), _input : _mustLoadFile(("testdata/pass-sawtooth.bz2" : stdgo.GoString)), _output : {
            var a = function():stdgo.Slice<stdgo.GoByte> {
                var _b = (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                for (_i => _ in _b) {
                    _b[(_i : stdgo.GoInt)] = (_i : stdgo.GoByte);
                };
                return _b;
            };
            a();
        }, _fail : false } : T__struct_0),
({ _desc : ("RLE2 buffer overrun - issue 5747" : stdgo.GoString), _input : _mustLoadFile(("testdata/fail-issue5747.bz2" : stdgo.GoString)), _fail : true, _output : (null : stdgo.Slice<stdgo.GoUInt8>) } : T__struct_0),
({ _desc : ("out-of-range selector - issue 8363" : stdgo.GoString), _input : _mustDecodeHex(("425a68393141592653594eece83600000251800010400006449080200031064c4101a7a9a580bb943117724538509000000000" : stdgo.GoString)), _fail : true, _output : (null : stdgo.Slice<stdgo.GoUInt8>) } : T__struct_0),
({ _desc : ("bad block size - issue 13941" : stdgo.GoString), _input : _mustDecodeHex(("425a683131415926535936dc55330063ffc0006000200020a40830008b0008b8bb9229c28481b6e2a998" : stdgo.GoString)), _fail : true, _output : (null : stdgo.Slice<stdgo.GoUInt8>) } : T__struct_0),
({ _desc : ("bad huffman delta" : stdgo.GoString), _input : _mustDecodeHex(("425a6836314159265359b1f7404b000000400040002000217d184682ee48a70a12163ee80960" : stdgo.GoString)), _fail : true, _output : (null : stdgo.Slice<stdgo.GoUInt8>) } : T__struct_0)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _desc : ("" : stdgo.GoString), _input : (null : stdgo.Slice<stdgo.GoUInt8>), _output : (null : stdgo.Slice<stdgo.GoUInt8>), _fail : false } : T__struct_0)])) : stdgo.Slice<T__struct_0>);
        for (_i => _v in _vectors) {
            var _rd = (newReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_v._input))) : stdgo._internal.io.Io.Reader);
            var __tmp__ = stdgo._internal.io.Io.readAll(_rd), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                var _fail = (_err != null : Bool);
                if (_fail != (_v._fail)) {
                    if (_fail) {
                        _t.errorf(("test %d (%s), unexpected failure: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._desc), stdgo.Go.toInterface(_err));
                    } else {
                        _t.errorf(("test %d (%s), unexpected success" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._desc));
                    };
                };
            };
            if ((!_v._fail && !stdgo._internal.bytes.Bytes.equal(_buf, _v._output) : Bool)) {
                _t.errorf(("test %d (%s), output mismatch:\ngot  %s\nwant %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._desc), stdgo.Go.toInterface(_trim(_buf)), stdgo.Go.toInterface(_trim(_v._output)));
            };
        };
    }
function testBitReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _vectors:stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(9, 9, ...[({ _nbits : (1u32 : stdgo.GoUInt), _value : (1 : stdgo.GoInt), _fail : false } : T__struct_1), ({ _nbits : (1u32 : stdgo.GoUInt), _value : (0 : stdgo.GoInt), _fail : false } : T__struct_1), ({ _nbits : (1u32 : stdgo.GoUInt), _value : (1 : stdgo.GoInt), _fail : false } : T__struct_1), ({ _nbits : (5u32 : stdgo.GoUInt), _value : (11 : stdgo.GoInt), _fail : false } : T__struct_1), ({ _nbits : (32u32 : stdgo.GoUInt), _value : (305419896 : stdgo.GoInt), _fail : false } : T__struct_1), ({ _nbits : (15u32 : stdgo.GoUInt), _value : (14495 : stdgo.GoInt), _fail : false } : T__struct_1), ({ _nbits : (3u32 : stdgo.GoUInt), _value : (6 : stdgo.GoInt), _fail : false } : T__struct_1), ({ _nbits : (6u32 : stdgo.GoUInt), _value : (13 : stdgo.GoInt), _fail : false } : T__struct_1), ({ _nbits : (1u32 : stdgo.GoUInt), _fail : true, _value : (0 : stdgo.GoInt) } : T__struct_1)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _nbits : (0 : stdgo.GoUInt), _value : (0 : stdgo.GoInt), _fail : false } : T__struct_1)])) : stdgo.Slice<T__struct_1>);
        var _rd = stdgo._internal.bytes.Bytes.newReader((new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(171 : stdgo.GoUInt8), (18 : stdgo.GoUInt8), (52 : stdgo.GoUInt8), (86 : stdgo.GoUInt8), (120 : stdgo.GoUInt8), (113 : stdgo.GoUInt8), (63 : stdgo.GoUInt8), (141 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        var _br = (_newBitReader(stdgo.Go.asInterface(_rd))?.__copy__() : stdgo._internal.compress.bzip2.Bzip2.T_bitReader);
        for (_i => _v in _vectors) {
            var _val = (_br.readBits(_v._nbits) : stdgo.GoInt);
            {
                var _fail = (_br._err != null : Bool);
                if (_fail != (_v._fail)) {
                    if (_fail) {
                        _t.errorf(("test %d, unexpected failure: ReadBits(%d) = %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._nbits), stdgo.Go.toInterface(_br._err));
                    } else {
                        _t.errorf(("test %d, unexpected success: ReadBits(%d) = nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._nbits));
                    };
                };
            };
            if ((!_v._fail && (_val != _v._value) : Bool)) {
                _t.errorf(("test %d, mismatching value: ReadBits(%d) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._nbits), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_v._value));
            };
        };
    }
function testMTF(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _vectors:stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(5, 5, ...[({ _idx : (1 : stdgo.GoInt), _sym : (1 : stdgo.GoUInt8) } : T__struct_2), ({ _idx : (0 : stdgo.GoInt), _sym : (1 : stdgo.GoUInt8) } : T__struct_2), ({ _idx : (1 : stdgo.GoInt), _sym : (0 : stdgo.GoUInt8) } : T__struct_2), ({ _idx : (4 : stdgo.GoInt), _sym : (4 : stdgo.GoUInt8) } : T__struct_2), ({ _idx : (1 : stdgo.GoInt), _sym : (0 : stdgo.GoUInt8) } : T__struct_2)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _idx : (0 : stdgo.GoInt), _sym : (0 : stdgo.GoUInt8) } : T__struct_2)])) : stdgo.Slice<T__struct_2>);
        var _mtf = (_newMTFDecoderWithRange((5 : stdgo.GoInt)) : stdgo._internal.compress.bzip2.Bzip2.T_moveToFrontDecoder);
        for (_i => _v in _vectors) {
            var _sym = (_mtf.decode(_v._idx) : stdgo.GoUInt8);
            _t.log(stdgo.Go.toInterface(stdgo.Go.asInterface(_mtf)));
            if (_sym != (_v._sym)) {
                _t.errorf(("test %d, symbol mismatch: Decode(%d) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._idx), stdgo.Go.toInterface(_sym), stdgo.Go.toInterface(_v._sym));
            };
        };
    }
function testZeroRead(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = _mustDecodeHex(("425a6839314159265359b5aa5098000000600040000004200021008283177245385090b5aa5098" : stdgo.GoString));
        var _r = (newReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_b))) : stdgo._internal.io.Io.Reader);
        {
            var __tmp__ = _r.read((null : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
                _t.errorf(("Read(nil) = (%d, %v), want (0, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
function _benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _compressed:stdgo.Slice<stdgo.GoByte>):Void {
        var __tmp__ = stdgo._internal.io.Io.copy(stdgo._internal.io.Io.discard, newReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_compressed)))), _uncompressedSize:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _b.fatal(stdgo.Go.toInterface(_err));
        };
        _b.setBytes(_uncompressedSize);
        _b.reportAllocs();
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _r = stdgo._internal.bytes.Bytes.newReader(_compressed);
                stdgo._internal.io.Io.copy(stdgo._internal.io.Io.discard, newReader(stdgo.Go.asInterface(_r)));
            });
        };
    }
function benchmarkDecodeDigits(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkDecode(_b, _digits);
    }
function benchmarkDecodeNewton(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkDecode(_b, _newton);
    }
function benchmarkDecodeRand(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkDecode(_b, _random);
    }
function _newHuffmanTree(_lengths:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : T_huffmanTree; var _1 : stdgo.Error; } {
        if (((_lengths.length) < (2 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("newHuffmanTree: too few symbols" : stdgo.GoString));
        };
        var _t:T_huffmanTree = ({} : stdgo._internal.compress.bzip2.Bzip2.T_huffmanTree);
        var _pairs = (new stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2.T_huffmanSymbolLengthPair>((_lengths.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_lengths.length : stdgo.GoInt).toBasic() > 0 ? (_lengths.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.bzip2.Bzip2.T_huffmanSymbolLengthPair)]) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2.T_huffmanSymbolLengthPair>);
        for (_i => _length in _lengths) {
            _pairs[(_i : stdgo.GoInt)]._value = (_i : stdgo.GoUInt16);
            _pairs[(_i : stdgo.GoInt)]._length = _length;
        };
        stdgo._internal.sort.Sort.slice(stdgo.Go.toInterface(_pairs), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            if ((_pairs[(_i : stdgo.GoInt)]._length < _pairs[(_j : stdgo.GoInt)]._length : Bool)) {
                return true;
            };
            if ((_pairs[(_i : stdgo.GoInt)]._length > _pairs[(_j : stdgo.GoInt)]._length : Bool)) {
                return false;
            };
            if ((_pairs[(_i : stdgo.GoInt)]._value < _pairs[(_j : stdgo.GoInt)]._value : Bool)) {
                return true;
            };
            return false;
        });
        var _code = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _length = ((32 : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _codes = (new stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2.T_huffmanCode>((_lengths.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_lengths.length : stdgo.GoInt).toBasic() > 0 ? (_lengths.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.bzip2.Bzip2.T_huffmanCode)]) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2.T_huffmanCode>);
        {
            var _i = ((_pairs.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                if ((_length > _pairs[(_i : stdgo.GoInt)]._length : Bool)) {
                    _length = _pairs[(_i : stdgo.GoInt)]._length;
                };
                _codes[(_i : stdgo.GoInt)]._code = _code;
                _codes[(_i : stdgo.GoInt)]._codeLen = _length;
                _codes[(_i : stdgo.GoInt)]._value = _pairs[(_i : stdgo.GoInt)]._value;
                _code = (_code + (((1u32 : stdgo.GoUInt32) << (((32 : stdgo.GoUInt8) - _length : stdgo.GoUInt8)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            });
        };
        stdgo._internal.sort.Sort.slice(stdgo.Go.toInterface(_codes), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_codes[(_i : stdgo.GoInt)]._code < _codes[(_j : stdgo.GoInt)]._code : Bool);
        });
        _t._nodes = (new stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode>((_codes.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_codes.length : stdgo.GoInt).toBasic() > 0 ? (_codes.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode)]) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode>);
        var __tmp__ = _buildHuffmanNode((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2.T_huffmanTree>), _codes, (0u32 : stdgo.GoUInt32)), __0:stdgo.GoUInt16 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _t?.__copy__(), _1 : _err };
    }
function _buildHuffmanNode(_t:stdgo.Ref<T_huffmanTree>, _codes:stdgo.Slice<T_huffmanCode>, _level:stdgo.GoUInt32):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } {
        var _nodeIndex = (0 : stdgo.GoUInt16), _err = (null : stdgo.Error);
        var _test = ((1u32 : stdgo.GoUInt32) << (((31u32 : stdgo.GoUInt32) - _level : stdgo.GoUInt32)) : stdgo.GoUInt32);
        var _firstRightIndex = (_codes.length : stdgo.GoInt);
        for (_i => _code in _codes) {
            if ((_code._code & _test : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                _firstRightIndex = _i;
                break;
            };
        };
        var _left = (_codes.__slice__(0, _firstRightIndex) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2.T_huffmanCode>);
        var _right = (_codes.__slice__(_firstRightIndex) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2.T_huffmanCode>);
        if (((_left.length == (0 : stdgo.GoInt)) || (_right.length == (0 : stdgo.GoInt)) : Bool)) {
            if (((_codes.length) < (2 : stdgo.GoInt) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : stdgo.Go.asInterface(((("empty Huffman tree" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError)) };
            };
            if (_level == ((31u32 : stdgo.GoUInt32))) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : stdgo.Go.asInterface(((("equal symbols in Huffman tree" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError)) };
            };
            if ((_left.length) == ((0 : stdgo.GoInt))) {
                return _buildHuffmanNode(_t, _right, (_level + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
            };
            return _buildHuffmanNode(_t, _left, (_level + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
        };
        _nodeIndex = (_t._nextNode : stdgo.GoUInt16);
        var _node = (stdgo.Go.setRef(_t._nodes[(_t._nextNode : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode>);
        _t._nextNode++;
        if ((_left.length) == ((1 : stdgo.GoInt))) {
            _node._left = (65535 : stdgo.GoUInt16);
            _node._leftValue = _left[(0 : stdgo.GoInt)]._value;
        } else {
            {
                var __tmp__ = _buildHuffmanNode(_t, _left, (_level + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
                _node._left = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            return { _0 : _nodeIndex, _1 : _err };
        };
        if ((_right.length) == ((1 : stdgo.GoInt))) {
            _node._right = (65535 : stdgo.GoUInt16);
            _node._rightValue = _right[(0 : stdgo.GoInt)]._value;
        } else {
            {
                var __tmp__ = _buildHuffmanNode(_t, _right, (_level + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
                _node._right = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        return { _0 : _nodeIndex, _1 : _err };
    }
function _newMTFDecoder(_symbols:stdgo.Slice<stdgo.GoByte>):T_moveToFrontDecoder {
        if (((_symbols.length) > (256 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("too many symbols" : stdgo.GoString));
        };
        return (_symbols : T_moveToFrontDecoder);
    }
function _newMTFDecoderWithRange(_n:stdgo.GoInt):T_moveToFrontDecoder {
        if ((_n > (256 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("newMTFDecoderWithRange: cannot have > 256 symbols" : stdgo.GoString));
        };
        var _m = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _m[(_i : stdgo.GoInt)] = (_i : stdgo.GoByte);
            });
        };
        return (_m : T_moveToFrontDecoder);
    }
@:keep var _ = {
        try {
            {};
            for (_i => _ in _crctab) {
                var _crc = ((_i : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (8 : stdgo.GoInt) : Bool), _j++, {
                        if ((_crc & (-2147483648u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                            _crc = (((_crc << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) ^ (79764919u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                        } else {
                            _crc = (_crc << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                        };
                    });
                };
                _crctab[(_i : stdgo.GoInt)] = _crc;
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_bitReader_asInterface {
    @:keep
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:keep
    public dynamic function readBit():Bool return __self__.value.readBit();
    @:keep
    public dynamic function readBits(_bits:stdgo.GoUInt):stdgo.GoInt return __self__.value.readBits(_bits);
    @:keep
    public dynamic function readBits64(_bits:stdgo.GoUInt):stdgo.GoUInt64 return __self__.value.readBits64(_bits);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_bitReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.bzip2.Bzip2.T_bitReader_asInterface) class T_bitReader_static_extension {
    @:keep
    static public function err( _br:stdgo.Ref<T_bitReader>):stdgo.Error {
        @:recv var _br:stdgo.Ref<T_bitReader> = _br;
        return _br._err;
    }
    @:keep
    static public function readBit( _br:stdgo.Ref<T_bitReader>):Bool {
        @:recv var _br:stdgo.Ref<T_bitReader> = _br;
        var _n = (_br.readBits((1u32 : stdgo.GoUInt)) : stdgo.GoInt);
        return _n != ((0 : stdgo.GoInt));
    }
    @:keep
    static public function readBits( _br:stdgo.Ref<T_bitReader>, _bits:stdgo.GoUInt):stdgo.GoInt {
        @:recv var _br:stdgo.Ref<T_bitReader> = _br;
        var _n = (0 : stdgo.GoInt);
        var _n64 = (_br.readBits64(_bits) : stdgo.GoUInt64);
        return (_n64 : stdgo.GoInt);
    }
    @:keep
    static public function readBits64( _br:stdgo.Ref<T_bitReader>, _bits:stdgo.GoUInt):stdgo.GoUInt64 {
        @:recv var _br:stdgo.Ref<T_bitReader> = _br;
        var _n = (0 : stdgo.GoUInt64);
        while ((_bits > _br._bits : Bool)) {
            var __tmp__ = _br._r.readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                _err = stdgo._internal.io.Io.errUnexpectedEOF;
            };
            if (_err != null) {
                _br._err = _err;
                return (0i64 : stdgo.GoUInt64);
            };
            _br._n = (_br._n << ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _br._n = (_br._n | ((_b : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _br._bits = (_br._bits + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        _n = (((_br._n >> ((_br._bits - _bits : stdgo.GoUInt)) : stdgo.GoUInt64)) & (((((1i64 : stdgo.GoUInt64) << _bits : stdgo.GoUInt64)) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _br._bits = (_br._bits - (_bits) : stdgo.GoUInt);
        return _n;
    }
}
class T_reader_asInterface {
    @:keep
    public dynamic function _readBlock():stdgo.Error return __self__.value._readBlock();
    @:keep
    public dynamic function _read(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._read(_buf);
    @:keep
    public dynamic function _readFromBlock(_buf:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt return __self__.value._readFromBlock(_buf);
    @:keep
    public dynamic function read(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_buf);
    @:keep
    public dynamic function _setup(_needMagic:Bool):stdgo.Error return __self__.value._setup(_needMagic);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_reader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.bzip2.Bzip2.T_reader_asInterface) class T_reader_static_extension {
    @:keep
    static public function _readBlock( _bz2:stdgo.Ref<T_reader>):stdgo.Error {
        @:recv var _bz2:stdgo.Ref<T_reader> = _bz2;
        var _err = (null : stdgo.Error);
        var _br = (stdgo.Go.setRef(_bz2._br) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2.T_bitReader>);
        _bz2._wantBlockCRC = (_br.readBits64((32u32 : stdgo.GoUInt)) : stdgo.GoUInt32);
        _bz2._blockCRC = (0u32 : stdgo.GoUInt32);
        _bz2._fileCRC = ((((_bz2._fileCRC << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | (_bz2._fileCRC >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32)) ^ _bz2._wantBlockCRC : stdgo.GoUInt32);
        var _randomized = (_br.readBits((1u32 : stdgo.GoUInt)) : stdgo.GoInt);
        if (_randomized != ((0 : stdgo.GoInt))) {
            return stdgo.Go.asInterface(((("deprecated randomized files" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        var _origPtr = (_br.readBits((24u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        var _symbolRangeUsedBitmap = (_br.readBits((16u32 : stdgo.GoUInt)) : stdgo.GoInt);
        var _symbolPresent = (new stdgo.Slice<Bool>((256 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
        var _numSymbols = (0 : stdgo.GoInt);
        {
            var _symRange = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
            stdgo.Go.cfor((_symRange < (16u32 : stdgo.GoUInt) : Bool), _symRange++, {
                if ((_symbolRangeUsedBitmap & (((1 : stdgo.GoInt) << (((15u32 : stdgo.GoUInt) - _symRange : stdgo.GoUInt)) : stdgo.GoInt)) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    var _bits = (_br.readBits((16u32 : stdgo.GoUInt)) : stdgo.GoInt);
                    {
                        var _symbol = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                        stdgo.Go.cfor((_symbol < (16u32 : stdgo.GoUInt) : Bool), _symbol++, {
                            if ((_bits & (((1 : stdgo.GoInt) << (((15u32 : stdgo.GoUInt) - _symbol : stdgo.GoUInt)) : stdgo.GoInt)) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                                _symbolPresent[((((16u32 : stdgo.GoUInt) * _symRange : stdgo.GoUInt) + _symbol : stdgo.GoUInt) : stdgo.GoInt)] = true;
                                _numSymbols++;
                            };
                        });
                    };
                };
            });
        };
        if (_numSymbols == ((0 : stdgo.GoInt))) {
            return stdgo.Go.asInterface(((("no symbols in input" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        var _numHuffmanTrees = (_br.readBits((3u32 : stdgo.GoUInt)) : stdgo.GoInt);
        if (((_numHuffmanTrees < (2 : stdgo.GoInt) : Bool) || (_numHuffmanTrees > (6 : stdgo.GoInt) : Bool) : Bool)) {
            return stdgo.Go.asInterface(((("invalid number of Huffman trees" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        var _numSelectors = (_br.readBits((15u32 : stdgo.GoUInt)) : stdgo.GoInt);
        var _treeIndexes = (new stdgo.Slice<stdgo.GoUInt8>((_numSelectors : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _mtfTreeDecoder = (_newMTFDecoderWithRange(_numHuffmanTrees) : stdgo._internal.compress.bzip2.Bzip2.T_moveToFrontDecoder);
        for (_i => _ in _treeIndexes) {
            var _c = (0 : stdgo.GoInt);
            while (true) {
                var _inc = (_br.readBits((1u32 : stdgo.GoUInt)) : stdgo.GoInt);
                if (_inc == ((0 : stdgo.GoInt))) {
                    break;
                };
                _c++;
            };
            if ((_c >= _numHuffmanTrees : Bool)) {
                return stdgo.Go.asInterface(((("tree index too large" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError));
            };
            _treeIndexes[(_i : stdgo.GoInt)] = _mtfTreeDecoder.decode(_c);
        };
        var _symbols = (new stdgo.Slice<stdgo.GoUInt8>((_numSymbols : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _nextSymbol = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                if (_symbolPresent[(_i : stdgo.GoInt)]) {
                    _symbols[(_nextSymbol : stdgo.GoInt)] = (_i : stdgo.GoByte);
                    _nextSymbol++;
                };
            });
        };
        var _mtf = (_newMTFDecoder(_symbols) : stdgo._internal.compress.bzip2.Bzip2.T_moveToFrontDecoder);
        _numSymbols = (_numSymbols + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        var _huffmanTrees = (new stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2.T_huffmanTree>((_numHuffmanTrees : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_numHuffmanTrees : stdgo.GoInt).toBasic() > 0 ? (_numHuffmanTrees : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.bzip2.Bzip2.T_huffmanTree)]) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2.T_huffmanTree>);
        var _lengths = (new stdgo.Slice<stdgo.GoUInt8>((_numSymbols : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _huffmanTrees) {
            var _length = (_br.readBits((5u32 : stdgo.GoUInt)) : stdgo.GoInt);
            for (_j => _ in _lengths) {
                while (true) {
                    if (((_length < (1 : stdgo.GoInt) : Bool) || (_length > (20 : stdgo.GoInt) : Bool) : Bool)) {
                        return stdgo.Go.asInterface(((("Huffman length out of range" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                    };
                    if (!_br.readBit()) {
                        break;
                    };
                    if (_br.readBit()) {
                        _length--;
                    } else {
                        _length++;
                    };
                };
                _lengths[(_j : stdgo.GoInt)] = (_length : stdgo.GoUInt8);
            };
            {
                var __tmp__ = _newHuffmanTree(_lengths);
                _huffmanTrees[(_i : stdgo.GoInt)] = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var _selectorIndex = (1 : stdgo.GoInt);
        if ((_treeIndexes.length) == ((0 : stdgo.GoInt))) {
            return stdgo.Go.asInterface(((("no tree selectors given" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        if (((_treeIndexes[(0 : stdgo.GoInt)] : stdgo.GoInt) >= (_huffmanTrees.length) : Bool)) {
            return stdgo.Go.asInterface(((("tree selector out of range" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        var _currentHuffmanTree = (_huffmanTrees[(_treeIndexes[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo._internal.compress.bzip2.Bzip2.T_huffmanTree);
        var _bufIndex = (0 : stdgo.GoInt);
        var _repeat = (0 : stdgo.GoInt);
        var _repeatPower = (0 : stdgo.GoInt);
        for (_i => _ in _bz2._c) {
            _bz2._c[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt);
        };
        var _decoded = (0 : stdgo.GoInt);
        while (true) {
            if (_decoded == ((50 : stdgo.GoInt))) {
                if ((_selectorIndex >= _numSelectors : Bool)) {
                    return stdgo.Go.asInterface(((("insufficient selector indices for number of symbols" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                };
                if (((_treeIndexes[(_selectorIndex : stdgo.GoInt)] : stdgo.GoInt) >= (_huffmanTrees.length) : Bool)) {
                    return stdgo.Go.asInterface(((("tree selector out of range" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                };
                _currentHuffmanTree = _huffmanTrees[(_treeIndexes[(_selectorIndex : stdgo.GoInt)] : stdgo.GoInt)];
                _selectorIndex++;
                _decoded = (0 : stdgo.GoInt);
            };
            var _v = (_currentHuffmanTree.decode(_br) : stdgo.GoUInt16);
            _decoded++;
            if ((_v < (2 : stdgo.GoUInt16) : Bool)) {
                if (_repeat == ((0 : stdgo.GoInt))) {
                    _repeatPower = (1 : stdgo.GoInt);
                };
                _repeat = (_repeat + ((_repeatPower << _v : stdgo.GoInt)) : stdgo.GoInt);
                _repeatPower = (_repeatPower << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                if ((_repeat > (2097152 : stdgo.GoInt) : Bool)) {
                    return stdgo.Go.asInterface(((("repeat count too large" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                };
                continue;
            };
            if ((_repeat > (0 : stdgo.GoInt) : Bool)) {
                if ((_repeat > (_bz2._blockSize - _bufIndex : stdgo.GoInt) : Bool)) {
                    return stdgo.Go.asInterface(((("repeats past end of block" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _repeat : Bool), _i++, {
                        var _b = (_mtf.first() : stdgo.GoUInt8);
                        _bz2._tt[(_bufIndex : stdgo.GoInt)] = (_b : stdgo.GoUInt32);
                        _bz2._c[(_b : stdgo.GoInt)]++;
                        _bufIndex++;
                    });
                };
                _repeat = (0 : stdgo.GoInt);
            };
            if ((_v : stdgo.GoInt) == ((_numSymbols - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                break;
            };
            var _b = (_mtf.decode(((_v - (1 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt)) : stdgo.GoUInt8);
            if ((_bufIndex >= _bz2._blockSize : Bool)) {
                return stdgo.Go.asInterface(((("data exceeds block size" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError));
            };
            _bz2._tt[(_bufIndex : stdgo.GoInt)] = (_b : stdgo.GoUInt32);
            _bz2._c[(_b : stdgo.GoInt)]++;
            _bufIndex++;
        };
        if ((_origPtr >= (_bufIndex : stdgo.GoUInt) : Bool)) {
            return stdgo.Go.asInterface(((("origPtr out of bounds" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        _bz2._preRLE = (_bz2._tt.__slice__(0, _bufIndex) : stdgo.Slice<stdgo.GoUInt32>);
        _bz2._preRLEUsed = (0 : stdgo.GoInt);
        _bz2._tPos = _inverseBWT(_bz2._preRLE, _origPtr, (_bz2._c.__slice__(0) : stdgo.Slice<stdgo.GoUInt>));
        _bz2._lastByte = (-1 : stdgo.GoInt);
        _bz2._byteRepeats = (0u32 : stdgo.GoUInt);
        _bz2._repeats = (0u32 : stdgo.GoUInt);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _read( _bz2:stdgo.Ref<T_reader>, _buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _bz2:stdgo.Ref<T_reader> = _bz2;
        while (true) {
            var _n = (_bz2._readFromBlock(_buf) : stdgo.GoInt);
            if (((_n > (0 : stdgo.GoInt) : Bool) || (_buf.length == (0 : stdgo.GoInt)) : Bool)) {
                _bz2._blockCRC = _updateCRC(_bz2._blockCRC, (_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
            if (_bz2._blockCRC != (_bz2._wantBlockCRC)) {
                _bz2._br._err = stdgo.Go.asInterface(((("block checksum mismatch" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                return { _0 : (0 : stdgo.GoInt), _1 : _bz2._br._err };
            };
            var _br = (stdgo.Go.setRef(_bz2._br) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2.T_bitReader>);
            {
                final __value__ = _br.readBits64((48u32 : stdgo.GoUInt));
                if (__value__ == ((54156738319193i64 : stdgo.GoUInt64))) {
                    var _err = (_bz2._readBlock() : stdgo.Error);
                    if (_err != null) {
                        return { _0 : (0 : stdgo.GoInt), _1 : _err };
                    };
                } else if (__value__ == ((25779555029136i64 : stdgo.GoUInt64))) {
                    var _wantFileCRC = (_br.readBits64((32u32 : stdgo.GoUInt)) : stdgo.GoUInt32);
                    if (_br._err != null) {
                        return { _0 : (0 : stdgo.GoInt), _1 : _br._err };
                    };
                    if (_bz2._fileCRC != (_wantFileCRC)) {
                        _br._err = stdgo.Go.asInterface(((("file checksum mismatch" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                        return { _0 : (0 : stdgo.GoInt), _1 : _br._err };
                    };
                    if ((_br._bits % (8u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                        _br.readBits((_br._bits % (8u32 : stdgo.GoUInt) : stdgo.GoUInt));
                    };
                    var __tmp__ = _br._r.readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                        _br._err = stdgo._internal.io.Io.eof;
                        _bz2._eof = true;
                        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io.eof };
                    };
                    if (_err != null) {
                        _br._err = _err;
                        return { _0 : (0 : stdgo.GoInt), _1 : _err };
                    };
                    var __tmp__ = _br._r.readByte(), _z:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                            _err = stdgo._internal.io.Io.errUnexpectedEOF;
                        };
                        _br._err = _err;
                        return { _0 : (0 : stdgo.GoInt), _1 : _err };
                    };
                    if (((_b != (66 : stdgo.GoUInt8)) || (_z != (90 : stdgo.GoUInt8)) : Bool)) {
                        return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface(((("bad magic value in continuation file" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError)) };
                    };
                    {
                        var _err = (_bz2._setup(false) : stdgo.Error);
                        if (_err != null) {
                            return { _0 : (0 : stdgo.GoInt), _1 : _err };
                        };
                    };
                } else {
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface(((("bad magic value found" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError)) };
                };
            };
        };
    }
    @:keep
    static public function _readFromBlock( _bz2:stdgo.Ref<T_reader>, _buf:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt {
        @:recv var _bz2:stdgo.Ref<T_reader> = _bz2;
        var _n = (0 : stdgo.GoInt);
        while (((((_bz2._repeats > (0u32 : stdgo.GoUInt) : Bool) || (_bz2._preRLEUsed < (_bz2._preRLE.length) : Bool) : Bool)) && (_n < (_buf.length) : Bool) : Bool)) {
            if ((_bz2._repeats > (0u32 : stdgo.GoUInt) : Bool)) {
                _buf[(_n : stdgo.GoInt)] = (_bz2._lastByte : stdgo.GoByte);
                _n++;
                _bz2._repeats--;
                if (_bz2._repeats == ((0u32 : stdgo.GoUInt))) {
                    _bz2._lastByte = (-1 : stdgo.GoInt);
                };
                continue;
            };
            _bz2._tPos = _bz2._preRLE[(_bz2._tPos : stdgo.GoInt)];
            var _b = ((_bz2._tPos : stdgo.GoByte) : stdgo.GoUInt8);
            _bz2._tPos = (_bz2._tPos >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            _bz2._preRLEUsed++;
            if (_bz2._byteRepeats == ((3u32 : stdgo.GoUInt))) {
                _bz2._repeats = (_b : stdgo.GoUInt);
                _bz2._byteRepeats = (0u32 : stdgo.GoUInt);
                continue;
            };
            if (_bz2._lastByte == ((_b : stdgo.GoInt))) {
                _bz2._byteRepeats++;
            } else {
                _bz2._byteRepeats = (0u32 : stdgo.GoUInt);
            };
            _bz2._lastByte = (_b : stdgo.GoInt);
            _buf[(_n : stdgo.GoInt)] = _b;
            _n++;
        };
        return _n;
    }
    @:keep
    static public function read( _bz2:stdgo.Ref<T_reader>, _buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _bz2:stdgo.Ref<T_reader> = _bz2;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_bz2._eof) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io.eof };
        };
        if (!_bz2._setupDone) {
            _err = _bz2._setup(true);
            var _brErr = (_bz2._br.err() : stdgo.Error);
            if (_brErr != null) {
                _err = _brErr;
            };
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _err };
            };
            _bz2._setupDone = true;
        };
        {
            var __tmp__ = _bz2._read(_buf);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        var _brErr = (_bz2._br.err() : stdgo.Error);
        if (_brErr != null) {
            _err = _brErr;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function _setup( _bz2:stdgo.Ref<T_reader>, _needMagic:Bool):stdgo.Error {
        @:recv var _bz2:stdgo.Ref<T_reader> = _bz2;
        var _br = (stdgo.Go.setRef(_bz2._br) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2.T_bitReader>);
        if (_needMagic) {
            var _magic = (_br.readBits((16u32 : stdgo.GoUInt)) : stdgo.GoInt);
            if (_magic != ((16986 : stdgo.GoInt))) {
                return stdgo.Go.asInterface(((("bad magic value" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError));
            };
        };
        var _t = (_br.readBits((8u32 : stdgo.GoUInt)) : stdgo.GoInt);
        if (_t != ((104 : stdgo.GoInt))) {
            return stdgo.Go.asInterface(((("non-Huffman entropy encoding" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        var _level = (_br.readBits((8u32 : stdgo.GoUInt)) : stdgo.GoInt);
        if (((_level < (49 : stdgo.GoInt) : Bool) || (_level > (57 : stdgo.GoInt) : Bool) : Bool)) {
            return stdgo.Go.asInterface(((("invalid compression level" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        _bz2._fileCRC = (0u32 : stdgo.GoUInt32);
        _bz2._blockSize = ((100000 : stdgo.GoInt) * ((_level - (48 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        if ((_bz2._blockSize > (_bz2._tt.length) : Bool)) {
            _bz2._tt = (new stdgo.Slice<stdgo.GoUInt32>((_bz2._blockSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        };
        return (null : stdgo.Error);
    }
}
class T_huffmanTree_asInterface {
    @:keep
    public dynamic function decode(_br:stdgo.Ref<T_bitReader>):stdgo.GoUInt16 return __self__.value.decode(_br);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_huffmanTree>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.bzip2.Bzip2.T_huffmanTree_asInterface) class T_huffmanTree_static_extension {
    @:keep
    static public function decode( _t:stdgo.Ref<T_huffmanTree>, _br:stdgo.Ref<T_bitReader>):stdgo.GoUInt16 {
        @:recv var _t:stdgo.Ref<T_huffmanTree> = _t;
        var _v = (0 : stdgo.GoUInt16);
        var _nodeIndex = ((0 : stdgo.GoUInt16) : stdgo.GoUInt16);
        while (true) {
            var _node = (stdgo.Go.setRef(_t._nodes[(_nodeIndex : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode>);
            var _bit:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
            if ((_br._bits > (0u32 : stdgo.GoUInt) : Bool)) {
                _br._bits--;
                _bit = (((_br._n >> ((_br._bits & (63u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) : stdgo.GoUInt16) & (1 : stdgo.GoUInt16) : stdgo.GoUInt16);
            } else {
                _bit = (_br.readBits((1u32 : stdgo.GoUInt)) : stdgo.GoUInt16);
            };
            var __0 = (_node._left : stdgo.GoUInt16), __1 = (_node._right : stdgo.GoUInt16);
var _r = __1, _l = __0;
            if (_bit == ((1 : stdgo.GoUInt16))) {
                _nodeIndex = _l;
            } else {
                _nodeIndex = _r;
            };
            if (_nodeIndex == ((65535 : stdgo.GoUInt16))) {
                var __0 = (_node._leftValue : stdgo.GoUInt16), __1 = (_node._rightValue : stdgo.GoUInt16);
var _r = __1, _l = __0;
                if (_bit == ((1 : stdgo.GoUInt16))) {
                    _v = _l;
                } else {
                    _v = _r;
                };
                return _v;
            };
        };
    }
}
class StructuralError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<StructuralError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.bzip2.Bzip2.StructuralError_asInterface) class StructuralError_static_extension {
    @:keep
    static public function error( _s:StructuralError):stdgo.GoString {
        @:recv var _s:StructuralError = _s;
        return (("bzip2 data invalid: " : stdgo.GoString) + (_s : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
class T_moveToFrontDecoder_asInterface {
    @:keep
    public dynamic function first():stdgo.GoByte return __self__.value.first();
    @:keep
    public dynamic function decode(_n:stdgo.GoInt):stdgo.GoByte return __self__.value.decode(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_moveToFrontDecoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.bzip2.Bzip2.T_moveToFrontDecoder_asInterface) class T_moveToFrontDecoder_static_extension {
    @:keep
    static public function first( _m:T_moveToFrontDecoder):stdgo.GoByte {
        @:recv var _m:T_moveToFrontDecoder = _m;
        return _m[(0 : stdgo.GoInt)];
    }
    @:keep
    static public function decode( _m:T_moveToFrontDecoder, _n:stdgo.GoInt):stdgo.GoByte {
        @:recv var _m:T_moveToFrontDecoder = _m;
        var _b = (0 : stdgo.GoUInt8);
        _b = _m[(_n : stdgo.GoInt)];
        stdgo.Go.copySlice((_m.__slice__((1 : stdgo.GoInt)) : stdgo._internal.compress.bzip2.Bzip2.T_moveToFrontDecoder), (_m.__slice__(0, _n) : stdgo._internal.compress.bzip2.Bzip2.T_moveToFrontDecoder));
        _m[(0 : stdgo.GoInt)] = _b;
        return _b;
    }
}
