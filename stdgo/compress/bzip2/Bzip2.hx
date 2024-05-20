package stdgo.compress.bzip2;
@:structInit @:private @:using(stdgo.compress.bzip2.Bzip2.T_bitReader_static_extension) abstract T_bitReader(stdgo._internal.compress.bzip2.Bzip2.T_bitReader) from stdgo._internal.compress.bzip2.Bzip2.T_bitReader to stdgo._internal.compress.bzip2.Bzip2.T_bitReader {
    public var _r(get, set) : stdgo._internal.io.Io.ByteReader;
    function get__r():stdgo._internal.io.Io.ByteReader return this._r;
    function set__r(v:stdgo._internal.io.Io.ByteReader):stdgo._internal.io.Io.ByteReader {
        this._r = v;
        return v;
    }
    public var _n(get, set) : haxe.UInt64;
    function get__n():haxe.UInt64 return this._n;
    function set__n(v:haxe.UInt64):haxe.UInt64 {
        this._n = v;
        return v;
    }
    public var _bits(get, set) : std.UInt;
    function get__bits():std.UInt return this._bits;
    function set__bits(v:std.UInt):std.UInt {
        this._bits = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io.ByteReader, ?_n:haxe.UInt64, ?_bits:std.UInt, ?_err:stdgo.Error) this = new stdgo._internal.compress.bzip2.Bzip2.T_bitReader(_r, _n, _bits, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.compress.bzip2.Bzip2.T_reader_static_extension) abstract T_reader(stdgo._internal.compress.bzip2.Bzip2.T_reader) from stdgo._internal.compress.bzip2.Bzip2.T_reader to stdgo._internal.compress.bzip2.Bzip2.T_reader {
    public var _br(get, set) : stdgo._internal.compress.bzip2.Bzip2.T_bitReader;
    function get__br():stdgo._internal.compress.bzip2.Bzip2.T_bitReader return this._br;
    function set__br(v:stdgo._internal.compress.bzip2.Bzip2.T_bitReader):stdgo._internal.compress.bzip2.Bzip2.T_bitReader {
        this._br = v;
        return v;
    }
    public var _fileCRC(get, set) : std.UInt;
    function get__fileCRC():std.UInt return this._fileCRC;
    function set__fileCRC(v:std.UInt):std.UInt {
        this._fileCRC = v;
        return v;
    }
    public var _blockCRC(get, set) : std.UInt;
    function get__blockCRC():std.UInt return this._blockCRC;
    function set__blockCRC(v:std.UInt):std.UInt {
        this._blockCRC = v;
        return v;
    }
    public var _wantBlockCRC(get, set) : std.UInt;
    function get__wantBlockCRC():std.UInt return this._wantBlockCRC;
    function set__wantBlockCRC(v:std.UInt):std.UInt {
        this._wantBlockCRC = v;
        return v;
    }
    public var _setupDone(get, set) : Bool;
    function get__setupDone():Bool return this._setupDone;
    function set__setupDone(v:Bool):Bool {
        this._setupDone = v;
        return v;
    }
    public var _blockSize(get, set) : StdTypes.Int;
    function get__blockSize():StdTypes.Int return this._blockSize;
    function set__blockSize(v:StdTypes.Int):StdTypes.Int {
        this._blockSize = v;
        return v;
    }
    public var _eof(get, set) : Bool;
    function get__eof():Bool return this._eof;
    function set__eof(v:Bool):Bool {
        this._eof = v;
        return v;
    }
    public var _c(get, set) : haxe.ds.Vector<std.UInt>;
    function get__c():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._c) i]);
    function set__c(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._c = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt>);
        return v;
    }
    public var _tt(get, set) : Array<std.UInt>;
    function get__tt():Array<std.UInt> return [for (i in this._tt) i];
    function set__tt(v:Array<std.UInt>):Array<std.UInt> {
        this._tt = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _tPos(get, set) : std.UInt;
    function get__tPos():std.UInt return this._tPos;
    function set__tPos(v:std.UInt):std.UInt {
        this._tPos = v;
        return v;
    }
    public var _preRLE(get, set) : Array<std.UInt>;
    function get__preRLE():Array<std.UInt> return [for (i in this._preRLE) i];
    function set__preRLE(v:Array<std.UInt>):Array<std.UInt> {
        this._preRLE = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _preRLEUsed(get, set) : StdTypes.Int;
    function get__preRLEUsed():StdTypes.Int return this._preRLEUsed;
    function set__preRLEUsed(v:StdTypes.Int):StdTypes.Int {
        this._preRLEUsed = v;
        return v;
    }
    public var _lastByte(get, set) : StdTypes.Int;
    function get__lastByte():StdTypes.Int return this._lastByte;
    function set__lastByte(v:StdTypes.Int):StdTypes.Int {
        this._lastByte = v;
        return v;
    }
    public var _byteRepeats(get, set) : std.UInt;
    function get__byteRepeats():std.UInt return this._byteRepeats;
    function set__byteRepeats(v:std.UInt):std.UInt {
        this._byteRepeats = v;
        return v;
    }
    public var _repeats(get, set) : std.UInt;
    function get__repeats():std.UInt return this._repeats;
    function set__repeats(v:std.UInt):std.UInt {
        this._repeats = v;
        return v;
    }
    public function new(?_br:stdgo._internal.compress.bzip2.Bzip2.T_bitReader, ?_fileCRC:std.UInt, ?_blockCRC:std.UInt, ?_wantBlockCRC:std.UInt, ?_setupDone:Bool, ?_blockSize:StdTypes.Int, ?_eof:Bool, ?_c:haxe.ds.Vector<std.UInt>, ?_tt:Array<std.UInt>, ?_tPos:std.UInt, ?_preRLE:Array<std.UInt>, ?_preRLEUsed:StdTypes.Int, ?_lastByte:StdTypes.Int, ?_byteRepeats:std.UInt, ?_repeats:std.UInt) this = new stdgo._internal.compress.bzip2.Bzip2.T_reader(
_br,
_fileCRC,
_blockCRC,
_wantBlockCRC,
_setupDone,
_blockSize,
_eof,
([for (i in _c) i] : stdgo.GoArray<stdgo.GoUInt>),
([for (i in _tt) i] : stdgo.Slice<stdgo.GoUInt32>),
_tPos,
([for (i in _preRLE) i] : stdgo.Slice<stdgo.GoUInt32>),
_preRLEUsed,
_lastByte,
_byteRepeats,
_repeats);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.compress.bzip2.Bzip2.T_huffmanTree_static_extension) abstract T_huffmanTree(stdgo._internal.compress.bzip2.Bzip2.T_huffmanTree) from stdgo._internal.compress.bzip2.Bzip2.T_huffmanTree to stdgo._internal.compress.bzip2.Bzip2.T_huffmanTree {
    public var _nodes(get, set) : Array<stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode>;
    function get__nodes():Array<stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode> return [for (i in this._nodes) i];
    function set__nodes(v:Array<stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode>):Array<stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode> {
        this._nodes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode>);
        return v;
    }
    public var _nextNode(get, set) : StdTypes.Int;
    function get__nextNode():StdTypes.Int return this._nextNode;
    function set__nextNode(v:StdTypes.Int):StdTypes.Int {
        this._nextNode = v;
        return v;
    }
    public function new(?_nodes:Array<stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode>, ?_nextNode:StdTypes.Int) this = new stdgo._internal.compress.bzip2.Bzip2.T_huffmanTree(([for (i in _nodes) i] : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode>), _nextNode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_huffmanNode(stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode) from stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode to stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode {
    public var _left(get, set) : std.UInt;
    function get__left():std.UInt return this._left;
    function set__left(v:std.UInt):std.UInt {
        this._left = v;
        return v;
    }
    public var _right(get, set) : std.UInt;
    function get__right():std.UInt return this._right;
    function set__right(v:std.UInt):std.UInt {
        this._right = v;
        return v;
    }
    public var _leftValue(get, set) : std.UInt;
    function get__leftValue():std.UInt return this._leftValue;
    function set__leftValue(v:std.UInt):std.UInt {
        this._leftValue = v;
        return v;
    }
    public var _rightValue(get, set) : std.UInt;
    function get__rightValue():std.UInt return this._rightValue;
    function set__rightValue(v:std.UInt):std.UInt {
        this._rightValue = v;
        return v;
    }
    public function new(?_left:std.UInt, ?_right:std.UInt, ?_leftValue:std.UInt, ?_rightValue:std.UInt) this = new stdgo._internal.compress.bzip2.Bzip2.T_huffmanNode(_left, _right, _leftValue, _rightValue);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_huffmanSymbolLengthPair(stdgo._internal.compress.bzip2.Bzip2.T_huffmanSymbolLengthPair) from stdgo._internal.compress.bzip2.Bzip2.T_huffmanSymbolLengthPair to stdgo._internal.compress.bzip2.Bzip2.T_huffmanSymbolLengthPair {
    public var _value(get, set) : std.UInt;
    function get__value():std.UInt return this._value;
    function set__value(v:std.UInt):std.UInt {
        this._value = v;
        return v;
    }
    public var _length(get, set) : std.UInt;
    function get__length():std.UInt return this._length;
    function set__length(v:std.UInt):std.UInt {
        this._length = v;
        return v;
    }
    public function new(?_value:std.UInt, ?_length:std.UInt) this = new stdgo._internal.compress.bzip2.Bzip2.T_huffmanSymbolLengthPair(_value, _length);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_huffmanCode(stdgo._internal.compress.bzip2.Bzip2.T_huffmanCode) from stdgo._internal.compress.bzip2.Bzip2.T_huffmanCode to stdgo._internal.compress.bzip2.Bzip2.T_huffmanCode {
    public var _code(get, set) : std.UInt;
    function get__code():std.UInt return this._code;
    function set__code(v:std.UInt):std.UInt {
        this._code = v;
        return v;
    }
    public var _codeLen(get, set) : std.UInt;
    function get__codeLen():std.UInt return this._codeLen;
    function set__codeLen(v:std.UInt):std.UInt {
        this._codeLen = v;
        return v;
    }
    public var _value(get, set) : std.UInt;
    function get__value():std.UInt return this._value;
    function set__value(v:std.UInt):std.UInt {
        this._value = v;
        return v;
    }
    public function new(?_code:std.UInt, ?_codeLen:std.UInt, ?_value:std.UInt) this = new stdgo._internal.compress.bzip2.Bzip2.T_huffmanCode(_code, _codeLen, _value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.compress.bzip2.Bzip2.T__struct_0;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.compress.bzip2.Bzip2.T__struct_1;
class T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.compress.bzip2.Bzip2.T__struct_2;
typedef StructuralError = stdgo._internal.compress.bzip2.Bzip2.StructuralError;
typedef T_moveToFrontDecoder = stdgo._internal.compress.bzip2.Bzip2.T_moveToFrontDecoder;
class T_bitReader_static_extension {
    static public function err(_br:T_bitReader):stdgo.Error {
        return stdgo._internal.compress.bzip2.Bzip2.T_bitReader_static_extension.err(_br);
    }
    static public function readBit(_br:T_bitReader):Bool {
        return stdgo._internal.compress.bzip2.Bzip2.T_bitReader_static_extension.readBit(_br);
    }
    static public function readBits(_br:T_bitReader, _bits:std.UInt):StdTypes.Int {
        return stdgo._internal.compress.bzip2.Bzip2.T_bitReader_static_extension.readBits(_br, _bits);
    }
    static public function readBits64(_br:T_bitReader, _bits:std.UInt):haxe.UInt64 {
        return stdgo._internal.compress.bzip2.Bzip2.T_bitReader_static_extension.readBits64(_br, _bits);
    }
}
class T_reader_static_extension {
    static public function _readBlock(_bz2:T_reader):stdgo.Error {
        return stdgo._internal.compress.bzip2.Bzip2.T_reader_static_extension._readBlock(_bz2);
    }
    static public function _read(_bz2:T_reader, _buf:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.compress.bzip2.Bzip2.T_reader_static_extension._read(_bz2, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readFromBlock(_bz2:T_reader, _buf:Array<StdTypes.Int>):StdTypes.Int {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.compress.bzip2.Bzip2.T_reader_static_extension._readFromBlock(_bz2, _buf);
    }
    static public function read(_bz2:T_reader, _buf:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.compress.bzip2.Bzip2.T_reader_static_extension.read(_bz2, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _setup(_bz2:T_reader, _needMagic:Bool):stdgo.Error {
        return stdgo._internal.compress.bzip2.Bzip2.T_reader_static_extension._setup(_bz2, _needMagic);
    }
}
class T_huffmanTree_static_extension {
    static public function decode(_t:T_huffmanTree, _br:T_bitReader):std.UInt {
        return stdgo._internal.compress.bzip2.Bzip2.T_huffmanTree_static_extension.decode(_t, _br);
    }
}
class StructuralError_static_extension {
    static public function error(_s:StructuralError):String {
        return stdgo._internal.compress.bzip2.Bzip2.StructuralError_static_extension.error(_s);
    }
}
class T_moveToFrontDecoder_static_extension {
    static public function first(_m:T_moveToFrontDecoder):StdTypes.Int {
        return stdgo._internal.compress.bzip2.Bzip2.T_moveToFrontDecoder_static_extension.first(_m);
    }
    static public function decode(_m:T_moveToFrontDecoder, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.compress.bzip2.Bzip2.T_moveToFrontDecoder_static_extension.decode(_m, _n);
    }
}
/**
    Package bzip2 implements bzip2 decompression.
**/
class Bzip2 {
    /**
        NewReader returns an io.Reader which decompresses bzip2 data from r.
        If r does not also implement io.ByteReader,
        the decompressor may read more data than necessary from r.
    **/
    static public function newReader(_r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo._internal.compress.bzip2.Bzip2.newReader(_r);
    }
    static public function testReader(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.bzip2.Bzip2.testReader(_t);
    }
    static public function testBitReader(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.bzip2.Bzip2.testBitReader(_t);
    }
    static public function testMTF(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.bzip2.Bzip2.testMTF(_t);
    }
    static public function testZeroRead(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.compress.bzip2.Bzip2.testZeroRead(_t);
    }
    static public function benchmarkDecodeDigits(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.compress.bzip2.Bzip2.benchmarkDecodeDigits(_b);
    }
    static public function benchmarkDecodeNewton(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.compress.bzip2.Bzip2.benchmarkDecodeNewton(_b);
    }
    static public function benchmarkDecodeRand(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.compress.bzip2.Bzip2.benchmarkDecodeRand(_b);
    }
}
