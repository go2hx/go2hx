package stdgo.compress.bzip2;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Package bzip2 implements bzip2 decompression.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
private var _digits = _mustLoadFile(("testdata/e.txt.bz2" : GoString));
/**
    
    
    
**/
private var _newton = _mustLoadFile(("testdata/Isaac.Newton-Opticks.txt.bz2" : GoString));
/**
    
    
    
**/
private var _random = _mustLoadFile(("testdata/random.data.bz2" : GoString));
/**
    
    
    // "BZ"
**/
private final _bzip2FileMagic = (16986i64 : GoUInt64);
/**
    
    
    
**/
private final _bzip2BlockMagic = (54156738319193i64 : GoUInt64);
/**
    
    
    
**/
private final _bzip2FinalMagic = (25779555029136i64 : GoUInt64);
/**
    
    
    
**/
private var _crctab : GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 256) (0 : GoUInt32)]);
/**
    // invalidNodeValue is an invalid index which marks a leaf node in the tree.
    
    
**/
private final _invalidNodeValue = (65535i64 : GoUInt64);
/**
    // bitReader wraps an io.Reader and provides the ability to read values,
    // bit-by-bit, from it. Its Read* methods don't return the usual error
    // because the error handling was verbose. Instead, any error is kept and can
    // be checked afterwards.
    
    
**/
@:structInit @:private @:using(stdgo.compress.bzip2.Bzip2.T_bitReader_static_extension) class T_bitReader {
    public var _r : stdgo.io.Io.ByteReader = (null : stdgo.io.Io.ByteReader);
    public var _n : GoUInt64 = 0;
    public var _bits : GoUInt = 0;
    public var _err : Error = (null : Error);
    public function new(?_r:stdgo.io.Io.ByteReader, ?_n:GoUInt64, ?_bits:GoUInt, ?_err:Error) {
        if (_r != null) this._r = _r;
        if (_n != null) this._n = _n;
        if (_bits != null) this._bits = _bits;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_bitReader(_r, _n, _bits, _err);
    }
}
/**
    // A reader decompresses bzip2 compressed data.
    
    
**/
@:structInit @:private @:using(stdgo.compress.bzip2.Bzip2.T_reader_static_extension) class T_reader {
    public var _br : stdgo.compress.bzip2.Bzip2.T_bitReader = ({} : stdgo.compress.bzip2.Bzip2.T_bitReader);
    public var _fileCRC : GoUInt32 = 0;
    public var _blockCRC : GoUInt32 = 0;
    public var _wantBlockCRC : GoUInt32 = 0;
    public var _setupDone : Bool = false;
    public var _blockSize : GoInt = 0;
    public var _eof : Bool = false;
    public var _c : GoArray<GoUInt> = new GoArray<GoUInt>(...[for (i in 0 ... 256) (0 : GoUInt)]);
    public var _tt : Slice<GoUInt32> = (null : Slice<GoUInt32>);
    public var _tPos : GoUInt32 = 0;
    public var _preRLE : Slice<GoUInt32> = (null : Slice<GoUInt32>);
    public var _preRLEUsed : GoInt = 0;
    public var _lastByte : GoInt = 0;
    public var _byteRepeats : GoUInt = 0;
    public var _repeats : GoUInt = 0;
    public function new(?_br:stdgo.compress.bzip2.Bzip2.T_bitReader, ?_fileCRC:GoUInt32, ?_blockCRC:GoUInt32, ?_wantBlockCRC:GoUInt32, ?_setupDone:Bool, ?_blockSize:GoInt, ?_eof:Bool, ?_c:GoArray<GoUInt>, ?_tt:Slice<GoUInt32>, ?_tPos:GoUInt32, ?_preRLE:Slice<GoUInt32>, ?_preRLEUsed:GoInt, ?_lastByte:GoInt, ?_byteRepeats:GoUInt, ?_repeats:GoUInt) {
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
    public function __underlying__() return Go.toInterface(this);
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
/**
    // A huffmanTree is a binary tree which is navigated, bit-by-bit to reach a
    // symbol.
    
    
**/
@:structInit @:private @:using(stdgo.compress.bzip2.Bzip2.T_huffmanTree_static_extension) class T_huffmanTree {
    /**
        // nodes contains all the non-leaf nodes in the tree. nodes[0] is the
        // root of the tree and nextNode contains the index of the next element
        // of nodes to use when the tree is being constructed.
    **/
    public var _nodes : Slice<stdgo.compress.bzip2.Bzip2.T_huffmanNode> = (null : Slice<stdgo.compress.bzip2.Bzip2.T_huffmanNode>);
    public var _nextNode : GoInt = 0;
    public function new(?_nodes:Slice<stdgo.compress.bzip2.Bzip2.T_huffmanNode>, ?_nextNode:GoInt) {
        if (_nodes != null) this._nodes = _nodes;
        if (_nextNode != null) this._nextNode = _nextNode;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanTree(_nodes, _nextNode);
    }
}
/**
    // A huffmanNode is a node in the tree. left and right contain indexes into the
    // nodes slice of the tree. If left or right is invalidNodeValue then the child
    // is a left node and its value is in leftValue/rightValue.
    //
    // The symbols are uint16s because bzip2 encodes not only MTF indexes in the
    // tree, but also two magic values for run-length encoding and an EOF symbol.
    // Thus there are more than 256 possible symbols.
    
    
**/
@:structInit @:private class T_huffmanNode {
    public var _left : GoUInt16 = 0;
    public var _right : GoUInt16 = 0;
    public var _leftValue : GoUInt16 = 0;
    public var _rightValue : GoUInt16 = 0;
    public function new(?_left:GoUInt16, ?_right:GoUInt16, ?_leftValue:GoUInt16, ?_rightValue:GoUInt16) {
        if (_left != null) this._left = _left;
        if (_right != null) this._right = _right;
        if (_leftValue != null) this._leftValue = _leftValue;
        if (_rightValue != null) this._rightValue = _rightValue;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanNode(_left, _right, _leftValue, _rightValue);
    }
}
/**
    // huffmanSymbolLengthPair contains a symbol and its code length.
    
    
**/
@:structInit @:private class T_huffmanSymbolLengthPair {
    public var _value : GoUInt16 = 0;
    public var _length : GoUInt8 = 0;
    public function new(?_value:GoUInt16, ?_length:GoUInt8) {
        if (_value != null) this._value = _value;
        if (_length != null) this._length = _length;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanSymbolLengthPair(_value, _length);
    }
}
/**
    // huffmanCode contains a symbol, its code and code length.
    
    
**/
@:structInit @:private class T_huffmanCode {
    public var _code : GoUInt32 = 0;
    public var _codeLen : GoUInt8 = 0;
    public var _value : GoUInt16 = 0;
    public function new(?_code:GoUInt32, ?_codeLen:GoUInt8, ?_value:GoUInt16) {
        if (_code != null) this._code = _code;
        if (_codeLen != null) this._codeLen = _codeLen;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanCode(_code, _codeLen, _value);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.compress.bzip2.Bzip2.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.compress.bzip2.Bzip2.T__struct_0_static_extension) private typedef T__struct_0 = {
    public var _desc : GoString;
    public var _input : Slice<GoUInt8>;
    public var _output : Slice<GoUInt8>;
    public var _fail : Bool;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.compress.bzip2.Bzip2.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.compress.bzip2.Bzip2.T__struct_1_static_extension) private typedef T__struct_1 = {
    public var _nbits : GoUInt;
    public var _value : GoInt;
    public var _fail : Bool;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.compress.bzip2.Bzip2.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.compress.bzip2.Bzip2.T__struct_2_static_extension) private typedef T__struct_2 = {
    public var _idx : GoInt;
    public var _sym : GoUInt8;
};
/**
    // A StructuralError is returned when the bzip2 data is found to be
    // syntactically invalid.
**/
@:named @:using(stdgo.compress.bzip2.Bzip2.StructuralError_static_extension) typedef StructuralError = GoString;
/**
    // moveToFrontDecoder implements a move-to-front list. Such a list is an
    // efficient way to transform a string with repeating elements into one with
    // many small valued numbers, which is suitable for entropy encoding. It works
    // by starting with an initial list of symbols and references symbols by their
    // index into that list. When a symbol is referenced, it's moved to the front
    // of the list. Thus, a repeated symbol ends up being encoded with many zeros,
    // as the symbol will be at the front of the list after the first access.
**/
@:named @:using(stdgo.compress.bzip2.Bzip2.T_moveToFrontDecoder_static_extension) private typedef T_moveToFrontDecoder = Slice<GoUInt8>;
/**
    // newBitReader returns a new bitReader reading from r. If r is not
    // already an io.ByteReader, it will be converted via a bufio.Reader.
**/
private function _newBitReader(_r:stdgo.io.Io.Reader):T_bitReader {
        var __tmp__ = try {
            { value : (Go.typeAssert((Go.toInterface(_r) : stdgo.io.Io.ByteReader)) : stdgo.io.Io.ByteReader), ok : true };
        } catch(_) {
            { value : (null : stdgo.io.Io.ByteReader), ok : false };
        }, _byter = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _byter = Go.asInterface(stdgo.bufio.Bufio.newReader(_r));
        };
        return ({ _r : _byter } : T_bitReader);
    }
/**
    // NewReader returns an io.Reader which decompresses bzip2 data from r.
    // If r does not also implement io.ByteReader,
    // the decompressor may read more data than necessary from r.
**/
function newReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
        var _bz2 = (Go.setRef(({} : stdgo.compress.bzip2.Bzip2.T_reader)) : Ref<stdgo.compress.bzip2.Bzip2.T_reader>);
        _bz2._br = _newBitReader(_r)?.__copy__();
        return Go.asInterface(_bz2);
    }
/**
    // inverseBWT implements the inverse Burrows-Wheeler transform as described in
    // http://www.hpl.hp.com/techreports/Compaq-DEC/SRC-RR-124.pdf, section 4.2.
    // In that document, origPtr is called “I” and c is the “C” array after the
    // first pass over the data. It's an argument here because we merge the first
    // pass with the Huffman decoding.
    //
    // This also implements the “single array” method from the bzip2 source code
    // which leaves the output, still shuffled, in the bottom 8 bits of tt with the
    // index of the next byte in the top 24-bits. The index of the first byte is
    // returned.
**/
private function _inverseBWT(_tt:Slice<GoUInt32>, _origPtr:GoUInt, _c:Slice<GoUInt>):GoUInt32 {
        var _sum:GoUInt = (0u32 : GoUInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (256 : GoInt), _i++, {
                _sum = _sum + (_c[(_i : GoInt)]);
                _c[(_i : GoInt)] = _sum - _c[(_i : GoInt)];
            });
        };
        for (_i in 0 ... _tt.length.toBasic()) {
            var _b:GoUInt32 = _tt[(_i : GoInt)] & (255u32 : GoUInt32);
            _tt[(_c[(_b : GoInt)] : GoInt)] = _tt[(_c[(_b : GoInt)] : GoInt)] | ((_i : GoUInt32) << (8i64 : GoUInt64));
            _c[(_b : GoInt)]++;
        };
        return _tt[(_origPtr : GoInt)] >> (8i64 : GoUInt64);
    }
/**
    // updateCRC updates the crc value to incorporate the data in b.
    // The initial value is 0.
**/
private function _updateCRC(_val:GoUInt32, _b:Slice<GoByte>):GoUInt32 {
        var _crc:GoUInt32 = (-1 ^ _val);
        for (__0 => _v in _b) {
            _crc = _crctab[((_crc >> (24i64 : GoUInt64) : GoByte) ^ _v : GoInt)] ^ (_crc << (8i64 : GoUInt64));
        };
        return (-1 ^ _crc);
    }
private function _mustDecodeHex(_s:GoString):Slice<GoByte> {
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_s), _b:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        return _b;
    }
private function _mustLoadFile(_f:GoString):Slice<GoByte> {
        return new Slice<GoByte>(0, 0).__setNumber32__();
    }
private function _trim(_b:Slice<GoByte>):GoString {
        {};
        if ((_b.length) < (1024 : GoInt)) {
            return stdgo.fmt.Fmt.sprintf(("%q" : GoString), Go.toInterface(_b));
        };
        return stdgo.fmt.Fmt.sprintf(("%q..." : GoString), Go.toInterface((_b.__slice__(0, (1024 : GoInt)) : Slice<GoUInt8>)));
    }
function testReader(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _vectors:Slice<T__struct_0> = (new Slice<T__struct_0>(
12,
12,
({ _desc : ("hello world" : GoString), _input : _mustDecodeHex(("425a68393141592653594eece83600000251800010400006449080200031064c4101a7a9a580bb9431f8bb9229c28482776741b0" : GoString)), _output : (("hello world\n" : GoString) : Slice<GoByte>), _fail : false } : T__struct_0),
({ _desc : ("concatenated files" : GoString), _input : _mustDecodeHex(("425a68393141592653594eece83600000251800010400006449080200031064c4101a7a9a580bb9431f8bb9229c28482776741b0425a68393141592653594eece83600000251800010400006449080200031064c4101a7a9a580bb9431f8bb9229c28482776741b0" : GoString)), _output : (("hello world\nhello world\n" : GoString) : Slice<GoByte>), _fail : false } : T__struct_0),
({ _desc : ("32B zeros" : GoString), _input : _mustDecodeHex(("425a6839314159265359b5aa5098000000600040000004200021008283177245385090b5aa5098" : GoString)), _output : new Slice<GoUInt8>((32 : GoInt).toBasic(), 0).__setNumber32__(), _fail : false } : T__struct_0),
({ _desc : ("1MiB zeros" : GoString), _input : _mustDecodeHex(("425a683931415926535938571ce50008084000c0040008200030cc0529a60806c4201e2ee48a70a12070ae39ca" : GoString)), _output : new Slice<GoUInt8>((1048576 : GoInt).toBasic(), 0).__setNumber32__(), _fail : false } : T__struct_0),
({ _desc : ("random data" : GoString), _input : _mustLoadFile(("testdata/pass-random1.bz2" : GoString)), _output : _mustLoadFile(("testdata/pass-random1.bin" : GoString)), _fail : false } : T__struct_0),
({ _desc : ("random data - full symbol range" : GoString), _input : _mustLoadFile(("testdata/pass-random2.bz2" : GoString)), _output : _mustLoadFile(("testdata/pass-random2.bin" : GoString)), _fail : false } : T__struct_0),
({ _desc : ("random data - uses RLE1 stage" : GoString), _input : _mustDecodeHex(("425a6839314159265359d992d0f60000137dfe84020310091c1e280e100e042801099210094806c0110002e70806402000546034000034000000f2830000032000d3403264049270eb7a9280d308ca06ad28f6981bee1bf8160727c7364510d73a1e123083421b63f031f63993a0f40051fbf177245385090d992d0f60" : GoString)), _output : _mustDecodeHex(("92d5652616ac444a4a04af1a8a3964aca0450d43d6cf233bd03233f4ba92f8719e6c2a2bd4f5f88db07ecd0da3a33b263483db9b2c158786ad6363be35d17335ba" : GoString)), _fail : false } : T__struct_0),
({ _desc : ("1MiB sawtooth" : GoString), _input : _mustLoadFile(("testdata/pass-sawtooth.bz2" : GoString)), _output : {
            var a = function():Slice<GoByte> {
                var _b = new Slice<GoUInt8>((1048576 : GoInt).toBasic(), 0).__setNumber32__();
                for (_i in 0 ... _b.length.toBasic()) {
                    _b[(_i : GoInt)] = (_i : GoByte);
                };
                return _b;
            };
            a();
        }, _fail : false } : T__struct_0),
({ _desc : ("RLE2 buffer overrun - issue 5747" : GoString), _input : _mustLoadFile(("testdata/fail-issue5747.bz2" : GoString)), _output : (null : Slice<GoUInt8>), _fail : true } : T__struct_0),
({ _desc : ("out-of-range selector - issue 8363" : GoString), _input : _mustDecodeHex(("425a68393141592653594eece83600000251800010400006449080200031064c4101a7a9a580bb943117724538509000000000" : GoString)), _output : (null : Slice<GoUInt8>), _fail : true } : T__struct_0),
({ _desc : ("bad block size - issue 13941" : GoString), _input : _mustDecodeHex(("425a683131415926535936dc55330063ffc0006000200020a40830008b0008b8bb9229c28481b6e2a998" : GoString)), _output : (null : Slice<GoUInt8>), _fail : true } : T__struct_0),
({ _desc : ("bad huffman delta" : GoString), _input : _mustDecodeHex(("425a6836314159265359b1f7404b000000400040002000217d184682ee48a70a12163ee80960" : GoString)), _output : (null : Slice<GoUInt8>), _fail : true } : T__struct_0)) : Slice<T__struct_0>);
        for (_i => _v in _vectors) {
            var _rd:stdgo.io.Io.Reader = newReader(Go.asInterface(stdgo.bytes.Bytes.newReader(_v._input)));
            var __tmp__ = stdgo.io.Io.readAll(_rd), _buf:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
            {
                var _fail:Bool = (_err != null : Bool);
                if (_fail != (_v._fail)) {
                    if (_fail) {
                        _t.errorf(("test %d (%s), unexpected failure: %v" : GoString), Go.toInterface(_i), Go.toInterface(_v._desc), Go.toInterface(_err));
                    } else {
                        _t.errorf(("test %d (%s), unexpected success" : GoString), Go.toInterface(_i), Go.toInterface(_v._desc));
                    };
                };
            };
            if (!_v._fail && !stdgo.bytes.Bytes.equal(_buf, _v._output)) {
                _t.errorf(("test %d (%s), output mismatch:\ngot  %s\nwant %s" : GoString), Go.toInterface(_i), Go.toInterface(_v._desc), Go.toInterface(_trim(_buf)), Go.toInterface(_trim(_v._output)));
            };
        };
    }
function testBitReader(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _vectors:Slice<T__struct_1> = (new Slice<T__struct_1>(
9,
9,
({ _nbits : (1u32 : GoUInt), _value : (1 : GoInt), _fail : false } : T__struct_1),
({ _nbits : (1u32 : GoUInt), _value : (0 : GoInt), _fail : false } : T__struct_1),
({ _nbits : (1u32 : GoUInt), _value : (1 : GoInt), _fail : false } : T__struct_1),
({ _nbits : (5u32 : GoUInt), _value : (11 : GoInt), _fail : false } : T__struct_1),
({ _nbits : (32u32 : GoUInt), _value : (305419896 : GoInt), _fail : false } : T__struct_1),
({ _nbits : (15u32 : GoUInt), _value : (14495 : GoInt), _fail : false } : T__struct_1),
({ _nbits : (3u32 : GoUInt), _value : (6 : GoInt), _fail : false } : T__struct_1),
({ _nbits : (6u32 : GoUInt), _value : (13 : GoInt), _fail : false } : T__struct_1),
({ _nbits : (1u32 : GoUInt), _value : (0 : GoInt), _fail : true } : T__struct_1)) : Slice<T__struct_1>);
        var _rd = stdgo.bytes.Bytes.newReader((new Slice<GoUInt8>(8, 8, (171 : GoUInt8), (18 : GoUInt8), (52 : GoUInt8), (86 : GoUInt8), (120 : GoUInt8), (113 : GoUInt8), (63 : GoUInt8), (141 : GoUInt8)) : Slice<GoUInt8>));
        var _br:stdgo.compress.bzip2.Bzip2.T_bitReader = _newBitReader(Go.asInterface(_rd))?.__copy__();
        for (_i => _v in _vectors) {
            var _val:GoInt = _br.readBits(_v._nbits);
            {
                var _fail:Bool = (_br._err != null : Bool);
                if (_fail != (_v._fail)) {
                    if (_fail) {
                        _t.errorf(("test %d, unexpected failure: ReadBits(%d) = %v" : GoString), Go.toInterface(_i), Go.toInterface(_v._nbits), Go.toInterface(_br._err));
                    } else {
                        _t.errorf(("test %d, unexpected success: ReadBits(%d) = nil" : GoString), Go.toInterface(_i), Go.toInterface(_v._nbits));
                    };
                };
            };
            if (!_v._fail && (_val != _v._value)) {
                _t.errorf(("test %d, mismatching value: ReadBits(%d) = %d, want %d" : GoString), Go.toInterface(_i), Go.toInterface(_v._nbits), Go.toInterface(_val), Go.toInterface(_v._value));
            };
        };
    }
function testMTF(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _vectors:Slice<T__struct_2> = (new Slice<T__struct_2>(5, 5, ({ _idx : (1 : GoInt), _sym : (1 : GoUInt8) } : T__struct_2), ({ _idx : (0 : GoInt), _sym : (1 : GoUInt8) } : T__struct_2), ({ _idx : (1 : GoInt), _sym : (0 : GoUInt8) } : T__struct_2), ({ _idx : (4 : GoInt), _sym : (4 : GoUInt8) } : T__struct_2), ({ _idx : (1 : GoInt), _sym : (0 : GoUInt8) } : T__struct_2)) : Slice<T__struct_2>);
        var _mtf:stdgo.compress.bzip2.Bzip2.T_moveToFrontDecoder = _newMTFDecoderWithRange((5 : GoInt));
        for (_i => _v in _vectors) {
            var _sym:GoUInt8 = _mtf.decode(_v._idx);
            _t.log(Go.toInterface(Go.asInterface(_mtf)));
            if (_sym != (_v._sym)) {
                _t.errorf(("test %d, symbol mismatch: Decode(%d) = %d, want %d" : GoString), Go.toInterface(_i), Go.toInterface(_v._idx), Go.toInterface(_sym), Go.toInterface(_v._sym));
            };
        };
    }
function testZeroRead(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _b = _mustDecodeHex(("425a6839314159265359b5aa5098000000600040000004200021008283177245385090b5aa5098" : GoString));
        var _r:stdgo.io.Io.Reader = newReader(Go.asInterface(stdgo.bytes.Bytes.newReader(_b)));
        {
            var __tmp__ = _r.read((null : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if ((_n != (0 : GoInt)) || (_err != null)) {
                _t.errorf(("Read(nil) = (%d, %v), want (0, nil)" : GoString), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
    }
private function _benchmarkDecode(_b:Ref<stdgo.testing.Testing.B>, _compressed:Slice<GoByte>):Void {
        var __tmp__ = stdgo.io.Io.copy(stdgo.io.Io.discard, newReader(Go.asInterface(stdgo.bytes.Bytes.newReader(_compressed)))), _uncompressedSize:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _b.fatal(Go.toInterface(_err));
        };
        _b.setBytes(_uncompressedSize);
        _b.reportAllocs();
        _b.resetTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _r = stdgo.bytes.Bytes.newReader(_compressed);
                stdgo.io.Io.copy(stdgo.io.Io.discard, newReader(Go.asInterface(_r)));
            });
        };
    }
function benchmarkDecodeDigits(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkDecode(_b, _digits);
    }
function benchmarkDecodeNewton(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkDecode(_b, _newton);
    }
function benchmarkDecodeRand(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkDecode(_b, _random);
    }
/**
    // newHuffmanTree builds a Huffman tree from a slice containing the code
    // lengths of each symbol. The maximum code length is 32 bits.
**/
private function _newHuffmanTree(_lengths:Slice<GoUInt8>):{ var _0 : T_huffmanTree; var _1 : Error; } {
        if ((_lengths.length) < (2 : GoInt)) {
            throw Go.toInterface(("newHuffmanTree: too few symbols" : GoString));
        };
        var _t:T_huffmanTree = ({} : stdgo.compress.bzip2.Bzip2.T_huffmanTree);
        var _pairs = new Slice<stdgo.compress.bzip2.Bzip2.T_huffmanSymbolLengthPair>((_lengths.length : GoInt).toBasic(), 0, ...[for (i in 0 ... ((_lengths.length : GoInt).toBasic() > 0 ? (_lengths.length : GoInt).toBasic() : 0 : GoInt).toBasic()) ({} : stdgo.compress.bzip2.Bzip2.T_huffmanSymbolLengthPair)]);
        for (_i => _length in _lengths) {
            _pairs[(_i : GoInt)]._value = (_i : GoUInt16);
            _pairs[(_i : GoInt)]._length = _length;
        };
        stdgo.sort.Sort.slice(Go.toInterface(_pairs), function(_i:GoInt, _j:GoInt):Bool {
            if (_pairs[(_i : GoInt)]._length < _pairs[(_j : GoInt)]._length) {
                return true;
            };
            if (_pairs[(_i : GoInt)]._length > _pairs[(_j : GoInt)]._length) {
                return false;
            };
            if (_pairs[(_i : GoInt)]._value < _pairs[(_j : GoInt)]._value) {
                return true;
            };
            return false;
        });
        var _code:GoUInt32 = (0u32 : GoUInt32);
        var _length:GoUInt8 = (32 : GoUInt8);
        var _codes = new Slice<stdgo.compress.bzip2.Bzip2.T_huffmanCode>((_lengths.length : GoInt).toBasic(), 0, ...[for (i in 0 ... ((_lengths.length : GoInt).toBasic() > 0 ? (_lengths.length : GoInt).toBasic() : 0 : GoInt).toBasic()) ({} : stdgo.compress.bzip2.Bzip2.T_huffmanCode)]);
        {
            var _i:GoInt = (_pairs.length) - (1 : GoInt);
            Go.cfor(_i >= (0 : GoInt), _i--, {
                if (_length > _pairs[(_i : GoInt)]._length) {
                    _length = _pairs[(_i : GoInt)]._length;
                };
                _codes[(_i : GoInt)]._code = _code;
                _codes[(_i : GoInt)]._codeLen = _length;
                _codes[(_i : GoInt)]._value = _pairs[(_i : GoInt)]._value;
                _code = _code + ((1u32 : GoUInt32) << ((32 : GoUInt8) - _length));
            });
        };
        stdgo.sort.Sort.slice(Go.toInterface(_codes), function(_i:GoInt, _j:GoInt):Bool {
            return _codes[(_i : GoInt)]._code < _codes[(_j : GoInt)]._code;
        });
        _t._nodes = new Slice<stdgo.compress.bzip2.Bzip2.T_huffmanNode>((_codes.length : GoInt).toBasic(), 0, ...[for (i in 0 ... ((_codes.length : GoInt).toBasic() > 0 ? (_codes.length : GoInt).toBasic() : 0 : GoInt).toBasic()) ({} : stdgo.compress.bzip2.Bzip2.T_huffmanNode)]);
        var __tmp__ = _buildHuffmanNode((Go.setRef(_t) : Ref<stdgo.compress.bzip2.Bzip2.T_huffmanTree>), _codes, (0u32 : GoUInt32)), __0:GoUInt16 = __tmp__._0, _err:Error = __tmp__._1;
        return { _0 : _t?.__copy__(), _1 : _err };
    }
/**
    // buildHuffmanNode takes a slice of sorted huffmanCodes and builds a node in
    // the Huffman tree at the given level. It returns the index of the newly
    // constructed node.
**/
private function _buildHuffmanNode(_t:Ref<T_huffmanTree>, _codes:Slice<T_huffmanCode>, _level:GoUInt32):{ var _0 : GoUInt16; var _1 : Error; } {
        var _nodeIndex:GoUInt16 = (0 : GoUInt16), _err:Error = (null : Error);
        var _test:GoUInt32 = (1u32 : GoUInt32) << ((31u32 : GoUInt32) - _level);
        var _firstRightIndex:GoInt = (_codes.length);
        for (_i => _code in _codes) {
            if (_code._code & _test != ((0u32 : GoUInt32))) {
                _firstRightIndex = _i;
                break;
            };
        };
        var _left = (_codes.__slice__(0, _firstRightIndex) : Slice<stdgo.compress.bzip2.Bzip2.T_huffmanCode>);
        var _right = (_codes.__slice__(_firstRightIndex) : Slice<stdgo.compress.bzip2.Bzip2.T_huffmanCode>);
        if ((_left.length == (0 : GoInt)) || (_right.length == (0 : GoInt))) {
            if ((_codes.length) < (2 : GoInt)) {
                return { _0 : (0 : GoUInt16), _1 : Go.asInterface(((("empty Huffman tree" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError)) };
            };
            if (_level == ((31u32 : GoUInt32))) {
                return { _0 : (0 : GoUInt16), _1 : Go.asInterface(((("equal symbols in Huffman tree" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError)) };
            };
            if ((_left.length) == ((0 : GoInt))) {
                return _buildHuffmanNode(_t, _right, _level + (1u32 : GoUInt32));
            };
            return _buildHuffmanNode(_t, _left, _level + (1u32 : GoUInt32));
        };
        _nodeIndex = (_t._nextNode : GoUInt16);
        var _node = (Go.setRef(_t._nodes[(_t._nextNode : GoInt)]) : Ref<stdgo.compress.bzip2.Bzip2.T_huffmanNode>);
        _t._nextNode++;
        if ((_left.length) == ((1 : GoInt))) {
            _node._left = (65535 : GoUInt16);
            _node._leftValue = _left[(0 : GoInt)]._value;
        } else {
            {
                var __tmp__ = _buildHuffmanNode(_t, _left, _level + (1u32 : GoUInt32));
                _node._left = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            return { _0 : _nodeIndex, _1 : _err };
        };
        if ((_right.length) == ((1 : GoInt))) {
            _node._right = (65535 : GoUInt16);
            _node._rightValue = _right[(0 : GoInt)]._value;
        } else {
            {
                var __tmp__ = _buildHuffmanNode(_t, _right, _level + (1u32 : GoUInt32));
                _node._right = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        return { _0 : _nodeIndex, _1 : _err };
    }
/**
    // newMTFDecoder creates a move-to-front decoder with an explicit initial list
    // of symbols.
**/
private function _newMTFDecoder(_symbols:Slice<GoByte>):T_moveToFrontDecoder {
        if ((_symbols.length) > (256 : GoInt)) {
            throw Go.toInterface(("too many symbols" : GoString));
        };
        return (_symbols : T_moveToFrontDecoder);
    }
/**
    // newMTFDecoderWithRange creates a move-to-front decoder with an initial
    // symbol list of 0...n-1.
**/
private function _newMTFDecoderWithRange(_n:GoInt):T_moveToFrontDecoder {
        if (_n > (256 : GoInt)) {
            throw Go.toInterface(("newMTFDecoderWithRange: cannot have > 256 symbols" : GoString));
        };
        var _m = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0).__setNumber32__();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _n, _i++, {
                _m[(_i : GoInt)] = (_i : GoByte);
            });
        };
        return (_m : T_moveToFrontDecoder);
    }
@:keep var _ = {
        try {
            {};
            for (_i in 0 ... _crctab.length.toBasic()) {
                var _crc:GoUInt32 = (_i : GoUInt32) << (24i64 : GoUInt64);
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (8 : GoInt), _j++, {
                        if (_crc & (-2147483648u32 : GoUInt32) != ((0u32 : GoUInt32))) {
                            _crc = (_crc << (1i64 : GoUInt64)) ^ (79764919u32 : GoUInt32);
                        } else {
                            _crc = _crc << ((1i64 : GoUInt64));
                        };
                    });
                };
                _crctab[(_i : GoInt)] = _crc;
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_bitReader_asInterface {
    @:keep
    public dynamic function err():Error return __self__.value.err();
    @:keep
    public dynamic function readBit():Bool return __self__.value.readBit();
    @:keep
    public dynamic function readBits(_bits:GoUInt):GoInt return __self__.value.readBits(_bits);
    /**
        // ReadBits64 reads the given number of bits and returns them in the
        // least-significant part of a uint64. In the event of an error, it returns 0
        // and the error can be obtained by calling Err().
    **/
    @:keep
    public dynamic function readBits64(_bits:GoUInt):GoUInt64 return __self__.value.readBits64(_bits);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_bitReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.compress.bzip2.Bzip2.T_bitReader_asInterface) class T_bitReader_static_extension {
    @:keep
    static public function err( _br:Ref<T_bitReader>):Error {
        return _br._err;
    }
    @:keep
    static public function readBit( _br:Ref<T_bitReader>):Bool {
        var _n:GoInt = _br.readBits((1u32 : GoUInt));
        return _n != ((0 : GoInt));
    }
    @:keep
    static public function readBits( _br:Ref<T_bitReader>, _bits:GoUInt):GoInt {
        var _n:GoInt = (0 : GoInt);
        var _n64:GoUInt64 = _br.readBits64(_bits);
        return (_n64 : GoInt);
    }
    /**
        // ReadBits64 reads the given number of bits and returns them in the
        // least-significant part of a uint64. In the event of an error, it returns 0
        // and the error can be obtained by calling Err().
    **/
    @:keep
    static public function readBits64( _br:Ref<T_bitReader>, _bits:GoUInt):GoUInt64 {
        var _n:GoUInt64 = (0 : GoUInt64);
        while (_bits > _br._bits) {
            var __tmp__ = _br._r.readByte(), _b:GoUInt8 = __tmp__._0, _err:Error = __tmp__._1;
            if (Go.toInterface(_err) == (Go.toInterface(stdgo.io.Io.eof))) {
                _err = stdgo.io.Io.errUnexpectedEOF;
            };
            if (_err != null) {
                _br._err = _err;
                return (0i64 : GoUInt64);
            };
            _br._n = _br._n << ((8i64 : GoUInt64));
            _br._n = _br._n | ((_b : GoUInt64));
            _br._bits = _br._bits + ((8u32 : GoUInt));
        };
        _n = (_br._n >> (_br._bits - _bits)) & (((1i64 : GoUInt64) << _bits) - (1i64 : GoUInt64));
        _br._bits = _br._bits - (_bits);
        return _n;
    }
}
class T_reader_asInterface {
    /**
        // readBlock reads a bzip2 block. The magic number should already have been consumed.
    **/
    @:keep
    public dynamic function _readBlock():Error return __self__.value._readBlock();
    @:keep
    public dynamic function _read(_buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value._read(_buf);
    @:keep
    public dynamic function _readFromBlock(_buf:Slice<GoByte>):GoInt return __self__.value._readFromBlock(_buf);
    @:keep
    public dynamic function read(_buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_buf);
    /**
        // setup parses the bzip2 header.
    **/
    @:keep
    public dynamic function _setup(_needMagic:Bool):Error return __self__.value._setup(_needMagic);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_reader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.compress.bzip2.Bzip2.T_reader_asInterface) class T_reader_static_extension {
    /**
        // readBlock reads a bzip2 block. The magic number should already have been consumed.
    **/
    @:keep
    static public function _readBlock( _bz2:Ref<T_reader>):Error {
        var _err:Error = (null : Error);
        var _br = (Go.setRef(_bz2._br) : Ref<stdgo.compress.bzip2.Bzip2.T_bitReader>);
        _bz2._wantBlockCRC = (_br.readBits64((32u32 : GoUInt)) : GoUInt32);
        _bz2._blockCRC = (0u32 : GoUInt32);
        _bz2._fileCRC = ((_bz2._fileCRC << (1i64 : GoUInt64)) | (_bz2._fileCRC >> (31i64 : GoUInt64))) ^ _bz2._wantBlockCRC;
        var _randomized:GoInt = _br.readBits((1u32 : GoUInt));
        if (_randomized != ((0 : GoInt))) {
            return Go.asInterface(((("deprecated randomized files" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        var _origPtr:GoUInt = (_br.readBits((24u32 : GoUInt)) : GoUInt);
        var _symbolRangeUsedBitmap:GoInt = _br.readBits((16u32 : GoUInt));
        var _symbolPresent = new Slice<Bool>((256 : GoInt).toBasic(), 0);
        var _numSymbols:GoInt = (0 : GoInt);
        {
            var _symRange:GoUInt = (0u32 : GoUInt);
            Go.cfor(_symRange < (16u32 : GoUInt), _symRange++, {
                if (_symbolRangeUsedBitmap & ((1 : GoInt) << ((15u32 : GoUInt) - _symRange)) != ((0 : GoInt))) {
                    var _bits:GoInt = _br.readBits((16u32 : GoUInt));
                    {
                        var _symbol:GoUInt = (0u32 : GoUInt);
                        Go.cfor(_symbol < (16u32 : GoUInt), _symbol++, {
                            if (_bits & ((1 : GoInt) << ((15u32 : GoUInt) - _symbol)) != ((0 : GoInt))) {
                                _symbolPresent[(((16u32 : GoUInt) * _symRange) + _symbol : GoInt)] = true;
                                _numSymbols++;
                            };
                        });
                    };
                };
            });
        };
        if (_numSymbols == ((0 : GoInt))) {
            return Go.asInterface(((("no symbols in input" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        var _numHuffmanTrees:GoInt = _br.readBits((3u32 : GoUInt));
        if ((_numHuffmanTrees < (2 : GoInt)) || (_numHuffmanTrees > (6 : GoInt))) {
            return Go.asInterface(((("invalid number of Huffman trees" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        var _numSelectors:GoInt = _br.readBits((15u32 : GoUInt));
        var _treeIndexes = new Slice<GoUInt8>((_numSelectors : GoInt).toBasic(), 0).__setNumber32__();
        var _mtfTreeDecoder:stdgo.compress.bzip2.Bzip2.T_moveToFrontDecoder = _newMTFDecoderWithRange(_numHuffmanTrees);
        for (_i in 0 ... _treeIndexes.length.toBasic()) {
            var _c:GoInt = (0 : GoInt);
            while (true) {
                var _inc:GoInt = _br.readBits((1u32 : GoUInt));
                if (_inc == ((0 : GoInt))) {
                    break;
                };
                _c++;
            };
            if (_c >= _numHuffmanTrees) {
                return Go.asInterface(((("tree index too large" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
            };
            _treeIndexes[(_i : GoInt)] = _mtfTreeDecoder.decode(_c);
        };
        var _symbols = new Slice<GoUInt8>((_numSymbols : GoInt).toBasic(), 0).__setNumber32__();
        var _nextSymbol:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (256 : GoInt), _i++, {
                if (_symbolPresent[(_i : GoInt)]) {
                    _symbols[(_nextSymbol : GoInt)] = (_i : GoByte);
                    _nextSymbol++;
                };
            });
        };
        var _mtf:stdgo.compress.bzip2.Bzip2.T_moveToFrontDecoder = _newMTFDecoder(_symbols);
        _numSymbols = _numSymbols + ((2 : GoInt));
        var _huffmanTrees = new Slice<stdgo.compress.bzip2.Bzip2.T_huffmanTree>((_numHuffmanTrees : GoInt).toBasic(), 0, ...[for (i in 0 ... ((_numHuffmanTrees : GoInt).toBasic() > 0 ? (_numHuffmanTrees : GoInt).toBasic() : 0 : GoInt).toBasic()) ({} : stdgo.compress.bzip2.Bzip2.T_huffmanTree)]);
        var _lengths = new Slice<GoUInt8>((_numSymbols : GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _huffmanTrees.length.toBasic()) {
            var _length:GoInt = _br.readBits((5u32 : GoUInt));
            for (_j in 0 ... _lengths.length.toBasic()) {
                while (true) {
                    if ((_length < (1 : GoInt)) || (_length > (20 : GoInt))) {
                        return Go.asInterface(((("Huffman length out of range" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
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
                _lengths[(_j : GoInt)] = (_length : GoUInt8);
            };
            {
                var __tmp__ = _newHuffmanTree(_lengths);
                _huffmanTrees[(_i : GoInt)] = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var _selectorIndex:GoInt = (1 : GoInt);
        if ((_treeIndexes.length) == ((0 : GoInt))) {
            return Go.asInterface(((("no tree selectors given" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        if ((_treeIndexes[(0 : GoInt)] : GoInt) >= (_huffmanTrees.length)) {
            return Go.asInterface(((("tree selector out of range" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        var _currentHuffmanTree:stdgo.compress.bzip2.Bzip2.T_huffmanTree = _huffmanTrees[(_treeIndexes[(0 : GoInt)] : GoInt)];
        var _bufIndex:GoInt = (0 : GoInt);
        var _repeat:GoInt = (0 : GoInt);
        var _repeatPower:GoInt = (0 : GoInt);
        for (_i in 0 ... _bz2._c.length.toBasic()) {
            _bz2._c[(_i : GoInt)] = (0u32 : GoUInt);
        };
        var _decoded:GoInt = (0 : GoInt);
        while (true) {
            if (_decoded == ((50 : GoInt))) {
                if (_selectorIndex >= _numSelectors) {
                    return Go.asInterface(((("insufficient selector indices for number of symbols" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                };
                if ((_treeIndexes[(_selectorIndex : GoInt)] : GoInt) >= (_huffmanTrees.length)) {
                    return Go.asInterface(((("tree selector out of range" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                };
                _currentHuffmanTree = _huffmanTrees[(_treeIndexes[(_selectorIndex : GoInt)] : GoInt)];
                _selectorIndex++;
                _decoded = (0 : GoInt);
            };
            var _v:GoUInt16 = _currentHuffmanTree.decode(_br);
            _decoded++;
            if (_v < (2 : GoUInt16)) {
                if (_repeat == ((0 : GoInt))) {
                    _repeatPower = (1 : GoInt);
                };
                _repeat = _repeat + (_repeatPower << _v);
                _repeatPower = _repeatPower << ((1i64 : GoUInt64));
                if (_repeat > (2097152 : GoInt)) {
                    return Go.asInterface(((("repeat count too large" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                };
                continue;
            };
            if (_repeat > (0 : GoInt)) {
                if (_repeat > (_bz2._blockSize - _bufIndex)) {
                    return Go.asInterface(((("repeats past end of block" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                };
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _repeat, _i++, {
                        var _b:GoUInt8 = _mtf.first();
                        _bz2._tt[(_bufIndex : GoInt)] = (_b : GoUInt32);
                        _bz2._c[(_b : GoInt)]++;
                        _bufIndex++;
                    });
                };
                _repeat = (0 : GoInt);
            };
            if ((_v : GoInt) == (_numSymbols - (1 : GoInt))) {
                break;
            };
            var _b:GoUInt8 = _mtf.decode((_v - (1 : GoUInt16) : GoInt));
            if (_bufIndex >= _bz2._blockSize) {
                return Go.asInterface(((("data exceeds block size" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
            };
            _bz2._tt[(_bufIndex : GoInt)] = (_b : GoUInt32);
            _bz2._c[(_b : GoInt)]++;
            _bufIndex++;
        };
        if (_origPtr >= (_bufIndex : GoUInt)) {
            return Go.asInterface(((("origPtr out of bounds" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        _bz2._preRLE = (_bz2._tt.__slice__(0, _bufIndex) : Slice<GoUInt32>);
        _bz2._preRLEUsed = (0 : GoInt);
        _bz2._tPos = _inverseBWT(_bz2._preRLE, _origPtr, (_bz2._c.__slice__(0) : Slice<GoUInt>));
        _bz2._lastByte = (-1 : GoInt);
        _bz2._byteRepeats = (0u32 : GoUInt);
        _bz2._repeats = (0u32 : GoUInt);
        return (null : Error);
    }
    @:keep
    static public function _read( _bz2:Ref<T_reader>, _buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        while (true) {
            var _n:GoInt = _bz2._readFromBlock(_buf);
            if ((_n > (0 : GoInt)) || (_buf.length == (0 : GoInt))) {
                _bz2._blockCRC = _updateCRC(_bz2._blockCRC, (_buf.__slice__(0, _n) : Slice<GoUInt8>));
                return { _0 : _n, _1 : (null : Error) };
            };
            if (_bz2._blockCRC != (_bz2._wantBlockCRC)) {
                _bz2._br._err = Go.asInterface(((("block checksum mismatch" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                return { _0 : (0 : GoInt), _1 : _bz2._br._err };
            };
            var _br = (Go.setRef(_bz2._br) : Ref<stdgo.compress.bzip2.Bzip2.T_bitReader>);
            {
                final __value__ = _br.readBits64((48u32 : GoUInt));
                if (__value__ == ((54156738319193i64 : GoUInt64))) {
                    var _err:Error = _bz2._readBlock();
                    if (_err != null) {
                        return { _0 : (0 : GoInt), _1 : _err };
                    };
                } else if (__value__ == ((25779555029136i64 : GoUInt64))) {
                    var _wantFileCRC:GoUInt32 = (_br.readBits64((32u32 : GoUInt)) : GoUInt32);
                    if (_br._err != null) {
                        return { _0 : (0 : GoInt), _1 : _br._err };
                    };
                    if (_bz2._fileCRC != (_wantFileCRC)) {
                        _br._err = Go.asInterface(((("file checksum mismatch" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                        return { _0 : (0 : GoInt), _1 : _br._err };
                    };
                    if (_br._bits % (8u32 : GoUInt) != ((0u32 : GoUInt))) {
                        _br.readBits(_br._bits % (8u32 : GoUInt));
                    };
                    var __tmp__ = _br._r.readByte(), _b:GoUInt8 = __tmp__._0, _err:Error = __tmp__._1;
                    if (Go.toInterface(_err) == (Go.toInterface(stdgo.io.Io.eof))) {
                        _br._err = stdgo.io.Io.eof;
                        _bz2._eof = true;
                        return { _0 : (0 : GoInt), _1 : stdgo.io.Io.eof };
                    };
                    if (_err != null) {
                        _br._err = _err;
                        return { _0 : (0 : GoInt), _1 : _err };
                    };
                    var __tmp__ = _br._r.readByte(), _z:GoUInt8 = __tmp__._0, _err:Error = __tmp__._1;
                    if (_err != null) {
                        if (Go.toInterface(_err) == (Go.toInterface(stdgo.io.Io.eof))) {
                            _err = stdgo.io.Io.errUnexpectedEOF;
                        };
                        _br._err = _err;
                        return { _0 : (0 : GoInt), _1 : _err };
                    };
                    if ((_b != (66 : GoUInt8)) || (_z != (90 : GoUInt8))) {
                        return { _0 : (0 : GoInt), _1 : Go.asInterface(((("bad magic value in continuation file" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError)) };
                    };
                    {
                        var _err:Error = _bz2._setup(false);
                        if (_err != null) {
                            return { _0 : (0 : GoInt), _1 : _err };
                        };
                    };
                } else {
                    return { _0 : (0 : GoInt), _1 : Go.asInterface(((("bad magic value found" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError)) };
                };
            };
        };
    }
    @:keep
    static public function _readFromBlock( _bz2:Ref<T_reader>, _buf:Slice<GoByte>):GoInt {
        var _n:GoInt = (0 : GoInt);
        while (((_bz2._repeats > (0u32 : GoUInt)) || (_bz2._preRLEUsed < _bz2._preRLE.length)) && (_n < _buf.length)) {
            if (_bz2._repeats > (0u32 : GoUInt)) {
                _buf[(_n : GoInt)] = (_bz2._lastByte : GoByte);
                _n++;
                _bz2._repeats--;
                if (_bz2._repeats == ((0u32 : GoUInt))) {
                    _bz2._lastByte = (-1 : GoInt);
                };
                continue;
            };
            _bz2._tPos = _bz2._preRLE[(_bz2._tPos : GoInt)];
            var _b:GoUInt8 = (_bz2._tPos : GoByte);
            _bz2._tPos = _bz2._tPos >> ((8i64 : GoUInt64));
            _bz2._preRLEUsed++;
            if (_bz2._byteRepeats == ((3u32 : GoUInt))) {
                _bz2._repeats = (_b : GoUInt);
                _bz2._byteRepeats = (0u32 : GoUInt);
                continue;
            };
            if (_bz2._lastByte == ((_b : GoInt))) {
                _bz2._byteRepeats++;
            } else {
                _bz2._byteRepeats = (0u32 : GoUInt);
            };
            _bz2._lastByte = (_b : GoInt);
            _buf[(_n : GoInt)] = _b;
            _n++;
        };
        return _n;
    }
    @:keep
    static public function read( _bz2:Ref<T_reader>, _buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        if (_bz2._eof) {
            return { _0 : (0 : GoInt), _1 : stdgo.io.Io.eof };
        };
        if (!_bz2._setupDone) {
            _err = _bz2._setup(true);
            var _brErr:Error = _bz2._br.err();
            if (_brErr != null) {
                _err = _brErr;
            };
            if (_err != null) {
                return { _0 : (0 : GoInt), _1 : _err };
            };
            _bz2._setupDone = true;
        };
        {
            var __tmp__ = _bz2._read(_buf);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        var _brErr:Error = _bz2._br.err();
        if (_brErr != null) {
            _err = _brErr;
        };
        return { _0 : _n, _1 : _err };
    }
    /**
        // setup parses the bzip2 header.
    **/
    @:keep
    static public function _setup( _bz2:Ref<T_reader>, _needMagic:Bool):Error {
        var _br = (Go.setRef(_bz2._br) : Ref<stdgo.compress.bzip2.Bzip2.T_bitReader>);
        if (_needMagic) {
            var _magic:GoInt = _br.readBits((16u32 : GoUInt));
            if (_magic != ((16986 : GoInt))) {
                return Go.asInterface(((("bad magic value" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
            };
        };
        var _t:GoInt = _br.readBits((8u32 : GoUInt));
        if (_t != ((104 : GoInt))) {
            return Go.asInterface(((("non-Huffman entropy encoding" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        var _level:GoInt = _br.readBits((8u32 : GoUInt));
        if ((_level < (49 : GoInt)) || (_level > (57 : GoInt))) {
            return Go.asInterface(((("invalid compression level" : GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        _bz2._fileCRC = (0u32 : GoUInt32);
        _bz2._blockSize = (100000 : GoInt) * (_level - (48 : GoInt));
        if (_bz2._blockSize > (_bz2._tt.length)) {
            _bz2._tt = new Slice<GoUInt32>((_bz2._blockSize : GoInt).toBasic(), 0).__setNumber32__();
        };
        return (null : Error);
    }
}
class T_huffmanTree_asInterface {
    /**
        // Decode reads bits from the given bitReader and navigates the tree until a
        // symbol is found.
    **/
    @:keep
    public dynamic function decode(_br:Ref<T_bitReader>):GoUInt16 return __self__.value.decode(_br);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_huffmanTree>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.compress.bzip2.Bzip2.T_huffmanTree_asInterface) class T_huffmanTree_static_extension {
    /**
        // Decode reads bits from the given bitReader and navigates the tree until a
        // symbol is found.
    **/
    @:keep
    static public function decode( _t:Ref<T_huffmanTree>, _br:Ref<T_bitReader>):GoUInt16 {
        var _v:GoUInt16 = (0 : GoUInt16);
        var _nodeIndex:GoUInt16 = (0 : GoUInt16);
        while (true) {
            var _node = (Go.setRef(_t._nodes[(_nodeIndex : GoInt)]) : Ref<stdgo.compress.bzip2.Bzip2.T_huffmanNode>);
            var _bit:GoUInt16 = (0 : GoUInt16);
            if (_br._bits > (0u32 : GoUInt)) {
                _br._bits--;
                _bit = (_br._n >> (_br._bits & (63u32 : GoUInt)) : GoUInt16) & (1 : GoUInt16);
            } else {
                _bit = (_br.readBits((1u32 : GoUInt)) : GoUInt16);
            };
            var __0:GoUInt16 = _node._left, __1:GoUInt16 = _node._right, _r:GoUInt16 = __1, _l:GoUInt16 = __0;
            if (_bit == ((1 : GoUInt16))) {
                _nodeIndex = _l;
            } else {
                _nodeIndex = _r;
            };
            if (_nodeIndex == ((65535 : GoUInt16))) {
                var __0:GoUInt16 = _node._leftValue, __1:GoUInt16 = _node._rightValue, _r:GoUInt16 = __1, _l:GoUInt16 = __0;
                if (_bit == ((1 : GoUInt16))) {
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
    public dynamic function error():GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<StructuralError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.compress.bzip2.Bzip2.StructuralError_asInterface) class StructuralError_static_extension {
    @:keep
    static public function error( _s:StructuralError):GoString {
        return ("bzip2 data invalid: " : GoString) + (_s : GoString);
    }
}
class T_moveToFrontDecoder_asInterface {
    /**
        // First returns the symbol at the front of the list.
    **/
    @:keep
    public dynamic function first():GoByte return __self__.value.first();
    @:keep
    public dynamic function decode(_n:GoInt):GoByte return __self__.value.decode(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_moveToFrontDecoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.compress.bzip2.Bzip2.T_moveToFrontDecoder_asInterface) class T_moveToFrontDecoder_static_extension {
    /**
        // First returns the symbol at the front of the list.
    **/
    @:keep
    static public function first( _m:T_moveToFrontDecoder):GoByte {
        return _m[(0 : GoInt)];
    }
    @:keep
    static public function decode( _m:T_moveToFrontDecoder, _n:GoInt):GoByte {
        var _b:GoByte = (0 : GoUInt8);
        _b = _m[(_n : GoInt)];
        Go.copySlice((_m.__slice__((1 : GoInt)) : stdgo.compress.bzip2.Bzip2.T_moveToFrontDecoder), (_m.__slice__(0, _n) : stdgo.compress.bzip2.Bzip2.T_moveToFrontDecoder));
        _m[(0 : GoInt)] = _b;
        return _b;
    }
}
