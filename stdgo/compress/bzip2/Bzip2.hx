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
var _crctab : GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 256) ((0 : GoUInt32))]);
@:structInit @:using(stdgo.compress.bzip2.Bzip2.T_bitReader_static_extension) class T_bitReader {
    public var _r : stdgo.io.Io.ByteReader = ((null : stdgo.io.Io.ByteReader));
    public var _n : GoUInt64 = ((0 : GoUInt64));
    public var _bits : GoUInt = ((0 : GoUInt));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_r:stdgo.io.Io.ByteReader, ?_n:GoUInt64, ?_bits:GoUInt, ?_err:stdgo.Error) {
        if (_r != null) this._r = _r;
        if (_n != null) this._n = _n;
        if (_bits != null) this._bits = _bits;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_bitReader(_r, _n, _bits, _err);
    }
}
@:structInit @:using(stdgo.compress.bzip2.Bzip2.T_reader_static_extension) class T_reader {
    public var _br : T_bitReader = new T_bitReader();
    public var _fileCRC : GoUInt32 = ((0 : GoUInt32));
    public var _blockCRC : GoUInt32 = ((0 : GoUInt32));
    public var _wantBlockCRC : GoUInt32 = ((0 : GoUInt32));
    public var _setupDone : Bool = false;
    public var _blockSize : GoInt = ((0 : GoInt));
    public var _eof : Bool = false;
    public var _c : GoArray<GoUInt> = new GoArray<GoUInt>(...[for (i in 0 ... 256) ((0 : GoUInt))]);
    public var _tt : Slice<GoUInt32> = ((null : Slice<GoUInt32>));
    public var _tPos : GoUInt32 = ((0 : GoUInt32));
    public var _preRLE : Slice<GoUInt32> = ((null : Slice<GoUInt32>));
    public var _preRLEUsed : GoInt = ((0 : GoInt));
    public var _lastByte : GoInt = ((0 : GoInt));
    public var _byteRepeats : GoUInt = ((0 : GoUInt));
    public var _repeats : GoUInt = ((0 : GoUInt));
    public function new(?_br:T_bitReader, ?_fileCRC:GoUInt32, ?_blockCRC:GoUInt32, ?_wantBlockCRC:GoUInt32, ?_setupDone:Bool, ?_blockSize:GoInt, ?_eof:Bool, ?_c:GoArray<GoUInt>, ?_tt:Slice<GoUInt32>, ?_tPos:GoUInt32, ?_preRLE:Slice<GoUInt32>, ?_preRLEUsed:GoInt, ?_lastByte:GoInt, ?_byteRepeats:GoUInt, ?_repeats:GoUInt) {
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
    public function __underlying__():AnyInterface return Go.toInterface(this);
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
@:structInit @:using(stdgo.compress.bzip2.Bzip2.T_huffmanTree_static_extension) class T_huffmanTree {
    public var _nodes : Slice<T_huffmanNode> = ((null : Slice<T_huffmanNode>));
    public var _nextNode : GoInt = ((0 : GoInt));
    public function new(?_nodes:Slice<T_huffmanNode>, ?_nextNode:GoInt) {
        if (_nodes != null) this._nodes = _nodes;
        if (_nextNode != null) this._nextNode = _nextNode;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanTree(_nodes, _nextNode);
    }
}
@:structInit class T_huffmanNode {
    public var _left : GoUInt16 = ((0 : GoUInt16));
    public var _right : GoUInt16 = ((0 : GoUInt16));
    public var _leftValue : GoUInt16 = ((0 : GoUInt16));
    public var _rightValue : GoUInt16 = ((0 : GoUInt16));
    public function new(?_left:GoUInt16, ?_right:GoUInt16, ?_leftValue:GoUInt16, ?_rightValue:GoUInt16) {
        if (_left != null) this._left = _left;
        if (_right != null) this._right = _right;
        if (_leftValue != null) this._leftValue = _leftValue;
        if (_rightValue != null) this._rightValue = _rightValue;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanNode(_left, _right, _leftValue, _rightValue);
    }
}
@:structInit class T_huffmanSymbolLengthPair {
    public var _value : GoUInt16 = ((0 : GoUInt16));
    public var _length : GoUInt8 = ((0 : GoUInt8));
    public function new(?_value:GoUInt16, ?_length:GoUInt8) {
        if (_value != null) this._value = _value;
        if (_length != null) this._length = _length;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanSymbolLengthPair(_value, _length);
    }
}
@:structInit class T_huffmanCode {
    public var _code : GoUInt32 = ((0 : GoUInt32));
    public var _codeLen : GoUInt8 = ((0 : GoUInt8));
    public var _value : GoUInt16 = ((0 : GoUInt16));
    public function new(?_code:GoUInt32, ?_codeLen:GoUInt8, ?_value:GoUInt16) {
        if (_code != null) this._code = _code;
        if (_codeLen != null) this._codeLen = _codeLen;
        if (_value != null) this._value = _value;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanCode(_code, _codeLen, _value);
    }
}
@:named @:using(stdgo.compress.bzip2.Bzip2.StructuralError_static_extension) typedef StructuralError = GoString;
@:named @:using(stdgo.compress.bzip2.Bzip2.T_moveToFrontDecoder_static_extension) typedef T_moveToFrontDecoder = Slice<GoUInt8>;
/**
    // newBitReader returns a new bitReader reading from r. If r is not
    // already an io.ByteReader, it will be converted via a bufio.Reader.
**/
function _newBitReader(_r:stdgo.io.Io.Reader):T_bitReader {
        var __tmp__ = try {
            { value : ((((_r.__underlying__().value : Dynamic)) : stdgo.io.Io.ByteReader)), ok : true };
        } catch(_) {
            { value : ((null : stdgo.io.Io.ByteReader)), ok : false };
        }, _byter = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _byter = stdgo.bufio.Bufio.newReader(_r);
        };
        return (({ _r : _byter, _n : 0, _bits : 0, _err : new stdgo.Error() } : T_bitReader));
    }
/**
    // NewReader returns an io.Reader which decompresses bzip2 data from r.
    // If r does not also implement io.ByteReader,
    // the decompressor may read more data than necessary from r.
**/
function newReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
        var _bz2 = new T_reader();
        _bz2._br = (_newBitReader(_r) == null ? null : _newBitReader(_r).__copy__());
        return _bz2;
    }
/**
    // inverseBWT implements the inverse Burrows-Wheeler transform as described in
    // http://www.hpl.hp.com/techreports/Compaq-DEC/SRC-RR-124.pdf, section 4.2.
    // In that document, origPtr is called ``I'' and c is the ``C'' array after the
    // first pass over the data. It's an argument here because we merge the first
    // pass with the Huffman decoding.
    //
    // This also implements the ``single array'' method from the bzip2 source code
    // which leaves the output, still shuffled, in the bottom 8 bits of tt with the
    // index of the next byte in the top 24-bits. The index of the first byte is
    // returned.
**/
function _inverseBWT(_tt:Slice<GoUInt32>, _origPtr:GoUInt, _c:Slice<GoUInt>):GoUInt32 {
        var _sum:GoUInt = ((((0 : GoUInt)) : GoUInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((256 : GoInt)), _i++, {
                _sum = _sum + ((_c != null ? _c[_i] : ((0 : GoUInt))));
                if (_c != null) _c[_i] = _sum - (_c != null ? _c[_i] : ((0 : GoUInt)));
            });
        };
        for (_i => _ in _tt) {
            var _b:GoUInt32 = (_tt != null ? _tt[_i] : ((0 : GoUInt32))) & ((255 : GoUInt32));
            if (_tt != null) (_tt != null ? _tt[(_c != null ? _c[_b] : ((0 : GoUInt)))] : ((0 : GoUInt32))) | (((_i : GoUInt32)) << ((8 : GoUnTypedInt)));
            if (_c != null) _c[_b]++;
        };
        return (_tt != null ? _tt[_origPtr] : ((0 : GoUInt32))) >> ((8 : GoUnTypedInt));
    }
/**
    // updateCRC updates the crc value to incorporate the data in b.
    // The initial value is 0.
**/
function _updateCRC(_val:GoUInt32, _b:Slice<GoByte>):GoUInt32 {
        var _crc:GoUInt32 = (-1 ^ _val);
        for (_0 => _v in _b) {
            _crc = (_crctab != null ? _crctab[(((_crc >> ((24 : GoUnTypedInt))) : GoByte)) ^ _v] : ((0 : GoUInt32))) ^ (_crc << ((8 : GoUnTypedInt)));
        };
        return (-1 ^ _crc);
    }
/**
    // newHuffmanTree builds a Huffman tree from a slice containing the code
    // lengths of each symbol. The maximum code length is 32 bits.
**/
function _newHuffmanTree(_lengths:Slice<GoUInt8>):{ var _0 : T_huffmanTree; var _1 : Error; } {
        if ((_lengths != null ? _lengths.length : ((0 : GoInt))) < ((2 : GoInt))) {
            throw Go.toInterface(((("newHuffmanTree: too few symbols" : GoString))));
        };
        var _t:T_huffmanTree = new T_huffmanTree();
        var _pairs = new Slice<T_huffmanSymbolLengthPair>(...[for (i in 0 ... (((_lengths != null ? _lengths.length : ((0 : GoInt))) : GoInt)).toBasic()) new T_huffmanSymbolLengthPair()]);
        for (_i => _length in _lengths) {
            (_pairs != null ? _pairs[_i] : new T_huffmanSymbolLengthPair())._value = ((_i : GoUInt16));
            (_pairs != null ? _pairs[_i] : new T_huffmanSymbolLengthPair())._length = _length;
        };
        stdgo.sort.Sort.slice(Go.toInterface(_pairs), function(_i:GoInt, _j:GoInt):Bool {
            if ((_pairs != null ? _pairs[_i] : new T_huffmanSymbolLengthPair())._length < (_pairs != null ? _pairs[_j] : new T_huffmanSymbolLengthPair())._length) {
                return true;
            };
            if ((_pairs != null ? _pairs[_i] : new T_huffmanSymbolLengthPair())._length > (_pairs != null ? _pairs[_j] : new T_huffmanSymbolLengthPair())._length) {
                return false;
            };
            if ((_pairs != null ? _pairs[_i] : new T_huffmanSymbolLengthPair())._value < (_pairs != null ? _pairs[_j] : new T_huffmanSymbolLengthPair())._value) {
                return true;
            };
            return false;
        });
        var _code:GoUInt32 = ((((0 : GoUInt32)) : GoUInt32));
        var _length:GoUInt8 = ((((32 : GoUInt8)) : GoUInt8));
        var _codes = new Slice<T_huffmanCode>(...[for (i in 0 ... (((_lengths != null ? _lengths.length : ((0 : GoInt))) : GoInt)).toBasic()) new T_huffmanCode()]);
        {
            var _i:GoInt = (_pairs != null ? _pairs.length : ((0 : GoInt))) - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                if (_length > (_pairs != null ? _pairs[_i] : new T_huffmanSymbolLengthPair())._length) {
                    _length = (_pairs != null ? _pairs[_i] : new T_huffmanSymbolLengthPair())._length;
                };
                (_codes != null ? _codes[_i] : new T_huffmanCode())._code = _code;
                (_codes != null ? _codes[_i] : new T_huffmanCode())._codeLen = _length;
                (_codes != null ? _codes[_i] : new T_huffmanCode())._value = (_pairs != null ? _pairs[_i] : new T_huffmanSymbolLengthPair())._value;
                _code = _code + (((1 : GoUInt32)) << (((32 : GoUInt8)) - _length));
            });
        };
        stdgo.sort.Sort.slice(Go.toInterface(_codes), function(_i:GoInt, _j:GoInt):Bool {
            return (_codes != null ? _codes[_i] : new T_huffmanCode())._code < (_codes != null ? _codes[_j] : new T_huffmanCode())._code;
        });
        _t._nodes = new Slice<T_huffmanNode>(...[for (i in 0 ... (((_codes != null ? _codes.length : ((0 : GoInt))) : GoInt)).toBasic()) new T_huffmanNode()]);
        var __tmp__ = _buildHuffmanNode(_t, _codes, ((0 : GoUInt32))), _0:GoUInt16 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : (_t == null ? null : _t.__copy__()), _1 : _err };
    }
/**
    // buildHuffmanNode takes a slice of sorted huffmanCodes and builds a node in
    // the Huffman tree at the given level. It returns the index of the newly
    // constructed node.
**/
function _buildHuffmanNode(_t:T_huffmanTree, _codes:Slice<T_huffmanCode>, _level:GoUInt32):{ var _0 : GoUInt16; var _1 : Error; } {
        var _nodeIndex:GoUInt16 = ((0 : GoUInt16)), _err:Error = ((null : stdgo.Error));
        var _test:GoUInt32 = ((((1 : GoUInt32)) : GoUInt32)) << (((31 : GoUInt32)) - _level);
        var _firstRightIndex:GoInt = (_codes != null ? _codes.length : ((0 : GoInt)));
        for (_i => _code in _codes) {
            if ((_code._code & _test) != ((0 : GoUInt32))) {
                _firstRightIndex = _i;
                break;
            };
        };
        var _left = ((_codes.__slice__(0, _firstRightIndex) : Slice<T_huffmanCode>));
        var _right = ((_codes.__slice__(_firstRightIndex) : Slice<T_huffmanCode>));
        if (((_left != null ? _left.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_right != null ? _right.length : ((0 : GoInt))) == ((0 : GoInt)))) {
            if ((_codes != null ? _codes.length : ((0 : GoInt))) < ((2 : GoInt))) {
                return { _0 : ((0 : GoUInt16)), _1 : {
                    final __self__ = new StructuralError_wrapper(((((("empty Huffman tree" : GoString))) : StructuralError)));
                    __self__.error = #if !macro function():GoString return ((((("empty Huffman tree" : GoString))) : StructuralError)).error() #else null #end;
                    __self__;
                } };
            };
            if (_level == ((31 : GoUInt32))) {
                return { _0 : ((0 : GoUInt16)), _1 : {
                    final __self__ = new StructuralError_wrapper(((((("equal symbols in Huffman tree" : GoString))) : StructuralError)));
                    __self__.error = #if !macro function():GoString return ((((("equal symbols in Huffman tree" : GoString))) : StructuralError)).error() #else null #end;
                    __self__;
                } };
            };
            if ((_left != null ? _left.length : ((0 : GoInt))) == ((0 : GoInt))) {
                return _buildHuffmanNode(_t, _right, _level + ((1 : GoUInt32)));
            };
            return _buildHuffmanNode(_t, _left, _level + ((1 : GoUInt32)));
        };
        _nodeIndex = ((_t._nextNode : GoUInt16));
        var _node = (_t._nodes != null ? _t._nodes[_t._nextNode] : new T_huffmanNode());
        _t._nextNode++;
        if ((_left != null ? _left.length : ((0 : GoInt))) == ((1 : GoInt))) {
            _node._left = ((65535 : GoUInt16));
            _node._leftValue = (_left != null ? _left[((0 : GoInt))] : new T_huffmanCode())._value;
        } else {
            {
                var __tmp__ = _buildHuffmanNode(_t, _left, _level + ((1 : GoUInt32)));
                _node._left = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            return { _0 : _nodeIndex, _1 : _err };
        };
        if ((_right != null ? _right.length : ((0 : GoInt))) == ((1 : GoInt))) {
            _node._right = ((65535 : GoUInt16));
            _node._rightValue = (_right != null ? _right[((0 : GoInt))] : new T_huffmanCode())._value;
        } else {
            {
                var __tmp__ = _buildHuffmanNode(_t, _right, _level + ((1 : GoUInt32)));
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
function _newMTFDecoder(_symbols:Slice<GoByte>):T_moveToFrontDecoder {
        if ((_symbols != null ? _symbols.length : ((0 : GoInt))) > ((256 : GoInt))) {
            throw Go.toInterface(((("too many symbols" : GoString))));
        };
        return ((_symbols : T_moveToFrontDecoder));
    }
/**
    // newMTFDecoderWithRange creates a move-to-front decoder with an initial
    // symbol list of 0...n-1.
**/
function _newMTFDecoderWithRange(_n:GoInt):T_moveToFrontDecoder {
        if (_n > ((256 : GoInt))) {
            throw Go.toInterface(((("newMTFDecoderWithRange: cannot have > 256 symbols" : GoString))));
        };
        var _m = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                if (_m != null) _m[_i] = ((_i : GoByte));
            });
        };
        return ((_m : T_moveToFrontDecoder));
    }
@:keep var _ = {
        try {
            {};
            for (_i => _ in _crctab) {
                var _crc:GoUInt32 = ((_i : GoUInt32)) << ((24 : GoUnTypedInt));
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < ((8 : GoInt)), _j++, {
                        if ((_crc & (("2147483648" : GoUInt32))) != ((0 : GoUInt32))) {
                            _crc = (_crc << ((1 : GoUnTypedInt))) ^ ((79764919 : GoUInt32));
                        } else {
                            _crc = _crc << (((1 : GoUnTypedInt)));
                        };
                    });
                };
                if (_crctab != null) _crctab[_i] = _crc;
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
@:keep class T_bitReader_static_extension {
    @:keep
    public static function err( _br:T_bitReader):Error {
        return _br._err;
    }
    @:keep
    public static function readBit( _br:T_bitReader):Bool {
        var _n:GoInt = _br.readBits(((1 : GoUInt)));
        return _n != ((0 : GoInt));
    }
    @:keep
    public static function readBits( _br:T_bitReader, _bits:GoUInt):GoInt {
        var _n:GoInt = ((0 : GoInt));
        var _n64:GoUInt64 = _br.readBits64(_bits);
        return ((_n64 : GoInt));
    }
    /**
        // ReadBits64 reads the given number of bits and returns them in the
        // least-significant part of a uint64. In the event of an error, it returns 0
        // and the error can be obtained by calling Err().
    **/
    @:keep
    public static function readBits64( _br:T_bitReader, _bits:GoUInt):GoUInt64 {
        var _n:GoUInt64 = ((0 : GoUInt64));
        while (_bits > _br._bits) {
            var __tmp__ = _br._r.readByte(), _b:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == stdgo.io.Io.eof) {
                _err = stdgo.io.Io.errUnexpectedEOF;
            };
            if (_err != null) {
                _br._err = _err;
                return ((0 : GoUInt64));
            };
            _br._n = _br._n << (((8 : GoUnTypedInt)));
            _br._n = _br._n | (((_b : GoUInt64)));
            _br._bits = _br._bits + (((8 : GoUInt)));
        };
        _n = (_br._n >> (_br._bits - _bits)) & ((((1 : GoUInt64)) << _bits) - ((1 : GoUInt64)));
        _br._bits = _br._bits - (_bits);
        return _n;
    }
}
class T_bitReader_wrapper {
    @:keep
    public var err : () -> Error = null;
    @:keep
    public var readBit : () -> Bool = null;
    @:keep
    public var readBits : GoUInt -> GoInt = null;
    /**
        // ReadBits64 reads the given number of bits and returns them in the
        // least-significant part of a uint64. In the event of an error, it returns 0
        // and the error can be obtained by calling Err().
    **/
    @:keep
    public var readBits64 : GoUInt -> GoUInt64 = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_bitReader;
}
@:keep class T_reader_static_extension {
    /**
        // readBlock reads a bzip2 block. The magic number should already have been consumed.
    **/
    @:keep
    public static function _readBlock( _bz2:T_reader):Error {
        var _err:Error = ((null : stdgo.Error));
        var _br = _bz2._br;
        _bz2._wantBlockCRC = ((_br.readBits64(((32 : GoUInt))) : GoUInt32));
        _bz2._blockCRC = ((0 : GoUInt32));
        _bz2._fileCRC = ((_bz2._fileCRC << ((1 : GoUnTypedInt))) | (_bz2._fileCRC >> ((31 : GoUnTypedInt)))) ^ _bz2._wantBlockCRC;
        var _randomized:GoInt = _br.readBits(((1 : GoUInt)));
        if (_randomized != ((0 : GoInt))) {
            return {
                final __self__ = new StructuralError_wrapper(((((("deprecated randomized files" : GoString))) : StructuralError)));
                __self__.error = #if !macro function():GoString return ((((("deprecated randomized files" : GoString))) : StructuralError)).error() #else null #end;
                __self__;
            };
        };
        var _origPtr:GoUInt = ((_br.readBits(((24 : GoUInt))) : GoUInt));
        var _symbolRangeUsedBitmap:GoInt = _br.readBits(((16 : GoUInt)));
        var _symbolPresent = new Slice<Bool>(...[for (i in 0 ... ((((256 : GoInt)) : GoInt)).toBasic()) false]);
        var _numSymbols:GoInt = ((0 : GoInt));
        {
            var _symRange:GoUInt = ((((0 : GoUInt)) : GoUInt));
            Go.cfor(_symRange < ((16 : GoUInt)), _symRange++, {
                if ((_symbolRangeUsedBitmap & (((1 : GoInt)) << (((15 : GoUInt)) - _symRange))) != ((0 : GoInt))) {
                    var _bits:GoInt = _br.readBits(((16 : GoUInt)));
                    {
                        var _symbol:GoUInt = ((((0 : GoUInt)) : GoUInt));
                        Go.cfor(_symbol < ((16 : GoUInt)), _symbol++, {
                            if ((_bits & (((1 : GoInt)) << (((15 : GoUInt)) - _symbol))) != ((0 : GoInt))) {
                                if (_symbolPresent != null) _symbolPresent[(((16 : GoUInt)) * _symRange) + _symbol] = true;
                                _numSymbols++;
                            };
                        });
                    };
                };
            });
        };
        if (_numSymbols == ((0 : GoInt))) {
            return {
                final __self__ = new StructuralError_wrapper(((((("no symbols in input" : GoString))) : StructuralError)));
                __self__.error = #if !macro function():GoString return ((((("no symbols in input" : GoString))) : StructuralError)).error() #else null #end;
                __self__;
            };
        };
        var _numHuffmanTrees:GoInt = _br.readBits(((3 : GoUInt)));
        if ((_numHuffmanTrees < ((2 : GoInt))) || (_numHuffmanTrees > ((6 : GoInt)))) {
            return {
                final __self__ = new StructuralError_wrapper(((((("invalid number of Huffman trees" : GoString))) : StructuralError)));
                __self__.error = #if !macro function():GoString return ((((("invalid number of Huffman trees" : GoString))) : StructuralError)).error() #else null #end;
                __self__;
            };
        };
        var _numSelectors:GoInt = _br.readBits(((15 : GoUInt)));
        var _treeIndexes = new Slice<GoUInt8>(...[for (i in 0 ... ((_numSelectors : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _mtfTreeDecoder:T_moveToFrontDecoder = _newMTFDecoderWithRange(_numHuffmanTrees);
        for (_i => _ in _treeIndexes) {
            var _c:GoInt = ((0 : GoInt));
            while (true) {
                var _inc:GoInt = _br.readBits(((1 : GoUInt)));
                if (_inc == ((0 : GoInt))) {
                    break;
                };
                _c++;
            };
            if (_c >= _numHuffmanTrees) {
                return {
                    final __self__ = new StructuralError_wrapper(((((("tree index too large" : GoString))) : StructuralError)));
                    __self__.error = #if !macro function():GoString return ((((("tree index too large" : GoString))) : StructuralError)).error() #else null #end;
                    __self__;
                };
            };
            if (_treeIndexes != null) _treeIndexes[_i] = _mtfTreeDecoder.decode(_c);
        };
        var _symbols = new Slice<GoUInt8>(...[for (i in 0 ... ((_numSymbols : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _nextSymbol:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((256 : GoInt)), _i++, {
                if ((_symbolPresent != null ? _symbolPresent[_i] : false)) {
                    if (_symbols != null) _symbols[_nextSymbol] = ((_i : GoByte));
                    _nextSymbol++;
                };
            });
        };
        var _mtf:T_moveToFrontDecoder = _newMTFDecoder(_symbols);
        _numSymbols = _numSymbols + (((2 : GoInt)));
        var _huffmanTrees = new Slice<T_huffmanTree>(...[for (i in 0 ... ((_numHuffmanTrees : GoInt)).toBasic()) new T_huffmanTree()]);
        var _lengths = new Slice<GoUInt8>(...[for (i in 0 ... ((_numSymbols : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_i => _ in _huffmanTrees) {
            var _length:GoInt = _br.readBits(((5 : GoUInt)));
            for (_j => _ in _lengths) {
                while (true) {
                    if ((_length < ((1 : GoInt))) || (_length > ((20 : GoInt)))) {
                        return {
                            final __self__ = new StructuralError_wrapper(((((("Huffman length out of range" : GoString))) : StructuralError)));
                            __self__.error = #if !macro function():GoString return ((((("Huffman length out of range" : GoString))) : StructuralError)).error() #else null #end;
                            __self__;
                        };
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
                if (_lengths != null) _lengths[_j] = ((_length : GoUInt8));
            };
            {
                var __tmp__ = _newHuffmanTree(_lengths);
                if (_huffmanTrees != null) _huffmanTrees[_i] = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                _err = {
                    final __self__ = new stdgo.Error_wrapper(__tmp__._1);
                    __self__;
                };
            };
            if (_err != null) {
                return _err;
            };
        };
        var _selectorIndex:GoInt = ((1 : GoInt));
        if ((_treeIndexes != null ? _treeIndexes.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return {
                final __self__ = new StructuralError_wrapper(((((("no tree selectors given" : GoString))) : StructuralError)));
                __self__.error = #if !macro function():GoString return ((((("no tree selectors given" : GoString))) : StructuralError)).error() #else null #end;
                __self__;
            };
        };
        if ((((_treeIndexes != null ? _treeIndexes[((0 : GoInt))] : ((0 : GoUInt8))) : GoInt)) >= (_huffmanTrees != null ? _huffmanTrees.length : ((0 : GoInt)))) {
            return {
                final __self__ = new StructuralError_wrapper(((((("tree selector out of range" : GoString))) : StructuralError)));
                __self__.error = #if !macro function():GoString return ((((("tree selector out of range" : GoString))) : StructuralError)).error() #else null #end;
                __self__;
            };
        };
        var _currentHuffmanTree:T_huffmanTree = ((_huffmanTrees != null ? _huffmanTrees[(_treeIndexes != null ? _treeIndexes[((0 : GoInt))] : ((0 : GoUInt8)))] : new T_huffmanTree()) == null ? null : (_huffmanTrees != null ? _huffmanTrees[(_treeIndexes != null ? _treeIndexes[((0 : GoInt))] : ((0 : GoUInt8)))] : new T_huffmanTree()).__copy__());
        var _bufIndex:GoInt = ((0 : GoInt));
        var _repeat:GoInt = ((0 : GoInt));
        var _repeatPower:GoInt = ((0 : GoInt));
        for (_i => _ in _bz2._c) {
            if (_bz2._c != null) _bz2._c[_i] = ((0 : GoUInt));
        };
        var _decoded:GoInt = ((0 : GoInt));
        while (true) {
            if (_decoded == ((50 : GoInt))) {
                if (_selectorIndex >= _numSelectors) {
                    return {
                        final __self__ = new StructuralError_wrapper(((((("insufficient selector indices for number of symbols" : GoString))) : StructuralError)));
                        __self__.error = #if !macro function():GoString return ((((("insufficient selector indices for number of symbols" : GoString))) : StructuralError)).error() #else null #end;
                        __self__;
                    };
                };
                if ((((_treeIndexes != null ? _treeIndexes[_selectorIndex] : ((0 : GoUInt8))) : GoInt)) >= (_huffmanTrees != null ? _huffmanTrees.length : ((0 : GoInt)))) {
                    return {
                        final __self__ = new StructuralError_wrapper(((((("tree selector out of range" : GoString))) : StructuralError)));
                        __self__.error = #if !macro function():GoString return ((((("tree selector out of range" : GoString))) : StructuralError)).error() #else null #end;
                        __self__;
                    };
                };
                _currentHuffmanTree = ((_huffmanTrees != null ? _huffmanTrees[(_treeIndexes != null ? _treeIndexes[_selectorIndex] : ((0 : GoUInt8)))] : new T_huffmanTree()) == null ? null : (_huffmanTrees != null ? _huffmanTrees[(_treeIndexes != null ? _treeIndexes[_selectorIndex] : ((0 : GoUInt8)))] : new T_huffmanTree()).__copy__());
                _selectorIndex++;
                _decoded = ((0 : GoInt));
            };
            var _v:GoUInt16 = _currentHuffmanTree.decode(_br);
            _decoded++;
            if (_v < ((2 : GoUInt16))) {
                if (_repeat == ((0 : GoInt))) {
                    _repeatPower = ((1 : GoInt));
                };
                _repeat = _repeat + (_repeatPower << _v);
                _repeatPower = _repeatPower << (((1 : GoUnTypedInt)));
                if (_repeat > ((2097152 : GoInt))) {
                    return {
                        final __self__ = new StructuralError_wrapper(((((("repeat count too large" : GoString))) : StructuralError)));
                        __self__.error = #if !macro function():GoString return ((((("repeat count too large" : GoString))) : StructuralError)).error() #else null #end;
                        __self__;
                    };
                };
                continue;
            };
            if (_repeat > ((0 : GoInt))) {
                if (_repeat > (_bz2._blockSize - _bufIndex)) {
                    return {
                        final __self__ = new StructuralError_wrapper(((((("repeats past end of block" : GoString))) : StructuralError)));
                        __self__.error = #if !macro function():GoString return ((((("repeats past end of block" : GoString))) : StructuralError)).error() #else null #end;
                        __self__;
                    };
                };
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _repeat, _i++, {
                        var _b:GoUInt8 = _mtf.first();
                        if (_bz2._tt != null) _bz2._tt[_bufIndex] = ((_b : GoUInt32));
                        if (_bz2._c != null) _bz2._c[_b]++;
                        _bufIndex++;
                    });
                };
                _repeat = ((0 : GoInt));
            };
            if (((_v : GoInt)) == (_numSymbols - ((1 : GoInt)))) {
                break;
            };
            var _b:GoUInt8 = _mtf.decode((((_v - ((1 : GoUInt16))) : GoInt)));
            if (_bufIndex >= _bz2._blockSize) {
                return {
                    final __self__ = new StructuralError_wrapper(((((("data exceeds block size" : GoString))) : StructuralError)));
                    __self__.error = #if !macro function():GoString return ((((("data exceeds block size" : GoString))) : StructuralError)).error() #else null #end;
                    __self__;
                };
            };
            if (_bz2._tt != null) _bz2._tt[_bufIndex] = ((_b : GoUInt32));
            if (_bz2._c != null) _bz2._c[_b]++;
            _bufIndex++;
        };
        if (_origPtr >= ((_bufIndex : GoUInt))) {
            return {
                final __self__ = new StructuralError_wrapper(((((("origPtr out of bounds" : GoString))) : StructuralError)));
                __self__.error = #if !macro function():GoString return ((((("origPtr out of bounds" : GoString))) : StructuralError)).error() #else null #end;
                __self__;
            };
        };
        _bz2._preRLE = ((_bz2._tt.__slice__(0, _bufIndex) : Slice<GoUInt32>));
        _bz2._preRLEUsed = ((0 : GoInt));
        _bz2._tPos = _inverseBWT(_bz2._preRLE, _origPtr, ((_bz2._c.__slice__(0) : Slice<GoUInt>)));
        _bz2._lastByte = ((-1 : GoInt));
        _bz2._byteRepeats = ((0 : GoUInt));
        _bz2._repeats = ((0 : GoUInt));
        return ((null : stdgo.Error));
    }
    @:keep
    public static function _read( _bz2:T_reader, _buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        while (true) {
            var _n:GoInt = _bz2._readFromBlock(_buf);
            if ((_n > ((0 : GoInt))) || ((_buf != null ? _buf.length : ((0 : GoInt))) == ((0 : GoInt)))) {
                _bz2._blockCRC = _updateCRC(_bz2._blockCRC, ((_buf.__slice__(0, _n) : Slice<GoUInt8>)));
                return { _0 : _n, _1 : ((null : stdgo.Error)) };
            };
            if (_bz2._blockCRC != _bz2._wantBlockCRC) {
                _bz2._br._err = {
                    final __self__ = new StructuralError_wrapper(((((("block checksum mismatch" : GoString))) : StructuralError)));
                    __self__.error = #if !macro function():GoString return ((((("block checksum mismatch" : GoString))) : StructuralError)).error() #else null #end;
                    __self__;
                };
                return { _0 : ((0 : GoInt)), _1 : _bz2._br._err };
            };
            var _br = _bz2._br;
            if (_br.readBits64(((48 : GoUInt))) == (("54156738319193" : GoUInt64))) {
                var _err:stdgo.Error = _bz2._readBlock();
                if (_err != null) {
                    return { _0 : ((0 : GoInt)), _1 : _err };
                };
            } else if (_br.readBits64(((48 : GoUInt))) == (("25779555029136" : GoUInt64))) {
                var _wantFileCRC:GoUInt32 = ((_br.readBits64(((32 : GoUInt))) : GoUInt32));
                if (_br._err != null) {
                    return { _0 : ((0 : GoInt)), _1 : _br._err };
                };
                if (_bz2._fileCRC != _wantFileCRC) {
                    _br._err = {
                        final __self__ = new StructuralError_wrapper(((((("file checksum mismatch" : GoString))) : StructuralError)));
                        __self__.error = #if !macro function():GoString return ((((("file checksum mismatch" : GoString))) : StructuralError)).error() #else null #end;
                        __self__;
                    };
                    return { _0 : ((0 : GoInt)), _1 : _br._err };
                };
                if ((_br._bits % ((8 : GoUInt))) != ((0 : GoUInt))) {
                    _br.readBits(_br._bits % ((8 : GoUInt)));
                };
                var __tmp__ = _br._r.readByte(), _b:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == stdgo.io.Io.eof) {
                    _br._err = stdgo.io.Io.eof;
                    _bz2._eof = true;
                    return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
                };
                if (_err != null) {
                    _br._err = _err;
                    return { _0 : ((0 : GoInt)), _1 : _err };
                };
                var __tmp__ = _br._r.readByte(), _z:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (_err == stdgo.io.Io.eof) {
                        _err = stdgo.io.Io.errUnexpectedEOF;
                    };
                    _br._err = _err;
                    return { _0 : ((0 : GoInt)), _1 : _err };
                };
                if ((_b != ((((("B" : GoString))).code : GoRune))) || (_z != ((((("Z" : GoString))).code : GoRune)))) {
                    return { _0 : ((0 : GoInt)), _1 : {
                        final __self__ = new StructuralError_wrapper(((((("bad magic value in continuation file" : GoString))) : StructuralError)));
                        __self__.error = #if !macro function():GoString return ((((("bad magic value in continuation file" : GoString))) : StructuralError)).error() #else null #end;
                        __self__;
                    } };
                };
                {
                    var _err:stdgo.Error = _bz2._setup(false);
                    if (_err != null) {
                        return { _0 : ((0 : GoInt)), _1 : _err };
                    };
                };
            };
        };
    }
    @:keep
    public static function _readFromBlock( _bz2:T_reader, _buf:Slice<GoByte>):GoInt {
        var _n:GoInt = ((0 : GoInt));
        while (((_bz2._repeats > ((0 : GoUInt))) || (_bz2._preRLEUsed < (_bz2._preRLE != null ? _bz2._preRLE.length : ((0 : GoInt))))) && (_n < (_buf != null ? _buf.length : ((0 : GoInt))))) {
            if (_bz2._repeats > ((0 : GoUInt))) {
                if (_buf != null) _buf[_n] = ((_bz2._lastByte : GoByte));
                _n++;
                _bz2._repeats--;
                if (_bz2._repeats == ((0 : GoUInt))) {
                    _bz2._lastByte = ((-1 : GoInt));
                };
                continue;
            };
            _bz2._tPos = (_bz2._preRLE != null ? _bz2._preRLE[_bz2._tPos] : ((0 : GoUInt32)));
            var _b:GoUInt8 = ((_bz2._tPos : GoByte));
            _bz2._tPos = _bz2._tPos >> (((8 : GoUnTypedInt)));
            _bz2._preRLEUsed++;
            if (_bz2._byteRepeats == ((3 : GoUInt))) {
                _bz2._repeats = ((_b : GoUInt));
                _bz2._byteRepeats = ((0 : GoUInt));
                continue;
            };
            if (_bz2._lastByte == ((_b : GoInt))) {
                _bz2._byteRepeats++;
            } else {
                _bz2._byteRepeats = ((0 : GoUInt));
            };
            _bz2._lastByte = ((_b : GoInt));
            if (_buf != null) _buf[_n] = _b;
            _n++;
        };
        return _n;
    }
    @:keep
    public static function read( _bz2:T_reader, _buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_bz2._eof) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        if (!_bz2._setupDone) {
            _err = _bz2._setup(true);
            var _brErr:stdgo.Error = _bz2._br.err();
            if (_brErr != null) {
                _err = _brErr;
            };
            if (_err != null) {
                return { _0 : ((0 : GoInt)), _1 : _err };
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
    public static function _setup( _bz2:T_reader, _needMagic:Bool):Error {
        var _br = _bz2._br;
        if (_needMagic) {
            var _magic:GoInt = _br.readBits(((16 : GoUInt)));
            if (_magic != ((16986 : GoInt))) {
                return {
                    final __self__ = new StructuralError_wrapper(((((("bad magic value" : GoString))) : StructuralError)));
                    __self__.error = #if !macro function():GoString return ((((("bad magic value" : GoString))) : StructuralError)).error() #else null #end;
                    __self__;
                };
            };
        };
        var _t:GoInt = _br.readBits(((8 : GoUInt)));
        if (_t != ((((("h" : GoString))).code : GoRune))) {
            return {
                final __self__ = new StructuralError_wrapper(((((("non-Huffman entropy encoding" : GoString))) : StructuralError)));
                __self__.error = #if !macro function():GoString return ((((("non-Huffman entropy encoding" : GoString))) : StructuralError)).error() #else null #end;
                __self__;
            };
        };
        var _level:GoInt = _br.readBits(((8 : GoUInt)));
        if ((_level < ((((("1" : GoString))).code : GoRune))) || (_level > ((((("9" : GoString))).code : GoRune)))) {
            return {
                final __self__ = new StructuralError_wrapper(((((("invalid compression level" : GoString))) : StructuralError)));
                __self__.error = #if !macro function():GoString return ((((("invalid compression level" : GoString))) : StructuralError)).error() #else null #end;
                __self__;
            };
        };
        _bz2._fileCRC = ((0 : GoUInt32));
        _bz2._blockSize = ((100000 : GoInt)) * (_level - ((((("0" : GoString))).code : GoRune)));
        if (_bz2._blockSize > (_bz2._tt != null ? _bz2._tt.length : ((0 : GoInt)))) {
            _bz2._tt = new Slice<GoUInt32>(...[for (i in 0 ... ((_bz2._blockSize : GoInt)).toBasic()) ((0 : GoUInt32))]);
        };
        return ((null : stdgo.Error));
    }
}
class T_reader_wrapper {
    /**
        // readBlock reads a bzip2 block. The magic number should already have been consumed.
    **/
    @:keep
    public var _readBlock : () -> Error = null;
    @:keep
    public var _read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    @:keep
    public var _readFromBlock : Slice<GoByte> -> GoInt = null;
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // setup parses the bzip2 header.
    **/
    @:keep
    public var _setup : Bool -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_reader;
}
@:keep class T_huffmanTree_static_extension {
    /**
        // Decode reads bits from the given bitReader and navigates the tree until a
        // symbol is found.
    **/
    @:keep
    public static function decode( _t:T_huffmanTree, _br:T_bitReader):GoUInt16 {
        var _v:GoUInt16 = ((0 : GoUInt16));
        var _nodeIndex:GoUInt16 = ((((0 : GoUInt16)) : GoUInt16));
        while (true) {
            var _node = (_t._nodes != null ? _t._nodes[_nodeIndex] : new T_huffmanNode());
            var _bit:GoUInt16 = ((0 : GoUInt16));
            if (_br._bits > ((0 : GoUInt))) {
                _br._bits--;
                _bit = (((_br._n >> (_br._bits & ((63 : GoUInt)))) : GoUInt16)) & ((1 : GoUInt16));
            } else {
                _bit = ((_br.readBits(((1 : GoUInt))) : GoUInt16));
            };
            var _l:GoUInt16 = _node._left, _r:GoUInt16 = _node._right;
            if (_bit == ((1 : GoUInt16))) {
                _nodeIndex = _l;
            } else {
                _nodeIndex = _r;
            };
            if (_nodeIndex == ((65535 : GoUInt16))) {
                var _l:GoUInt16 = _node._leftValue, _r:GoUInt16 = _node._rightValue;
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
class T_huffmanTree_wrapper {
    /**
        // Decode reads bits from the given bitReader and navigates the tree until a
        // symbol is found.
    **/
    @:keep
    public var decode : T_bitReader -> GoUInt16 = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_huffmanTree;
}
@:keep class StructuralError_static_extension {
    @:keep
    public static function error( _s:StructuralError):GoString {
        return ((("bzip2 data invalid: " : GoString))) + ((_s : GoString));
    }
}
class StructuralError_wrapper {
    @:keep
    public var error : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : StructuralError;
}
@:keep class T_moveToFrontDecoder_static_extension {
    /**
        // First returns the symbol at the front of the list.
    **/
    @:keep
    public static function first( _m:T_moveToFrontDecoder):GoByte {
        return (_m != null ? _m[((0 : GoInt))] : ((0 : GoUInt8)));
    }
    @:keep
    public static function decode( _m:T_moveToFrontDecoder, _n:GoInt):GoByte {
        var _b:GoByte = ((0 : GoUInt8));
        _b = (_m != null ? _m[_n] : ((0 : GoUInt8)));
        Go.copySlice(((_m.__slice__(((1 : GoInt))) : T_moveToFrontDecoder)), ((_m.__slice__(0, _n) : T_moveToFrontDecoder)));
        if (_m != null) _m[((0 : GoInt))] = _b;
        return _b;
    }
}
class T_moveToFrontDecoder_wrapper {
    /**
        // First returns the symbol at the front of the list.
    **/
    @:keep
    public var first : () -> GoByte = null;
    @:keep
    public var decode : GoInt -> GoByte = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_moveToFrontDecoder;
}
