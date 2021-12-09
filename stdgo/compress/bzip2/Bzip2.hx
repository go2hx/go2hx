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

@:structInit class T_bitReader {
	public function err():Error {
		var _br = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _br.value._err;
	}

	public function readBit():Bool {
		var _br = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = _br.value.readBits(((1 : GoUInt)));
		return _n != ((0 : GoInt));
	}

	public function readBits(_bits:GoUInt):GoInt {
		var _br = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt));
		var _n64:GoUInt64 = _br.value.readBits64(_bits);
		return ((_n64 : GoInt));
	}

	public function readBits64(_bits:GoUInt):GoUInt64 {
		var _br = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoUInt64 = ((0 : GoUInt64));
		while (_bits > _br.value._bits) {
			var __tmp__ = _br.value._r.readByte(),
				_b:GoUInt8 = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
				_err = stdgo.io.Io.errUnexpectedEOF;
			};
			if (_err != null) {
				_br.value._err = _err;
				return ((0 : GoUInt64));
			};
			_br.value._n = (_br.value._n << (((8 : GoUnTypedInt))));
			_br.value._n = _br.value._n | (((_b : GoUInt64)));
			_br.value._bits = _br.value._bits + (((8 : GoUInt)));
		};
		_n = ((_br.value._n >> (_br.value._bits - _bits))) & (((((1 : GoUInt64)) << _bits)) - ((1 : GoUInt64)));
		_br.value._bits = _br.value._bits - (_bits);
		return _n;
	}

	public var _r:stdgo.io.Io.ByteReader = ((null : stdgo.io.Io.ByteReader));
	public var _n:GoUInt64 = ((0 : GoUInt64));
	public var _bits:GoUInt = ((0 : GoUInt));
	public var _err:stdgo.Error = ((null : stdgo.Error));

	public function new(?_r:stdgo.io.Io.ByteReader, ?_n:GoUInt64, ?_bits:GoUInt, ?_err:stdgo.Error)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_r) + " " + Go.string(_n) + " " + Go.string(_bits) + " " + Go.string(_err) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_bitReader(_r, _n, _bits, _err);
	}

	public function __set__(__tmp__) {
		this._r = __tmp__._r;
		this._n = __tmp__._n;
		this._bits = __tmp__._bits;
		this._err = __tmp__._err;
		return this;
	}
}

@:named class StructuralError {
	public function error():GoString {
		var _s = this.__copy__();
		return (("bzip2 data invalid: " : GoString)) + _s.__t__;
	}

	public var __t__:GoString;

	public function new(?t:GoString) {
		__t__ = t == null ? "" : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new StructuralError(__t__);
}

@:structInit class T_reader {
	public function _readBlock():Error {
		var _bz2 = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _err:Error = ((null : stdgo.Error));
		var _br:Pointer<T_bitReader> = Go.pointer(_bz2.value._br);
		_bz2.value._wantBlockCRC = ((_br.value.readBits64(((32 : GoUInt))) : GoUInt32));
		_bz2.value._blockCRC = ((0 : GoUInt32));
		_bz2.value._fileCRC = ((_bz2.value._fileCRC << ((1 : GoUnTypedInt))) | (_bz2.value._fileCRC >> ((31 : GoUnTypedInt)))) ^ _bz2.value._wantBlockCRC;
		var _randomized:GoInt = _br.value.readBits(((1 : GoUInt)));
		if (_randomized != ((0 : GoInt))) {
			return new StructuralError("deprecated randomized files");
		};
		var _origPtr:GoUInt = ((_br.value.readBits(((24 : GoUInt))) : GoUInt));
		var _symbolRangeUsedBitmap:GoInt = _br.value.readBits(((16 : GoUInt)));
		var _symbolPresent:Slice<Bool> = new Slice<Bool>(...[for (i in 0...((((256 : GoInt)) : GoInt)).toBasic()) false]);
		var _numSymbols:GoInt = ((0 : GoInt));
		{
			var _symRange:GoUInt = ((((0 : GoUInt)) : GoUInt));
			Go.cfor(_symRange < ((16 : GoUInt)), _symRange++, {
				if (_symbolRangeUsedBitmap & ((((1 : GoInt)) << (((15 : GoUInt)) - _symRange))) != ((0 : GoInt))) {
					var _bits:GoInt = _br.value.readBits(((16 : GoUInt)));
					{
						var _symbol:GoUInt = ((((0 : GoUInt)) : GoUInt));
						Go.cfor(_symbol < ((16 : GoUInt)), _symbol++, {
							if (_bits & ((((1 : GoInt)) << (((15 : GoUInt)) - _symbol))) != ((0 : GoInt))) {
								_symbolPresent[((16 : GoUInt)) * _symRange + _symbol] = true;
								_numSymbols++;
							};
						});
					};
				};
			});
		};
		if (_numSymbols == ((0 : GoInt))) {
			return new StructuralError("no symbols in input");
		};
		var _numHuffmanTrees:GoInt = _br.value.readBits(((3 : GoUInt)));
		if (_numHuffmanTrees < ((2 : GoInt)) || _numHuffmanTrees > ((6 : GoInt))) {
			return new StructuralError("invalid number of Huffman trees");
		};
		var _numSelectors:GoInt = _br.value.readBits(((15 : GoUInt)));
		var _treeIndexes:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_numSelectors : GoInt)).toBasic()) ((0 : GoUInt8))]);
		var _mtfTreeDecoder:T_moveToFrontDecoder = _newMTFDecoderWithRange(_numHuffmanTrees).__copy__();
		{
			var _i;
			for (_obj in _treeIndexes.keyValueIterator()) {
				_i = _obj.key;
				var _c:GoInt = ((0 : GoInt));
				while (true) {
					var _inc:GoInt = _br.value.readBits(((1 : GoUInt)));
					if (_inc == ((0 : GoInt))) {
						break;
					};
					_c++;
				};
				if (_c >= _numHuffmanTrees) {
					return new StructuralError("tree index too large");
				};
				_treeIndexes[_i] = _mtfTreeDecoder.decode(_c);
			};
		};
		var _symbols:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_numSymbols : GoInt)).toBasic()) ((0 : GoUInt8))]);
		var _nextSymbol:GoInt = ((0 : GoInt));
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ((256 : GoInt)), _i++, {
				if (_symbolPresent[_i]) {
					_symbols[_nextSymbol] = ((_i : GoByte));
					_nextSymbol++;
				};
			});
		};
		var _mtf:T_moveToFrontDecoder = _newMTFDecoder(_symbols).__copy__();
		_numSymbols = _numSymbols + (((2 : GoInt)));
		var _huffmanTrees:Slice<T_huffmanTree> = new Slice<T_huffmanTree>(...[for (i in 0...((_numHuffmanTrees : GoInt)).toBasic()) new T_huffmanTree()]);
		var _lengths:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_numSymbols : GoInt)).toBasic()) ((0 : GoUInt8))]);
		{
			var _i;
			for (_obj in _huffmanTrees.keyValueIterator()) {
				_i = _obj.key;
				var _length:GoInt = _br.value.readBits(((5 : GoUInt)));
				{
					var _j;
					for (_obj in _lengths.keyValueIterator()) {
						_j = _obj.key;
						while (true) {
							if (_length < ((1 : GoInt)) || _length > ((20 : GoInt))) {
								return new StructuralError("Huffman length out of range");
							};
							if (!_br.value.readBit()) {
								break;
							};
							if (_br.value.readBit()) {
								_length--;
							} else {
								_length++;
							};
						};
						_lengths[_j] = ((_length : GoUInt8));
					};
				};
				{
					var __tmp__ = _newHuffmanTree(_lengths);
					_huffmanTrees[_i] = __tmp__._0.__copy__();
					_err = __tmp__._1;
				};
				if (_err != null) {
					return _err;
				};
			};
		};
		var _selectorIndex:GoInt = ((1 : GoInt));
		if (_treeIndexes.length == ((0 : GoInt))) {
			return new StructuralError("no tree selectors given");
		};
		if (((_treeIndexes[((0 : GoInt))] : GoInt)) >= _huffmanTrees.length) {
			return new StructuralError("tree selector out of range");
		};
		var _currentHuffmanTree:T_huffmanTree = _huffmanTrees[_treeIndexes[((0 : GoInt))]].__copy__();
		var _bufIndex:GoInt = ((0 : GoInt));
		var _repeat:GoInt = ((0 : GoInt));
		var _repeatPower:GoInt = ((0 : GoInt));
		{
			var _i;
			for (_obj in _bz2.value._c.keyValueIterator()) {
				_i = _obj.key;
				_bz2.value._c[_i] = ((0 : GoUInt));
			};
		};
		var _decoded:GoInt = ((0 : GoInt));
		while (true) {
			if (_decoded == ((50 : GoInt))) {
				if (_selectorIndex >= _numSelectors) {
					return new StructuralError("insufficient selector indices for number of symbols");
				};
				if (((_treeIndexes[_selectorIndex] : GoInt)) >= _huffmanTrees.length) {
					return new StructuralError("tree selector out of range");
				};
				_currentHuffmanTree = _huffmanTrees[_treeIndexes[_selectorIndex]].__copy__();
				_selectorIndex++;
				_decoded = ((0 : GoInt));
			};
			var _v:GoUInt16 = _currentHuffmanTree.decode(_br);
			_decoded++;
			if (_v < ((2 : GoUInt16))) {
				if (_repeat == ((0 : GoInt))) {
					_repeatPower = ((1 : GoInt));
				};
				_repeat = _repeat + ((_repeatPower << _v));
				_repeatPower = (_repeatPower << (((1 : GoUnTypedInt))));
				if (_repeat > ((2 : GoUnTypedInt)) * ((1024 : GoUnTypedInt)) * ((1024 : GoUnTypedInt))) {
					return new StructuralError("repeat count too large");
				};
				continue;
			};
			if (_repeat > ((0 : GoInt))) {
				if (_repeat > _bz2.value._blockSize - _bufIndex) {
					return new StructuralError("repeats past end of block");
				};
				{
					var _i:GoInt = ((0 : GoInt));
					Go.cfor(_i < _repeat, _i++, {
						var _b:GoUInt8 = _mtf.first();
						_bz2.value._tt[_bufIndex] = ((_b : GoUInt32));
						_bz2.value._c[_b]++;
						_bufIndex++;
					});
				};
				_repeat = ((0 : GoInt));
			};
			if (((_v : GoInt)) == _numSymbols - ((1 : GoInt))) {
				break;
			};
			var _b:GoUInt8 = _mtf.decode((((_v - ((1 : GoUInt16))) : GoInt)));
			if (_bufIndex >= _bz2.value._blockSize) {
				return new StructuralError("data exceeds block size");
			};
			_bz2.value._tt[_bufIndex] = ((_b : GoUInt32));
			_bz2.value._c[_b]++;
			_bufIndex++;
		};
		if (_origPtr >= ((_bufIndex : GoUInt))) {
			return new StructuralError("origPtr out of bounds");
		};
		_bz2.value._preRLE = _bz2.value._tt.__slice__(0, _bufIndex);
		_bz2.value._preRLEUsed = ((0 : GoInt));
		_bz2.value._tPos = _inverseBWT(_bz2.value._preRLE, _origPtr, _bz2.value._c.__slice__(0));
		_bz2.value._lastByte = -((1 : GoUnTypedInt));
		_bz2.value._byteRepeats = ((0 : GoUInt));
		_bz2.value._repeats = ((0 : GoUInt));
		return ((null : stdgo.Error));
	}

	public function _read(_buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _bz2 = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		while (true) {
			var _n:GoInt = _bz2.value._readFromBlock(_buf);
			if (_n > ((0 : GoInt)) || _buf.length == ((0 : GoInt))) {
				_bz2.value._blockCRC = _updateCRC(_bz2.value._blockCRC, _buf.__slice__(0, _n));
				return {_0: _n, _1: ((null : stdgo.Error))};
			};
			if (_bz2.value._blockCRC != _bz2.value._wantBlockCRC) {
				_bz2.value._br._err = new StructuralError("block checksum mismatch");
				return {_0: ((0 : GoInt)), _1: _bz2.value._br._err};
			};
			var _br:Pointer<T_bitReader> = Go.pointer(_bz2.value._br);
			if (_br.value.readBits64(((48 : GoUInt))) == _bzip2BlockMagic) {
				var _err:stdgo.Error = _bz2.value._readBlock();
				if (_err != null) {
					return {_0: ((0 : GoInt)), _1: _err};
				};
			} else if (_br.value.readBits64(((48 : GoUInt))) == _bzip2FinalMagic) {
				var _wantFileCRC:GoUInt32 = ((_br.value.readBits64(((32 : GoUInt))) : GoUInt32));
				if (_br.value._err != null) {
					return {_0: ((0 : GoInt)), _1: _br.value._err};
				};
				if (_bz2.value._fileCRC != _wantFileCRC) {
					_br.value._err = new StructuralError("file checksum mismatch");
					return {_0: ((0 : GoInt)), _1: _br.value._err};
				};
				if (_br.value._bits % ((8 : GoUInt)) != ((0 : GoUInt))) {
					_br.value.readBits(_br.value._bits % ((8 : GoUInt)));
				};
				var __tmp__ = _br.value._r.readByte(),
					_b:GoUInt8 = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
					_br.value._err = stdgo.io.Io.eof;
					_bz2.value._eof = true;
					return {_0: ((0 : GoInt)), _1: stdgo.io.Io.eof};
				};
				if (_err != null) {
					_br.value._err = _err;
					return {_0: ((0 : GoInt)), _1: _err};
				};
				var __tmp__ = _br.value._r.readByte(),
					_z:GoUInt8 = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err != null) {
					if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
						_err = stdgo.io.Io.errUnexpectedEOF;
					};
					_br.value._err = _err;
					return {_0: ((0 : GoInt)), _1: _err};
				};
				if (_b != (("B".code : GoRune)) || _z != (("Z".code : GoRune))) {
					return {_0: ((0 : GoInt)), _1: new StructuralError("bad magic value in continuation file")};
				};
				{
					var _err:stdgo.Error = _bz2.value._setup(false);
					if (_err != null) {
						return {_0: ((0 : GoInt)), _1: _err};
					};
				};
			};
		};
	}

	public function _readFromBlock(_buf:Slice<GoByte>):GoInt {
		var _bz2 = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt));
		while ((_bz2.value._repeats > ((0 : GoUInt)) || _bz2.value._preRLEUsed < _bz2.value._preRLE.length) && _n < _buf.length) {
			if (_bz2.value._repeats > ((0 : GoUInt))) {
				_buf[_n] = ((_bz2.value._lastByte : GoByte));
				_n++;
				_bz2.value._repeats--;
				if (_bz2.value._repeats == ((0 : GoUInt))) {
					_bz2.value._lastByte = -((1 : GoUnTypedInt));
				};
				continue;
			};
			_bz2.value._tPos = _bz2.value._preRLE[_bz2.value._tPos];
			var _b:GoUInt8 = ((_bz2.value._tPos : GoByte));
			_bz2.value._tPos = (_bz2.value._tPos >> (((8 : GoUnTypedInt))));
			_bz2.value._preRLEUsed++;
			if (_bz2.value._byteRepeats == ((3 : GoUInt))) {
				_bz2.value._repeats = ((_b : GoUInt));
				_bz2.value._byteRepeats = ((0 : GoUInt));
				continue;
			};
			if (_bz2.value._lastByte == ((_b : GoInt))) {
				_bz2.value._byteRepeats++;
			} else {
				_bz2.value._byteRepeats = ((0 : GoUInt));
			};
			_bz2.value._lastByte = ((_b : GoInt));
			_buf[_n] = _b;
			_n++;
		};
		return _n;
	}

	public function read(_buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _bz2 = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		if (_bz2.value._eof) {
			return {_0: ((0 : GoInt)), _1: stdgo.io.Io.eof};
		};
		if (!_bz2.value._setupDone) {
			_err = _bz2.value._setup(true);
			var _brErr:stdgo.Error = _bz2.value._br.err();
			if (_brErr != null) {
				_err = _brErr;
			};
			if (_err != null) {
				return {_0: ((0 : GoInt)), _1: _err};
			};
			_bz2.value._setupDone = true;
		};
		{
			var __tmp__ = _bz2.value._read(_buf);
			_n = __tmp__._0;
			_err = __tmp__._1;
		};
		var _brErr:stdgo.Error = _bz2.value._br.err();
		if (_brErr != null) {
			_err = _brErr;
		};
		return {_0: _n, _1: _err};
	}

	public function _setup(_needMagic:Bool):Error {
		var _bz2 = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _br:Pointer<T_bitReader> = Go.pointer(_bz2.value._br);
		if (_needMagic) {
			var _magic:GoInt = _br.value.readBits(((16 : GoUInt)));
			if (_magic != _bzip2FileMagic) {
				return new StructuralError("bad magic value");
			};
		};
		var _t:GoInt = _br.value.readBits(((8 : GoUInt)));
		if (_t != (("h".code : GoRune))) {
			return new StructuralError("non-Huffman entropy encoding");
		};
		var _level:GoInt = _br.value.readBits(((8 : GoUInt)));
		if (_level < (("1".code : GoRune)) || _level > (("9".code : GoRune))) {
			return new StructuralError("invalid compression level");
		};
		_bz2.value._fileCRC = ((0 : GoUInt32));
		_bz2.value._blockSize = ((100 : GoUnTypedInt)) * ((1000 : GoUnTypedInt)) * (_level - (("0".code : GoRune)));
		if (_bz2.value._blockSize > _bz2.value._tt.length) {
			_bz2.value._tt = new Slice<GoUInt32>(...[for (i in 0...((_bz2.value._blockSize : GoInt)).toBasic()) ((0 : GoUInt32))]);
		};
		return ((null : stdgo.Error));
	}

	public var _br:T_bitReader = new T_bitReader();
	public var _fileCRC:GoUInt32 = ((0 : GoUInt32));
	public var _blockCRC:GoUInt32 = ((0 : GoUInt32));
	public var _wantBlockCRC:GoUInt32 = ((0 : GoUInt32));
	public var _setupDone:Bool = false;
	public var _blockSize:GoInt = ((0 : GoInt));
	public var _eof:Bool = false;
	public var _c:GoArray<GoUInt> = new GoArray<GoUInt>(...[for (i in 0...256) ((0 : GoUInt))]);
	public var _tt:Slice<GoUInt32> = new Slice<GoUInt32>().nil();
	public var _tPos:GoUInt32 = ((0 : GoUInt32));
	public var _preRLE:Slice<GoUInt32> = new Slice<GoUInt32>().nil();
	public var _preRLEUsed:GoInt = ((0 : GoInt));
	public var _lastByte:GoInt = ((0 : GoInt));
	public var _byteRepeats:GoUInt = ((0 : GoUInt));
	public var _repeats:GoUInt = ((0 : GoUInt));

	public function new(?_br:T_bitReader, ?_fileCRC:GoUInt32, ?_blockCRC:GoUInt32, ?_wantBlockCRC:GoUInt32, ?_setupDone:Bool, ?_blockSize:GoInt, ?_eof:Bool,
			?_c:GoArray<GoUInt>, ?_tt:Slice<GoUInt32>, ?_tPos:GoUInt32, ?_preRLE:Slice<GoUInt32>, ?_preRLEUsed:GoInt, ?_lastByte:GoInt, ?_byteRepeats:GoUInt,
			?_repeats:GoUInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_br) + " " + Go.string(_fileCRC) + " " + Go.string(_blockCRC) + " " + Go.string(_wantBlockCRC) + " " + Go.string(_setupDone)
			+ " " + Go.string(_blockSize) + " " + Go.string(_eof) + " " + Go.string(_c) + " " + Go.string(_tt) + " " + Go.string(_tPos) + " "
			+ Go.string(_preRLE) + " " + Go.string(_preRLEUsed) + " " + Go.string(_lastByte) + " " + Go.string(_byteRepeats) + " " + Go.string(_repeats) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_reader(_br, _fileCRC, _blockCRC, _wantBlockCRC, _setupDone, _blockSize, _eof, _c, _tt, _tPos, _preRLE, _preRLEUsed, _lastByte,
			_byteRepeats, _repeats);
	}

	public function __set__(__tmp__) {
		this._br = __tmp__._br;
		this._fileCRC = __tmp__._fileCRC;
		this._blockCRC = __tmp__._blockCRC;
		this._wantBlockCRC = __tmp__._wantBlockCRC;
		this._setupDone = __tmp__._setupDone;
		this._blockSize = __tmp__._blockSize;
		this._eof = __tmp__._eof;
		this._c = __tmp__._c;
		this._tt = __tmp__._tt;
		this._tPos = __tmp__._tPos;
		this._preRLE = __tmp__._preRLE;
		this._preRLEUsed = __tmp__._preRLEUsed;
		this._lastByte = __tmp__._lastByte;
		this._byteRepeats = __tmp__._byteRepeats;
		this._repeats = __tmp__._repeats;
		return this;
	}
}

@:structInit class T_huffmanTree {
	public function decode(_br:Pointer<T_bitReader>):GoUInt16 {
		var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _v:GoUInt16 = ((0 : GoUInt16));
		var _nodeIndex:GoUInt16 = ((((0 : GoUInt16)) : GoUInt16));
		while (true) {
			var _node:Pointer<T_huffmanNode> = Go.pointer(_t.value._nodes[_nodeIndex]);
			var _bit:GoUInt16 = ((0 : GoUInt16));
			if (_br.value._bits > ((0 : GoUInt))) {
				_br.value._bits--;
				_bit = (((_br.value._n >> (_br.value._bits & ((63 : GoUInt)))) : GoUInt16)) & ((1 : GoUInt16));
			} else {
				_bit = ((_br.value.readBits(((1 : GoUInt))) : GoUInt16));
			};
			var _l:GoUInt16 = _node.value._left,
				_r:GoUInt16 = _node.value._right;
			if (_bit == ((1 : GoUInt16))) {
				_nodeIndex = _l;
			} else {
				_nodeIndex = _r;
			};
			if (_nodeIndex == _invalidNodeValue) {
				var _l:GoUInt16 = _node.value._leftValue,
					_r:GoUInt16 = _node.value._rightValue;
				if (_bit == ((1 : GoUInt16))) {
					_v = _l;
				} else {
					_v = _r;
				};
				return _v;
			};
		};
	}

	public var _nodes:Slice<T_huffmanNode> = new Slice<T_huffmanNode>().nil();
	public var _nextNode:GoInt = ((0 : GoInt));

	public function new(?_nodes:Slice<T_huffmanNode>, ?_nextNode:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_nodes) + " " + Go.string(_nextNode) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_huffmanTree(_nodes, _nextNode);
	}

	public function __set__(__tmp__) {
		this._nodes = __tmp__._nodes;
		this._nextNode = __tmp__._nextNode;
		return this;
	}
}

@:structInit class T_huffmanNode {
	public var _left:GoUInt16 = ((0 : GoUInt16));
	public var _right:GoUInt16 = ((0 : GoUInt16));
	public var _leftValue:GoUInt16 = ((0 : GoUInt16));
	public var _rightValue:GoUInt16 = ((0 : GoUInt16));

	public function new(?_left:GoUInt16, ?_right:GoUInt16, ?_leftValue:GoUInt16, ?_rightValue:GoUInt16)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_left) + " " + Go.string(_right) + " " + Go.string(_leftValue) + " " + Go.string(_rightValue) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_huffmanNode(_left, _right, _leftValue, _rightValue);
	}

	public function __set__(__tmp__) {
		this._left = __tmp__._left;
		this._right = __tmp__._right;
		this._leftValue = __tmp__._leftValue;
		this._rightValue = __tmp__._rightValue;
		return this;
	}
}

@:structInit class T_huffmanSymbolLengthPair {
	public var _value:GoUInt16 = ((0 : GoUInt16));
	public var _length:GoUInt8 = ((0 : GoUInt8));

	public function new(?_value:GoUInt16, ?_length:GoUInt8)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_value) + " " + Go.string(_length) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_huffmanSymbolLengthPair(_value, _length);
	}

	public function __set__(__tmp__) {
		this._value = __tmp__._value;
		this._length = __tmp__._length;
		return this;
	}
}

@:structInit class T_huffmanCode {
	public var _code:GoUInt32 = ((0 : GoUInt32));
	public var _codeLen:GoUInt8 = ((0 : GoUInt8));
	public var _value:GoUInt16 = ((0 : GoUInt16));

	public function new(?_code:GoUInt32, ?_codeLen:GoUInt8, ?_value:GoUInt16)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_code) + " " + Go.string(_codeLen) + " " + Go.string(_value) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_huffmanCode(_code, _codeLen, _value);
	}

	public function __set__(__tmp__) {
		this._code = __tmp__._code;
		this._codeLen = __tmp__._codeLen;
		this._value = __tmp__._value;
		return this;
	}
}

@:named class T_moveToFrontDecoder {
	public function first():GoByte {
		var _m = this.__copy__();
		return _m.__t__[((0 : GoInt))];
	}

	public function decode(_n:GoInt):GoByte {
		var _m = this.__copy__();
		var _b:GoByte = ((0 : GoUInt8));
		_b = _m.__t__[_n];
		Go.copy(_m.__slice__(((1 : GoInt))), _m.__slice__(0, _n));
		_m.__t__[((0 : GoInt))] = _b;
		return _b;
	}

	public var __t__:Slice<GoUInt8>;

	public function new(?t:Slice<GoUInt8>) {
		__t__ = t == null ? new Slice<GoUInt8>().nil() : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_moveToFrontDecoder(__t__);

	public function __append__(args:haxe.Rest<GoUInt8>)
		return new T_moveToFrontDecoder(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new T_moveToFrontDecoder(this.__t__.__slice__(low, high));
}

final _bzip2FinalMagic:GoInt64 = (("25779555029136" : GoUnTypedInt));
final _bzip2BlockMagic:GoInt64 = (("54156738319193" : GoUnTypedInt));
final _bzip2FileMagic:GoInt64 = ((16986 : GoUnTypedInt));
final _invalidNodeValue:GoInt64 = ((65535 : GoUnTypedInt));
var _crctab:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0...256) ((0 : GoUInt32))]);

/**
	// newBitReader returns a new bitReader reading from r. If r is not
	// already an io.ByteReader, it will be converted via a bufio.Reader.
**/
function _newBitReader(_r:stdgo.io.Io.Reader):T_bitReader {
	var __tmp__ = try {
		{value: ((_r.__underlying__().value : stdgo.io.Io.ByteReader)), ok: true};
	} catch (_) {
		{value: ((null : stdgo.io.Io.ByteReader)), ok: false};
	}, _byter = __tmp__.value, _ok = __tmp__.ok;
	if (!_ok) {
		_byter = bufio.Bufio.newReader(_r).value;
	};
	return (({
		_r: _byter,
		_n: 0,
		_bits: 0,
		_err: ((null : stdgo.Error))
	} : T_bitReader)).__copy__();
}

/**
	// NewReader returns an io.Reader which decompresses bzip2 data from r.
	// If r does not also implement io.ByteReader,
	// the decompressor may read more data than necessary from r.
**/
function newReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
	var _bz2:Pointer<T_reader> = Go.pointer(new T_reader());
	_bz2.value._br = _newBitReader(_r).__copy__();
	return _bz2.value;
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
			_sum = _sum + (_c[_i]);
			_c[_i] = _sum - _c[_i];
		});
	};
	{
		var _i;
		for (_obj in _tt.keyValueIterator()) {
			_i = _obj.key;
			var _b:GoUInt32 = _tt[_i] & ((255 : GoUInt32));
			_tt[_c[_b]] = _tt[_c[_b]] | ((((_i : GoUInt32)) << ((8 : GoUnTypedInt))));
			_c[_b]++;
		};
	};
	return (_tt[_origPtr] >> ((8 : GoUnTypedInt)));
}

/**
	// updateCRC updates the crc value to incorporate the data in b.
	// The initial value is 0.
**/
function _updateCRC(_val:GoUInt32, _b:Slice<GoByte>):GoUInt32 {
	var _crc:GoUInt32 = -1 ^ _val;
	for (_v in _b) {
		_crc = _crctab[(((_crc >> ((24 : GoUnTypedInt))) : GoByte)) ^ _v] ^ ((_crc << ((8 : GoUnTypedInt))));
	};
	return -1 ^ _crc;
}

/**
	// newHuffmanTree builds a Huffman tree from a slice containing the code
	// lengths of each symbol. The maximum code length is 32 bits.
**/
function _newHuffmanTree(_lengths:Slice<GoUInt8>):{var _0:T_huffmanTree; var _1:Error;} {
	if (_lengths.length < ((2 : GoInt))) {
		throw "newHuffmanTree: too few symbols";
	};
	var _t:T_huffmanTree = new T_huffmanTree();
	var _pairs:Slice<T_huffmanSymbolLengthPair> = new Slice<T_huffmanSymbolLengthPair>(...[
		for (i in 0...((_lengths.length : GoInt)).toBasic()) new T_huffmanSymbolLengthPair()
	]);
	{
		var _i;
		var _length;
		for (_obj in _lengths.keyValueIterator()) {
			_i = _obj.key;
			_length = _obj.value;
			_pairs[_i]._value = ((_i : GoUInt16));
			_pairs[_i]._length = _length;
		};
	};
	stdgo.sort.Sort.slice(Go.toInterface(_pairs), function(_i:GoInt, _j:GoInt):Bool {
		if (_pairs[_i]._length < _pairs[_j]._length) {
			return true;
		};
		if (_pairs[_i]._length > _pairs[_j]._length) {
			return false;
		};
		if (_pairs[_i]._value < _pairs[_j]._value) {
			return true;
		};
		return false;
	});
	var _code:GoUInt32 = ((((0 : GoUInt32)) : GoUInt32));
	var _length:GoUInt8 = ((((32 : GoUInt8)) : GoUInt8));
	var _codes:Slice<T_huffmanCode> = new Slice<T_huffmanCode>(...[for (i in 0...((_lengths.length : GoInt)).toBasic()) new T_huffmanCode()]);
	{
		var _i:GoInt = _pairs.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			if (_length > _pairs[_i]._length) {
				_length = _pairs[_i]._length;
			};
			_codes[_i]._code = _code;
			_codes[_i]._codeLen = _length;
			_codes[_i]._value = _pairs[_i]._value;
			_code = _code + ((((1 : GoUInt32)) << (((32 : GoUInt8)) - _length)));
		});
	};
	stdgo.sort.Sort.slice(Go.toInterface(_codes), function(_i:GoInt, _j:GoInt):Bool {
		return _codes[_i]._code < _codes[_j]._code;
	});
	_t._nodes = new Slice<T_huffmanNode>(...[for (i in 0...((_codes.length : GoInt)).toBasic()) new T_huffmanNode()]);
	var __tmp__ = _buildHuffmanNode(Go.pointer(_t), _codes, ((0 : GoUInt32))),
		_:GoUInt16 = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return {_0: _t.__copy__(), _1: _err};
}

/**
	// buildHuffmanNode takes a slice of sorted huffmanCodes and builds a node in
	// the Huffman tree at the given level. It returns the index of the newly
	// constructed node.
**/
function _buildHuffmanNode(_t:Pointer<T_huffmanTree>, _codes:Slice<T_huffmanCode>, _level:GoUInt32):{var _0:GoUInt16; var _1:Error;} {
	var _nodeIndex:GoUInt16 = ((0 : GoUInt16)),
		_err:Error = ((null : stdgo.Error));
	var _test:GoUInt32 = (((((1 : GoUInt32)) : GoUInt32)) << (((31 : GoUInt32)) - _level));
	var _firstRightIndex:GoInt = _codes.length;
	{
		var _i;
		var _code;
		for (_obj in _codes.keyValueIterator()) {
			_i = _obj.key;
			_code = _obj.value;
			if (_code._code & _test != ((0 : GoUInt32))) {
				_firstRightIndex = _i;
				break;
			};
		};
	};
	var _left:Slice<T_huffmanCode> = _codes.__slice__(0, _firstRightIndex);
	var _right:Slice<T_huffmanCode> = _codes.__slice__(_firstRightIndex);
	if (_left.length == ((0 : GoInt)) || _right.length == ((0 : GoInt))) {
		if (_codes.length < ((2 : GoInt))) {
			return {_0: ((0 : GoUInt16)), _1: new StructuralError("empty Huffman tree")};
		};
		if (_level == ((31 : GoUInt32))) {
			return {_0: ((0 : GoUInt16)), _1: new StructuralError("equal symbols in Huffman tree")};
		};
		if (_left.length == ((0 : GoInt))) {
			return _buildHuffmanNode(_t, _right, _level + ((1 : GoUInt32)));
		};
		return _buildHuffmanNode(_t, _left, _level + ((1 : GoUInt32)));
	};
	_nodeIndex = ((_t.value._nextNode : GoUInt16));
	var _node:Pointer<T_huffmanNode> = Go.pointer(_t.value._nodes[_t.value._nextNode]);
	_t.value._nextNode++;
	if (_left.length == ((1 : GoInt))) {
		_node.value._left = _invalidNodeValue;
		_node.value._leftValue = _left[((0 : GoInt))]._value;
	} else {
		{
			var __tmp__ = _buildHuffmanNode(_t, _left, _level + ((1 : GoUInt32)));
			_node.value._left = __tmp__._0;
			_err = __tmp__._1;
		};
	};
	if (_err != null) {
		return {_0: _nodeIndex, _1: _err};
	};
	if (_right.length == ((1 : GoInt))) {
		_node.value._right = _invalidNodeValue;
		_node.value._rightValue = _right[((0 : GoInt))]._value;
	} else {
		{
			var __tmp__ = _buildHuffmanNode(_t, _right, _level + ((1 : GoUInt32)));
			_node.value._right = __tmp__._0;
			_err = __tmp__._1;
		};
	};
	return {_0: _nodeIndex, _1: _err};
}

/**
	// newMTFDecoder creates a move-to-front decoder with an explicit initial list
	// of symbols.
**/
function _newMTFDecoder(_symbols:Slice<GoByte>):T_moveToFrontDecoder {
	if (_symbols.length > ((256 : GoInt))) {
		throw "too many symbols";
	};
	return new T_moveToFrontDecoder(_symbols).__copy__();
}

/**
	// newMTFDecoderWithRange creates a move-to-front decoder with an initial
	// symbol list of 0...n-1.
**/
function _newMTFDecoderWithRange(_n:GoInt):T_moveToFrontDecoder {
	if (_n > ((256 : GoInt))) {
		throw "newMTFDecoderWithRange: cannot have > 256 symbols";
	};
	var _m:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _n, _i++, {
			_m[_i] = ((_i : GoByte));
		});
	};
	return new T_moveToFrontDecoder(_m).__copy__();
}

@:keep var _ = {
	try {
		final _poly:GoUnTypedInt = ((79764919 : GoUnTypedInt));
		{
			var _i;
			for (_obj in _crctab.keyValueIterator()) {
				_i = _obj.key;
				var _crc:GoUInt32 = (((_i : GoUInt32)) << ((24 : GoUnTypedInt)));
				{
					var _j:GoInt = ((0 : GoInt));
					Go.cfor(_j < ((8 : GoInt)), _j++, {
						if (_crc & (("2147483648" : GoUInt32)) != ((0 : GoUInt32))) {
							_crc = ((_crc << ((1 : GoUnTypedInt)))) ^ _poly;
						} else {
							_crc = (_crc << (((1 : GoUnTypedInt))));
						};
					});
				};
				_crctab[_i] = _crc;
			};
		};
	} catch (e)
		if (e.message != "__return__")
			throw e;
	true;
};

class T_bitReader_extension_fields {
	public function readBits64(__tmp__, _bits:GoUInt):GoUInt64
		return __tmp__.readBits64(_bits);

	public function readBits(__tmp__, _bits:GoUInt):GoInt
		return __tmp__.readBits(_bits);

	public function readBit(__tmp__):Bool
		return __tmp__.readBit();

	public function err(__tmp__):Error
		return __tmp__.err();
}

class StructuralError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class T_reader_extension_fields {
	public function _setup(__tmp__, _needMagic:Bool):Error
		return __tmp__._setup(_needMagic);

	public function read(__tmp__, _buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.read(_buf);

	public function _readFromBlock(__tmp__, _buf:Slice<GoByte>):GoInt
		return __tmp__._readFromBlock(_buf);

	public function _read(__tmp__, _buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__._read(_buf);

	public function _readBlock(__tmp__):Error
		return __tmp__._readBlock();
}

class T_huffmanTree_extension_fields {
	public function decode(__tmp__, _br:Pointer<T_bitReader>):GoUInt16
		return __tmp__.decode(_br);
}

class T_moveToFrontDecoder_extension_fields {
	public function decode(__tmp__, _n:GoInt):GoByte
		return __tmp__.decode(_n);

	public function first(__tmp__):GoByte
		return __tmp__.first();
}
