package stdgo.compress.bzip2;
/**
    // Package bzip2 implements bzip2 decompression.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
var _digits : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = _mustLoadFile(("testdata/e.txt.bz2" : stdgo.GoString));
/**
    
    
    
**/
var _newton : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = _mustLoadFile(("testdata/Isaac.Newton-Opticks.txt.bz2" : stdgo.GoString));
/**
    
    
    
**/
var _random : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = _mustLoadFile(("testdata/random.data.bz2" : stdgo.GoString));
/**
    
    
    // "BZ"
**/
final _bzip2FileMagic : stdgo.StdGoTypes.GoUInt64 = (16986i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _bzip2BlockMagic : stdgo.StdGoTypes.GoUInt64 = (54156738319193i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _bzip2FinalMagic : stdgo.StdGoTypes.GoUInt64 = (25779555029136i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
var _crctab = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt32>(...[for (i in 0 ... 256) (0 : stdgo.StdGoTypes.GoUInt32)]);
/**
    // invalidNodeValue is an invalid index which marks a leaf node in the tree.
    
    
**/
final _invalidNodeValue : stdgo.StdGoTypes.GoUInt64 = (65535i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // bitReader wraps an io.Reader and provides the ability to read values,
    // bit-by-bit, from it. Its Read* methods don't return the usual error
    // because the error handling was verbose. Instead, any error is kept and can
    // be checked afterwards.
    
    
**/
@:structInit @:private @:using(stdgo.compress.bzip2.Bzip2.T_bitReader_static_extension) class T_bitReader {
    public var _r : stdgo.io.Io.ByteReader = (null : stdgo.io.Io.ByteReader);
    public var _n : stdgo.StdGoTypes.GoUInt64 = 0;
    public var _bits : stdgo.StdGoTypes.GoUInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_r:stdgo.io.Io.ByteReader, ?_n:stdgo.StdGoTypes.GoUInt64, ?_bits:stdgo.StdGoTypes.GoUInt, ?_err:stdgo.Error) {
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
/**
    // A reader decompresses bzip2 compressed data.
    
    
**/
@:structInit @:private @:using(stdgo.compress.bzip2.Bzip2.T_reader_static_extension) class T_reader {
    public var _br : stdgo.compress.bzip2.Bzip2.T_bitReader = ({} : stdgo.compress.bzip2.Bzip2.T_bitReader);
    public var _fileCRC : stdgo.StdGoTypes.GoUInt32 = 0;
    public var _blockCRC : stdgo.StdGoTypes.GoUInt32 = 0;
    public var _wantBlockCRC : stdgo.StdGoTypes.GoUInt32 = 0;
    public var _setupDone : Bool = false;
    public var _blockSize : stdgo.StdGoTypes.GoInt = 0;
    public var _eof : Bool = false;
    public var _c : stdgo.GoArray<stdgo.StdGoTypes.GoUInt> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt>(...[for (i in 0 ... 256) (0 : stdgo.StdGoTypes.GoUInt)]);
    public var _tt : stdgo.Slice<stdgo.StdGoTypes.GoUInt32> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
    public var _tPos : stdgo.StdGoTypes.GoUInt32 = 0;
    public var _preRLE : stdgo.Slice<stdgo.StdGoTypes.GoUInt32> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
    public var _preRLEUsed : stdgo.StdGoTypes.GoInt = 0;
    public var _lastByte : stdgo.StdGoTypes.GoInt = 0;
    public var _byteRepeats : stdgo.StdGoTypes.GoUInt = 0;
    public var _repeats : stdgo.StdGoTypes.GoUInt = 0;
    public function new(?_br:stdgo.compress.bzip2.Bzip2.T_bitReader, ?_fileCRC:stdgo.StdGoTypes.GoUInt32, ?_blockCRC:stdgo.StdGoTypes.GoUInt32, ?_wantBlockCRC:stdgo.StdGoTypes.GoUInt32, ?_setupDone:Bool, ?_blockSize:stdgo.StdGoTypes.GoInt, ?_eof:Bool, ?_c:stdgo.GoArray<stdgo.StdGoTypes.GoUInt>, ?_tt:stdgo.Slice<stdgo.StdGoTypes.GoUInt32>, ?_tPos:stdgo.StdGoTypes.GoUInt32, ?_preRLE:stdgo.Slice<stdgo.StdGoTypes.GoUInt32>, ?_preRLEUsed:stdgo.StdGoTypes.GoInt, ?_lastByte:stdgo.StdGoTypes.GoInt, ?_byteRepeats:stdgo.StdGoTypes.GoUInt, ?_repeats:stdgo.StdGoTypes.GoUInt) {
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
    public var _nodes : stdgo.Slice<stdgo.compress.bzip2.Bzip2.T_huffmanNode> = (null : stdgo.Slice<stdgo.compress.bzip2.Bzip2.T_huffmanNode>);
    public var _nextNode : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_nodes:stdgo.Slice<stdgo.compress.bzip2.Bzip2.T_huffmanNode>, ?_nextNode:stdgo.StdGoTypes.GoInt) {
        if (_nodes != null) this._nodes = _nodes;
        if (_nextNode != null) this._nextNode = _nextNode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
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
    public var _left : stdgo.StdGoTypes.GoUInt16 = 0;
    public var _right : stdgo.StdGoTypes.GoUInt16 = 0;
    public var _leftValue : stdgo.StdGoTypes.GoUInt16 = 0;
    public var _rightValue : stdgo.StdGoTypes.GoUInt16 = 0;
    public function new(?_left:stdgo.StdGoTypes.GoUInt16, ?_right:stdgo.StdGoTypes.GoUInt16, ?_leftValue:stdgo.StdGoTypes.GoUInt16, ?_rightValue:stdgo.StdGoTypes.GoUInt16) {
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
/**
    // huffmanSymbolLengthPair contains a symbol and its code length.
    
    
**/
@:structInit @:private class T_huffmanSymbolLengthPair {
    public var _value : stdgo.StdGoTypes.GoUInt16 = 0;
    public var _length : stdgo.StdGoTypes.GoUInt8 = 0;
    public function new(?_value:stdgo.StdGoTypes.GoUInt16, ?_length:stdgo.StdGoTypes.GoUInt8) {
        if (_value != null) this._value = _value;
        if (_length != null) this._length = _length;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanSymbolLengthPair(_value, _length);
    }
}
/**
    // huffmanCode contains a symbol, its code and code length.
    
    
**/
@:structInit @:private class T_huffmanCode {
    public var _code : stdgo.StdGoTypes.GoUInt32 = 0;
    public var _codeLen : stdgo.StdGoTypes.GoUInt8 = 0;
    public var _value : stdgo.StdGoTypes.GoUInt16 = 0;
    public function new(?_code:stdgo.StdGoTypes.GoUInt32, ?_codeLen:stdgo.StdGoTypes.GoUInt8, ?_value:stdgo.StdGoTypes.GoUInt16) {
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.compress.bzip2.Bzip2.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.compress.bzip2.Bzip2.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _desc : stdgo.GoString;
    public var _input : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
    public var _output : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
    public var _fail : Bool;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.compress.bzip2.Bzip2.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.compress.bzip2.Bzip2.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _nbits : stdgo.StdGoTypes.GoUInt;
    public var _value : stdgo.StdGoTypes.GoInt;
    public var _fail : Bool;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.compress.bzip2.Bzip2.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.compress.bzip2.Bzip2.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _idx : stdgo.StdGoTypes.GoInt;
    public var _sym : stdgo.StdGoTypes.GoUInt8;
};
/**
    // A StructuralError is returned when the bzip2 data is found to be
    // syntactically invalid.
**/
@:named @:using(stdgo.compress.bzip2.Bzip2.StructuralError_static_extension) typedef StructuralError = stdgo.GoString;
/**
    // moveToFrontDecoder implements a move-to-front list. Such a list is an
    // efficient way to transform a string with repeating elements into one with
    // many small valued numbers, which is suitable for entropy encoding. It works
    // by starting with an initial list of symbols and references symbols by their
    // index into that list. When a symbol is referenced, it's moved to the front
    // of the list. Thus, a repeated symbol ends up being encoded with many zeros,
    // as the symbol will be at the front of the list after the first access.
**/
@:named @:using(stdgo.compress.bzip2.Bzip2.T_moveToFrontDecoder_static_extension) typedef T_moveToFrontDecoder = stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
/**
    // newBitReader returns a new bitReader reading from r. If r is not
    // already an io.ByteReader, it will be converted via a bufio.Reader.
**/
function _newBitReader(_r:stdgo.io.Io.Reader):T_bitReader {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo.io.Io.ByteReader)) : stdgo.io.Io.ByteReader), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.io.Io.ByteReader), _1 : false };
        }, _byter = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _byter = stdgo.Go.asInterface(stdgo.bufio.Bufio.newReader(_r));
        };
        return ({ _r : _byter } : stdgo.compress.bzip2.Bzip2.T_bitReader);
    }
/**
    // NewReader returns an io.Reader which decompresses bzip2 data from r.
    // If r does not also implement io.ByteReader,
    // the decompressor may read more data than necessary from r.
**/
function newReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
        var _bz2 = (stdgo.Go.setRef(({} : stdgo.compress.bzip2.Bzip2.T_reader)) : stdgo.StdGoTypes.Ref<stdgo.compress.bzip2.Bzip2.T_reader>);
        _bz2._br = _newBitReader(_r)?.__copy__();
        return stdgo.Go.asInterface(_bz2);
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
function _inverseBWT(_tt:stdgo.Slice<stdgo.StdGoTypes.GoUInt32>, _origPtr:stdgo.StdGoTypes.GoUInt, _c:stdgo.Slice<stdgo.StdGoTypes.GoUInt>):stdgo.StdGoTypes.GoUInt32 {
        var _sum:stdgo.StdGoTypes.GoUInt = (0u32 : stdgo.StdGoTypes.GoUInt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (256 : stdgo.StdGoTypes.GoInt), _i++, {
                _sum = _sum + (_c[(_i : stdgo.StdGoTypes.GoInt)]);
                _c[(_i : stdgo.StdGoTypes.GoInt)] = _sum - _c[(_i : stdgo.StdGoTypes.GoInt)];
            });
        };
        for (_i in 0 ... _tt.length.toBasic()) {
            var _b:stdgo.StdGoTypes.GoUInt32 = _tt[(_i : stdgo.StdGoTypes.GoInt)] & (255u32 : stdgo.StdGoTypes.GoUInt32);
            _tt[(_c[(_b : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoInt)] = _tt[(_c[(_b : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoInt)] | ((_i : stdgo.StdGoTypes.GoUInt32) << (8i64 : stdgo.StdGoTypes.GoUInt64));
            _c[(_b : stdgo.StdGoTypes.GoInt)]++;
        };
        return _tt[(_origPtr : stdgo.StdGoTypes.GoInt)] >> (8i64 : stdgo.StdGoTypes.GoUInt64);
    }
/**
    // updateCRC updates the crc value to incorporate the data in b.
    // The initial value is 0.
**/
function _updateCRC(_val:stdgo.StdGoTypes.GoUInt32, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoUInt32 {
        var _crc:stdgo.StdGoTypes.GoUInt32 = (-1 ^ _val);
        for (__0 => _v in _b) {
            _crc = _crctab[((_crc >> (24i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte) ^ _v : stdgo.StdGoTypes.GoInt)] ^ (_crc << (8i64 : stdgo.StdGoTypes.GoUInt64));
        };
        return (-1 ^ _crc);
    }
function _mustDecodeHex(_s:stdgo.GoString):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_s?.__copy__()), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        return _b;
    }
function _mustLoadFile(_f:stdgo.GoString):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        return new stdgo.Slice<stdgo.StdGoTypes.GoByte>(0, 0).__setNumber32__();
    }
function _trim(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.GoString {
        {};
        if ((_b.length) < (1024 : stdgo.StdGoTypes.GoInt)) {
            return stdgo.fmt.Fmt.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_b))?.__copy__();
        };
        return stdgo.fmt.Fmt.sprintf(("%q..." : stdgo.GoString), stdgo.Go.toInterface((_b.__slice__(0, (1024 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)))?.__copy__();
    }
function testReader(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _vectors:stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(
12,
12,
({ _desc : ("hello world" : stdgo.GoString), _input : _mustDecodeHex(("425a68393141592653594eece83600000251800010400006449080200031064c4101a7a9a580bb9431f8bb9229c28482776741b0" : stdgo.GoString)), _output : (("hello world\n" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _fail : false } : T__struct_0),
({ _desc : ("concatenated files" : stdgo.GoString), _input : _mustDecodeHex(("425a68393141592653594eece83600000251800010400006449080200031064c4101a7a9a580bb9431f8bb9229c28482776741b0425a68393141592653594eece83600000251800010400006449080200031064c4101a7a9a580bb9431f8bb9229c28482776741b0" : stdgo.GoString)), _output : (("hello world\nhello world\n" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _fail : false } : T__struct_0),
({ _desc : ("32B zeros" : stdgo.GoString), _input : _mustDecodeHex(("425a6839314159265359b5aa5098000000600040000004200021008283177245385090b5aa5098" : stdgo.GoString)), _output : new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((32 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__(), _fail : false } : T__struct_0),
({ _desc : ("1MiB zeros" : stdgo.GoString), _input : _mustDecodeHex(("425a683931415926535938571ce50008084000c0040008200030cc0529a60806c4201e2ee48a70a12070ae39ca" : stdgo.GoString)), _output : new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((1048576 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__(), _fail : false } : T__struct_0),
({ _desc : ("random data" : stdgo.GoString), _input : _mustLoadFile(("testdata/pass-random1.bz2" : stdgo.GoString)), _output : _mustLoadFile(("testdata/pass-random1.bin" : stdgo.GoString)), _fail : false } : T__struct_0),
({ _desc : ("random data - full symbol range" : stdgo.GoString), _input : _mustLoadFile(("testdata/pass-random2.bz2" : stdgo.GoString)), _output : _mustLoadFile(("testdata/pass-random2.bin" : stdgo.GoString)), _fail : false } : T__struct_0),
({ _desc : ("random data - uses RLE1 stage" : stdgo.GoString), _input : _mustDecodeHex(("425a6839314159265359d992d0f60000137dfe84020310091c1e280e100e042801099210094806c0110002e70806402000546034000034000000f2830000032000d3403264049270eb7a9280d308ca06ad28f6981bee1bf8160727c7364510d73a1e123083421b63f031f63993a0f40051fbf177245385090d992d0f60" : stdgo.GoString)), _output : _mustDecodeHex(("92d5652616ac444a4a04af1a8a3964aca0450d43d6cf233bd03233f4ba92f8719e6c2a2bd4f5f88db07ecd0da3a33b263483db9b2c158786ad6363be35d17335ba" : stdgo.GoString)), _fail : false } : T__struct_0),
({ _desc : ("1MiB sawtooth" : stdgo.GoString), _input : _mustLoadFile(("testdata/pass-sawtooth.bz2" : stdgo.GoString)), _output : {
            var a = function():stdgo.Slice<stdgo.StdGoTypes.GoByte> {
                var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((1048576 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
                for (_i in 0 ... _b.length.toBasic()) {
                    _b[(_i : stdgo.StdGoTypes.GoInt)] = (_i : stdgo.StdGoTypes.GoByte);
                };
                return _b;
            };
            a();
        }, _fail : false } : T__struct_0),
({ _desc : ("RLE2 buffer overrun - issue 5747" : stdgo.GoString), _input : _mustLoadFile(("testdata/fail-issue5747.bz2" : stdgo.GoString)), _output : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _fail : true } : T__struct_0),
({ _desc : ("out-of-range selector - issue 8363" : stdgo.GoString), _input : _mustDecodeHex(("425a68393141592653594eece83600000251800010400006449080200031064c4101a7a9a580bb943117724538509000000000" : stdgo.GoString)), _output : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _fail : true } : T__struct_0),
({ _desc : ("bad block size - issue 13941" : stdgo.GoString), _input : _mustDecodeHex(("425a683131415926535936dc55330063ffc0006000200020a40830008b0008b8bb9229c28481b6e2a998" : stdgo.GoString)), _output : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _fail : true } : T__struct_0),
({ _desc : ("bad huffman delta" : stdgo.GoString), _input : _mustDecodeHex(("425a6836314159265359b1f7404b000000400040002000217d184682ee48a70a12163ee80960" : stdgo.GoString)), _output : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _fail : true } : T__struct_0)) : stdgo.Slice<T__struct_0>);
        for (_i => _v in _vectors) {
            var _rd:stdgo.io.Io.Reader = newReader(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader(_v._input)));
            var __tmp__ = stdgo.io.Io.readAll(_rd), _buf:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                var _fail:Bool = (_err != null : Bool);
                if (_fail != (_v._fail)) {
                    if (_fail) {
                        _t.errorf(("test %d (%s), unexpected failure: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._desc), stdgo.Go.toInterface(_err));
                    } else {
                        _t.errorf(("test %d (%s), unexpected success" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._desc));
                    };
                };
            };
            if (!_v._fail && !stdgo.bytes.Bytes.equal(_buf, _v._output)) {
                _t.errorf(("test %d (%s), output mismatch:\ngot  %s\nwant %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._desc), stdgo.Go.toInterface(_trim(_buf)), stdgo.Go.toInterface(_trim(_v._output)));
            };
        };
    }
function testBitReader(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _vectors:stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(
9,
9,
({ _nbits : (1u32 : stdgo.StdGoTypes.GoUInt), _value : (1 : stdgo.StdGoTypes.GoInt), _fail : false } : T__struct_1),
({ _nbits : (1u32 : stdgo.StdGoTypes.GoUInt), _value : (0 : stdgo.StdGoTypes.GoInt), _fail : false } : T__struct_1),
({ _nbits : (1u32 : stdgo.StdGoTypes.GoUInt), _value : (1 : stdgo.StdGoTypes.GoInt), _fail : false } : T__struct_1),
({ _nbits : (5u32 : stdgo.StdGoTypes.GoUInt), _value : (11 : stdgo.StdGoTypes.GoInt), _fail : false } : T__struct_1),
({ _nbits : (32u32 : stdgo.StdGoTypes.GoUInt), _value : (305419896 : stdgo.StdGoTypes.GoInt), _fail : false } : T__struct_1),
({ _nbits : (15u32 : stdgo.StdGoTypes.GoUInt), _value : (14495 : stdgo.StdGoTypes.GoInt), _fail : false } : T__struct_1),
({ _nbits : (3u32 : stdgo.StdGoTypes.GoUInt), _value : (6 : stdgo.StdGoTypes.GoInt), _fail : false } : T__struct_1),
({ _nbits : (6u32 : stdgo.StdGoTypes.GoUInt), _value : (13 : stdgo.StdGoTypes.GoInt), _fail : false } : T__struct_1),
({ _nbits : (1u32 : stdgo.StdGoTypes.GoUInt), _value : (0 : stdgo.StdGoTypes.GoInt), _fail : true } : T__struct_1)) : stdgo.Slice<T__struct_1>);
        var _rd = stdgo.bytes.Bytes.newReader((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(8, 8, (171 : stdgo.StdGoTypes.GoUInt8), (18 : stdgo.StdGoTypes.GoUInt8), (52 : stdgo.StdGoTypes.GoUInt8), (86 : stdgo.StdGoTypes.GoUInt8), (120 : stdgo.StdGoTypes.GoUInt8), (113 : stdgo.StdGoTypes.GoUInt8), (63 : stdgo.StdGoTypes.GoUInt8), (141 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        var _br:stdgo.compress.bzip2.Bzip2.T_bitReader = _newBitReader(stdgo.Go.asInterface(_rd))?.__copy__();
        for (_i => _v in _vectors) {
            var _val:stdgo.StdGoTypes.GoInt = _br.readBits(_v._nbits);
            {
                var _fail:Bool = (_br._err != null : Bool);
                if (_fail != (_v._fail)) {
                    if (_fail) {
                        _t.errorf(("test %d, unexpected failure: ReadBits(%d) = %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._nbits), stdgo.Go.toInterface(_br._err));
                    } else {
                        _t.errorf(("test %d, unexpected success: ReadBits(%d) = nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._nbits));
                    };
                };
            };
            if (!_v._fail && (_val != _v._value)) {
                _t.errorf(("test %d, mismatching value: ReadBits(%d) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._nbits), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_v._value));
            };
        };
    }
function testMTF(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _vectors:stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(5, 5, ({ _idx : (1 : stdgo.StdGoTypes.GoInt), _sym : (1 : stdgo.StdGoTypes.GoUInt8) } : T__struct_2), ({ _idx : (0 : stdgo.StdGoTypes.GoInt), _sym : (1 : stdgo.StdGoTypes.GoUInt8) } : T__struct_2), ({ _idx : (1 : stdgo.StdGoTypes.GoInt), _sym : (0 : stdgo.StdGoTypes.GoUInt8) } : T__struct_2), ({ _idx : (4 : stdgo.StdGoTypes.GoInt), _sym : (4 : stdgo.StdGoTypes.GoUInt8) } : T__struct_2), ({ _idx : (1 : stdgo.StdGoTypes.GoInt), _sym : (0 : stdgo.StdGoTypes.GoUInt8) } : T__struct_2)) : stdgo.Slice<T__struct_2>);
        var _mtf:stdgo.compress.bzip2.Bzip2.T_moveToFrontDecoder = _newMTFDecoderWithRange((5 : stdgo.StdGoTypes.GoInt));
        for (_i => _v in _vectors) {
            var _sym:stdgo.StdGoTypes.GoUInt8 = _mtf.decode(_v._idx);
            _t.log(stdgo.Go.toInterface(stdgo.Go.asInterface(_mtf)));
            if (_sym != (_v._sym)) {
                _t.errorf(("test %d, symbol mismatch: Decode(%d) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._idx), stdgo.Go.toInterface(_sym), stdgo.Go.toInterface(_v._sym));
            };
        };
    }
function testZeroRead(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _b = _mustDecodeHex(("425a6839314159265359b5aa5098000000600040000004200021008283177245385090b5aa5098" : stdgo.GoString));
        var _r:stdgo.io.Io.Reader = newReader(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader(_b)));
        {
            var __tmp__ = _r.read((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != (0 : stdgo.StdGoTypes.GoInt)) || (_err != null)) {
                _t.errorf(("Read(nil) = (%d, %v), want (0, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
function _benchmarkDecode(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _compressed:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void {
        var __tmp__ = stdgo.io.Io.copy(stdgo.io.Io.discard, newReader(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader(_compressed)))), _uncompressedSize:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _b.fatal(stdgo.Go.toInterface(_err));
        };
        _b.setBytes(_uncompressedSize);
        _b.reportAllocs();
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                var _r = stdgo.bytes.Bytes.newReader(_compressed);
                stdgo.io.Io.copy(stdgo.io.Io.discard, newReader(stdgo.Go.asInterface(_r)));
            });
        };
    }
function benchmarkDecodeDigits(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkDecode(_b, _digits);
    }
function benchmarkDecodeNewton(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkDecode(_b, _newton);
    }
function benchmarkDecodeRand(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkDecode(_b, _random);
    }
/**
    // newHuffmanTree builds a Huffman tree from a slice containing the code
    // lengths of each symbol. The maximum code length is 32 bits.
**/
function _newHuffmanTree(_lengths:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : T_huffmanTree; var _1 : stdgo.Error; } {
        if ((_lengths.length) < (2 : stdgo.StdGoTypes.GoInt)) {
            throw stdgo.Go.toInterface(("newHuffmanTree: too few symbols" : stdgo.GoString));
        };
        var _t:T_huffmanTree = ({} : stdgo.compress.bzip2.Bzip2.T_huffmanTree);
        var _pairs = new stdgo.Slice<stdgo.compress.bzip2.Bzip2.T_huffmanSymbolLengthPair>((_lengths.length : stdgo.StdGoTypes.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_lengths.length : stdgo.StdGoTypes.GoInt).toBasic() > 0 ? (_lengths.length : stdgo.StdGoTypes.GoInt).toBasic() : 0 : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.compress.bzip2.Bzip2.T_huffmanSymbolLengthPair)]);
        for (_i => _length in _lengths) {
            _pairs[(_i : stdgo.StdGoTypes.GoInt)]._value = (_i : stdgo.StdGoTypes.GoUInt16);
            _pairs[(_i : stdgo.StdGoTypes.GoInt)]._length = _length;
        };
        stdgo.sort.Sort.slice(stdgo.Go.toInterface(_pairs), function(_i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Bool {
            if (_pairs[(_i : stdgo.StdGoTypes.GoInt)]._length < _pairs[(_j : stdgo.StdGoTypes.GoInt)]._length) {
                return true;
            };
            if (_pairs[(_i : stdgo.StdGoTypes.GoInt)]._length > _pairs[(_j : stdgo.StdGoTypes.GoInt)]._length) {
                return false;
            };
            if (_pairs[(_i : stdgo.StdGoTypes.GoInt)]._value < _pairs[(_j : stdgo.StdGoTypes.GoInt)]._value) {
                return true;
            };
            return false;
        });
        var _code:stdgo.StdGoTypes.GoUInt32 = (0u32 : stdgo.StdGoTypes.GoUInt32);
        var _length:stdgo.StdGoTypes.GoUInt8 = (32 : stdgo.StdGoTypes.GoUInt8);
        var _codes = new stdgo.Slice<stdgo.compress.bzip2.Bzip2.T_huffmanCode>((_lengths.length : stdgo.StdGoTypes.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_lengths.length : stdgo.StdGoTypes.GoInt).toBasic() > 0 ? (_lengths.length : stdgo.StdGoTypes.GoInt).toBasic() : 0 : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.compress.bzip2.Bzip2.T_huffmanCode)]);
        {
            var _i:stdgo.StdGoTypes.GoInt = (_pairs.length) - (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i >= (0 : stdgo.StdGoTypes.GoInt), _i--, {
                if (_length > _pairs[(_i : stdgo.StdGoTypes.GoInt)]._length) {
                    _length = _pairs[(_i : stdgo.StdGoTypes.GoInt)]._length;
                };
                _codes[(_i : stdgo.StdGoTypes.GoInt)]._code = _code;
                _codes[(_i : stdgo.StdGoTypes.GoInt)]._codeLen = _length;
                _codes[(_i : stdgo.StdGoTypes.GoInt)]._value = _pairs[(_i : stdgo.StdGoTypes.GoInt)]._value;
                _code = _code + ((1u32 : stdgo.StdGoTypes.GoUInt32) << ((32 : stdgo.StdGoTypes.GoUInt8) - _length));
            });
        };
        stdgo.sort.Sort.slice(stdgo.Go.toInterface(_codes), function(_i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Bool {
            return _codes[(_i : stdgo.StdGoTypes.GoInt)]._code < _codes[(_j : stdgo.StdGoTypes.GoInt)]._code;
        });
        _t._nodes = new stdgo.Slice<stdgo.compress.bzip2.Bzip2.T_huffmanNode>((_codes.length : stdgo.StdGoTypes.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_codes.length : stdgo.StdGoTypes.GoInt).toBasic() > 0 ? (_codes.length : stdgo.StdGoTypes.GoInt).toBasic() : 0 : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.compress.bzip2.Bzip2.T_huffmanNode)]);
        var __tmp__ = _buildHuffmanNode((stdgo.Go.setRef(_t) : stdgo.StdGoTypes.Ref<stdgo.compress.bzip2.Bzip2.T_huffmanTree>), _codes, (0u32 : stdgo.StdGoTypes.GoUInt32)), __0:stdgo.StdGoTypes.GoUInt16 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _t?.__copy__(), _1 : _err };
    }
/**
    // buildHuffmanNode takes a slice of sorted huffmanCodes and builds a node in
    // the Huffman tree at the given level. It returns the index of the newly
    // constructed node.
**/
function _buildHuffmanNode(_t:stdgo.StdGoTypes.Ref<T_huffmanTree>, _codes:stdgo.Slice<T_huffmanCode>, _level:stdgo.StdGoTypes.GoUInt32):{ var _0 : stdgo.StdGoTypes.GoUInt16; var _1 : stdgo.Error; } {
        var _nodeIndex:stdgo.StdGoTypes.GoUInt16 = (0 : stdgo.StdGoTypes.GoUInt16), _err:stdgo.Error = (null : stdgo.Error);
        var _test:stdgo.StdGoTypes.GoUInt32 = (1u32 : stdgo.StdGoTypes.GoUInt32) << ((31u32 : stdgo.StdGoTypes.GoUInt32) - _level);
        var _firstRightIndex:stdgo.StdGoTypes.GoInt = (_codes.length);
        for (_i => _code in _codes) {
            if (_code._code & _test != ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
                _firstRightIndex = _i;
                break;
            };
        };
        var _left = (_codes.__slice__(0, _firstRightIndex) : stdgo.Slice<stdgo.compress.bzip2.Bzip2.T_huffmanCode>);
        var _right = (_codes.__slice__(_firstRightIndex) : stdgo.Slice<stdgo.compress.bzip2.Bzip2.T_huffmanCode>);
        if ((_left.length == (0 : stdgo.StdGoTypes.GoInt)) || (_right.length == (0 : stdgo.StdGoTypes.GoInt))) {
            if ((_codes.length) < (2 : stdgo.StdGoTypes.GoInt)) {
                return { _0 : (0 : stdgo.StdGoTypes.GoUInt16), _1 : stdgo.Go.asInterface(((("empty Huffman tree" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError)) };
            };
            if (_level == ((31u32 : stdgo.StdGoTypes.GoUInt32))) {
                return { _0 : (0 : stdgo.StdGoTypes.GoUInt16), _1 : stdgo.Go.asInterface(((("equal symbols in Huffman tree" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError)) };
            };
            if ((_left.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
                return _buildHuffmanNode(_t, _right, _level + (1u32 : stdgo.StdGoTypes.GoUInt32));
            };
            return _buildHuffmanNode(_t, _left, _level + (1u32 : stdgo.StdGoTypes.GoUInt32));
        };
        _nodeIndex = (_t._nextNode : stdgo.StdGoTypes.GoUInt16);
        var _node = (stdgo.Go.setRef(_t._nodes[(_t._nextNode : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.compress.bzip2.Bzip2.T_huffmanNode>);
        _t._nextNode++;
        if ((_left.length) == ((1 : stdgo.StdGoTypes.GoInt))) {
            _node._left = (65535 : stdgo.StdGoTypes.GoUInt16);
            _node._leftValue = _left[(0 : stdgo.StdGoTypes.GoInt)]._value;
        } else {
            {
                var __tmp__ = _buildHuffmanNode(_t, _left, _level + (1u32 : stdgo.StdGoTypes.GoUInt32));
                _node._left = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            return { _0 : _nodeIndex, _1 : _err };
        };
        if ((_right.length) == ((1 : stdgo.StdGoTypes.GoInt))) {
            _node._right = (65535 : stdgo.StdGoTypes.GoUInt16);
            _node._rightValue = _right[(0 : stdgo.StdGoTypes.GoInt)]._value;
        } else {
            {
                var __tmp__ = _buildHuffmanNode(_t, _right, _level + (1u32 : stdgo.StdGoTypes.GoUInt32));
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
function _newMTFDecoder(_symbols:stdgo.Slice<stdgo.StdGoTypes.GoByte>):T_moveToFrontDecoder {
        if ((_symbols.length) > (256 : stdgo.StdGoTypes.GoInt)) {
            throw stdgo.Go.toInterface(("too many symbols" : stdgo.GoString));
        };
        return (_symbols : T_moveToFrontDecoder);
    }
/**
    // newMTFDecoderWithRange creates a move-to-front decoder with an initial
    // symbol list of 0...n-1.
**/
function _newMTFDecoderWithRange(_n:stdgo.StdGoTypes.GoInt):T_moveToFrontDecoder {
        if (_n > (256 : stdgo.StdGoTypes.GoInt)) {
            throw stdgo.Go.toInterface(("newMTFDecoderWithRange: cannot have > 256 symbols" : stdgo.GoString));
        };
        var _m = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                _m[(_i : stdgo.StdGoTypes.GoInt)] = (_i : stdgo.StdGoTypes.GoByte);
            });
        };
        return (_m : T_moveToFrontDecoder);
    }
@:keep var _ = {
        try {
            {};
            for (_i in 0 ... _crctab.length.toBasic()) {
                var _crc:stdgo.StdGoTypes.GoUInt32 = (_i : stdgo.StdGoTypes.GoUInt32) << (24i64 : stdgo.StdGoTypes.GoUInt64);
                {
                    var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j < (8 : stdgo.StdGoTypes.GoInt), _j++, {
                        if (_crc & (-2147483648u32 : stdgo.StdGoTypes.GoUInt32) != ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
                            _crc = (_crc << (1i64 : stdgo.StdGoTypes.GoUInt64)) ^ (79764919u32 : stdgo.StdGoTypes.GoUInt32);
                        } else {
                            _crc = _crc << ((1i64 : stdgo.StdGoTypes.GoUInt64));
                        };
                    });
                };
                _crctab[(_i : stdgo.StdGoTypes.GoInt)] = _crc;
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
    public dynamic function readBits(_bits:stdgo.StdGoTypes.GoUInt):stdgo.StdGoTypes.GoInt return __self__.value.readBits(_bits);
    /**
        // ReadBits64 reads the given number of bits and returns them in the
        // least-significant part of a uint64. In the event of an error, it returns 0
        // and the error can be obtained by calling Err().
    **/
    @:keep
    public dynamic function readBits64(_bits:stdgo.StdGoTypes.GoUInt):stdgo.StdGoTypes.GoUInt64 return __self__.value.readBits64(_bits);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_bitReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.compress.bzip2.Bzip2.T_bitReader_asInterface) class T_bitReader_static_extension {
    @:keep
    static public function err( _br:stdgo.StdGoTypes.Ref<T_bitReader>):stdgo.Error {
        @:recv var _br:stdgo.StdGoTypes.Ref<T_bitReader> = _br;
        return _br._err;
    }
    @:keep
    static public function readBit( _br:stdgo.StdGoTypes.Ref<T_bitReader>):Bool {
        @:recv var _br:stdgo.StdGoTypes.Ref<T_bitReader> = _br;
        var _n:stdgo.StdGoTypes.GoInt = _br.readBits((1u32 : stdgo.StdGoTypes.GoUInt));
        return _n != ((0 : stdgo.StdGoTypes.GoInt));
    }
    @:keep
    static public function readBits( _br:stdgo.StdGoTypes.Ref<T_bitReader>, _bits:stdgo.StdGoTypes.GoUInt):stdgo.StdGoTypes.GoInt {
        @:recv var _br:stdgo.StdGoTypes.Ref<T_bitReader> = _br;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _n64:stdgo.StdGoTypes.GoUInt64 = _br.readBits64(_bits);
        return (_n64 : stdgo.StdGoTypes.GoInt);
    }
    /**
        // ReadBits64 reads the given number of bits and returns them in the
        // least-significant part of a uint64. In the event of an error, it returns 0
        // and the error can be obtained by calling Err().
    **/
    @:keep
    static public function readBits64( _br:stdgo.StdGoTypes.Ref<T_bitReader>, _bits:stdgo.StdGoTypes.GoUInt):stdgo.StdGoTypes.GoUInt64 {
        @:recv var _br:stdgo.StdGoTypes.Ref<T_bitReader> = _br;
        var _n:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
        while (_bits > _br._bits) {
            var __tmp__ = _br._r.readByte(), _b:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                _err = stdgo.io.Io.errUnexpectedEOF;
            };
            if (_err != null) {
                _br._err = _err;
                return (0i64 : stdgo.StdGoTypes.GoUInt64);
            };
            _br._n = _br._n << ((8i64 : stdgo.StdGoTypes.GoUInt64));
            _br._n = _br._n | ((_b : stdgo.StdGoTypes.GoUInt64));
            _br._bits = _br._bits + ((8u32 : stdgo.StdGoTypes.GoUInt));
        };
        _n = (_br._n >> (_br._bits - _bits)) & (((1i64 : stdgo.StdGoTypes.GoUInt64) << _bits) - (1i64 : stdgo.StdGoTypes.GoUInt64));
        _br._bits = _br._bits - (_bits);
        return _n;
    }
}
class T_reader_asInterface {
    /**
        // readBlock reads a bzip2 block. The magic number should already have been consumed.
    **/
    @:keep
    public dynamic function _readBlock():stdgo.Error return __self__.value._readBlock();
    @:keep
    public dynamic function _read(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value._read(_buf);
    @:keep
    public dynamic function _readFromBlock(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoInt return __self__.value._readFromBlock(_buf);
    @:keep
    public dynamic function read(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_buf);
    /**
        // setup parses the bzip2 header.
    **/
    @:keep
    public dynamic function _setup(_needMagic:Bool):stdgo.Error return __self__.value._setup(_needMagic);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_reader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.compress.bzip2.Bzip2.T_reader_asInterface) class T_reader_static_extension {
    /**
        // readBlock reads a bzip2 block. The magic number should already have been consumed.
    **/
    @:keep
    static public function _readBlock( _bz2:stdgo.StdGoTypes.Ref<T_reader>):stdgo.Error {
        @:recv var _bz2:stdgo.StdGoTypes.Ref<T_reader> = _bz2;
        var _err:stdgo.Error = (null : stdgo.Error);
        var _br = (stdgo.Go.setRef(_bz2._br) : stdgo.StdGoTypes.Ref<stdgo.compress.bzip2.Bzip2.T_bitReader>);
        _bz2._wantBlockCRC = (_br.readBits64((32u32 : stdgo.StdGoTypes.GoUInt)) : stdgo.StdGoTypes.GoUInt32);
        _bz2._blockCRC = (0u32 : stdgo.StdGoTypes.GoUInt32);
        _bz2._fileCRC = ((_bz2._fileCRC << (1i64 : stdgo.StdGoTypes.GoUInt64)) | (_bz2._fileCRC >> (31i64 : stdgo.StdGoTypes.GoUInt64))) ^ _bz2._wantBlockCRC;
        var _randomized:stdgo.StdGoTypes.GoInt = _br.readBits((1u32 : stdgo.StdGoTypes.GoUInt));
        if (_randomized != ((0 : stdgo.StdGoTypes.GoInt))) {
            return stdgo.Go.asInterface(((("deprecated randomized files" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        var _origPtr:stdgo.StdGoTypes.GoUInt = (_br.readBits((24u32 : stdgo.StdGoTypes.GoUInt)) : stdgo.StdGoTypes.GoUInt);
        var _symbolRangeUsedBitmap:stdgo.StdGoTypes.GoInt = _br.readBits((16u32 : stdgo.StdGoTypes.GoUInt));
        var _symbolPresent = new stdgo.Slice<Bool>((256 : stdgo.StdGoTypes.GoInt).toBasic(), 0);
        var _numSymbols:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        {
            var _symRange:stdgo.StdGoTypes.GoUInt = (0u32 : stdgo.StdGoTypes.GoUInt);
            stdgo.Go.cfor(_symRange < (16u32 : stdgo.StdGoTypes.GoUInt), _symRange++, {
                if (_symbolRangeUsedBitmap & ((1 : stdgo.StdGoTypes.GoInt) << ((15u32 : stdgo.StdGoTypes.GoUInt) - _symRange)) != ((0 : stdgo.StdGoTypes.GoInt))) {
                    var _bits:stdgo.StdGoTypes.GoInt = _br.readBits((16u32 : stdgo.StdGoTypes.GoUInt));
                    {
                        var _symbol:stdgo.StdGoTypes.GoUInt = (0u32 : stdgo.StdGoTypes.GoUInt);
                        stdgo.Go.cfor(_symbol < (16u32 : stdgo.StdGoTypes.GoUInt), _symbol++, {
                            if (_bits & ((1 : stdgo.StdGoTypes.GoInt) << ((15u32 : stdgo.StdGoTypes.GoUInt) - _symbol)) != ((0 : stdgo.StdGoTypes.GoInt))) {
                                _symbolPresent[(((16u32 : stdgo.StdGoTypes.GoUInt) * _symRange) + _symbol : stdgo.StdGoTypes.GoInt)] = true;
                                _numSymbols++;
                            };
                        });
                    };
                };
            });
        };
        if (_numSymbols == ((0 : stdgo.StdGoTypes.GoInt))) {
            return stdgo.Go.asInterface(((("no symbols in input" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        var _numHuffmanTrees:stdgo.StdGoTypes.GoInt = _br.readBits((3u32 : stdgo.StdGoTypes.GoUInt));
        if ((_numHuffmanTrees < (2 : stdgo.StdGoTypes.GoInt)) || (_numHuffmanTrees > (6 : stdgo.StdGoTypes.GoInt))) {
            return stdgo.Go.asInterface(((("invalid number of Huffman trees" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        var _numSelectors:stdgo.StdGoTypes.GoInt = _br.readBits((15u32 : stdgo.StdGoTypes.GoUInt));
        var _treeIndexes = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_numSelectors : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _mtfTreeDecoder:stdgo.compress.bzip2.Bzip2.T_moveToFrontDecoder = _newMTFDecoderWithRange(_numHuffmanTrees);
        for (_i in 0 ... _treeIndexes.length.toBasic()) {
            var _c:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            while (true) {
                var _inc:stdgo.StdGoTypes.GoInt = _br.readBits((1u32 : stdgo.StdGoTypes.GoUInt));
                if (_inc == ((0 : stdgo.StdGoTypes.GoInt))) {
                    break;
                };
                _c++;
            };
            if (_c >= _numHuffmanTrees) {
                return stdgo.Go.asInterface(((("tree index too large" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
            };
            _treeIndexes[(_i : stdgo.StdGoTypes.GoInt)] = _mtfTreeDecoder.decode(_c);
        };
        var _symbols = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_numSymbols : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _nextSymbol:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (256 : stdgo.StdGoTypes.GoInt), _i++, {
                if (_symbolPresent[(_i : stdgo.StdGoTypes.GoInt)]) {
                    _symbols[(_nextSymbol : stdgo.StdGoTypes.GoInt)] = (_i : stdgo.StdGoTypes.GoByte);
                    _nextSymbol++;
                };
            });
        };
        var _mtf:stdgo.compress.bzip2.Bzip2.T_moveToFrontDecoder = _newMTFDecoder(_symbols);
        _numSymbols = _numSymbols + ((2 : stdgo.StdGoTypes.GoInt));
        var _huffmanTrees = new stdgo.Slice<stdgo.compress.bzip2.Bzip2.T_huffmanTree>((_numHuffmanTrees : stdgo.StdGoTypes.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_numHuffmanTrees : stdgo.StdGoTypes.GoInt).toBasic() > 0 ? (_numHuffmanTrees : stdgo.StdGoTypes.GoInt).toBasic() : 0 : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.compress.bzip2.Bzip2.T_huffmanTree)]);
        var _lengths = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_numSymbols : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _huffmanTrees.length.toBasic()) {
            var _length:stdgo.StdGoTypes.GoInt = _br.readBits((5u32 : stdgo.StdGoTypes.GoUInt));
            for (_j in 0 ... _lengths.length.toBasic()) {
                while (true) {
                    if ((_length < (1 : stdgo.StdGoTypes.GoInt)) || (_length > (20 : stdgo.StdGoTypes.GoInt))) {
                        return stdgo.Go.asInterface(((("Huffman length out of range" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
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
                _lengths[(_j : stdgo.StdGoTypes.GoInt)] = (_length : stdgo.StdGoTypes.GoUInt8);
            };
            {
                var __tmp__ = _newHuffmanTree(_lengths);
                _huffmanTrees[(_i : stdgo.StdGoTypes.GoInt)] = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        var _selectorIndex:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
        if ((_treeIndexes.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
            return stdgo.Go.asInterface(((("no tree selectors given" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        if ((_treeIndexes[(0 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoInt) >= (_huffmanTrees.length)) {
            return stdgo.Go.asInterface(((("tree selector out of range" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        var _currentHuffmanTree:stdgo.compress.bzip2.Bzip2.T_huffmanTree = _huffmanTrees[(_treeIndexes[(0 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoInt)];
        var _bufIndex:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _repeat:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _repeatPower:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        for (_i in 0 ... _bz2._c.length.toBasic()) {
            _bz2._c[(_i : stdgo.StdGoTypes.GoInt)] = (0u32 : stdgo.StdGoTypes.GoUInt);
        };
        var _decoded:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        while (true) {
            if (_decoded == ((50 : stdgo.StdGoTypes.GoInt))) {
                if (_selectorIndex >= _numSelectors) {
                    return stdgo.Go.asInterface(((("insufficient selector indices for number of symbols" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                };
                if ((_treeIndexes[(_selectorIndex : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoInt) >= (_huffmanTrees.length)) {
                    return stdgo.Go.asInterface(((("tree selector out of range" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                };
                _currentHuffmanTree = _huffmanTrees[(_treeIndexes[(_selectorIndex : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoInt)];
                _selectorIndex++;
                _decoded = (0 : stdgo.StdGoTypes.GoInt);
            };
            var _v:stdgo.StdGoTypes.GoUInt16 = _currentHuffmanTree.decode(_br);
            _decoded++;
            if (_v < (2 : stdgo.StdGoTypes.GoUInt16)) {
                if (_repeat == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _repeatPower = (1 : stdgo.StdGoTypes.GoInt);
                };
                _repeat = _repeat + (_repeatPower << _v);
                _repeatPower = _repeatPower << ((1i64 : stdgo.StdGoTypes.GoUInt64));
                if (_repeat > (2097152 : stdgo.StdGoTypes.GoInt)) {
                    return stdgo.Go.asInterface(((("repeat count too large" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                };
                continue;
            };
            if (_repeat > (0 : stdgo.StdGoTypes.GoInt)) {
                if (_repeat > (_bz2._blockSize - _bufIndex)) {
                    return stdgo.Go.asInterface(((("repeats past end of block" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                };
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _repeat, _i++, {
                        var _b:stdgo.StdGoTypes.GoUInt8 = _mtf.first();
                        _bz2._tt[(_bufIndex : stdgo.StdGoTypes.GoInt)] = (_b : stdgo.StdGoTypes.GoUInt32);
                        _bz2._c[(_b : stdgo.StdGoTypes.GoInt)]++;
                        _bufIndex++;
                    });
                };
                _repeat = (0 : stdgo.StdGoTypes.GoInt);
            };
            if ((_v : stdgo.StdGoTypes.GoInt) == (_numSymbols - (1 : stdgo.StdGoTypes.GoInt))) {
                break;
            };
            var _b:stdgo.StdGoTypes.GoUInt8 = _mtf.decode((_v - (1 : stdgo.StdGoTypes.GoUInt16) : stdgo.StdGoTypes.GoInt));
            if (_bufIndex >= _bz2._blockSize) {
                return stdgo.Go.asInterface(((("data exceeds block size" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
            };
            _bz2._tt[(_bufIndex : stdgo.StdGoTypes.GoInt)] = (_b : stdgo.StdGoTypes.GoUInt32);
            _bz2._c[(_b : stdgo.StdGoTypes.GoInt)]++;
            _bufIndex++;
        };
        if (_origPtr >= (_bufIndex : stdgo.StdGoTypes.GoUInt)) {
            return stdgo.Go.asInterface(((("origPtr out of bounds" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        _bz2._preRLE = (_bz2._tt.__slice__(0, _bufIndex) : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>);
        _bz2._preRLEUsed = (0 : stdgo.StdGoTypes.GoInt);
        _bz2._tPos = _inverseBWT(_bz2._preRLE, _origPtr, (_bz2._c.__slice__(0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt>));
        _bz2._lastByte = (-1 : stdgo.StdGoTypes.GoInt);
        _bz2._byteRepeats = (0u32 : stdgo.StdGoTypes.GoUInt);
        _bz2._repeats = (0u32 : stdgo.StdGoTypes.GoUInt);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _read( _bz2:stdgo.StdGoTypes.Ref<T_reader>, _buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _bz2:stdgo.StdGoTypes.Ref<T_reader> = _bz2;
        while (true) {
            var _n:stdgo.StdGoTypes.GoInt = _bz2._readFromBlock(_buf);
            if ((_n > (0 : stdgo.StdGoTypes.GoInt)) || (_buf.length == (0 : stdgo.StdGoTypes.GoInt))) {
                _bz2._blockCRC = _updateCRC(_bz2._blockCRC, (_buf.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
            if (_bz2._blockCRC != (_bz2._wantBlockCRC)) {
                _bz2._br._err = stdgo.Go.asInterface(((("block checksum mismatch" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _bz2._br._err };
            };
            var _br = (stdgo.Go.setRef(_bz2._br) : stdgo.StdGoTypes.Ref<stdgo.compress.bzip2.Bzip2.T_bitReader>);
            {
                final __value__ = _br.readBits64((48u32 : stdgo.StdGoTypes.GoUInt));
                if (__value__ == ((54156738319193i64 : stdgo.StdGoTypes.GoUInt64))) {
                    var _err:stdgo.Error = _bz2._readBlock();
                    if (_err != null) {
                        return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _err };
                    };
                } else if (__value__ == ((25779555029136i64 : stdgo.StdGoTypes.GoUInt64))) {
                    var _wantFileCRC:stdgo.StdGoTypes.GoUInt32 = (_br.readBits64((32u32 : stdgo.StdGoTypes.GoUInt)) : stdgo.StdGoTypes.GoUInt32);
                    if (_br._err != null) {
                        return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _br._err };
                    };
                    if (_bz2._fileCRC != (_wantFileCRC)) {
                        _br._err = stdgo.Go.asInterface(((("file checksum mismatch" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
                        return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _br._err };
                    };
                    if (_br._bits % (8u32 : stdgo.StdGoTypes.GoUInt) != ((0u32 : stdgo.StdGoTypes.GoUInt))) {
                        _br.readBits(_br._bits % (8u32 : stdgo.StdGoTypes.GoUInt));
                    };
                    var __tmp__ = _br._r.readByte(), _b:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                        _br._err = stdgo.io.Io.eof;
                        _bz2._eof = true;
                        return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : stdgo.io.Io.eof };
                    };
                    if (_err != null) {
                        _br._err = _err;
                        return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _err };
                    };
                    var __tmp__ = _br._r.readByte(), _z:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                            _err = stdgo.io.Io.errUnexpectedEOF;
                        };
                        _br._err = _err;
                        return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _err };
                    };
                    if ((_b != (66 : stdgo.StdGoTypes.GoUInt8)) || (_z != (90 : stdgo.StdGoTypes.GoUInt8))) {
                        return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : stdgo.Go.asInterface(((("bad magic value in continuation file" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError)) };
                    };
                    {
                        var _err:stdgo.Error = _bz2._setup(false);
                        if (_err != null) {
                            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _err };
                        };
                    };
                } else {
                    return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : stdgo.Go.asInterface(((("bad magic value found" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError)) };
                };
            };
        };
    }
    @:keep
    static public function _readFromBlock( _bz2:stdgo.StdGoTypes.Ref<T_reader>, _buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoInt {
        @:recv var _bz2:stdgo.StdGoTypes.Ref<T_reader> = _bz2;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        while (((_bz2._repeats > (0u32 : stdgo.StdGoTypes.GoUInt)) || (_bz2._preRLEUsed < _bz2._preRLE.length)) && (_n < _buf.length)) {
            if (_bz2._repeats > (0u32 : stdgo.StdGoTypes.GoUInt)) {
                _buf[(_n : stdgo.StdGoTypes.GoInt)] = (_bz2._lastByte : stdgo.StdGoTypes.GoByte);
                _n++;
                _bz2._repeats--;
                if (_bz2._repeats == ((0u32 : stdgo.StdGoTypes.GoUInt))) {
                    _bz2._lastByte = (-1 : stdgo.StdGoTypes.GoInt);
                };
                continue;
            };
            _bz2._tPos = _bz2._preRLE[(_bz2._tPos : stdgo.StdGoTypes.GoInt)];
            var _b:stdgo.StdGoTypes.GoUInt8 = (_bz2._tPos : stdgo.StdGoTypes.GoByte);
            _bz2._tPos = _bz2._tPos >> ((8i64 : stdgo.StdGoTypes.GoUInt64));
            _bz2._preRLEUsed++;
            if (_bz2._byteRepeats == ((3u32 : stdgo.StdGoTypes.GoUInt))) {
                _bz2._repeats = (_b : stdgo.StdGoTypes.GoUInt);
                _bz2._byteRepeats = (0u32 : stdgo.StdGoTypes.GoUInt);
                continue;
            };
            if (_bz2._lastByte == ((_b : stdgo.StdGoTypes.GoInt))) {
                _bz2._byteRepeats++;
            } else {
                _bz2._byteRepeats = (0u32 : stdgo.StdGoTypes.GoUInt);
            };
            _bz2._lastByte = (_b : stdgo.StdGoTypes.GoInt);
            _buf[(_n : stdgo.StdGoTypes.GoInt)] = _b;
            _n++;
        };
        return _n;
    }
    @:keep
    static public function read( _bz2:stdgo.StdGoTypes.Ref<T_reader>, _buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _bz2:stdgo.StdGoTypes.Ref<T_reader> = _bz2;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (_bz2._eof) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : stdgo.io.Io.eof };
        };
        if (!_bz2._setupDone) {
            _err = _bz2._setup(true);
            var _brErr:stdgo.Error = _bz2._br.err();
            if (_brErr != null) {
                _err = _brErr;
            };
            if (_err != null) {
                return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _err };
            };
            _bz2._setupDone = true;
        };
        {
            var __tmp__ = _bz2._read(_buf);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        var _brErr:stdgo.Error = _bz2._br.err();
        if (_brErr != null) {
            _err = _brErr;
        };
        return { _0 : _n, _1 : _err };
    }
    /**
        // setup parses the bzip2 header.
    **/
    @:keep
    static public function _setup( _bz2:stdgo.StdGoTypes.Ref<T_reader>, _needMagic:Bool):stdgo.Error {
        @:recv var _bz2:stdgo.StdGoTypes.Ref<T_reader> = _bz2;
        var _br = (stdgo.Go.setRef(_bz2._br) : stdgo.StdGoTypes.Ref<stdgo.compress.bzip2.Bzip2.T_bitReader>);
        if (_needMagic) {
            var _magic:stdgo.StdGoTypes.GoInt = _br.readBits((16u32 : stdgo.StdGoTypes.GoUInt));
            if (_magic != ((16986 : stdgo.StdGoTypes.GoInt))) {
                return stdgo.Go.asInterface(((("bad magic value" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
            };
        };
        var _t:stdgo.StdGoTypes.GoInt = _br.readBits((8u32 : stdgo.StdGoTypes.GoUInt));
        if (_t != ((104 : stdgo.StdGoTypes.GoInt))) {
            return stdgo.Go.asInterface(((("non-Huffman entropy encoding" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        var _level:stdgo.StdGoTypes.GoInt = _br.readBits((8u32 : stdgo.StdGoTypes.GoUInt));
        if ((_level < (49 : stdgo.StdGoTypes.GoInt)) || (_level > (57 : stdgo.StdGoTypes.GoInt))) {
            return stdgo.Go.asInterface(((("invalid compression level" : stdgo.GoString) : stdgo.compress.bzip2.Bzip2.StructuralError) : StructuralError));
        };
        _bz2._fileCRC = (0u32 : stdgo.StdGoTypes.GoUInt32);
        _bz2._blockSize = (100000 : stdgo.StdGoTypes.GoInt) * (_level - (48 : stdgo.StdGoTypes.GoInt));
        if (_bz2._blockSize > (_bz2._tt.length)) {
            _bz2._tt = new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>((_bz2._blockSize : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        };
        return (null : stdgo.Error);
    }
}
class T_huffmanTree_asInterface {
    /**
        // Decode reads bits from the given bitReader and navigates the tree until a
        // symbol is found.
    **/
    @:keep
    public dynamic function decode(_br:stdgo.StdGoTypes.Ref<T_bitReader>):stdgo.StdGoTypes.GoUInt16 return __self__.value.decode(_br);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_huffmanTree>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.compress.bzip2.Bzip2.T_huffmanTree_asInterface) class T_huffmanTree_static_extension {
    /**
        // Decode reads bits from the given bitReader and navigates the tree until a
        // symbol is found.
    **/
    @:keep
    static public function decode( _t:stdgo.StdGoTypes.Ref<T_huffmanTree>, _br:stdgo.StdGoTypes.Ref<T_bitReader>):stdgo.StdGoTypes.GoUInt16 {
        @:recv var _t:stdgo.StdGoTypes.Ref<T_huffmanTree> = _t;
        var _v:stdgo.StdGoTypes.GoUInt16 = (0 : stdgo.StdGoTypes.GoUInt16);
        var _nodeIndex:stdgo.StdGoTypes.GoUInt16 = (0 : stdgo.StdGoTypes.GoUInt16);
        while (true) {
            var _node = (stdgo.Go.setRef(_t._nodes[(_nodeIndex : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.compress.bzip2.Bzip2.T_huffmanNode>);
            var _bit:stdgo.StdGoTypes.GoUInt16 = (0 : stdgo.StdGoTypes.GoUInt16);
            if (_br._bits > (0u32 : stdgo.StdGoTypes.GoUInt)) {
                _br._bits--;
                _bit = (_br._n >> (_br._bits & (63u32 : stdgo.StdGoTypes.GoUInt)) : stdgo.StdGoTypes.GoUInt16) & (1 : stdgo.StdGoTypes.GoUInt16);
            } else {
                _bit = (_br.readBits((1u32 : stdgo.StdGoTypes.GoUInt)) : stdgo.StdGoTypes.GoUInt16);
            };
            var __0:stdgo.StdGoTypes.GoUInt16 = _node._left, __1:stdgo.StdGoTypes.GoUInt16 = _node._right, _r:stdgo.StdGoTypes.GoUInt16 = __1, _l:stdgo.StdGoTypes.GoUInt16 = __0;
            if (_bit == ((1 : stdgo.StdGoTypes.GoUInt16))) {
                _nodeIndex = _l;
            } else {
                _nodeIndex = _r;
            };
            if (_nodeIndex == ((65535 : stdgo.StdGoTypes.GoUInt16))) {
                var __0:stdgo.StdGoTypes.GoUInt16 = _node._leftValue, __1:stdgo.StdGoTypes.GoUInt16 = _node._rightValue, _r:stdgo.StdGoTypes.GoUInt16 = __1, _l:stdgo.StdGoTypes.GoUInt16 = __0;
                if (_bit == ((1 : stdgo.StdGoTypes.GoUInt16))) {
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<StructuralError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.compress.bzip2.Bzip2.StructuralError_asInterface) class StructuralError_static_extension {
    @:keep
    static public function error( _s:StructuralError):stdgo.GoString {
        @:recv var _s:StructuralError = _s;
        return ("bzip2 data invalid: " : stdgo.GoString) + (_s : stdgo.GoString)?.__copy__()?.__copy__();
    }
}
class T_moveToFrontDecoder_asInterface {
    /**
        // First returns the symbol at the front of the list.
    **/
    @:keep
    public dynamic function first():stdgo.StdGoTypes.GoByte return __self__.value.first();
    @:keep
    public dynamic function decode(_n:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoByte return __self__.value.decode(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_moveToFrontDecoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.compress.bzip2.Bzip2.T_moveToFrontDecoder_asInterface) class T_moveToFrontDecoder_static_extension {
    /**
        // First returns the symbol at the front of the list.
    **/
    @:keep
    static public function first( _m:T_moveToFrontDecoder):stdgo.StdGoTypes.GoByte {
        @:recv var _m:T_moveToFrontDecoder = _m;
        return _m[(0 : stdgo.StdGoTypes.GoInt)];
    }
    @:keep
    static public function decode( _m:T_moveToFrontDecoder, _n:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoByte {
        @:recv var _m:T_moveToFrontDecoder = _m;
        var _b:stdgo.StdGoTypes.GoByte = (0 : stdgo.StdGoTypes.GoUInt8);
        _b = _m[(_n : stdgo.StdGoTypes.GoInt)];
        stdgo.Go.copySlice((_m.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.compress.bzip2.Bzip2.T_moveToFrontDecoder), (_m.__slice__(0, _n) : stdgo.compress.bzip2.Bzip2.T_moveToFrontDecoder));
        _m[(0 : stdgo.StdGoTypes.GoInt)] = _b;
        return _b;
    }
}
