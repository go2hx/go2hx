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

typedef Resetter = StructType & {
	public function reset(_r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):Error;
};

typedef Reader = StructType & {
	> stdgo.io.Io.Reader,
	> stdgo.io.Io.ByteReader,
};

@:structInit class T_compressionLevel {
	public var _level:GoInt = ((0 : GoInt));
	public var _good:GoInt = ((0 : GoInt));
	public var _lazy:GoInt = ((0 : GoInt));
	public var _nice:GoInt = ((0 : GoInt));
	public var _chain:GoInt = ((0 : GoInt));
	public var _fastSkipHashing:GoInt = ((0 : GoInt));

	public function new(?_level:GoInt, ?_good:GoInt, ?_lazy:GoInt, ?_nice:GoInt, ?_chain:GoInt, ?_fastSkipHashing:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_level) + " " + Go.string(_good) + " " + Go.string(_lazy) + " " + Go.string(_nice) + " " + Go.string(_chain) + " "
			+ Go.string(_fastSkipHashing) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_compressionLevel(_level, _good, _lazy, _nice, _chain, _fastSkipHashing);
	}

	public function __set__(__tmp__) {
		this._level = __tmp__._level;
		this._good = __tmp__._good;
		this._lazy = __tmp__._lazy;
		this._nice = __tmp__._nice;
		this._chain = __tmp__._chain;
		this._fastSkipHashing = __tmp__._fastSkipHashing;
		return this;
	}
}

@:structInit class T_compressor {
	public function _close():Error {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_d.value._err != null) {
			return _d.value._err;
		};
		_d.value._sync = true;
		_d.value._step(_d);
		if (_d.value._err != null) {
			return _d.value._err;
		};
		{
			_d.value._w.value._writeStoredHeader(((0 : GoInt)), true);
			if (_d.value._w.value._err != null) {
				return _d.value._w.value._err;
			};
		};
		_d.value._w.value._flush();
		return _d.value._w.value._err;
	}

	public function _reset(_w:stdgo.io.Io.Writer):Void {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_d.value._w.value._reset(_w);
		_d.value._sync = false;
		_d.value._err = ((null : stdgo.Error));
		if (_d.value._compressionLevel._level == noCompression) {
			_d.value._windowEnd = ((0 : GoInt));
		} else if (_d.value._compressionLevel._level == bestSpeed) {
			_d.value._windowEnd = ((0 : GoInt));
			_d.value._tokens = _d.value._tokens.__slice__(0, ((0 : GoInt)));
			_d.value._bestSpeed.value._reset();
		} else {
			_d.value._chainHead = -((1 : GoUnTypedInt));
			{
				var _i;
				for (_obj in _d.value._hashHead.keyValueIterator()) {
					_i = _obj.key;
					_d.value._hashHead[_i] = ((0 : GoUInt32));
				};
			};
			{
				var _i;
				for (_obj in _d.value._hashPrev.keyValueIterator()) {
					_i = _obj.key;
					_d.value._hashPrev[_i] = ((0 : GoUInt32));
				};
			};
			_d.value._hashOffset = ((1 : GoInt));
			{
				final __tmp__0 = ((0 : GoInt));
				final __tmp__1 = ((0 : GoInt));
				_d.value._index = __tmp__0;
				_d.value._windowEnd = __tmp__1;
			};
			{
				final __tmp__0 = ((0 : GoInt));
				final __tmp__1 = false;
				_d.value._blockStart = __tmp__0;
				_d.value._byteAvailable = __tmp__1;
			};
			_d.value._tokens = _d.value._tokens.__slice__(0, ((0 : GoInt)));
			_d.value._length = _minMatchLength - ((1 : GoUnTypedInt));
			_d.value._offset = ((0 : GoInt));
			_d.value._hash = ((0 : GoUInt32));
			_d.value._maxInsertIndex = ((0 : GoInt));
		};
	}

	public function _init(_w:stdgo.io.Io.Writer, _level:GoInt):Error {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _err:Error = ((null : stdgo.Error));
		_d.value._w = _newHuffmanBitWriter(_w);
		{
			var __switchIndex__ = -1;
			while (true) {
				if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _level == noCompression)) {
					_d.value._window = new Slice<GoUInt8>(...[for (i in 0...((_maxStoreBlockSize : GoInt)).toBasic()) ((0 : GoUInt8))]);
					_d.value._fill = (_compressor.value).value._fillStore;
					_d.value._step = (_compressor.value).value._store;
					break;
					break;
				} else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _level == huffmanOnly)) {
					_d.value._window = new Slice<GoUInt8>(...[for (i in 0...((_maxStoreBlockSize : GoInt)).toBasic()) ((0 : GoUInt8))]);
					_d.value._fill = (_compressor.value).value._fillStore;
					_d.value._step = (_compressor.value).value._storeHuff;
					break;
					break;
				} else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _level == bestSpeed)) {
					_d.value._compressionLevel = _levels[_level].__copy__();
					_d.value._window = new Slice<GoUInt8>(...[for (i in 0...((_maxStoreBlockSize : GoInt)).toBasic()) ((0 : GoUInt8))]);
					_d.value._fill = (_compressor.value).value._fillStore;
					_d.value._step = (_compressor.value).value._encSpeed;
					_d.value._bestSpeed = _newDeflateFast();
					_d.value._tokens = new Slice<T_token>(...[for (i in 0...((_maxStoreBlockSize : GoInt)).toBasic()) new T_token()]);
					break;
					break;
				} else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && _level == defaultCompression)) {
					_level = ((6 : GoInt));
					@:fallthrough {
						__switchIndex__ = 4;
						continue;
					};
					break;
				} else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && ((2 : GoInt)) <= _level && _level <= ((9 : GoInt)))) {
					_d.value._compressionLevel = _levels[_level].__copy__();
					_d.value._initDeflate();
					_d.value._fill = (_compressor.value).value._fillDeflate;
					_d.value._step = (_compressor.value).value._deflate;
					break;
					break;
				} else {
					return stdgo.fmt.Fmt.errorf("flate: invalid compression level %d: want value in range [-2, 9]", Go.toInterface(_level));
					break;
				};
				break;
			};
		};
		return ((null : stdgo.Error));
	}

	public function _syncFlush():Error {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_d.value._err != null) {
			return _d.value._err;
		};
		_d.value._sync = true;
		_d.value._step(_d);
		if (_d.value._err == null) {
			_d.value._w.value._writeStoredHeader(((0 : GoInt)), false);
			_d.value._w.value._flush();
			_d.value._err = _d.value._w.value._err;
		};
		_d.value._sync = false;
		return _d.value._err;
	}

	public function _write(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		if (_d.value._err != null) {
			return {_0: ((0 : GoInt)), _1: _d.value._err};
		};
		_n = _b.length;
		while (_b.length > ((0 : GoInt))) {
			_d.value._step(_d);
			_b = _b.__slice__(_d.value._fill(_d, _b));
			if (_d.value._err != null) {
				return {_0: ((0 : GoInt)), _1: _d.value._err};
			};
		};
		return {_0: _n, _1: ((null : stdgo.Error))};
	}

	public function _storeHuff():Void {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_d.value._windowEnd < _d.value._window.length && !_d.value._sync || _d.value._windowEnd == ((0 : GoInt))) {
			return;
		};
		_d.value._w.value._writeBlockHuff(false, _d.value._window.__slice__(0, _d.value._windowEnd));
		_d.value._err = _d.value._w.value._err;
		_d.value._windowEnd = ((0 : GoInt));
	}

	public function _store():Void {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_d.value._windowEnd > ((0 : GoInt)) && (_d.value._windowEnd == _maxStoreBlockSize || _d.value._sync)) {
			_d.value._err = _d.value._writeStoredBlock(_d.value._window.__slice__(0, _d.value._windowEnd));
			_d.value._windowEnd = ((0 : GoInt));
		};
	}

	public function _fillStore(_b:Slice<GoByte>):GoInt {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = Go.copy(_d.value._window.__slice__(_d.value._windowEnd), _b);
		_d.value._windowEnd = _d.value._windowEnd + (_n);
		return _n;
	}

	public function _deflate():Void {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		stdgo.internal.Macro.controlFlow({
			if (_d.value._windowEnd - _d.value._index < _minMatchLength + _maxMatchLength && !_d.value._sync) {
				return;
			};
			_d.value._maxInsertIndex = _d.value._windowEnd - (_minMatchLength - ((1 : GoUnTypedInt)));
			if (_d.value._index < _d.value._maxInsertIndex) {
				_d.value._hash = _hash4(_d.value._window.__slice__(_d.value._index, _d.value._index + _minMatchLength));
			};
			@:label("Loop") while (true) {
				if (_d.value._index > _d.value._windowEnd) {
					throw "index > windowEnd";
				};
				var _lookahead:GoInt = _d.value._windowEnd - _d.value._index;
				if (_lookahead < _minMatchLength + _maxMatchLength) {
					if (!_d.value._sync) {
						@:break {
							____exit____ = true;
							____break____ = true;
							break;
						};
					};
					if (_d.value._index > _d.value._windowEnd) {
						throw "index > windowEnd";
					};
					if (_lookahead == ((0 : GoInt))) {
						if (_d.value._byteAvailable) {
							_d.value._tokens = _d.value._tokens.__append__(_literalToken(((_d.value._window[_d.value._index - ((1 : GoInt))] : GoUInt32))));
							_d.value._byteAvailable = false;
						};
						if (_d.value._tokens.length > ((0 : GoInt))) {
							{
								_d.value._err = _d.value._writeBlock(_d.value._tokens, _d.value._index);
								if (_d.value._err != null) {
									return;
								};
							};
							_d.value._tokens = _d.value._tokens.__slice__(0, ((0 : GoInt)));
						};
						@:break {
							____exit____ = true;
							____break____ = true;
							break;
						};
					};
				};
				if (_d.value._index < _d.value._maxInsertIndex) {
					_d.value._hash = _hash4(_d.value._window.__slice__(_d.value._index, _d.value._index + _minMatchLength));
					var _hh:Pointer<GoUInt32> = Go.pointer(_d.value._hashHead[_d.value._hash & _hashMask]);
					_d.value._chainHead = ((_hh.value : GoInt));
					_d.value._hashPrev[_d.value._index & _windowMask] = ((_d.value._chainHead : GoUInt32));
					_hh.value = (((_d.value._index + _d.value._hashOffset) : GoUInt32));
				};
				var _prevLength:GoInt = _d.value._length;
				var _prevOffset:GoInt = _d.value._offset;
				_d.value._length = _minMatchLength - ((1 : GoUnTypedInt));
				_d.value._offset = ((0 : GoInt));
				var _minIndex:GoInt = _d.value._index - _windowSize;
				if (_minIndex < ((0 : GoInt))) {
					_minIndex = ((0 : GoInt));
				};
				if (_d.value._chainHead - _d.value._hashOffset >= _minIndex
					&& (_d.value._compressionLevel._fastSkipHashing != _skipNever
						&& _lookahead > _minMatchLength - ((1 : GoUnTypedInt))
						|| _d.value._compressionLevel._fastSkipHashing == _skipNever
						&& _lookahead > _prevLength
						&& _prevLength < _d.value._compressionLevel._lazy)) {
					{
						var __tmp__ = _d.value._findMatch(_d.value._index, _d.value._chainHead - _d.value._hashOffset, _minMatchLength - ((1 : GoUnTypedInt)),
							_lookahead),
							_newLength:GoInt = __tmp__._0,
							_newOffset:GoInt = __tmp__._1,
							_ok:Bool = __tmp__._2;
						if (_ok) {
							_d.value._length = _newLength;
							_d.value._offset = _newOffset;
						};
					};
				};
				if (_d.value._compressionLevel._fastSkipHashing != _skipNever
					&& _d.value._length >= _minMatchLength
					|| _d.value._compressionLevel._fastSkipHashing == _skipNever
					&& _prevLength >= _minMatchLength
					&& _d.value._length <= _prevLength) {
					if (_d.value._compressionLevel._fastSkipHashing != _skipNever) {
						_d.value._tokens = _d.value._tokens.__append__(_matchToken((((_d.value._length - _baseMatchLength) : GoUInt32)),
							(((_d.value._offset - _baseMatchOffset) : GoUInt32))));
					} else {
						_d.value._tokens = _d.value._tokens.__append__(_matchToken((((_prevLength - _baseMatchLength) : GoUInt32)),
							(((_prevOffset - _baseMatchOffset) : GoUInt32))));
					};
					if (_d.value._length <= _d.value._compressionLevel._fastSkipHashing) {
						var _newIndex:GoInt = ((0 : GoInt));
						if (_d.value._compressionLevel._fastSkipHashing != _skipNever) {
							_newIndex = _d.value._index + _d.value._length;
						} else {
							_newIndex = _d.value._index + _prevLength - ((1 : GoInt));
						};
						var _index:GoInt = _d.value._index;
						{
							_index++;
							Go.cfor(_index < _newIndex, _index++, {
								if (_index < _d.value._maxInsertIndex) {
									_d.value._hash = _hash4(_d.value._window.__slice__(_index, _index + _minMatchLength));
									var _hh:Pointer<GoUInt32> = Go.pointer(_d.value._hashHead[_d.value._hash & _hashMask]);
									_d.value._hashPrev[_index & _windowMask] = _hh.value;
									_hh.value = (((_index + _d.value._hashOffset) : GoUInt32));
								};
							});
						};
						_d.value._index = _index;
						if (_d.value._compressionLevel._fastSkipHashing == _skipNever) {
							_d.value._byteAvailable = false;
							_d.value._length = _minMatchLength - ((1 : GoUnTypedInt));
						};
					} else {
						_d.value._index = _d.value._index + (_d.value._length);
						if (_d.value._index < _d.value._maxInsertIndex) {
							_d.value._hash = _hash4(_d.value._window.__slice__(_d.value._index, _d.value._index + _minMatchLength));
						};
					};
					if (_d.value._tokens.length == _maxFlateBlockTokens) {
						{
							_d.value._err = _d.value._writeBlock(_d.value._tokens, _d.value._index);
							if (_d.value._err != null) {
								return;
							};
						};
						_d.value._tokens = _d.value._tokens.__slice__(0, ((0 : GoInt)));
					};
				} else {
					if (_d.value._compressionLevel._fastSkipHashing != _skipNever || _d.value._byteAvailable) {
						var _i:GoInt = _d.value._index - ((1 : GoInt));
						if (_d.value._compressionLevel._fastSkipHashing != _skipNever) {
							_i = _d.value._index;
						};
						_d.value._tokens = _d.value._tokens.__append__(_literalToken(((_d.value._window[_i] : GoUInt32))));
						if (_d.value._tokens.length == _maxFlateBlockTokens) {
							{
								_d.value._err = _d.value._writeBlock(_d.value._tokens, _i + ((1 : GoInt)));
								if (_d.value._err != null) {
									return;
								};
							};
							_d.value._tokens = _d.value._tokens.__slice__(0, ((0 : GoInt)));
						};
					};
					_d.value._index++;
					if (_d.value._compressionLevel._fastSkipHashing == _skipNever) {
						_d.value._byteAvailable = true;
					};
				};
			};
		});
	}

	public function _initDeflate():Void {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_d.value._window = new Slice<GoUInt8>(...[
			for (i in 0...((((2 : GoUnTypedInt)) * _windowSize : GoInt)).toBasic()) ((0 : GoUInt8))
		]);
		_d.value._hashOffset = ((1 : GoInt));
		_d.value._tokens = new Slice<T_token>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) new T_token()]).setCap(((_maxFlateBlockTokens
			+ ((1 : GoUnTypedInt)) : GoInt)).toBasic());
		_d.value._length = _minMatchLength - ((1 : GoUnTypedInt));
		_d.value._offset = ((0 : GoInt));
		_d.value._byteAvailable = false;
		_d.value._index = ((0 : GoInt));
		_d.value._hash = ((0 : GoUInt32));
		_d.value._chainHead = -((1 : GoUnTypedInt));
		_d.value._bulkHasher = _bulkHash4;
	}

	public function _encSpeed():Void {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_d.value._windowEnd < _maxStoreBlockSize) {
			if (!_d.value._sync) {
				return;
			};
			if (_d.value._windowEnd < ((128 : GoInt))) {
				if (_d.value._windowEnd == ((0 : GoInt))) {
					return;
				} else if (_d.value._windowEnd <= ((16 : GoInt))) {
					_d.value._err = _d.value._writeStoredBlock(_d.value._window.__slice__(0, _d.value._windowEnd));
				} else {
					_d.value._w.value._writeBlockHuff(false, _d.value._window.__slice__(0, _d.value._windowEnd));
					_d.value._err = _d.value._w.value._err;
				};
				_d.value._windowEnd = ((0 : GoInt));
				_d.value._bestSpeed.value._reset();
				return;
			};
		};
		_d.value._tokens = _d.value._bestSpeed.value._encode(_d.value._tokens.__slice__(0, ((0 : GoInt))), _d.value._window.__slice__(0, _d.value._windowEnd));
		if (_d.value._tokens.length > _d.value._windowEnd - ((_d.value._windowEnd >> ((4 : GoUnTypedInt))))) {
			_d.value._w.value._writeBlockHuff(false, _d.value._window.__slice__(0, _d.value._windowEnd));
		} else {
			_d.value._w.value._writeBlockDynamic(_d.value._tokens, false, _d.value._window.__slice__(0, _d.value._windowEnd));
		};
		_d.value._err = _d.value._w.value._err;
		_d.value._windowEnd = ((0 : GoInt));
	}

	public function _writeStoredBlock(_buf:Slice<GoByte>):Error {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			_d.value._w.value._writeStoredHeader(_buf.length, false);
			if (_d.value._w.value._err != null) {
				return _d.value._w.value._err;
			};
		};
		_d.value._w.value._writeBytes(_buf);
		return _d.value._w.value._err;
	}

	public function _findMatch(_pos:GoInt, _prevHead:GoInt, _prevLength:GoInt, _lookahead:GoInt):{var _0:GoInt; var _1:GoInt; var _2:Bool;} {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _length:GoInt = ((0 : GoInt)),
			_offset:GoInt = ((0 : GoInt)),
			_ok:Bool = false;
		var _minMatchLook:GoInt = _maxMatchLength;
		if (_lookahead < _minMatchLook) {
			_minMatchLook = _lookahead;
		};
		var _win:Slice<GoUInt8> = _d.value._window.__slice__(((0 : GoInt)), _pos + _minMatchLook);
		var _nice:GoInt = _win.length - _pos;
		if (_d.value._compressionLevel._nice < _nice) {
			_nice = _d.value._compressionLevel._nice;
		};
		var _tries:GoInt = _d.value._compressionLevel._chain;
		_length = _prevLength;
		if (_length >= _d.value._compressionLevel._good) {
			_tries = (_tries >> (((2 : GoUnTypedInt))));
		};
		var _wEnd:GoUInt8 = _win[_pos + _length];
		var _wPos:Slice<GoUInt8> = _win.__slice__(_pos);
		var _minIndex:GoInt = _pos - _windowSize;
		{
			var _i:GoInt = _prevHead;
			Go.cfor(_tries > ((0 : GoInt)), _tries--, {
				if (_wEnd == _win[_i + _length]) {
					var _n:GoInt = _matchLen(_win.__slice__(_i), _wPos, _minMatchLook);
					if (_n > _length && (_n > _minMatchLength || _pos - _i <= ((4096 : GoInt)))) {
						_length = _n;
						_offset = _pos - _i;
						_ok = true;
						if (_n >= _nice) {
							break;
						};
						_wEnd = _win[_pos + _n];
					};
				};
				if (_i == _minIndex) {
					break;
				};
				_i = ((_d.value._hashPrev[_i & _windowMask] : GoInt)) - _d.value._hashOffset;
				if (_i < _minIndex || _i < ((0 : GoInt))) {
					break;
				};
			});
		};
		return {_0: _length, _1: _offset, _2: _ok};
	}

	public function _fillWindow(_b:Slice<GoByte>):Void {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_d.value._compressionLevel._level < ((2 : GoInt))) {
			return;
		};
		if (_d.value._index != ((0 : GoInt)) || _d.value._windowEnd != ((0 : GoInt))) {
			throw "internal error: fillWindow called with stale data";
		};
		if (_b.length > _windowSize) {
			_b = _b.__slice__(_b.length - _windowSize);
		};
		var _n:GoInt = Go.copy(_d.value._window, _b);
		var _loops:GoInt = (_n + ((256 : GoInt)) - _minMatchLength) / ((256 : GoInt));
		{
			var _j:GoInt = ((0 : GoInt));
			Go.cfor(_j < _loops, _j++, {
				var _index:GoInt = _j * ((256 : GoInt));
				var _end:GoInt = _index + ((256 : GoInt)) + _minMatchLength - ((1 : GoInt));
				if (_end > _n) {
					_end = _n;
				};
				var _toCheck:Slice<GoUInt8> = _d.value._window.__slice__(_index, _end);
				var _dstSize:GoInt = _toCheck.length - _minMatchLength + ((1 : GoInt));
				if (_dstSize <= ((0 : GoInt))) {
					continue;
				};
				var _dst:Slice<GoUInt32> = _d.value._hashMatch.__slice__(0, _dstSize);
				_d.value._bulkHasher(_toCheck, _dst);
				var _newH:GoUInt32 = ((0 : GoUInt32));
				{
					var _i;
					var _val;
					for (_obj in _dst.keyValueIterator()) {
						_i = _obj.key;
						_val = _obj.value;
						var _di:GoInt = _i + _index;
						_newH = _val;
						var _hh:Pointer<GoUInt32> = Go.pointer(_d.value._hashHead[_newH & _hashMask]);
						_d.value._hashPrev[_di & _windowMask] = _hh.value;
						_hh.value = (((_di + _d.value._hashOffset) : GoUInt32));
					};
				};
				_d.value._hash = _newH;
			});
		};
		_d.value._windowEnd = _n;
		_d.value._index = _n;
	}

	public function _writeBlock(_tokens:Slice<T_token>, _index:GoInt):Error {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_index > ((0 : GoInt))) {
			var _window:Slice<GoByte> = new Slice<GoUInt8>().nil();
			if (_d.value._blockStart <= _index) {
				_window = _d.value._window.__slice__(_d.value._blockStart, _index);
			};
			_d.value._blockStart = _index;
			_d.value._w.value._writeBlock(_tokens, false, _window);
			return _d.value._w.value._err;
		};
		return ((null : stdgo.Error));
	}

	public function _fillDeflate(_b:Slice<GoByte>):GoInt {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_d.value._index >= ((2 : GoUnTypedInt)) * _windowSize - (_minMatchLength + _maxMatchLength)) {
			Go.copy(_d.value._window, _d.value._window.__slice__(_windowSize, ((2 : GoUnTypedInt)) * _windowSize));
			_d.value._index = _d.value._index - (_windowSize);
			_d.value._windowEnd = _d.value._windowEnd - (_windowSize);
			if (_d.value._blockStart >= _windowSize) {
				_d.value._blockStart = _d.value._blockStart - (_windowSize);
			} else {
				_d.value._blockStart = stdgo.math.Math.maxInt32;
			};
			_d.value._hashOffset = _d.value._hashOffset + (_windowSize);
			if (_d.value._hashOffset > _maxHashOffset) {
				var _delta:GoInt = _d.value._hashOffset - ((1 : GoInt));
				_d.value._hashOffset = _d.value._hashOffset - (_delta);
				_d.value._chainHead = _d.value._chainHead - (_delta);
				{
					var _i;
					var _v;
					for (_obj in _d.value._hashPrev.__slice__(0).keyValueIterator()) {
						_i = _obj.key;
						_v = _obj.value;
						if (((_v : GoInt)) > _delta) {
							_d.value._hashPrev[_i] = (((((_v : GoInt)) - _delta) : GoUInt32));
						} else {
							_d.value._hashPrev[_i] = ((0 : GoUInt32));
						};
					};
				};
				{
					var _i;
					var _v;
					for (_obj in _d.value._hashHead.__slice__(0).keyValueIterator()) {
						_i = _obj.key;
						_v = _obj.value;
						if (((_v : GoInt)) > _delta) {
							_d.value._hashHead[_i] = (((((_v : GoInt)) - _delta) : GoUInt32));
						} else {
							_d.value._hashHead[_i] = ((0 : GoUInt32));
						};
					};
				};
			};
		};
		var _n:GoInt = Go.copy(_d.value._window.__slice__(_d.value._windowEnd), _b);
		_d.value._windowEnd = _d.value._windowEnd + (_n);
		return _n;
	}

	@:embedded
	public var _compressionLevel:T_compressionLevel = new T_compressionLevel();
	public var _w:Pointer<T_huffmanBitWriter> = new Pointer<T_huffmanBitWriter>().nil();
	public var _bulkHasher:(Slice<GoUInt8>, Slice<GoUInt32>) -> Void = null;
	public var _fill:(Pointer<T_compressor>, Slice<GoUInt8>) -> GoInt = null;
	public var _step:Pointer<T_compressor>->Void = null;
	public var _sync:Bool = false;
	public var _bestSpeed:Pointer<T_deflateFast> = new Pointer<T_deflateFast>().nil();
	public var _chainHead:GoInt = ((0 : GoInt));
	public var _hashHead:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0...131072) ((0 : GoUInt32))]);
	public var _hashPrev:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0...32768) ((0 : GoUInt32))]);
	public var _hashOffset:GoInt = ((0 : GoInt));
	public var _index:GoInt = ((0 : GoInt));
	public var _window:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _windowEnd:GoInt = ((0 : GoInt));
	public var _blockStart:GoInt = ((0 : GoInt));
	public var _byteAvailable:Bool = false;
	public var _tokens:Slice<T_token> = new Slice<T_token>().nil();
	public var _length:GoInt = ((0 : GoInt));
	public var _offset:GoInt = ((0 : GoInt));
	public var _hash:GoUInt32 = ((0 : GoUInt32));
	public var _maxInsertIndex:GoInt = ((0 : GoInt));
	public var _err:stdgo.Error = ((null : stdgo.Error));
	public var _hashMatch:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0...257) ((0 : GoUInt32))]);

	public function new(?_compressionLevel:T_compressionLevel, ?_w:Pointer<T_huffmanBitWriter>, ?_bulkHasher:(Slice<GoUInt8>, Slice<GoUInt32>) -> Void,
			?_fill:(Pointer<T_compressor>, Slice<GoUInt8>) -> GoInt, ?_step:Pointer<T_compressor>->Void, ?_sync:Bool, ?_bestSpeed:Pointer<T_deflateFast>,
			?_chainHead:GoInt, ?_hashHead:GoArray<GoUInt32>, ?_hashPrev:GoArray<GoUInt32>, ?_hashOffset:GoInt, ?_index:GoInt, ?_window:Slice<GoUInt8>,
			?_windowEnd:GoInt, ?_blockStart:GoInt, ?_byteAvailable:Bool, ?_tokens:Slice<T_token>, ?_length:GoInt, ?_offset:GoInt, ?_hash:GoUInt32,
			?_maxInsertIndex:GoInt, ?_err:stdgo.Error, ?_hashMatch:GoArray<GoUInt32>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_compressionLevel) + " " + Go.string(_w) + " " + Go.string(_bulkHasher) + " " + Go.string(_fill) + " " + Go.string(_step)
			+ " " + Go.string(_sync) + " " + Go.string(_bestSpeed) + " " + Go.string(_chainHead) + " " + Go.string(_hashHead) + " " + Go.string(_hashPrev)
			+ " " + Go.string(_hashOffset) + " " + Go.string(_index) + " " + Go.string(_window) + " " + Go.string(_windowEnd) + " " + Go.string(_blockStart)
			+ " " + Go.string(_byteAvailable) + " " + Go.string(_tokens) + " " + Go.string(_length) + " " + Go.string(_offset) + " " + Go.string(_hash) + " "
			+ Go.string(_maxInsertIndex) + " " + Go.string(_err) + " " + Go.string(_hashMatch) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_compressor(_compressionLevel, _w, _bulkHasher, _fill, _step, _sync, _bestSpeed, _chainHead, _hashHead, _hashPrev, _hashOffset, _index,
			_window, _windowEnd, _blockStart, _byteAvailable, _tokens, _length, _offset, _hash, _maxInsertIndex, _err, _hashMatch);
	}

	public function __set__(__tmp__) {
		this._compressionLevel = __tmp__._compressionLevel;
		this._w = __tmp__._w;
		this._bulkHasher = __tmp__._bulkHasher;
		this._fill = __tmp__._fill;
		this._step = __tmp__._step;
		this._sync = __tmp__._sync;
		this._bestSpeed = __tmp__._bestSpeed;
		this._chainHead = __tmp__._chainHead;
		this._hashHead = __tmp__._hashHead;
		this._hashPrev = __tmp__._hashPrev;
		this._hashOffset = __tmp__._hashOffset;
		this._index = __tmp__._index;
		this._window = __tmp__._window;
		this._windowEnd = __tmp__._windowEnd;
		this._blockStart = __tmp__._blockStart;
		this._byteAvailable = __tmp__._byteAvailable;
		this._tokens = __tmp__._tokens;
		this._length = __tmp__._length;
		this._offset = __tmp__._offset;
		this._hash = __tmp__._hash;
		this._maxInsertIndex = __tmp__._maxInsertIndex;
		this._err = __tmp__._err;
		this._hashMatch = __tmp__._hashMatch;
		return this;
	}
}

@:structInit class T_dictWriter {
	public function write(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		return _w.value._w.write(_b);
	}

	public var _w:stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));

	public function new(?_w:stdgo.io.Io.Writer)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_w) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_dictWriter(_w);
	}

	public function __set__(__tmp__) {
		this._w = __tmp__._w;
		return this;
	}
}

@:structInit class Writer {
	public function reset(_dst:stdgo.io.Io.Writer):Void {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var __tmp__ = try {
				{value: ((_w.value._d._w.value._writer.__underlying__().value : T_dictWriter)), ok: true};
			} catch (_) {
				{value: new Pointer<T_dictWriter>().nil(), ok: false};
			}, _dw = __tmp__.value, _ok = __tmp__.ok;
			if (_ok) {
				_dw.value._w = _dst;
				_w.value._d._reset(_dw.value);
				_w.value._d._fillWindow(_w.value._dict);
			} else {
				_w.value._d._reset(_dst);
			};
		};
	}

	public function close():Error {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _w.value._d._close();
	}

	public function flush():Error {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _w.value._d._syncFlush();
	}

	public function write(_data:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		return _w.value._d._write(_data);
	}

	public var _d:T_compressor = new T_compressor();
	public var _dict:Slice<GoUInt8> = new Slice<GoUInt8>().nil();

	public function new(?_d:T_compressor, ?_dict:Slice<GoUInt8>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_d) + " " + Go.string(_dict) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Writer(_d, _dict);
	}

	public function __set__(__tmp__) {
		this._d = __tmp__._d;
		this._dict = __tmp__._dict;
		return this;
	}
}

@:structInit class T_tableEntry {
	public var _val:GoUInt32 = ((0 : GoUInt32));
	public var _offset:GoInt32 = ((0 : GoInt32));

	public function new(?_val:GoUInt32, ?_offset:GoInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_val) + " " + Go.string(_offset) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_tableEntry(_val, _offset);
	}

	public function __set__(__tmp__) {
		this._val = __tmp__._val;
		this._offset = __tmp__._offset;
		return this;
	}
}

@:structInit class T_deflateFast {
	public function _shiftOffsets():Void {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_e.value._prev.length == ((0 : GoInt))) {
			{
				var _i;
				for (_obj in _e.value._table.__slice__(0).keyValueIterator()) {
					_i = _obj.key;
					_e.value._table[_i] = new T_tableEntry().__copy__();
				};
			};
			_e.value._cur = _maxMatchOffset + ((1 : GoUnTypedInt));
			return;
		};
		{
			var _i;
			for (_obj in _e.value._table.__slice__(0).keyValueIterator()) {
				_i = _obj.key;
				var _v:GoInt32 = _e.value._table[_i]._offset - _e.value._cur + _maxMatchOffset + ((1 : GoInt32));
				if (_v < ((0 : GoInt32))) {
					_v = ((0 : GoInt32));
				};
				_e.value._table[_i]._offset = _v;
			};
		};
		_e.value._cur = _maxMatchOffset + ((1 : GoUnTypedInt));
	}

	public function _reset():Void {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_e.value._prev = _e.value._prev.__slice__(0, ((0 : GoInt)));
		_e.value._cur = _e.value._cur + (_maxMatchOffset);
		if (_e.value._cur >= _bufferReset) {
			_e.value._shiftOffsets();
		};
	}

	public function _matchLen(_s:GoInt32, _t:GoInt32, _src:Slice<GoByte>):GoInt32 {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _s1:GoInt = ((_s : GoInt)) + _maxMatchLength - ((4 : GoInt));
		if (_s1 > _src.length) {
			_s1 = _src.length;
		};
		if (_t >= ((0 : GoInt32))) {
			var _b:Slice<GoUInt8> = _src.__slice__(_t);
			var _a:Slice<GoUInt8> = _src.__slice__(_s, _s1);
			_b = _b.__slice__(0, _a.length);
			{
				var _i;
				for (_obj in _a.keyValueIterator()) {
					_i = _obj.key;
					if (_a[_i] != _b[_i]) {
						return ((_i : GoInt32));
					};
				};
			};
			return ((_a.length : GoInt32));
		};
		var _tp:GoInt32 = ((_e.value._prev.length : GoInt32)) + _t;
		if (_tp < ((0 : GoInt32))) {
			return ((0 : GoInt32));
		};
		var _a:Slice<GoUInt8> = _src.__slice__(_s, _s1);
		var _b:Slice<GoUInt8> = _e.value._prev.__slice__(_tp);
		if (_b.length > _a.length) {
			_b = _b.__slice__(0, _a.length);
		};
		_a = _a.__slice__(0, _b.length);
		{
			var _i;
			for (_obj in _b.keyValueIterator()) {
				_i = _obj.key;
				if (_a[_i] != _b[_i]) {
					return ((_i : GoInt32));
				};
			};
		};
		var _n:GoInt32 = ((_b.length : GoInt32));
		if ((((_s + _n) : GoInt)) == _s1) {
			return _n;
		};
		_a = _src.__slice__(_s + _n, _s1);
		_b = _src.__slice__(0, _a.length);
		{
			var _i;
			for (_obj in _a.keyValueIterator()) {
				_i = _obj.key;
				if (_a[_i] != _b[_i]) {
					return ((_i : GoInt32)) + _n;
				};
			};
		};
		return ((_a.length : GoInt32)) + _n;
	}

	public function _encode(_dst:Slice<T_token>, _src:Slice<GoByte>):Slice<T_token> {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.internal.Macro.controlFlow({
			if (_e.value._cur >= _bufferReset) {
				_e.value._shiftOffsets();
			};
			if (_src.length < _minNonLiteralBlockSize) {
				_e.value._cur = _e.value._cur + (_maxStoreBlockSize);
				_e.value._prev = _e.value._prev.__slice__(0, ((0 : GoInt)));
				return _emitLiteral(_dst, _src);
			};
			var _sLimit:GoInt32 = (((_src.length - _inputMargin) : GoInt32));
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
					var _bytesBetweenHashLookups:GoInt32 = (_skip >> ((5 : GoUnTypedInt)));
					_nextS = _s + _bytesBetweenHashLookups;
					_skip = _skip + (_bytesBetweenHashLookups);
					if (_nextS > _sLimit) {
						@:goto "emitRemainder";
					};
					_candidate = _e.value._table[_nextHash & _tableMask].__copy__();
					var _now:GoUInt32 = _load32(_src, _nextS);
					_e.value._table[_nextHash & _tableMask] = (({_offset: _s + _e.value._cur, _val: _cv} : T_tableEntry)).__copy__();
					_nextHash = _hash(_now);
					var _offset:GoInt32 = _s - (_candidate._offset - _e.value._cur);
					if (_offset > _maxMatchOffset || _cv != _candidate._val) {
						_cv = _now;
						continue;
					};
					break;
				};
				_dst = _emitLiteral(_dst, _src.__slice__(_nextEmit, _s));
				while (true) {
					_s = _s + (((4 : GoInt32)));
					var _t:GoInt32 = _candidate._offset - _e.value._cur + ((4 : GoInt32));
					var _l:GoInt32 = _e.value._matchLen(_s, _t, _src);
					_dst = _dst.__append__(_matchToken((((_l + ((4 : GoInt32)) - _baseMatchLength) : GoUInt32)), (((_s - _t - _baseMatchOffset) : GoUInt32))));
					_s = _s + (_l);
					_nextEmit = _s;
					if (_s >= _sLimit) {
						@:goto "emitRemainder";
					};
					var _x:GoUInt64 = _load64(_src, _s - ((1 : GoInt32)));
					var _prevHash:GoUInt32 = _hash(((_x : GoUInt32)));
					_e.value._table[_prevHash & _tableMask] = (({_offset: _e.value._cur + _s - ((1 : GoInt32)), _val: ((_x : GoUInt32))} : T_tableEntry))
						.__copy__();
					_x = (_x >> (((8 : GoUnTypedInt))));
					var _currHash:GoUInt32 = _hash(((_x : GoUInt32)));
					_candidate = _e.value._table[_currHash & _tableMask].__copy__();
					_e.value._table[_currHash & _tableMask] = (({_offset: _e.value._cur + _s, _val: ((_x : GoUInt32))} : T_tableEntry)).__copy__();
					var _offset:GoInt32 = _s - (_candidate._offset - _e.value._cur);
					if (_offset > _maxMatchOffset || ((_x : GoUInt32)) != _candidate._val) {
						_cv = (((_x >> ((8 : GoUnTypedInt))) : GoUInt32));
						_nextHash = _hash(_cv);
						_s++;
						break;
					};
				};
			};
			@:label("emitRemainder") if (((_nextEmit : GoInt)) < _src.length) {
				_dst = _emitLiteral(_dst, _src.__slice__(_nextEmit));
			};
			_e.value._cur = _e.value._cur + (((_src.length : GoInt32)));
			_e.value._prev = _e.value._prev.__slice__(0, _src.length);
			Go.copy(_e.value._prev, _src);
			return _dst;
		});
	}

	public var _table:GoArray<T_tableEntry> = new GoArray<T_tableEntry>(...[for (i in 0...16384) new T_tableEntry()]);
	public var _prev:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _cur:GoInt32 = ((0 : GoInt32));

	public function new(?_table:GoArray<T_tableEntry>, ?_prev:Slice<GoUInt8>, ?_cur:GoInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_table) + " " + Go.string(_prev) + " " + Go.string(_cur) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_deflateFast(_table, _prev, _cur);
	}

	public function __set__(__tmp__) {
		this._table = __tmp__._table;
		this._prev = __tmp__._prev;
		this._cur = __tmp__._cur;
		return this;
	}
}

@:structInit class T_dictDecoder {
	public function _readFlush():Slice<GoByte> {
		var _dd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _toRead:Slice<GoUInt8> = _dd.value._hist.__slice__(_dd.value._rdPos, _dd.value._wrPos);
		_dd.value._rdPos = _dd.value._wrPos;
		if (_dd.value._wrPos == _dd.value._hist.length) {
			{
				final __tmp__0 = ((0 : GoInt));
				final __tmp__1 = ((0 : GoInt));
				_dd.value._wrPos = __tmp__0;
				_dd.value._rdPos = __tmp__1;
			};
			_dd.value._full = true;
		};
		return _toRead;
	}

	public function _tryWriteCopy(_dist:GoInt, _length:GoInt):GoInt {
		var _dd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _dstPos:GoInt = _dd.value._wrPos;
		var _endPos:GoInt = _dstPos + _length;
		if (_dstPos < _dist || _endPos > _dd.value._hist.length) {
			return ((0 : GoInt));
		};
		var _dstBase:GoInt = _dstPos;
		var _srcPos:GoInt = _dstPos - _dist;
		while (_dstPos < _endPos) {
			_dstPos = _dstPos + (Go.copy(_dd.value._hist.__slice__(_dstPos, _endPos), _dd.value._hist.__slice__(_srcPos, _dstPos)));
		};
		_dd.value._wrPos = _dstPos;
		return _dstPos - _dstBase;
	}

	public function _writeCopy(_dist:GoInt, _length:GoInt):GoInt {
		var _dd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _dstBase:GoInt = _dd.value._wrPos;
		var _dstPos:GoInt = _dstBase;
		var _srcPos:GoInt = _dstPos - _dist;
		var _endPos:GoInt = _dstPos + _length;
		if (_endPos > _dd.value._hist.length) {
			_endPos = _dd.value._hist.length;
		};
		if (_srcPos < ((0 : GoInt))) {
			_srcPos = _srcPos + (_dd.value._hist.length);
			_dstPos = _dstPos + (Go.copy(_dd.value._hist.__slice__(_dstPos, _endPos), _dd.value._hist.__slice__(_srcPos)));
			_srcPos = ((0 : GoInt));
		};
		while (_dstPos < _endPos) {
			_dstPos = _dstPos + (Go.copy(_dd.value._hist.__slice__(_dstPos, _endPos), _dd.value._hist.__slice__(_srcPos, _dstPos)));
		};
		_dd.value._wrPos = _dstPos;
		return _dstPos - _dstBase;
	}

	public function _writeByte(_c:GoByte):Void {
		var _dd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_dd.value._hist[_dd.value._wrPos] = _c;
		_dd.value._wrPos++;
	}

	public function _writeMark(_cnt:GoInt):Void {
		var _dd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_dd.value._wrPos = _dd.value._wrPos + (_cnt);
	}

	public function _writeSlice():Slice<GoByte> {
		var _dd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _dd.value._hist.__slice__(_dd.value._wrPos);
	}

	public function _availWrite():GoInt {
		var _dd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _dd.value._hist.length - _dd.value._wrPos;
	}

	public function _availRead():GoInt {
		var _dd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _dd.value._wrPos - _dd.value._rdPos;
	}

	public function _histSize():GoInt {
		var _dd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_dd.value._full) {
			return _dd.value._hist.length;
		};
		return _dd.value._wrPos;
	}

	public function _init(_size:GoInt, _dict:Slice<GoByte>):Void {
		var _dd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_dd.value = (({
			_hist: _dd.value._hist,
			_wrPos: 0,
			_rdPos: 0,
			_full: false
		} : T_dictDecoder)).__copy__();
		if (_dd.value._hist.cap() < _size) {
			_dd.value._hist = new Slice<GoUInt8>(...[for (i in 0...((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
		};
		_dd.value._hist = _dd.value._hist.__slice__(0, _size);
		if (_dict.length > _dd.value._hist.length) {
			_dict = _dict.__slice__(_dict.length - _dd.value._hist.length);
		};
		_dd.value._wrPos = Go.copy(_dd.value._hist, _dict);
		if (_dd.value._wrPos == _dd.value._hist.length) {
			_dd.value._wrPos = ((0 : GoInt));
			_dd.value._full = true;
		};
		_dd.value._rdPos = _dd.value._wrPos;
	}

	public var _hist:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _wrPos:GoInt = ((0 : GoInt));
	public var _rdPos:GoInt = ((0 : GoInt));
	public var _full:Bool = false;

	public function new(?_hist:Slice<GoUInt8>, ?_wrPos:GoInt, ?_rdPos:GoInt, ?_full:Bool)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_hist) + " " + Go.string(_wrPos) + " " + Go.string(_rdPos) + " " + Go.string(_full) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_dictDecoder(_hist, _wrPos, _rdPos, _full);
	}

	public function __set__(__tmp__) {
		this._hist = __tmp__._hist;
		this._wrPos = __tmp__._wrPos;
		this._rdPos = __tmp__._rdPos;
		this._full = __tmp__._full;
		return this;
	}
}

@:structInit class T_huffmanBitWriter {
	public function _writeBlockHuff(_eof:Bool, _input:Slice<GoByte>):Void {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_w.value._err != null) {
			return;
		};
		{
			var _i;
			for (_obj in _w.value._literalFreq.keyValueIterator()) {
				_i = _obj.key;
				_w.value._literalFreq[_i] = ((0 : GoInt32));
			};
		};
		_histogram(_input, _w.value._literalFreq);
		_w.value._literalFreq[_endBlockMarker] = ((1 : GoInt32));
		final _numLiterals:GoUnTypedInt = _endBlockMarker + ((1 : GoUnTypedInt));
		_w.value._offsetFreq[((0 : GoInt))] = ((1 : GoInt32));
		final _numOffsets:GoUnTypedInt = ((1 : GoUnTypedInt));
		_w.value._literalEncoding.value._generate(_w.value._literalFreq, ((15 : GoInt32)));
		var _numCodegens:GoInt = ((0 : GoInt));
		_w.value._generateCodegen(_numLiterals, _numOffsets, _w.value._literalEncoding, _huffOffset);
		_w.value._codegenEncoding.value._generate(_w.value._codegenFreq.__slice__(0), ((7 : GoInt32)));
		var __tmp__ = _w.value._dynamicSize(_w.value._literalEncoding, _huffOffset, ((0 : GoInt))),
			_size:GoInt = __tmp__._0,
			_numCodegens:GoInt = __tmp__._1;
		{
			var __tmp__ = _w.value._storedSize(_input),
				_ssize:GoInt = __tmp__._0,
				_storable:Bool = __tmp__._1;
			if (_storable && _ssize < (_size + (_size >> ((4 : GoUnTypedInt))))) {
				_w.value._writeStoredHeader(_input.length, _eof);
				_w.value._writeBytes(_input);
				return;
			};
		};
		_w.value._writeDynamicHeader(_numLiterals, _numOffsets, _numCodegens, _eof);
		var _encoding:Slice<T_hcode> = _w.value._literalEncoding.value._codes.__slice__(0, ((257 : GoInt)));
		var _n:GoInt = _w.value._nbytes;
		for (_t in _input) {
			var _c:T_hcode = _encoding[_t].__copy__();
			_w.value._bits = _w.value._bits | ((((_c._code : GoUInt64)) << _w.value._nbits));
			_w.value._nbits = _w.value._nbits + (((_c._len : GoUInt)));
			if (_w.value._nbits < ((48 : GoUInt))) {
				continue;
			};
			var _bits:GoUInt64 = _w.value._bits;
			_w.value._bits = (_w.value._bits >> (((48 : GoUnTypedInt))));
			_w.value._nbits = _w.value._nbits - (((48 : GoUInt)));
			var _bytes:Slice<GoUInt8> = _w.value._bytes.__slice__(_n, _n + ((6 : GoInt)));
			_bytes[((0 : GoInt))] = ((_bits : GoByte));
			_bytes[((1 : GoInt))] = (((_bits >> ((8 : GoUnTypedInt))) : GoByte));
			_bytes[((2 : GoInt))] = (((_bits >> ((16 : GoUnTypedInt))) : GoByte));
			_bytes[((3 : GoInt))] = (((_bits >> ((24 : GoUnTypedInt))) : GoByte));
			_bytes[((4 : GoInt))] = (((_bits >> ((32 : GoUnTypedInt))) : GoByte));
			_bytes[((5 : GoInt))] = (((_bits >> ((40 : GoUnTypedInt))) : GoByte));
			_n = _n + (((6 : GoInt)));
			if (_n < _bufferFlushSize) {
				continue;
			};
			_w.value._write(_w.value._bytes.__slice__(0, _n));
			if (_w.value._err != null) {
				return;
			};
			_n = ((0 : GoInt));
		};
		_w.value._nbytes = _n;
		_w.value._writeCode(_encoding[_endBlockMarker].__copy__());
	}

	public function _writeTokens(_tokens:Slice<T_token>, _leCodes:Slice<T_hcode>, _oeCodes:Slice<T_hcode>):Void {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_w.value._err != null) {
			return;
		};
		for (_t in _tokens) {
			if (_t.__t__ < _matchType) {
				_w.value._writeCode(_leCodes[_t._literal()].__copy__());
				continue;
			};
			var _length:GoUInt32 = _t._length();
			var _lengthCode:GoUInt32 = _lengthCode(_length);
			_w.value._writeCode(_leCodes[_lengthCode + _lengthCodesStart].__copy__());
			var _extraLengthBits:GoUInt = ((_lengthExtraBits[_lengthCode] : GoUInt));
			if (_extraLengthBits > ((0 : GoUInt))) {
				var _extraLength:GoInt32 = (((_length - _lengthBase[_lengthCode]) : GoInt32));
				_w.value._writeBits(_extraLength, _extraLengthBits);
			};
			var _offset:GoUInt32 = _t._offset();
			var _offsetCode:GoUInt32 = _offsetCode(_offset);
			_w.value._writeCode(_oeCodes[_offsetCode].__copy__());
			var _extraOffsetBits:GoUInt = ((_offsetExtraBits[_offsetCode] : GoUInt));
			if (_extraOffsetBits > ((0 : GoUInt))) {
				var _extraOffset:GoInt32 = (((_offset - _offsetBase[_offsetCode]) : GoInt32));
				_w.value._writeBits(_extraOffset, _extraOffsetBits);
			};
		};
	}

	public function _indexTokens(_tokens:Slice<T_token>):{var _0:GoInt; var _1:GoInt;} {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _numLiterals:GoInt = ((0 : GoInt)),
			_numOffsets:GoInt = ((0 : GoInt));
		{
			var _i;
			for (_obj in _w.value._literalFreq.keyValueIterator()) {
				_i = _obj.key;
				_w.value._literalFreq[_i] = ((0 : GoInt32));
			};
		};
		{
			var _i;
			for (_obj in _w.value._offsetFreq.keyValueIterator()) {
				_i = _obj.key;
				_w.value._offsetFreq[_i] = ((0 : GoInt32));
			};
		};
		for (_t in _tokens) {
			if (_t.__t__ < _matchType) {
				_w.value._literalFreq[_t._literal()]++;
				continue;
			};
			var _length:GoUInt32 = _t._length();
			var _offset:GoUInt32 = _t._offset();
			_w.value._literalFreq[_lengthCodesStart + _lengthCode(_length)]++;
			_w.value._offsetFreq[_offsetCode(_offset)]++;
		};
		_numLiterals = _w.value._literalFreq.length;
		while (_w.value._literalFreq[_numLiterals - ((1 : GoInt))] == ((0 : GoInt32))) {
			_numLiterals--;
		};
		_numOffsets = _w.value._offsetFreq.length;
		while (_numOffsets > ((0 : GoInt)) && _w.value._offsetFreq[_numOffsets - ((1 : GoInt))] == ((0 : GoInt32))) {
			_numOffsets--;
		};
		if (_numOffsets == ((0 : GoInt))) {
			_w.value._offsetFreq[((0 : GoInt))] = ((1 : GoInt32));
			_numOffsets = ((1 : GoInt));
		};
		_w.value._literalEncoding.value._generate(_w.value._literalFreq, ((15 : GoInt32)));
		_w.value._offsetEncoding.value._generate(_w.value._offsetFreq, ((15 : GoInt32)));
		return {_0: _numLiterals, _1: _numOffsets};
	}

	public function _writeBlockDynamic(_tokens:Slice<T_token>, _eof:Bool, _input:Slice<GoByte>):Void {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_w.value._err != null) {
			return;
		};
		_tokens = _tokens.__append__(new T_token(_endBlockMarker));
		var __tmp__ = _w.value._indexTokens(_tokens),
			_numLiterals:GoInt = __tmp__._0,
			_numOffsets:GoInt = __tmp__._1;
		_w.value._generateCodegen(_numLiterals, _numOffsets, _w.value._literalEncoding, _w.value._offsetEncoding);
		_w.value._codegenEncoding.value._generate(_w.value._codegenFreq.__slice__(0), ((7 : GoInt32)));
		var __tmp__ = _w.value._dynamicSize(_w.value._literalEncoding, _w.value._offsetEncoding, ((0 : GoInt))),
			_size:GoInt = __tmp__._0,
			_numCodegens:GoInt = __tmp__._1;
		{
			var __tmp__ = _w.value._storedSize(_input),
				_ssize:GoInt = __tmp__._0,
				_storable:Bool = __tmp__._1;
			if (_storable && _ssize < (_size + (_size >> ((4 : GoUnTypedInt))))) {
				_w.value._writeStoredHeader(_input.length, _eof);
				_w.value._writeBytes(_input);
				return;
			};
		};
		_w.value._writeDynamicHeader(_numLiterals, _numOffsets, _numCodegens, _eof);
		_w.value._writeTokens(_tokens, _w.value._literalEncoding.value._codes, _w.value._offsetEncoding.value._codes);
	}

	public function _writeBlock(_tokens:Slice<T_token>, _eof:Bool, _input:Slice<GoByte>):Void {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_w.value._err != null) {
			return;
		};
		_tokens = _tokens.__append__(new T_token(_endBlockMarker));
		var __tmp__ = _w.value._indexTokens(_tokens),
			_numLiterals:GoInt = __tmp__._0,
			_numOffsets:GoInt = __tmp__._1;
		var _extraBits:GoInt = ((0 : GoInt));
		var __tmp__ = _w.value._storedSize(_input),
			_storedSize:GoInt = __tmp__._0,
			_storable:Bool = __tmp__._1;
		if (_storable) {
			{
				var _lengthCode:GoInt = _lengthCodesStart + ((8 : GoUnTypedInt));
				Go.cfor(_lengthCode < _numLiterals, _lengthCode++, {
					_extraBits = _extraBits + (((_w.value._literalFreq[_lengthCode] : GoInt)) * ((_lengthExtraBits[_lengthCode - _lengthCodesStart] : GoInt)));
				});
			};
			{
				var _offsetCode:GoInt = ((4 : GoInt));
				Go.cfor(_offsetCode < _numOffsets, _offsetCode++, {
					_extraBits = _extraBits + (((_w.value._offsetFreq[_offsetCode] : GoInt)) * ((_offsetExtraBits[_offsetCode] : GoInt)));
				});
			};
		};
		var _literalEncoding:Pointer<T_huffmanEncoder> = _fixedLiteralEncoding;
		var _offsetEncoding:Pointer<T_huffmanEncoder> = _fixedOffsetEncoding;
		var _size:GoInt = _w.value._fixedSize(_extraBits);
		var _numCodegens:GoInt = ((0 : GoInt));
		_w.value._generateCodegen(_numLiterals, _numOffsets, _w.value._literalEncoding, _w.value._offsetEncoding);
		_w.value._codegenEncoding.value._generate(_w.value._codegenFreq.__slice__(0), ((7 : GoInt32)));
		var __tmp__ = _w.value._dynamicSize(_w.value._literalEncoding, _w.value._offsetEncoding, _extraBits),
			_dynamicSize:GoInt = __tmp__._0,
			_numCodegens:GoInt = __tmp__._1;
		if (_dynamicSize < _size) {
			_size = _dynamicSize;
			_literalEncoding = _w.value._literalEncoding;
			_offsetEncoding = _w.value._offsetEncoding;
		};
		if (_storable && _storedSize < _size) {
			_w.value._writeStoredHeader(_input.length, _eof);
			_w.value._writeBytes(_input);
			return;
		};
		if (_literalEncoding == _fixedLiteralEncoding) {
			_w.value._writeFixedHeader(_eof);
		} else {
			_w.value._writeDynamicHeader(_numLiterals, _numOffsets, _numCodegens, _eof);
		};
		_w.value._writeTokens(_tokens, _literalEncoding.value._codes, _offsetEncoding.value._codes);
	}

	public function _writeFixedHeader(_isEof:Bool):Void {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_w.value._err != null) {
			return;
		};
		var _value:GoInt32 = ((2 : GoInt32));
		if (_isEof) {
			_value = ((3 : GoInt32));
		};
		_w.value._writeBits(_value, ((3 : GoUInt)));
	}

	public function _writeStoredHeader(_length:GoInt, _isEof:Bool):Void {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_w.value._err != null) {
			return;
		};
		var _flag:GoInt32 = ((0 : GoInt32));
		if (_isEof) {
			_flag = ((1 : GoInt32));
		};
		_w.value._writeBits(_flag, ((3 : GoUInt)));
		_w.value._flush();
		_w.value._writeBits(((_length : GoInt32)), ((16 : GoUInt)));
		_w.value._writeBits((((-1 ^ ((_length : GoUInt16))) : GoInt32)), ((16 : GoUInt)));
	}

	public function _writeDynamicHeader(_numLiterals:GoInt, _numOffsets:GoInt, _numCodegens:GoInt, _isEof:Bool):Void {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_w.value._err != null) {
			return;
		};
		var _firstBits:GoInt32 = ((4 : GoInt32));
		if (_isEof) {
			_firstBits = ((5 : GoInt32));
		};
		_w.value._writeBits(_firstBits, ((3 : GoUInt)));
		_w.value._writeBits((((_numLiterals - ((257 : GoInt))) : GoInt32)), ((5 : GoUInt)));
		_w.value._writeBits((((_numOffsets - ((1 : GoInt))) : GoInt32)), ((5 : GoUInt)));
		_w.value._writeBits((((_numCodegens - ((4 : GoInt))) : GoInt32)), ((4 : GoUInt)));
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < _numCodegens, _i++, {
				var _value:GoUInt = ((_w.value._codegenEncoding.value._codes[_codegenOrder[_i]]._len : GoUInt));
				_w.value._writeBits(((_value : GoInt32)), ((3 : GoUInt)));
			});
		};
		var _i:GoInt = ((0 : GoInt));
		while (true) {
			var _codeWord:GoInt = ((_w.value._codegen[_i] : GoInt));
			_i++;
			if (_codeWord == _badCode) {
				break;
			};
			_w.value._writeCode(_w.value._codegenEncoding.value._codes[((_codeWord : GoUInt32))].__copy__());
			{
				var __switchIndex__ = -1;
				while (true) {
					if (_codeWord == ((16 : GoInt))) {
						_w.value._writeBits(((_w.value._codegen[_i] : GoInt32)), ((2 : GoUInt)));
						_i++;
						break;
						break;
					} else if (_codeWord == ((17 : GoInt))) {
						_w.value._writeBits(((_w.value._codegen[_i] : GoInt32)), ((3 : GoUInt)));
						_i++;
						break;
						break;
					} else if (_codeWord == ((18 : GoInt))) {
						_w.value._writeBits(((_w.value._codegen[_i] : GoInt32)), ((7 : GoUInt)));
						_i++;
						break;
						break;
					};
					break;
				};
			};
		};
	}

	public function _writeCode(_c:T_hcode):Void {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_w.value._err != null) {
			return;
		};
		_w.value._bits = _w.value._bits | ((((_c._code : GoUInt64)) << _w.value._nbits));
		_w.value._nbits = _w.value._nbits + (((_c._len : GoUInt)));
		if (_w.value._nbits >= ((48 : GoUInt))) {
			var _bits:GoUInt64 = _w.value._bits;
			_w.value._bits = (_w.value._bits >> (((48 : GoUnTypedInt))));
			_w.value._nbits = _w.value._nbits - (((48 : GoUInt)));
			var _n:GoInt = _w.value._nbytes;
			var _bytes:Slice<GoUInt8> = _w.value._bytes.__slice__(_n, _n + ((6 : GoInt)));
			_bytes[((0 : GoInt))] = ((_bits : GoByte));
			_bytes[((1 : GoInt))] = (((_bits >> ((8 : GoUnTypedInt))) : GoByte));
			_bytes[((2 : GoInt))] = (((_bits >> ((16 : GoUnTypedInt))) : GoByte));
			_bytes[((3 : GoInt))] = (((_bits >> ((24 : GoUnTypedInt))) : GoByte));
			_bytes[((4 : GoInt))] = (((_bits >> ((32 : GoUnTypedInt))) : GoByte));
			_bytes[((5 : GoInt))] = (((_bits >> ((40 : GoUnTypedInt))) : GoByte));
			_n = _n + (((6 : GoInt)));
			if (_n >= _bufferFlushSize) {
				_w.value._write(_w.value._bytes.__slice__(0, _n));
				_n = ((0 : GoInt));
			};
			_w.value._nbytes = _n;
		};
	}

	public function _storedSize(_in:Slice<GoByte>):{var _0:GoInt; var _1:Bool;} {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_in == null || _in.isNil()) {
			return {_0: ((0 : GoInt)), _1: false};
		};
		if (_in.length <= _maxStoreBlockSize) {
			return {_0: (_in.length + ((5 : GoInt))) * ((8 : GoInt)), _1: true};
		};
		return {_0: ((0 : GoInt)), _1: false};
	}

	public function _fixedSize(_extraBits:GoInt):GoInt {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return ((3 : GoInt))
			+ _fixedLiteralEncoding.value._bitLength(_w.value._literalFreq)
			+ _fixedOffsetEncoding.value._bitLength(_w.value._offsetFreq)
			+ _extraBits;
	}

	public function _dynamicSize(_litEnc:Pointer<T_huffmanEncoder>, _offEnc:Pointer<T_huffmanEncoder>, _extraBits:GoInt):{var _0:GoInt; var _1:GoInt;} {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _size:GoInt = ((0 : GoInt)), _numCodegens:GoInt = ((0 : GoInt));
		_numCodegens = _w.value._codegenFreq.length;
		while (_numCodegens > ((4 : GoInt)) && _w.value._codegenFreq[_codegenOrder[_numCodegens - ((1 : GoInt))]] == ((0 : GoInt32))) {
			_numCodegens--;
		};
		var _header:GoInt = ((3 : GoUnTypedInt))
			+ ((5 : GoUnTypedInt))
			+ ((5 : GoUnTypedInt))
			+ ((4 : GoUnTypedInt))
			+ (((3 : GoInt)) * _numCodegens)
			+ _w.value._codegenEncoding.value._bitLength(_w.value._codegenFreq.__slice__(0))
			+ ((_w.value._codegenFreq[((16 : GoInt))] : GoInt)) * ((2 : GoInt))
			+ ((_w.value._codegenFreq[((17 : GoInt))] : GoInt)) * ((3 : GoInt))
			+ ((_w.value._codegenFreq[((18 : GoInt))] : GoInt)) * ((7 : GoInt));
		_size = _header + _litEnc.value._bitLength(_w.value._literalFreq) + _offEnc.value._bitLength(_w.value._offsetFreq) + _extraBits;
		return {_0: _size, _1: _numCodegens};
	}

	public function _generateCodegen(_numLiterals:GoInt, _numOffsets:GoInt, _litEnc:Pointer<T_huffmanEncoder>, _offEnc:Pointer<T_huffmanEncoder>):Void {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var _i;
			for (_obj in _w.value._codegenFreq.keyValueIterator()) {
				_i = _obj.key;
				_w.value._codegenFreq[_i] = ((0 : GoInt32));
			};
		};
		var _codegen:Slice<GoUInt8> = _w.value._codegen;
		var _cgnl:Slice<GoUInt8> = _codegen.__slice__(0, _numLiterals);
		{
			var _i;
			for (_obj in _cgnl.keyValueIterator()) {
				_i = _obj.key;
				_cgnl[_i] = ((_litEnc.value._codes[_i]._len : GoUInt8));
			};
		};
		_cgnl = _codegen.__slice__(_numLiterals, _numLiterals + _numOffsets);
		{
			var _i;
			for (_obj in _cgnl.keyValueIterator()) {
				_i = _obj.key;
				_cgnl[_i] = ((_offEnc.value._codes[_i]._len : GoUInt8));
			};
		};
		_codegen[_numLiterals + _numOffsets] = _badCode;
		var _size:GoUInt8 = _codegen[((0 : GoInt))];
		var _count:GoInt = ((1 : GoInt));
		var _outIndex:GoInt = ((0 : GoInt));
		{
			var _inIndex:GoInt = ((1 : GoInt));
			Go.cfor(_size != _badCode, _inIndex++, {
				var _nextSize:GoUInt8 = _codegen[_inIndex];
				if (_nextSize == _size) {
					_count++;
					continue;
				};
				if (_size != ((0 : GoUInt8))) {
					_codegen[_outIndex] = _size;
					_outIndex++;
					_w.value._codegenFreq[_size]++;
					_count--;
					while (_count >= ((3 : GoInt))) {
						var _n:GoInt = ((6 : GoInt));
						if (_n > _count) {
							_n = _count;
						};
						_codegen[_outIndex] = ((16 : GoUInt8));
						_outIndex++;
						_codegen[_outIndex] = (((_n - ((3 : GoInt))) : GoUInt8));
						_outIndex++;
						_w.value._codegenFreq[((16 : GoInt))]++;
						_count = _count - (_n);
					};
				} else {
					while (_count >= ((11 : GoInt))) {
						var _n:GoInt = ((138 : GoInt));
						if (_n > _count) {
							_n = _count;
						};
						_codegen[_outIndex] = ((18 : GoUInt8));
						_outIndex++;
						_codegen[_outIndex] = (((_n - ((11 : GoInt))) : GoUInt8));
						_outIndex++;
						_w.value._codegenFreq[((18 : GoInt))]++;
						_count = _count - (_n);
					};
					if (_count >= ((3 : GoInt))) {
						_codegen[_outIndex] = ((17 : GoUInt8));
						_outIndex++;
						_codegen[_outIndex] = (((_count - ((3 : GoInt))) : GoUInt8));
						_outIndex++;
						_w.value._codegenFreq[((17 : GoInt))]++;
						_count = ((0 : GoInt));
					};
				};
				_count--;
				Go.cfor(_count >= ((0 : GoInt)), _count--, {
					_codegen[_outIndex] = _size;
					_outIndex++;
					_w.value._codegenFreq[_size]++;
				});
				_size = _nextSize;
				_count = ((1 : GoInt));
			});
		};
		_codegen[_outIndex] = _badCode;
	}

	public function _writeBytes(_bytes:Slice<GoByte>):Void {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_w.value._err != null) {
			return;
		};
		var _n:GoInt = _w.value._nbytes;
		if (_w.value._nbits & ((7 : GoUInt)) != ((0 : GoUInt))) {
			_w.value._err = new InternalError("writeBytes with unfinished bits");
			return;
		};
		while (_w.value._nbits != ((0 : GoUInt))) {
			_w.value._bytes[_n] = ((_w.value._bits : GoByte));
			_w.value._bits = (_w.value._bits >> (((8 : GoUnTypedInt))));
			_w.value._nbits = _w.value._nbits - (((8 : GoUInt)));
			_n++;
		};
		if (_n != ((0 : GoInt))) {
			_w.value._write(_w.value._bytes.__slice__(0, _n));
		};
		_w.value._nbytes = ((0 : GoInt));
		_w.value._write(_bytes);
	}

	public function _writeBits(_b:GoInt32, _nb:GoUInt):Void {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_w.value._err != null) {
			return;
		};
		_w.value._bits = _w.value._bits | ((((_b : GoUInt64)) << _w.value._nbits));
		_w.value._nbits = _w.value._nbits + (_nb);
		if (_w.value._nbits >= ((48 : GoUInt))) {
			var _bits:GoUInt64 = _w.value._bits;
			_w.value._bits = (_w.value._bits >> (((48 : GoUnTypedInt))));
			_w.value._nbits = _w.value._nbits - (((48 : GoUInt)));
			var _n:GoInt = _w.value._nbytes;
			var _bytes:Slice<GoUInt8> = _w.value._bytes.__slice__(_n, _n + ((6 : GoInt)));
			_bytes[((0 : GoInt))] = ((_bits : GoByte));
			_bytes[((1 : GoInt))] = (((_bits >> ((8 : GoUnTypedInt))) : GoByte));
			_bytes[((2 : GoInt))] = (((_bits >> ((16 : GoUnTypedInt))) : GoByte));
			_bytes[((3 : GoInt))] = (((_bits >> ((24 : GoUnTypedInt))) : GoByte));
			_bytes[((4 : GoInt))] = (((_bits >> ((32 : GoUnTypedInt))) : GoByte));
			_bytes[((5 : GoInt))] = (((_bits >> ((40 : GoUnTypedInt))) : GoByte));
			_n = _n + (((6 : GoInt)));
			if (_n >= _bufferFlushSize) {
				_w.value._write(_w.value._bytes.__slice__(0, _n));
				_n = ((0 : GoInt));
			};
			_w.value._nbytes = _n;
		};
	}

	public function _write(_b:Slice<GoByte>):Void {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_w.value._err != null) {
			return;
		};
		{
			var __tmp__ = _w.value._writer.write(_b);
			_w.value._err = __tmp__._1;
		};
	}

	public function _flush():Void {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_w.value._err != null) {
			_w.value._nbits = ((0 : GoUInt));
			return;
		};
		var _n:GoInt = _w.value._nbytes;
		while (_w.value._nbits != ((0 : GoUInt))) {
			_w.value._bytes[_n] = ((_w.value._bits : GoByte));
			_w.value._bits = (_w.value._bits >> (((8 : GoUnTypedInt))));
			if (_w.value._nbits > ((8 : GoUInt))) {
				_w.value._nbits = _w.value._nbits - (((8 : GoUInt)));
			} else {
				_w.value._nbits = ((0 : GoUInt));
			};
			_n++;
		};
		_w.value._bits = ((0 : GoUInt64));
		_w.value._write(_w.value._bytes.__slice__(0, _n));
		_w.value._nbytes = ((0 : GoInt));
	}

	public function _reset(_writer:stdgo.io.Io.Writer):Void {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_w.value._writer = _writer;
		{
			final __tmp__0 = ((0 : GoUInt64));
			final __tmp__1 = ((0 : GoUInt));
			final __tmp__2 = ((0 : GoInt));
			final __tmp__3 = ((null : stdgo.Error));
			_w.value._bits = __tmp__0;
			_w.value._nbits = __tmp__1;
			_w.value._nbytes = __tmp__2;
			_w.value._err = __tmp__3;
		};
	}

	public var _writer:stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
	public var _bits:GoUInt64 = ((0 : GoUInt64));
	public var _nbits:GoUInt = ((0 : GoUInt));
	public var _bytes:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...248) ((0 : GoUInt8))]);
	public var _codegenFreq:GoArray<GoInt32> = new GoArray<GoInt32>(...[for (i in 0...19) ((0 : GoInt32))]);
	public var _nbytes:GoInt = ((0 : GoInt));
	public var _literalFreq:Slice<GoInt32> = new Slice<GoInt32>().nil();
	public var _offsetFreq:Slice<GoInt32> = new Slice<GoInt32>().nil();
	public var _codegen:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _literalEncoding:Pointer<T_huffmanEncoder> = new Pointer<T_huffmanEncoder>().nil();
	public var _offsetEncoding:Pointer<T_huffmanEncoder> = new Pointer<T_huffmanEncoder>().nil();
	public var _codegenEncoding:Pointer<T_huffmanEncoder> = new Pointer<T_huffmanEncoder>().nil();
	public var _err:stdgo.Error = ((null : stdgo.Error));

	public function new(?_writer:stdgo.io.Io.Writer, ?_bits:GoUInt64, ?_nbits:GoUInt, ?_bytes:GoArray<GoUInt8>, ?_codegenFreq:GoArray<GoInt32>,
			?_nbytes:GoInt, ?_literalFreq:Slice<GoInt32>, ?_offsetFreq:Slice<GoInt32>, ?_codegen:Slice<GoUInt8>, ?_literalEncoding:Pointer<T_huffmanEncoder>,
			?_offsetEncoding:Pointer<T_huffmanEncoder>, ?_codegenEncoding:Pointer<T_huffmanEncoder>, ?_err:stdgo.Error)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_writer) + " " + Go.string(_bits) + " " + Go.string(_nbits) + " " + Go.string(_bytes) + " " + Go.string(_codegenFreq) + " "
			+ Go.string(_nbytes) + " " + Go.string(_literalFreq) + " " + Go.string(_offsetFreq) + " " + Go.string(_codegen) + " "
			+ Go.string(_literalEncoding) + " " + Go.string(_offsetEncoding) + " " + Go.string(_codegenEncoding) + " " + Go.string(_err) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_huffmanBitWriter(_writer, _bits, _nbits, _bytes, _codegenFreq, _nbytes, _literalFreq, _offsetFreq, _codegen, _literalEncoding,
			_offsetEncoding, _codegenEncoding, _err);
	}

	public function __set__(__tmp__) {
		this._writer = __tmp__._writer;
		this._bits = __tmp__._bits;
		this._nbits = __tmp__._nbits;
		this._bytes = __tmp__._bytes;
		this._codegenFreq = __tmp__._codegenFreq;
		this._nbytes = __tmp__._nbytes;
		this._literalFreq = __tmp__._literalFreq;
		this._offsetFreq = __tmp__._offsetFreq;
		this._codegen = __tmp__._codegen;
		this._literalEncoding = __tmp__._literalEncoding;
		this._offsetEncoding = __tmp__._offsetEncoding;
		this._codegenEncoding = __tmp__._codegenEncoding;
		this._err = __tmp__._err;
		return this;
	}
}

@:structInit class T_hcode {
	public function _set(_code:GoUInt16, _length:GoUInt16):Void {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_h.value._len = _length;
		_h.value._code = _code;
	}

	public var _code:GoUInt16 = ((0 : GoUInt16));
	public var _len:GoUInt16 = ((0 : GoUInt16));

	public function new(?_code:GoUInt16, ?_len:GoUInt16)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_code) + " " + Go.string(_len) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_hcode(_code, _len);
	}

	public function __set__(__tmp__) {
		this._code = __tmp__._code;
		this._len = __tmp__._len;
		return this;
	}
}

@:structInit class T_huffmanEncoder {
	public function _generate(_freq:Slice<GoInt32>, _maxBits:GoInt32):Void {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_h.value._freqcache == null || _h.value._freqcache.isNil()) {
			_h.value._freqcache = new Slice<T_literalNode>(...[
				for (i in 0...((_maxNumLit + ((1 : GoUnTypedInt)) : GoInt)).toBasic()) new T_literalNode()
			]);
		};
		var _list:Slice<T_literalNode> = _h.value._freqcache.__slice__(0, _freq.length + ((1 : GoInt)));
		var _count:GoInt = ((0 : GoInt));
		{
			var _i;
			var _f;
			for (_obj in _freq.keyValueIterator()) {
				_i = _obj.key;
				_f = _obj.value;
				if (_f != ((0 : GoInt32))) {
					_list[_count] = new T_literalNode(((_i : GoUInt16)), _f).__copy__();
					_count++;
				} else {
					_list[_count] = new T_literalNode().__copy__();
					_h.value._codes[_i]._len = ((0 : GoUInt16));
				};
			};
		};
		_list[_freq.length] = new T_literalNode().__copy__();
		_list = _list.__slice__(0, _count);
		if (_count <= ((2 : GoInt))) {
			{
				var _i;
				var _node;
				for (_obj in _list.keyValueIterator()) {
					_i = _obj.key;
					_node = _obj.value;
					_h.value._codes[_node._literal]._set(((_i : GoUInt16)), ((1 : GoUInt16)));
				};
			};
			return;
		};
		_h.value._lfs._sort(_list);
		var _bitCount:Slice<GoInt32> = _h.value._bitCounts(_list, _maxBits);
		_h.value._assignEncodingAndSize(_bitCount, _list);
	}

	public function _assignEncodingAndSize(_bitCount:Slice<GoInt32>, _list:Slice<T_literalNode>):Void {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _code:GoUInt16 = ((((0 : GoUInt16)) : GoUInt16));
		{
			var _n;
			var _bits;
			for (_obj in _bitCount.keyValueIterator()) {
				_n = _obj.key;
				_bits = _obj.value;
				_code = (_code << (((1 : GoUnTypedInt))));
				if (_n == ((0 : GoInt)) || _bits == ((0 : GoInt32))) {
					continue;
				};
				var _chunk:Slice<T_literalNode> = _list.__slice__(_list.length - ((_bits : GoInt)));
				_h.value._lns._sort(_chunk);
				for (_node in _chunk) {
					_h.value._codes[_node._literal] = (({_code: _reverseBits(_code, ((_n : GoUInt8))), _len: ((_n : GoUInt16))} : T_hcode)).__copy__();
					_code++;
				};
				_list = _list.__slice__(((0 : GoInt)), _len(_list) - ((_bits : GoInt)));
			};
		};
	}

	public function _bitCounts(_list:Slice<T_literalNode>, _maxBits:GoInt32):Slice<GoInt32> {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_maxBits >= _maxBitsLimit) {
			throw "flate: maxBits too large";
		};
		var _n:GoInt32 = ((_list.length : GoInt32));
		_list = _list.__slice__(((0 : GoInt)), _n + ((1 : GoInt32)));
		_list[_n] = _maxNode().__copy__();
		if (_maxBits > _n - ((1 : GoInt32))) {
			_maxBits = _n - ((1 : GoInt32));
		};
		var _levels:GoArray<T_levelInfo> = new GoArray<T_levelInfo>(...[for (i in 0...16) new T_levelInfo()]);
		var _leafCounts:GoArray<GoArray<GoInt32>> = new GoArray<GoArray<GoInt32>>(...[for (i in 0...16) new GoArray<GoInt32>(...[for (i in 0...16) ((0 : GoInt32))])]);
		{
			var _level:GoInt32 = ((((1 : GoInt32)) : GoInt32));
			Go.cfor(_level <= _maxBits, _level++, {
				_levels[_level] = (({
					_level: _level,
					_lastFreq: _list[((1 : GoInt))]._freq,
					_nextCharFreq: _list[((2 : GoInt))]._freq,
					_nextPairFreq: _list[((0 : GoInt))]._freq + _list[((1 : GoInt))]._freq,
					_needed: 0
				} : T_levelInfo)).__copy__();
				_leafCounts[_level][_level] = ((2 : GoInt32));
				if (_level == ((1 : GoInt32))) {
					_levels[_level]._nextPairFreq = stdgo.math.Math.maxInt32;
				};
			});
		};
		_levels[_maxBits]._needed = ((2 : GoInt32)) * _n - ((4 : GoInt32));
		var _level:GoInt32 = _maxBits;
		while (true) {
			var _l:Pointer<T_levelInfo> = Go.pointer(_levels[_level]);
			if (_l.value._nextPairFreq == stdgo.math.Math.maxInt32 && _l.value._nextCharFreq == stdgo.math.Math.maxInt32) {
				_l.value._needed = ((0 : GoInt32));
				_levels[_level + ((1 : GoInt32))]._nextPairFreq = stdgo.math.Math.maxInt32;
				_level++;
				continue;
			};
			var _prevFreq:GoInt32 = _l.value._lastFreq;
			if (_l.value._nextCharFreq < _l.value._nextPairFreq) {
				var _n:GoInt32 = _leafCounts[_level][_level] + ((1 : GoInt32));
				_l.value._lastFreq = _l.value._nextCharFreq;
				_leafCounts[_level][_level] = _n;
				_l.value._nextCharFreq = _list[_n]._freq;
			} else {
				_l.value._lastFreq = _l.value._nextPairFreq;
				Go.copy(_leafCounts[_level].__slice__(0, _level), _leafCounts[_level - ((1 : GoInt32))].__slice__(0, _level));
				_levels[_l.value._level - ((1 : GoInt32))]._needed = ((2 : GoInt32));
			};
			{
				_l.value._needed--;
				if (_l.value._needed == ((0 : GoInt32))) {
					if (_l.value._level == _maxBits) {
						break;
					};
					_levels[_l.value._level + ((1 : GoInt32))]._nextPairFreq = _prevFreq + _l.value._lastFreq;
					_level++;
				} else {
					while (_levels[_level - ((1 : GoInt32))]._needed > ((0 : GoInt32))) {
						_level--;
					};
				};
			};
		};
		if (_leafCounts[_maxBits][_maxBits] != _n) {
			throw "leafCounts[maxBits][maxBits] != n";
		};
		var _bitCount:Slice<GoInt32> = _h.value._bitCount.__slice__(0, _maxBits + ((1 : GoInt32)));
		var _bits:GoInt = ((1 : GoInt));
		var _counts:Pointer<GoArray<GoInt32>> = Go.pointer(_leafCounts[_maxBits]);
		{
			var _level:GoInt32 = _maxBits;
			Go.cfor(_level > ((0 : GoInt32)), _level--, {
				_bitCount[_bits] = _counts.value[_level] - _counts.value[_level - ((1 : GoInt32))];
				_bits++;
			});
		};
		return _bitCount;
	}

	public function _bitLength(_freq:Slice<GoInt32>):GoInt {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _total:GoInt = ((0 : GoInt));
		{
			var _i;
			var _f;
			for (_obj in _freq.keyValueIterator()) {
				_i = _obj.key;
				_f = _obj.value;
				if (_f != ((0 : GoInt32))) {
					_total = _total + (((_f : GoInt)) * ((_h.value._codes[_i]._len : GoInt)));
				};
			};
		};
		return _total;
	}

	public var _codes:Slice<T_hcode> = new Slice<T_hcode>().nil();
	public var _freqcache:Slice<T_literalNode> = new Slice<T_literalNode>().nil();
	public var _bitCount:GoArray<GoInt32> = new GoArray<GoInt32>(...[for (i in 0...17) ((0 : GoInt32))]);
	public var _lns:T_byLiteral = new T_byLiteral();
	public var _lfs:T_byFreq = new T_byFreq();

	public function new(?_codes:Slice<T_hcode>, ?_freqcache:Slice<T_literalNode>, ?_bitCount:GoArray<GoInt32>, ?_lns:T_byLiteral, ?_lfs:T_byFreq)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(_codes)
			+ " "
			+ Go.string(_freqcache)
			+ " "
			+ Go.string(_bitCount)
			+ " "
			+ Go.string(_lns)
			+ " "
			+ Go.string(_lfs)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_huffmanEncoder(_codes, _freqcache, _bitCount, _lns, _lfs);
	}

	public function __set__(__tmp__) {
		this._codes = __tmp__._codes;
		this._freqcache = __tmp__._freqcache;
		this._bitCount = __tmp__._bitCount;
		this._lns = __tmp__._lns;
		this._lfs = __tmp__._lfs;
		return this;
	}
}

@:structInit class T_literalNode {
	public var _literal:GoUInt16 = ((0 : GoUInt16));
	public var _freq:GoInt32 = ((0 : GoInt32));

	public function new(?_literal:GoUInt16, ?_freq:GoInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_literal) + " " + Go.string(_freq) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_literalNode(_literal, _freq);
	}

	public function __set__(__tmp__) {
		this._literal = __tmp__._literal;
		this._freq = __tmp__._freq;
		return this;
	}
}

@:structInit class T_levelInfo {
	public var _level:GoInt32 = ((0 : GoInt32));
	public var _lastFreq:GoInt32 = ((0 : GoInt32));
	public var _nextCharFreq:GoInt32 = ((0 : GoInt32));
	public var _nextPairFreq:GoInt32 = ((0 : GoInt32));
	public var _needed:GoInt32 = ((0 : GoInt32));

	public function new(?_level:GoInt32, ?_lastFreq:GoInt32, ?_nextCharFreq:GoInt32, ?_nextPairFreq:GoInt32, ?_needed:GoInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_level) + " " + Go.string(_lastFreq) + " " + Go.string(_nextCharFreq) + " " + Go.string(_nextPairFreq) + " "
			+ Go.string(_needed) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_levelInfo(_level, _lastFreq, _nextCharFreq, _nextPairFreq, _needed);
	}

	public function __set__(__tmp__) {
		this._level = __tmp__._level;
		this._lastFreq = __tmp__._lastFreq;
		this._nextCharFreq = __tmp__._nextCharFreq;
		this._nextPairFreq = __tmp__._nextPairFreq;
		this._needed = __tmp__._needed;
		return this;
	}
}

@:named class T_byLiteral {
	public function swap(_i:GoInt, _j:GoInt):Void {
		var _s = this.__copy__();
		{
			final __tmp__0 = _s.__t__[_j].__copy__();
			final __tmp__1 = _s.__t__[_i].__copy__();
			_s.__t__[_i] = __tmp__0;
			_s.__t__[_j] = __tmp__1;
		};
	}

	public function less(_i:GoInt, _j:GoInt):Bool {
		var _s = this.__copy__();
		return _s.__t__[_i]._literal < _s.__t__[_j]._literal;
	}

	public function len():GoInt {
		var _s = this.__copy__();
		return _s.__t__.length;
	}

	public function _sort(_a:Slice<T_literalNode>):Void {
		var _s = new Pointer(() -> new T_byLiteral(this.__t__), __tmp__ -> new T_byLiteral(this.__t__ = __tmp__.__t__));
		_s.value = new T_byLiteral(_a).__copy__();
		stdgo.sort.Sort.sort(_s.value);
	}

	public var __t__:Slice<T_literalNode>;

	public function new(?t:Slice<T_literalNode>) {
		__t__ = t == null ? new Slice<T_literalNode>().nil() : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_byLiteral(__t__);

	public function __append__(args:haxe.Rest<T_literalNode>)
		return new T_byLiteral(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new T_byLiteral(this.__t__.__slice__(low, high));
}

@:named class T_byFreq {
	public function swap(_i:GoInt, _j:GoInt):Void {
		var _s = this.__copy__();
		{
			final __tmp__0 = _s.__t__[_j].__copy__();
			final __tmp__1 = _s.__t__[_i].__copy__();
			_s.__t__[_i] = __tmp__0;
			_s.__t__[_j] = __tmp__1;
		};
	}

	public function less(_i:GoInt, _j:GoInt):Bool {
		var _s = this.__copy__();
		if (_s.__t__[_i]._freq == _s.__t__[_j]._freq) {
			return _s.__t__[_i]._literal < _s.__t__[_j]._literal;
		};
		return _s.__t__[_i]._freq < _s.__t__[_j]._freq;
	}

	public function len():GoInt {
		var _s = this.__copy__();
		return _s.__t__.length;
	}

	public function _sort(_a:Slice<T_literalNode>):Void {
		var _s = new Pointer(() -> new T_byFreq(this.__t__), __tmp__ -> new T_byFreq(this.__t__ = __tmp__.__t__));
		_s.value = new T_byFreq(_a).__copy__();
		stdgo.sort.Sort.sort(_s.value);
	}

	public var __t__:Slice<T_literalNode>;

	public function new(?t:Slice<T_literalNode>) {
		__t__ = t == null ? new Slice<T_literalNode>().nil() : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_byFreq(__t__);

	public function __append__(args:haxe.Rest<T_literalNode>)
		return new T_byFreq(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new T_byFreq(this.__t__.__slice__(low, high));
}

@:named class CorruptInputError {
	public function error():GoString {
		var _e = this.__copy__();
		return (("flate: corrupt input before offset " : GoString)) + stdgo.strconv.Strconv.formatInt(_e.__t__, ((10 : GoInt)));
	}

	public var __t__:GoInt64;

	public function new(?t:GoInt64) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new CorruptInputError(__t__);
}

@:named class InternalError {
	public function error():GoString {
		var _e = this.__copy__();
		return (("flate: internal error: " : GoString)) + _e.__t__;
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
		return new InternalError(__t__);
}

@:structInit class ReadError {
	public function error():GoString {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (("flate: read error at offset " : GoString))
			+ stdgo.strconv.Strconv.formatInt(_e.value.offset, ((10 : GoInt)))
			+ ((": " : GoString))
			+ _e.value.err.error();
	}

	public var offset:GoInt64 = ((0 : GoInt64));
	public var err:stdgo.Error = ((null : stdgo.Error));

	public function new(?offset:GoInt64, ?err:stdgo.Error)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(offset) + " " + Go.string(err) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ReadError(offset, err);
	}

	public function __set__(__tmp__) {
		this.offset = __tmp__.offset;
		this.err = __tmp__.err;
		return this;
	}
}

@:structInit class WriteError {
	public function error():GoString {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (("flate: write error at offset " : GoString))
			+ stdgo.strconv.Strconv.formatInt(_e.value.offset, ((10 : GoInt)))
			+ ((": " : GoString))
			+ _e.value.err.error();
	}

	public var offset:GoInt64 = ((0 : GoInt64));
	public var err:stdgo.Error = ((null : stdgo.Error));

	public function new(?offset:GoInt64, ?err:stdgo.Error)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(offset) + " " + Go.string(err) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new WriteError(offset, err);
	}

	public function __set__(__tmp__) {
		this.offset = __tmp__.offset;
		this.err = __tmp__.err;
		return this;
	}
}

@:structInit class T_huffmanDecoder {
	public function _init(_lengths:Slice<GoInt>):Bool {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		final _sanity:Bool = false;
		if (_h.value._min != ((0 : GoInt))) {
			_h.value = new T_huffmanDecoder().__copy__();
		};
		var _count:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...16) ((0 : GoInt))]);
		var _min:GoInt = ((0 : GoInt)), _max:GoInt = ((0 : GoInt));
		for (_n in _lengths) {
			if (_n == ((0 : GoInt))) {
				continue;
			};
			if (_min == ((0 : GoInt)) || _n < _min) {
				_min = _n;
			};
			if (_n > _max) {
				_max = _n;
			};
			_count[_n]++;
		};
		if (_max == ((0 : GoInt))) {
			return true;
		};
		var _code:GoInt = ((0 : GoInt));
		var _nextcode:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...16) ((0 : GoInt))]);
		{
			var _i:GoInt = _min;
			Go.cfor(_i <= _max, _i++, {
				_code = (_code << (((1 : GoUnTypedInt))));
				_nextcode[_i] = _code;
				_code = _code + (_count[_i]);
			});
		};
		if (_code != (((1 : GoInt)) << ((_max : GoUInt))) && !(_code == ((1 : GoInt)) && _max == ((1 : GoInt)))) {
			return false;
		};
		_h.value._min = _min;
		if (_max > _huffmanChunkBits) {
			var _numLinks:GoInt = (((1 : GoInt)) << (((_max : GoUInt)) - _huffmanChunkBits));
			_h.value._linkMask = (((_numLinks - ((1 : GoInt))) : GoUInt32));
			var _link:GoInt = (_nextcode[_huffmanChunkBits + ((1 : GoUnTypedInt))] >> ((1 : GoUnTypedInt)));
			_h.value._links = new Slice<Slice<GoUInt32>>(...[
				for (i in 0...((_huffmanNumChunks - _link : GoInt)).toBasic()) new Slice<GoUInt32>().nil()
			]);
			{
				var _j:GoUInt = ((_link : GoUInt));
				Go.cfor(_j < _huffmanNumChunks, _j++, {
					var _reverse:GoInt = ((stdgo.math.bits.Bits.reverse16(((_j : GoUInt16))) : GoInt));
					_reverse = (_reverse >> ((((((16 : GoUnTypedInt)) - _huffmanChunkBits) : GoUInt))));
					var _off:GoUInt = _j - ((_link : GoUInt));
					if (_sanity && _h.value._chunks[_reverse] != ((0 : GoUInt32))) {
						throw "impossible: overwriting existing chunk";
					};
					_h.value._chunks[_reverse] = ((((_off << _huffmanValueShift) | (_huffmanChunkBits + ((1 : GoUnTypedInt)))) : GoUInt32));
					_h.value._links[_off] = new Slice<GoUInt32>(...[for (i in 0...((_numLinks : GoInt)).toBasic()) ((0 : GoUInt32))]);
				});
			};
		};
		{
			var _i;
			var _n;
			for (_obj in _lengths.keyValueIterator()) {
				_i = _obj.key;
				_n = _obj.value;
				if (_n == ((0 : GoInt))) {
					continue;
				};
				var _code:GoInt = _nextcode[_n];
				_nextcode[_n]++;
				var _chunk:GoUInt32 = ((((_i << _huffmanValueShift) | _n) : GoUInt32));
				var _reverse:GoInt = ((stdgo.math.bits.Bits.reverse16(((_code : GoUInt16))) : GoInt));
				_reverse = (_reverse >> ((((((16 : GoInt)) - _n) : GoUInt))));
				if (_n <= _huffmanChunkBits) {
					{
						var _off:GoInt = _reverse;
						Go.cfor(_off < _h.value._chunks.length, _off = _off + ((((1 : GoInt)) << ((_n : GoUInt)))), {
							if (_sanity && _h.value._chunks[_off] != ((0 : GoUInt32))) {
								throw "impossible: overwriting existing chunk";
							};
							_h.value._chunks[_off] = _chunk;
						});
					};
				} else {
					var _j:GoInt = _reverse & (_huffmanNumChunks - ((1 : GoUnTypedInt)));
					if (_sanity && _h.value._chunks[_j] & _huffmanCountMask != _huffmanChunkBits + ((1 : GoUnTypedInt))) {
						throw "impossible: not an indirect chunk";
					};
					var _value:GoUInt32 = (_h.value._chunks[_j] >> _huffmanValueShift);
					var _linktab:Slice<GoUInt32> = _h.value._links[_value];
					_reverse = (_reverse >> (_huffmanChunkBits));
					{
						var _off:GoInt = _reverse;
						Go.cfor(_off < _linktab.length, _off = _off + ((((1 : GoInt)) << (((_n - _huffmanChunkBits) : GoUInt)))), {
							if (_sanity && _linktab[_off] != ((0 : GoUInt32))) {
								throw "impossible: overwriting existing chunk";
							};
							_linktab[_off] = _chunk;
						});
					};
				};
			};
		};
		if (_sanity) {
			{
				var _i;
				var _chunk;
				for (_obj in _h.value._chunks.keyValueIterator()) {
					_i = _obj.key;
					_chunk = _obj.value;
					if (_chunk == ((0 : GoUInt32))) {
						if (_code == ((1 : GoInt)) && _i % ((2 : GoInt)) == ((1 : GoInt))) {
							continue;
						};
						throw "impossible: missing chunk";
					};
				};
			};
			for (_linktab in _h.value._links) {
				for (_chunk in _linktab) {
					if (_chunk == ((0 : GoUInt32))) {
						throw "impossible: missing chunk";
					};
				};
			};
		};
		return true;
	}

	public var _min:GoInt = ((0 : GoInt));
	public var _chunks:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0...512) ((0 : GoUInt32))]);
	public var _links:Slice<Slice<GoUInt32>> = new Slice<Slice<GoUInt32>>().nil();
	public var _linkMask:GoUInt32 = ((0 : GoUInt32));

	public function new(?_min:GoInt, ?_chunks:GoArray<GoUInt32>, ?_links:Slice<Slice<GoUInt32>>, ?_linkMask:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_min) + " " + Go.string(_chunks) + " " + Go.string(_links) + " " + Go.string(_linkMask) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_huffmanDecoder(_min, _chunks, _links, _linkMask);
	}

	public function __set__(__tmp__) {
		this._min = __tmp__._min;
		this._chunks = __tmp__._chunks;
		this._links = __tmp__._links;
		this._linkMask = __tmp__._linkMask;
		return this;
	}
}

@:structInit class T_decompressor {
	public function reset(_r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):Error {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_f.value = (({
			_r: _makeReader(_r),
			_bits: _f.value._bits,
			_codebits: _f.value._codebits,
			_dict: _f.value._dict.__copy__(),
			_step: (_decompressor.value).value._nextBlock,
			_roffset: 0,
			_b: 0,
			_nb: 0,
			_h1: new T_huffmanDecoder(),
			_h2: new T_huffmanDecoder(),
			_buf: new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))]),
			_stepState: 0,
			_final: false,
			_err: ((null : stdgo.Error)),
			_toRead: new Slice<GoUInt8>().nil(),
			_hl: new Pointer<T_huffmanDecoder>().nil(),
			_hd: new Pointer<T_huffmanDecoder>().nil(),
			_copyLen: 0,
			_copyDist: 0
		} : T_decompressor)).__copy__();
		_f.value._dict._init(_maxMatchOffset, _dict);
		return ((null : stdgo.Error));
	}

	public function _huffSym(_h:Pointer<T_huffmanDecoder>):{var _0:GoInt; var _1:Error;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoUInt = ((_h.value._min : GoUInt));
		var _nb:GoUInt = _f.value._nb, _b:GoUInt32 = _f.value._b;
		while (true) {
			while (_nb < _n) {
				var __tmp__ = _f.value._r.readByte(),
					_c:GoUInt8 = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err != null) {
					_f.value._b = _b;
					_f.value._nb = _nb;
					return {_0: ((0 : GoInt)), _1: _noEOF(_err)};
				};
				_f.value._roffset++;
				_b = _b | ((((_c : GoUInt32)) << (_nb & ((31 : GoUInt)))));
				_nb = _nb + (((8 : GoUInt)));
			};
			var _chunk:GoUInt32 = _h.value._chunks[_b & (_huffmanNumChunks - ((1 : GoUnTypedInt)))];
			_n = (((_chunk & _huffmanCountMask) : GoUInt));
			if (_n > _huffmanChunkBits) {
				_chunk = _h.value._links[(_chunk >> _huffmanValueShift)][((_b >> _huffmanChunkBits)) & _h.value._linkMask];
				_n = (((_chunk & _huffmanCountMask) : GoUInt));
			};
			if (_n <= _nb) {
				if (_n == ((0 : GoUInt))) {
					_f.value._b = _b;
					_f.value._nb = _nb;
					_f.value._err = new CorruptInputError(_f.value._roffset);
					return {_0: ((0 : GoInt)), _1: _f.value._err};
				};
				_f.value._b = (_b >> (_n & ((31 : GoUInt))));
				_f.value._nb = _nb - _n;
				return {_0: (((_chunk >> _huffmanValueShift) : GoInt)), _1: ((null : stdgo.Error))};
			};
		};
	}

	public function _moreBits():Error {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _f.value._r.readByte(),
			_c:GoUInt8 = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return _noEOF(_err);
		};
		_f.value._roffset++;
		_f.value._b = _f.value._b | ((((_c : GoUInt32)) << _f.value._nb));
		_f.value._nb = _f.value._nb + (((8 : GoUInt)));
		return ((null : stdgo.Error));
	}

	public function _finishBlock():Void {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_f.value._final) {
			if (_f.value._dict._availRead() > ((0 : GoInt))) {
				_f.value._toRead = _f.value._dict._readFlush();
			};
			_f.value._err = stdgo.io.Io.eof;
		};
		_f.value._step = (_decompressor.value).value._nextBlock;
	}

	public function _copyData():Void {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _buf:Slice<GoUInt8> = _f.value._dict._writeSlice();
		if (_buf.length > _f.value._copyLen) {
			_buf = _buf.__slice__(0, _f.value._copyLen);
		};
		var __tmp__ = stdgo.io.Io.readFull(_f.value._r, _buf),
			_cnt:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		_f.value._roffset = _f.value._roffset + (((_cnt : GoInt64)));
		_f.value._copyLen = _f.value._copyLen - (_cnt);
		_f.value._dict._writeMark(_cnt);
		if (_err != null) {
			_f.value._err = _noEOF(_err);
			return;
		};
		if (_f.value._dict._availWrite() == ((0 : GoInt)) || _f.value._copyLen > ((0 : GoInt))) {
			_f.value._toRead = _f.value._dict._readFlush();
			_f.value._step = (_decompressor.value).value._copyData;
			return;
		};
		_f.value._finishBlock();
	}

	public function _dataBlock():Void {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_f.value._nb = ((0 : GoUInt));
		_f.value._b = ((0 : GoUInt32));
		var __tmp__ = stdgo.io.Io.readFull(_f.value._r, _f.value._buf.__slice__(((0 : GoInt)), ((4 : GoInt)))),
			_nr:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		_f.value._roffset = _f.value._roffset + (((_nr : GoInt64)));
		if (_err != null) {
			_f.value._err = _noEOF(_err);
			return;
		};
		var _n:GoInt = ((_f.value._buf[((0 : GoInt))] : GoInt)) | (((_f.value._buf[((1 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt)));
		var _nn:GoInt = ((_f.value._buf[((2 : GoInt))] : GoInt)) | (((_f.value._buf[((3 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt)));
		if (((_nn : GoUInt16)) != (((-1 ^ _n) : GoUInt16))) {
			_f.value._err = new CorruptInputError(_f.value._roffset);
			return;
		};
		if (_n == ((0 : GoInt))) {
			_f.value._toRead = _f.value._dict._readFlush();
			_f.value._finishBlock();
			return;
		};
		_f.value._copyLen = _n;
		_f.value._copyData();
	}

	public function _huffmanBlock():Void {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		stdgo.internal.Macro.controlFlow({
			final _stateInit:GoUnTypedInt = (0 : GoUnTypedInt), _stateDict:GoUnTypedInt = (1 : GoUnTypedInt);
			if (_f.value._stepState == _stateInit) {
				@:goto "readLiteral";
			} else if (_f.value._stepState == _stateDict) {
				@:goto "copyHistory";
			};
			@:label("readLiteral") {
				var __tmp__ = _f.value._huffSym(_f.value._hl),
					_v:GoInt = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err != null) {
					_f.value._err = _err;
					return;
				};
				var _n:GoUInt = ((0 : GoUInt));
				var _length:GoInt = ((0 : GoInt));
				if (_v < ((256 : GoInt))) {
					_f.value._dict._writeByte(((_v : GoByte)));
					if (_f.value._dict._availWrite() == ((0 : GoInt))) {
						_f.value._toRead = _f.value._dict._readFlush();
						_f.value._step = (_decompressor.value).value._huffmanBlock;
						_f.value._stepState = _stateInit;
						return;
					};
					@:goto "readLiteral";
				} else if (_v == ((256 : GoInt))) {
					_f.value._finishBlock();
					return;
				} else if (_v < ((265 : GoInt))) {
					_length = _v - (((257 : GoUnTypedInt)) - ((3 : GoUnTypedInt)));
					_n = ((0 : GoUInt));
				} else if (_v < ((269 : GoInt))) {
					_length = _v * ((2 : GoInt)) - (((265 : GoUnTypedInt)) * ((2 : GoUnTypedInt)) - ((11 : GoUnTypedInt)));
					_n = ((1 : GoUInt));
				} else if (_v < ((273 : GoInt))) {
					_length = _v * ((4 : GoInt)) - (((269 : GoUnTypedInt)) * ((4 : GoUnTypedInt)) - ((19 : GoUnTypedInt)));
					_n = ((2 : GoUInt));
				} else if (_v < ((277 : GoInt))) {
					_length = _v * ((8 : GoInt)) - (((273 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) - ((35 : GoUnTypedInt)));
					_n = ((3 : GoUInt));
				} else if (_v < ((281 : GoInt))) {
					_length = _v * ((16 : GoInt)) - (((277 : GoUnTypedInt)) * ((16 : GoUnTypedInt)) - ((67 : GoUnTypedInt)));
					_n = ((4 : GoUInt));
				} else if (_v < ((285 : GoInt))) {
					_length = _v * ((32 : GoInt)) - (((281 : GoUnTypedInt)) * ((32 : GoUnTypedInt)) - ((131 : GoUnTypedInt)));
					_n = ((5 : GoUInt));
				} else if (_v < _maxNumLit) {
					_length = ((258 : GoInt));
					_n = ((0 : GoUInt));
				} else {
					_f.value._err = new CorruptInputError(_f.value._roffset);
					return;
				};
				if (_n > ((0 : GoUInt))) {
					while (_f.value._nb < _n) {
						{
							_err = _f.value._moreBits();
							if (_err != null) {
								_f.value._err = _err;
								return;
							};
						};
					};
					_length = _length + ((((_f.value._b & ((((((1 : GoUInt32)) << _n) - ((1 : GoUInt32))) : GoUInt32))) : GoInt)));
					_f.value._b = (_f.value._b >> (_n));
					_f.value._nb = _f.value._nb - (_n);
				};
				var _dist:GoInt = ((0 : GoInt));
				if (_f.value._hd == null || _f.value._hd.isNil()) {
					while (_f.value._nb < ((5 : GoUInt))) {
						{
							_err = _f.value._moreBits();
							if (_err != null) {
								_f.value._err = _err;
								return;
							};
						};
					};
					_dist = ((stdgo.math.bits.Bits.reverse8((((_f.value._b & ((31 : GoUInt32)) << ((3 : GoUnTypedInt))) : GoUInt8))) : GoInt));
					_f.value._b = (_f.value._b >> (((5 : GoUnTypedInt))));
					_f.value._nb = _f.value._nb - (((5 : GoUInt)));
				} else {
					{
						{
							var __tmp__ = _f.value._huffSym(_f.value._hd);
							_dist = __tmp__._0;
							_err = __tmp__._1;
						};
						if (_err != null) {
							_f.value._err = _err;
							return;
						};
					};
				};
				if (_dist < ((4 : GoInt))) {
					_dist++;
				} else if (_dist < _maxNumDist) {
					var _nb:GoUInt = ((((_dist - ((2 : GoInt))) : GoUInt)) >> ((1 : GoUnTypedInt)));
					var _extra:GoInt = ((_dist & ((1 : GoInt))) << _nb);
					while (_f.value._nb < _nb) {
						{
							_err = _f.value._moreBits();
							if (_err != null) {
								_f.value._err = _err;
								return;
							};
						};
					};
					_extra = _extra | ((((_f.value._b & ((((((1 : GoUInt32)) << _nb) - ((1 : GoUInt32))) : GoUInt32))) : GoInt)));
					_f.value._b = (_f.value._b >> (_nb));
					_f.value._nb = _f.value._nb - (_nb);
					_dist = (((1 : GoInt)) << (_nb + ((1 : GoUInt)))) + ((1 : GoInt)) + _extra;
				} else {
					_f.value._err = new CorruptInputError(_f.value._roffset);
					return;
				};
				if (_dist > _f.value._dict._histSize()) {
					_f.value._err = new CorruptInputError(_f.value._roffset);
					return;
				};
				{
					final __tmp__0 = _length;
					final __tmp__1 = _dist;
					_f.value._copyLen = __tmp__0;
					_f.value._copyDist = __tmp__1;
				};
				@:goto "copyHistory";
			};
			@:label("copyHistory") {
				var _cnt:GoInt = _f.value._dict._tryWriteCopy(_f.value._copyDist, _f.value._copyLen);
				if (_cnt == ((0 : GoInt))) {
					_cnt = _f.value._dict._writeCopy(_f.value._copyDist, _f.value._copyLen);
				};
				_f.value._copyLen = _f.value._copyLen - (_cnt);
				if (_f.value._dict._availWrite() == ((0 : GoInt)) || _f.value._copyLen > ((0 : GoInt))) {
					_f.value._toRead = _f.value._dict._readFlush();
					_f.value._step = (_decompressor.value).value._huffmanBlock;
					_f.value._stepState = _stateDict;
					return;
				};
				@:goto "readLiteral";
			};
		});
	}

	public function _readHuffman():Error {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		while (_f.value._nb < ((5 : GoUnTypedInt)) + ((5 : GoUnTypedInt)) + ((4 : GoUnTypedInt))) {
			{
				var _err:stdgo.Error = _f.value._moreBits();
				if (_err != null) {
					return _err;
				};
			};
		};
		var _nlit:GoInt = (((_f.value._b & ((31 : GoUInt32))) : GoInt)) + ((257 : GoInt));
		if (_nlit > _maxNumLit) {
			return new CorruptInputError(_f.value._roffset);
		};
		_f.value._b = (_f.value._b >> (((5 : GoUnTypedInt))));
		var _ndist:GoInt = (((_f.value._b & ((31 : GoUInt32))) : GoInt)) + ((1 : GoInt));
		if (_ndist > _maxNumDist) {
			return new CorruptInputError(_f.value._roffset);
		};
		_f.value._b = (_f.value._b >> (((5 : GoUnTypedInt))));
		var _nclen:GoInt = (((_f.value._b & ((15 : GoUInt32))) : GoInt)) + ((4 : GoInt));
		_f.value._b = (_f.value._b >> (((4 : GoUnTypedInt))));
		_f.value._nb = _f.value._nb - (((5 : GoUnTypedInt)) + ((5 : GoUnTypedInt)) + ((4 : GoUnTypedInt)));
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < _nclen, _i++, {
				while (_f.value._nb < ((3 : GoUInt))) {
					{
						var _err:stdgo.Error = _f.value._moreBits();
						if (_err != null) {
							return _err;
						};
					};
				};
				_f.value._codebits.value[_codeOrder[_i]] = (((_f.value._b & ((7 : GoUInt32))) : GoInt));
				_f.value._b = (_f.value._b >> (((3 : GoUnTypedInt))));
				_f.value._nb = _f.value._nb - (((3 : GoUInt)));
			});
		};
		{
			var _i:GoInt = _nclen;
			Go.cfor(_i < _codeOrder.length, _i++, {
				_f.value._codebits.value[_codeOrder[_i]] = ((0 : GoInt));
			});
		};
		if (!_f.value._h1._init(_f.value._codebits.value.__slice__(((0 : GoInt))))) {
			return new CorruptInputError(_f.value._roffset);
		};
		{
			var _i:GoInt = ((0 : GoInt)), _n:GoInt = _nlit + _ndist;
			while (_i < _n) {
				var __tmp__ = _f.value._huffSym(Go.pointer(_f.value._h1)),
					_x:GoInt = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err != null) {
					return _err;
				};
				if (_x < ((16 : GoInt))) {
					_f.value._bits.value[_i] = _x;
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
						return new CorruptInputError(_f.value._roffset);
					};
					_b = _f.value._bits.value[_i - ((1 : GoInt))];
				} else if (_x == ((17 : GoInt))) {
					_rep = ((3 : GoInt));
					_nb = ((3 : GoUInt));
					_b = ((0 : GoInt));
				} else if (_x == ((18 : GoInt))) {
					_rep = ((11 : GoInt));
					_nb = ((7 : GoUInt));
					_b = ((0 : GoInt));
				};
				while (_f.value._nb < _nb) {
					{
						var _err:stdgo.Error = _f.value._moreBits();
						if (_err != null) {
							return _err;
						};
					};
				};
				_rep = _rep + ((((_f.value._b & ((((((1 : GoUInt32)) << _nb) - ((1 : GoUInt32))) : GoUInt32))) : GoInt)));
				_f.value._b = (_f.value._b >> (_nb));
				_f.value._nb = _f.value._nb - (_nb);
				if (_i + _rep > _n) {
					return new CorruptInputError(_f.value._roffset);
				};
				{
					var _j:GoInt = ((0 : GoInt));
					Go.cfor(_j < _rep, _j++, {
						_f.value._bits.value[_i] = _b;
						_i++;
					});
				};
			};
		};
		if (!_f.value._h1._init(_f.value._bits.value.__slice__(((0 : GoInt)), _nlit))
			|| !_f.value._h2._init(_f.value._bits.value.__slice__(_nlit, _nlit + _ndist))) {
			return new CorruptInputError(_f.value._roffset);
		};
		if (_f.value._h1._min < _f.value._bits.value[_endBlockMarker]) {
			_f.value._h1._min = _f.value._bits.value[_endBlockMarker];
		};
		return ((null : stdgo.Error));
	}

	public function close():Error {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (Go.toInterface(_f.value._err) == Go.toInterface(stdgo.io.Io.eof)) {
			return ((null : stdgo.Error));
		};
		return _f.value._err;
	}

	public function read(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		while (true) {
			if (_f.value._toRead.length > ((0 : GoInt))) {
				var _n:GoInt = Go.copy(_b, _f.value._toRead);
				_f.value._toRead = _f.value._toRead.__slice__(_n);
				if (_f.value._toRead.length == ((0 : GoInt))) {
					return {_0: _n, _1: _f.value._err};
				};
				return {_0: _n, _1: ((null : stdgo.Error))};
			};
			if (_f.value._err != null) {
				return {_0: ((0 : GoInt)), _1: _f.value._err};
			};
			_f.value._step(_f);
			if (_f.value._err != null && _f.value._toRead.length == ((0 : GoInt))) {
				_f.value._toRead = _f.value._dict._readFlush();
			};
		};
	}

	public function _nextBlock():Void {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		while (_f.value._nb < ((1 : GoUnTypedInt)) + ((2 : GoUnTypedInt))) {
			{
				_f.value._err = _f.value._moreBits();
				if (_f.value._err != null) {
					return;
				};
			};
		};
		_f.value._final = _f.value._b & ((1 : GoUInt32)) == ((1 : GoUInt32));
		_f.value._b = (_f.value._b >> (((1 : GoUnTypedInt))));
		var _typ:GoUInt32 = _f.value._b & ((3 : GoUInt32));
		_f.value._b = (_f.value._b >> (((2 : GoUnTypedInt))));
		_f.value._nb = _f.value._nb - (((1 : GoUnTypedInt)) + ((2 : GoUnTypedInt)));
		{
			var __switchIndex__ = -1;
			while (true) {
				if (_typ == ((0 : GoUInt32))) {
					_f.value._dataBlock();
					break;
				} else if (_typ == ((1 : GoUInt32))) {
					_f.value._hl = Go.pointer(_fixedHuffmanDecoder);
					_f.value._hd = new Pointer<T_huffmanDecoder>().nil();
					_f.value._huffmanBlock();
					break;
				} else if (_typ == ((2 : GoUInt32))) {
					{
						_f.value._err = _f.value._readHuffman();
						if (_f.value._err != null) {
							break;
						};
					};
					_f.value._hl = Go.pointer(_f.value._h1);
					_f.value._hd = Go.pointer(_f.value._h2);
					_f.value._huffmanBlock();
					break;
				} else {
					_f.value._err = new CorruptInputError(_f.value._roffset);
				};
				break;
			};
		};
	}

	public var _r:Reader = ((null : Reader));
	public var _roffset:GoInt64 = ((0 : GoInt64));
	public var _b:GoUInt32 = ((0 : GoUInt32));
	public var _nb:GoUInt = ((0 : GoUInt));
	public var _h1:T_huffmanDecoder = new T_huffmanDecoder();
	public var _h2:T_huffmanDecoder = new T_huffmanDecoder();
	public var _bits:Pointer<GoArray<GoInt>> = new Pointer<GoArray<GoInt>>().nil();
	public var _codebits:Pointer<GoArray<GoInt>> = new Pointer<GoArray<GoInt>>().nil();
	public var _dict:T_dictDecoder = new T_dictDecoder();
	public var _buf:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))]);
	public var _step:Pointer<T_decompressor>->Void = null;
	public var _stepState:GoInt = ((0 : GoInt));
	public var _final:Bool = false;
	public var _err:stdgo.Error = ((null : stdgo.Error));
	public var _toRead:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _hl:Pointer<T_huffmanDecoder> = new Pointer<T_huffmanDecoder>().nil();
	public var _hd:Pointer<T_huffmanDecoder> = new Pointer<T_huffmanDecoder>().nil();
	public var _copyLen:GoInt = ((0 : GoInt));
	public var _copyDist:GoInt = ((0 : GoInt));

	public function new(?_r:Reader, ?_roffset:GoInt64, ?_b:GoUInt32, ?_nb:GoUInt, ?_h1:T_huffmanDecoder, ?_h2:T_huffmanDecoder,
			?_bits:Pointer<GoArray<GoInt>>, ?_codebits:Pointer<GoArray<GoInt>>, ?_dict:T_dictDecoder, ?_buf:GoArray<GoUInt8>,
			?_step:Pointer<T_decompressor>->Void, ?_stepState:GoInt, ?_final:Bool, ?_err:stdgo.Error, ?_toRead:Slice<GoUInt8>, ?_hl:Pointer<T_huffmanDecoder>,
			?_hd:Pointer<T_huffmanDecoder>, ?_copyLen:GoInt, ?_copyDist:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_r) + " " + Go.string(_roffset) + " " + Go.string(_b) + " " + Go.string(_nb) + " " + Go.string(_h1) + " " + Go.string(_h2)
			+ " " + Go.string(_bits) + " " + Go.string(_codebits) + " " + Go.string(_dict) + " " + Go.string(_buf) + " " + Go.string(_step) + " "
			+ Go.string(_stepState) + " " + Go.string(_final) + " " + Go.string(_err) + " " + Go.string(_toRead) + " " + Go.string(_hl) + " "
			+ Go.string(_hd) + " " + Go.string(_copyLen) + " " + Go.string(_copyDist) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_decompressor(_r, _roffset, _b, _nb, _h1, _h2, _bits, _codebits, _dict, _buf, _step, _stepState, _final, _err, _toRead, _hl, _hd,
			_copyLen, _copyDist);
	}

	public function __set__(__tmp__) {
		this._r = __tmp__._r;
		this._roffset = __tmp__._roffset;
		this._b = __tmp__._b;
		this._nb = __tmp__._nb;
		this._h1 = __tmp__._h1;
		this._h2 = __tmp__._h2;
		this._bits = __tmp__._bits;
		this._codebits = __tmp__._codebits;
		this._dict = __tmp__._dict;
		this._buf = __tmp__._buf;
		this._step = __tmp__._step;
		this._stepState = __tmp__._stepState;
		this._final = __tmp__._final;
		this._err = __tmp__._err;
		this._toRead = __tmp__._toRead;
		this._hl = __tmp__._hl;
		this._hd = __tmp__._hd;
		this._copyLen = __tmp__._copyLen;
		this._copyDist = __tmp__._copyDist;
		return this;
	}
}

@:named class T_token {
	public function _length():GoUInt32 {
		var _t = this.__copy__();
		return (new T_token((new T_token(_t.__t__ - _matchType)).__t__ >> _lengthShift)).__t__;
	}

	public function _offset():GoUInt32 {
		var _t = this.__copy__();
		return _t.__t__ & _offsetMask;
	}

	public function _literal():GoUInt32 {
		var _t = this.__copy__();
		return new T_token(_t.__t__ - _literalType).__t__;
	}

	public var __t__:GoUInt32;

	public function new(?t:GoUInt32) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_token(__t__);
}

var _offsetBase:Slice<GoUInt32> = new Slice<GoUInt32>(((0 : GoUInt32)), ((1 : GoUInt32)), ((2 : GoUInt32)), ((3 : GoUInt32)), ((4 : GoUInt32)),
	((6 : GoUInt32)), ((8 : GoUInt32)), ((12 : GoUInt32)), ((16 : GoUInt32)), ((24 : GoUInt32)), ((32 : GoUInt32)), ((48 : GoUInt32)), ((64 : GoUInt32)),
	((96 : GoUInt32)), ((128 : GoUInt32)), ((192 : GoUInt32)), ((256 : GoUInt32)), ((384 : GoUInt32)), ((512 : GoUInt32)), ((768 : GoUInt32)),
	((1024 : GoUInt32)), ((1536 : GoUInt32)), ((2048 : GoUInt32)), ((3072 : GoUInt32)), ((4096 : GoUInt32)), ((6144 : GoUInt32)), ((8192 : GoUInt32)),
	((12288 : GoUInt32)), ((16384 : GoUInt32)), ((24576 : GoUInt32)));

var _fixedOffsetEncoding:Pointer<T_huffmanEncoder> = _generateFixedOffsetEncoding();
final _maxBitsLimit:GoInt64 = ((16 : GoUnTypedInt));
final _bufferFlushSize:GoInt64 = ((240 : GoUnTypedInt));
final _bufferSize:GoUnTypedInt = _bufferFlushSize + ((8 : GoUnTypedInt));
final _tableBits:GoInt64 = ((14 : GoUnTypedInt));
final _tableShift:GoUnTypedInt = ((32 : GoUnTypedInt)) - _tableBits;
var _fixedHuffmanDecoder:T_huffmanDecoder = new T_huffmanDecoder();
final _huffmanChunkBits:GoInt64 = ((9 : GoUnTypedInt));
final _huffmanNumChunks:GoUnTypedInt = (((1 : GoUnTypedInt)) << _huffmanChunkBits);
final _maxFlateBlockTokens:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((14 : GoUnTypedInt)));
final bestSpeed:GoInt64 = ((1 : GoUnTypedInt));
final _maxCodeLen:GoInt64 = ((16 : GoUnTypedInt));
final _huffmanValueShift:GoInt64 = ((4 : GoUnTypedInt));

var _lengthExtraBits:Slice<GoInt8> = new Slice<GoInt8>(((0 : GoInt8)), ((0 : GoInt8)), ((0 : GoInt8)), ((0 : GoInt8)), ((0 : GoInt8)), ((0 : GoInt8)),
	((0 : GoInt8)), ((0 : GoInt8)), ((1 : GoInt8)), ((1 : GoInt8)), ((1 : GoInt8)), ((1 : GoInt8)), ((2 : GoInt8)), ((2 : GoInt8)), ((2 : GoInt8)),
	((2 : GoInt8)), ((3 : GoInt8)), ((3 : GoInt8)), ((3 : GoInt8)), ((3 : GoInt8)), ((4 : GoInt8)), ((4 : GoInt8)), ((4 : GoInt8)), ((4 : GoInt8)),
	((5 : GoInt8)), ((5 : GoInt8)), ((5 : GoInt8)), ((5 : GoInt8)), ((0 : GoInt8)));

final _lengthShift:GoInt64 = ((22 : GoUnTypedInt));
final _skipNever:GoUnTypedInt = stdgo.math.Math.maxInt32;
final _logWindowSize:GoInt64 = ((15 : GoUnTypedInt));
final _windowSize:GoUnTypedInt = (((1 : GoUnTypedInt)) << _logWindowSize);
var _huffOffset:Pointer<T_huffmanEncoder> = new Pointer<T_huffmanEncoder>().nil();
final _minMatchLength:GoInt64 = ((4 : GoUnTypedInt));
final _inputMargin:GoUnTypedInt = ((16 : GoUnTypedInt)) - ((1 : GoUnTypedInt));
final _minNonLiteralBlockSize:GoUnTypedInt = ((1 : GoUnTypedInt)) + ((1 : GoUnTypedInt)) + _inputMargin;
var _fixedLiteralEncoding:Pointer<T_huffmanEncoder> = _generateFixedLiteralEncoding();
final _literalType:GoUnTypedInt = (((0 : GoUnTypedInt)) << ((30 : GoUnTypedInt)));
final _badCode:GoInt64 = ((255 : GoUnTypedInt));
final _tableSize:GoUnTypedInt = (((1 : GoUnTypedInt)) << _tableBits);
final _tableMask:GoUnTypedInt = _tableSize - ((1 : GoUnTypedInt));
final noCompression:GoInt64 = ((0 : GoUnTypedInt));

var _offsetCodes:GoArray<GoUInt32> = new GoArray<GoUInt32>(((0 : GoUInt32)), ((1 : GoUInt32)), ((2 : GoUInt32)), ((3 : GoUInt32)), ((4 : GoUInt32)),
	((4 : GoUInt32)), ((5 : GoUInt32)), ((5 : GoUInt32)), ((6 : GoUInt32)), ((6 : GoUInt32)), ((6 : GoUInt32)), ((6 : GoUInt32)), ((7 : GoUInt32)),
	((7 : GoUInt32)), ((7 : GoUInt32)), ((7 : GoUInt32)), ((8 : GoUInt32)), ((8 : GoUInt32)), ((8 : GoUInt32)), ((8 : GoUInt32)), ((8 : GoUInt32)),
	((8 : GoUInt32)), ((8 : GoUInt32)), ((8 : GoUInt32)), ((9 : GoUInt32)), ((9 : GoUInt32)), ((9 : GoUInt32)), ((9 : GoUInt32)), ((9 : GoUInt32)),
	((9 : GoUInt32)), ((9 : GoUInt32)), ((9 : GoUInt32)), ((10 : GoUInt32)), ((10 : GoUInt32)), ((10 : GoUInt32)), ((10 : GoUInt32)), ((10 : GoUInt32)),
	((10 : GoUInt32)), ((10 : GoUInt32)), ((10 : GoUInt32)), ((10 : GoUInt32)), ((10 : GoUInt32)), ((10 : GoUInt32)), ((10 : GoUInt32)), ((10 : GoUInt32)),
	((10 : GoUInt32)), ((10 : GoUInt32)), ((10 : GoUInt32)), ((11 : GoUInt32)), ((11 : GoUInt32)), ((11 : GoUInt32)), ((11 : GoUInt32)), ((11 : GoUInt32)),
	((11 : GoUInt32)), ((11 : GoUInt32)), ((11 : GoUInt32)), ((11 : GoUInt32)), ((11 : GoUInt32)), ((11 : GoUInt32)), ((11 : GoUInt32)), ((11 : GoUInt32)),
	((11 : GoUInt32)), ((11 : GoUInt32)), ((11 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)),
	((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)),
	((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)),
	((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)),
	((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)),
	((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)),
	((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)),
	((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)),
	((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)),
	((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)),
	((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)),
	((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)),
	((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)),
	((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)),
	((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)),
	((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)),
	((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)),
	((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)),
	((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)),
	((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)),
	((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)),
	((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)),
	((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)),
	((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)),
	((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32))).copy();

final _maxMatchLength:GoInt64 = ((258 : GoUnTypedInt));
final _numCodes:GoInt64 = ((19 : GoUnTypedInt));
final _hashBits:GoInt64 = ((17 : GoUnTypedInt));
final _hashMask:GoUnTypedInt = ((((1 : GoUnTypedInt)) << _hashBits)) - ((1 : GoUnTypedInt));
final _offsetMask:GoUnTypedInt = (((1 : GoUnTypedInt)) << _lengthShift) - ((1 : GoUnTypedInt));

var _codegenOrder:Slice<GoUInt32> = new Slice<GoUInt32>(((16 : GoUInt32)), ((17 : GoUInt32)), ((18 : GoUInt32)), ((0 : GoUInt32)), ((8 : GoUInt32)),
	((7 : GoUInt32)), ((9 : GoUInt32)), ((6 : GoUInt32)), ((10 : GoUInt32)), ((5 : GoUInt32)), ((11 : GoUInt32)), ((4 : GoUInt32)), ((12 : GoUInt32)),
	((3 : GoUInt32)), ((13 : GoUInt32)), ((2 : GoUInt32)), ((14 : GoUInt32)), ((1 : GoUInt32)), ((15 : GoUInt32)));

final defaultCompression:GoInt64 = -((1 : GoUnTypedInt));
final _lengthCodesStart:GoInt64 = ((257 : GoUnTypedInt));
final _maxHashOffset:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt)));

var _levels:Slice<T_compressionLevel> = new Slice<T_compressionLevel>(new T_compressionLevel(((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)),
	((0 : GoInt)), ((0 : GoInt))).__copy__(),
	new T_compressionLevel(((1 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt))).__copy__(),
	new T_compressionLevel(((2 : GoInt)), ((4 : GoInt)), ((0 : GoInt)), ((16 : GoInt)), ((8 : GoInt)), ((5 : GoInt))).__copy__(),
	new T_compressionLevel(((3 : GoInt)), ((4 : GoInt)), ((0 : GoInt)), ((32 : GoInt)), ((32 : GoInt)), ((6 : GoInt))).__copy__(),
	new T_compressionLevel(((4 : GoInt)), ((4 : GoInt)), ((4 : GoInt)), ((16 : GoInt)), ((16 : GoInt)), _skipNever).__copy__(),
	new T_compressionLevel(((5 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((32 : GoInt)), ((32 : GoInt)), _skipNever).__copy__(),
	new T_compressionLevel(((6 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((128 : GoInt)), ((128 : GoInt)), _skipNever).__copy__(),
	new T_compressionLevel(((7 : GoInt)), ((8 : GoInt)), ((32 : GoInt)), ((128 : GoInt)), ((256 : GoInt)), _skipNever).__copy__(),
	new T_compressionLevel(((8 : GoInt)), ((32 : GoInt)), ((128 : GoInt)), ((258 : GoInt)), ((1024 : GoInt)), _skipNever).__copy__(),
	new T_compressionLevel(((9 : GoInt)), ((32 : GoInt)), ((258 : GoInt)), ((258 : GoInt)), ((4096 : GoInt)), _skipNever).__copy__());

final _maxMatchOffset:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((15 : GoUnTypedInt)));
final _maxNumDist:GoInt64 = ((30 : GoUnTypedInt));

var _lengthCodes:GoArray<GoUInt32> = new GoArray<GoUInt32>(((0 : GoUInt32)), ((1 : GoUInt32)), ((2 : GoUInt32)), ((3 : GoUInt32)), ((4 : GoUInt32)),
	((5 : GoUInt32)), ((6 : GoUInt32)), ((7 : GoUInt32)), ((8 : GoUInt32)), ((8 : GoUInt32)), ((9 : GoUInt32)), ((9 : GoUInt32)), ((10 : GoUInt32)),
	((10 : GoUInt32)), ((11 : GoUInt32)), ((11 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((12 : GoUInt32)), ((13 : GoUInt32)),
	((13 : GoUInt32)), ((13 : GoUInt32)), ((13 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((14 : GoUInt32)), ((15 : GoUInt32)),
	((15 : GoUInt32)), ((15 : GoUInt32)), ((15 : GoUInt32)), ((16 : GoUInt32)), ((16 : GoUInt32)), ((16 : GoUInt32)), ((16 : GoUInt32)), ((16 : GoUInt32)),
	((16 : GoUInt32)), ((16 : GoUInt32)), ((16 : GoUInt32)), ((17 : GoUInt32)), ((17 : GoUInt32)), ((17 : GoUInt32)), ((17 : GoUInt32)), ((17 : GoUInt32)),
	((17 : GoUInt32)), ((17 : GoUInt32)), ((17 : GoUInt32)), ((18 : GoUInt32)), ((18 : GoUInt32)), ((18 : GoUInt32)), ((18 : GoUInt32)), ((18 : GoUInt32)),
	((18 : GoUInt32)), ((18 : GoUInt32)), ((18 : GoUInt32)), ((19 : GoUInt32)), ((19 : GoUInt32)), ((19 : GoUInt32)), ((19 : GoUInt32)), ((19 : GoUInt32)),
	((19 : GoUInt32)), ((19 : GoUInt32)), ((19 : GoUInt32)), ((20 : GoUInt32)), ((20 : GoUInt32)), ((20 : GoUInt32)), ((20 : GoUInt32)), ((20 : GoUInt32)),
	((20 : GoUInt32)), ((20 : GoUInt32)), ((20 : GoUInt32)), ((20 : GoUInt32)), ((20 : GoUInt32)), ((20 : GoUInt32)), ((20 : GoUInt32)), ((20 : GoUInt32)),
	((20 : GoUInt32)), ((20 : GoUInt32)), ((20 : GoUInt32)), ((21 : GoUInt32)), ((21 : GoUInt32)), ((21 : GoUInt32)), ((21 : GoUInt32)), ((21 : GoUInt32)),
	((21 : GoUInt32)), ((21 : GoUInt32)), ((21 : GoUInt32)), ((21 : GoUInt32)), ((21 : GoUInt32)), ((21 : GoUInt32)), ((21 : GoUInt32)), ((21 : GoUInt32)),
	((21 : GoUInt32)), ((21 : GoUInt32)), ((21 : GoUInt32)), ((22 : GoUInt32)), ((22 : GoUInt32)), ((22 : GoUInt32)), ((22 : GoUInt32)), ((22 : GoUInt32)),
	((22 : GoUInt32)), ((22 : GoUInt32)), ((22 : GoUInt32)), ((22 : GoUInt32)), ((22 : GoUInt32)), ((22 : GoUInt32)), ((22 : GoUInt32)), ((22 : GoUInt32)),
	((22 : GoUInt32)), ((22 : GoUInt32)), ((22 : GoUInt32)), ((23 : GoUInt32)), ((23 : GoUInt32)), ((23 : GoUInt32)), ((23 : GoUInt32)), ((23 : GoUInt32)),
	((23 : GoUInt32)), ((23 : GoUInt32)), ((23 : GoUInt32)), ((23 : GoUInt32)), ((23 : GoUInt32)), ((23 : GoUInt32)), ((23 : GoUInt32)), ((23 : GoUInt32)),
	((23 : GoUInt32)), ((23 : GoUInt32)), ((23 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)),
	((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)),
	((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)),
	((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)),
	((24 : GoUInt32)), ((24 : GoUInt32)), ((24 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)),
	((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)),
	((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)),
	((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)),
	((25 : GoUInt32)), ((25 : GoUInt32)), ((25 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)),
	((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)),
	((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)),
	((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)),
	((26 : GoUInt32)), ((26 : GoUInt32)), ((26 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)),
	((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)),
	((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)),
	((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)), ((27 : GoUInt32)),
	((27 : GoUInt32)), ((27 : GoUInt32)), ((28 : GoUInt32))).copy();

final _baseMatchLength:GoInt64 = ((3 : GoUnTypedInt));
final _codegenCodeCount:GoInt64 = ((19 : GoUnTypedInt));
final _offsetCodeCount:GoInt64 = ((30 : GoUnTypedInt));
final _huffmanCountMask:GoInt64 = ((15 : GoUnTypedInt));
var _fixedOnce:stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();

var _lengthBase:Slice<GoUInt32> = new Slice<GoUInt32>(((0 : GoUInt32)), ((1 : GoUInt32)), ((2 : GoUInt32)), ((3 : GoUInt32)), ((4 : GoUInt32)),
	((5 : GoUInt32)), ((6 : GoUInt32)), ((7 : GoUInt32)), ((8 : GoUInt32)), ((10 : GoUInt32)), ((12 : GoUInt32)), ((14 : GoUInt32)), ((16 : GoUInt32)),
	((20 : GoUInt32)), ((24 : GoUInt32)), ((28 : GoUInt32)), ((32 : GoUInt32)), ((40 : GoUInt32)), ((48 : GoUInt32)), ((56 : GoUInt32)), ((64 : GoUInt32)),
	((80 : GoUInt32)), ((96 : GoUInt32)), ((112 : GoUInt32)), ((128 : GoUInt32)), ((160 : GoUInt32)), ((192 : GoUInt32)), ((224 : GoUInt32)),
	((255 : GoUInt32)));

final bestCompression:GoInt64 = ((9 : GoUnTypedInt));
final _maxNumLit:GoInt64 = ((286 : GoUnTypedInt));

var _offsetExtraBits:Slice<GoInt8> = new Slice<GoInt8>(((0 : GoInt8)), ((0 : GoInt8)), ((0 : GoInt8)), ((0 : GoInt8)), ((1 : GoInt8)), ((1 : GoInt8)),
	((2 : GoInt8)), ((2 : GoInt8)), ((3 : GoInt8)), ((3 : GoInt8)), ((4 : GoInt8)), ((4 : GoInt8)), ((5 : GoInt8)), ((5 : GoInt8)), ((6 : GoInt8)),
	((6 : GoInt8)), ((7 : GoInt8)), ((7 : GoInt8)), ((8 : GoInt8)), ((8 : GoInt8)), ((9 : GoInt8)), ((9 : GoInt8)), ((10 : GoInt8)), ((10 : GoInt8)),
	((11 : GoInt8)), ((11 : GoInt8)), ((12 : GoInt8)), ((12 : GoInt8)), ((13 : GoInt8)), ((13 : GoInt8)));

final _typeMask:GoUnTypedInt = (((3 : GoUnTypedInt)) << ((30 : GoUnTypedInt)));
final _maxStoreBlockSize:GoInt64 = ((65535 : GoUnTypedInt));
final _matchType:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((30 : GoUnTypedInt)));
final _hashSize:GoUnTypedInt = (((1 : GoUnTypedInt)) << _hashBits);
final _windowMask:GoUnTypedInt = _windowSize - ((1 : GoUnTypedInt));
final _bufferReset:GoUnTypedInt = stdgo.math.Math.maxInt32 - _maxStoreBlockSize * ((2 : GoUnTypedInt));

var _codeOrder:GoArray<GoInt> = new GoArray<GoInt>(((16 : GoInt)), ((17 : GoInt)), ((18 : GoInt)), ((0 : GoInt)), ((8 : GoInt)), ((7 : GoInt)), ((9 : GoInt)),
	((6 : GoInt)), ((10 : GoInt)), ((5 : GoInt)), ((11 : GoInt)), ((4 : GoInt)), ((12 : GoInt)), ((3 : GoInt)), ((13 : GoInt)), ((2 : GoInt)), ((14 : GoInt)),
	((1 : GoInt)), ((15 : GoInt))).copy();

final _baseMatchOffset:GoInt64 = ((1 : GoUnTypedInt));
final huffmanOnly:GoInt64 = -((2 : GoUnTypedInt));
final _hashmul:GoInt64 = ((506832829 : GoUnTypedInt));
final _endBlockMarker:GoInt64 = ((256 : GoUnTypedInt));

/**
	// hash4 returns a hash representation of the first 4 bytes
	// of the supplied slice.
	// The caller must ensure that len(b) >= 4.
**/
function _hash4(_b:Slice<GoByte>):GoUInt32 {
	return
		(((((_b[((3 : GoInt))] : GoUInt32)) | (((_b[((2 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | (((_b[((1 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_b[((0 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt)))) * _hashmul) >> (((32 : GoUnTypedInt))
		- _hashBits));
}

/**
	// bulkHash4 will compute hashes using the same
	// algorithm as hash4
**/
function _bulkHash4(_b:Slice<GoByte>, _dst:Slice<GoUInt32>):Void {
	if (_b.length < _minMatchLength) {
		return;
	};
	var _hb:GoUInt32 = ((_b[((3 : GoInt))] : GoUInt32)) | (((_b[((2 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | (((_b[((1 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_b[((0 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt)));
	_dst[((0 : GoInt))] = ((_hb * _hashmul) >> (((32 : GoUnTypedInt)) - _hashBits));
	var _end:GoInt = _b.length - _minMatchLength + ((1 : GoInt));
	{
		var _i:GoInt = ((1 : GoInt));
		Go.cfor(_i < _end, _i++, {
			_hb = ((_hb << ((8 : GoUnTypedInt)))) | ((_b[_i + ((3 : GoInt))] : GoUInt32));
			_dst[_i] = ((_hb * _hashmul) >> (((32 : GoUnTypedInt)) - _hashBits));
		});
	};
}

/**
	// matchLen returns the number of matching bytes in a and b
	// up to length 'max'. Both slices must be at least 'max'
	// bytes in size.
**/
function _matchLen(_a:Slice<GoByte>, _b:Slice<GoByte>, _max:GoInt):GoInt {
	_a = _a.__slice__(0, _max);
	_b = _b.__slice__(0, _a.length);
	{
		var _i;
		var _av;
		for (_obj in _a.keyValueIterator()) {
			_i = _obj.key;
			_av = _obj.value;
			if (_b[_i] != _av) {
				return _i;
			};
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
function newWriter(_w:stdgo.io.Io.Writer, _level:GoInt):{var _0:Pointer<Writer>; var _1:Error;} {
	var _dw:Writer = new Writer();
	{
		var _err:stdgo.Error = _dw._d._init(_w, _level);
		if (_err != null) {
			return {_0: new Pointer<Writer>().nil(), _1: _err};
		};
	};
	return {_0: Go.pointer(_dw), _1: ((null : stdgo.Error))};
}

/**
	// NewWriterDict is like NewWriter but initializes the new
	// Writer with a preset dictionary. The returned Writer behaves
	// as if the dictionary had been written to it without producing
	// any compressed output. The compressed data written to w
	// can only be decompressed by a Reader initialized with the
	// same dictionary.
**/
function newWriterDict(_w:stdgo.io.Io.Writer, _level:GoInt, _dict:Slice<GoByte>):{var _0:Pointer<Writer>; var _1:Error;} {
	var _dw:Pointer<T_dictWriter> = Go.pointer(new T_dictWriter(_w));
	var __tmp__ = newWriter(_dw.value, _level),
		_zw:Pointer<Writer> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<Writer>().nil(), _1: _err};
	};
	_zw.value._d._fillWindow(_dict);
	_zw.value._dict = _zw.value._dict.__append__(..._dict.toArray());
	return {_0: _zw, _1: _err};
}

function _load32(_b:Slice<GoByte>, _i:GoInt32):GoUInt32 {
	_b = _b.__slice__(_i, _i + ((4 : GoInt32))).setCap(((_b.length : GoInt)) - ((1 : GoInt)));
	return
		((_b[((0 : GoInt))] : GoUInt32)) | (((_b[((1 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | (((_b[((2 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_b[((3 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt)));
}

function _load64(_b:Slice<GoByte>, _i:GoInt32):GoUInt64 {
	_b = _b.__slice__(_i, _i + ((8 : GoInt32))).setCap(((_b.length : GoInt)) - ((1 : GoInt)));
	return
		((_b[((0 : GoInt))] : GoUInt64)) | (((_b[((1 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))) | (((_b[((2 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))) | (((_b[((3 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))) | (((_b[((4 : GoInt))] : GoUInt64)) << ((32 : GoUnTypedInt))) | (((_b[((5 : GoInt))] : GoUInt64)) << ((40 : GoUnTypedInt))) | (((_b[((6 : GoInt))] : GoUInt64)) << ((48 : GoUnTypedInt))) | (((_b[((7 : GoInt))] : GoUInt64)) << ((56 : GoUnTypedInt)));
}

function _hash(_u:GoUInt32):GoUInt32 {
	return ((_u * ((506832829 : GoUInt32))) >> _tableShift);
}

function _newDeflateFast():Pointer<T_deflateFast> {
	return Go.pointer((({_cur: _maxStoreBlockSize, _prev: new Slice<GoUInt8>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])
		.setCap(((_maxStoreBlockSize : GoInt)).toBasic()), _table: new GoArray<T_tableEntry>(...[for (i in 0...16384) new T_tableEntry()])} : T_deflateFast)));
}

function _emitLiteral(_dst:Slice<T_token>, _lit:Slice<GoByte>):Slice<T_token> {
	for (_v in _lit) {
		_dst = _dst.__append__(_literalToken(((_v : GoUInt32))));
	};
	return _dst;
}

function _newHuffmanBitWriter(_w:stdgo.io.Io.Writer):Pointer<T_huffmanBitWriter> {
	return Go.pointer((({
		_writer: _w,
		_literalFreq: new Slice<GoInt32>(...[for (i in 0...((_maxNumLit : GoInt)).toBasic()) ((0 : GoInt32))]),
		_offsetFreq: new Slice<GoInt32>(...[for (i in 0...((_offsetCodeCount : GoInt)).toBasic()) ((0 : GoInt32))]),
		_codegen: new Slice<GoUInt8>(...[
			for (i in 0...((_maxNumLit + _offsetCodeCount + ((1 : GoUnTypedInt)) : GoInt)).toBasic()) ((0 : GoUInt8))
		]),
		_literalEncoding: _newHuffmanEncoder(_maxNumLit),
		_codegenEncoding: _newHuffmanEncoder(_codegenCodeCount),
		_offsetEncoding: _newHuffmanEncoder(_offsetCodeCount),
		_bits: 0,
		_nbits: 0,
		_bytes: new GoArray<GoUInt8>(...[for (i in 0...248) ((0 : GoUInt8))]),
		_codegenFreq: new GoArray<GoInt32>(...[for (i in 0...19) ((0 : GoInt32))]),
		_nbytes: 0,
		_err: ((null : stdgo.Error))
	} : T_huffmanBitWriter)));
}

/**
	// histogram accumulates a histogram of b in h.
	//
	// len(h) must be >= 256, and h's elements must be all zeroes.
**/
function _histogram(_b:Slice<GoByte>, _h:Slice<GoInt32>):Void {
	_h = _h.__slice__(0, ((256 : GoInt)));
	for (_t in _b) {
		_h[_t]++;
	};
}

function _maxNode():T_literalNode {
	return new T_literalNode(stdgo.math.Math.maxUint16, stdgo.math.Math.maxInt32).__copy__();
}

function _newHuffmanEncoder(_size:GoInt):Pointer<T_huffmanEncoder> {
	return Go.pointer((({
		_codes: new Slice<T_hcode>(...[for (i in 0...((_size : GoInt)).toBasic()) new T_hcode()]),
		_freqcache: new Slice<T_literalNode>().nil(),
		_bitCount: new GoArray<GoInt32>(...[for (i in 0...17) ((0 : GoInt32))]),
		_lns: new T_byLiteral(),
		_lfs: new T_byFreq()
	} : T_huffmanEncoder)));
}

/**
	// Generates a HuffmanCode corresponding to the fixed literal table
**/
function _generateFixedLiteralEncoding():Pointer<T_huffmanEncoder> {
	var _h:Pointer<T_huffmanEncoder> = _newHuffmanEncoder(_maxNumLit);
	var _codes:Slice<T_hcode> = _h.value._codes;
	var _ch:GoUInt16 = ((0 : GoUInt16));
	{
		_ch = ((0 : GoUInt16));
		Go.cfor(_ch < _maxNumLit, _ch++, {
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
						_bits = _ch + ((400 : GoUInt16)) - ((144 : GoUInt16));
						_size = ((9 : GoUInt16));
						break;
						break;
					} else if (_ch < ((280 : GoUInt16))) {
						_bits = _ch - ((256 : GoUInt16));
						_size = ((7 : GoUInt16));
						break;
						break;
					} else {
						_bits = _ch + ((192 : GoUInt16)) - ((280 : GoUInt16));
						_size = ((8 : GoUInt16));
					};
					break;
				};
			};
			_codes[_ch] = (({_code: _reverseBits(_bits, ((_size : GoByte))), _len: _size} : T_hcode)).__copy__();
		});
	};
	return _h;
}

function _generateFixedOffsetEncoding():Pointer<T_huffmanEncoder> {
	var _h:Pointer<T_huffmanEncoder> = _newHuffmanEncoder(((30 : GoInt)));
	var _codes:Slice<T_hcode> = _h.value._codes;
	{
		var _ch;
		for (_obj in _codes.keyValueIterator()) {
			_ch = _obj.key;
			_codes[_ch] = (({_code: _reverseBits(((_ch : GoUInt16)), ((5 : GoUInt8))), _len: ((5 : GoUInt16))} : T_hcode)).__copy__();
		};
	};
	return _h;
}

function _reverseBits(_number:GoUInt16, _bitLength:GoByte):GoUInt16 {
	return stdgo.math.bits.Bits.reverse16((_number << (((16 : GoUInt8)) - _bitLength)));
}

/**
	// noEOF returns err, unless err == io.EOF, in which case it returns io.ErrUnexpectedEOF.
**/
function _noEOF(_e:Error):Error {
	if (Go.toInterface(_e) == Go.toInterface(stdgo.io.Io.eof)) {
		return stdgo.io.Io.errUnexpectedEOF;
	};
	return _e;
}

function _makeReader(_r:stdgo.io.Io.Reader):Reader {
	{
		var __tmp__ = try {
			{value: ((_r.__underlying__().value : Reader)), ok: true};
		} catch (_) {
			{value: ((null : Reader)), ok: false};
		}, _rr = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _rr;
		};
	};
	return bufio.Bufio.newReader(_r).value;
}

function _fixedHuffmanDecoderInit():Void {
	_fixedOnce.do_(function():Void {
		var _bits:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...288) ((0 : GoInt))]);
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ((144 : GoInt)), _i++, {
				_bits[_i] = ((8 : GoInt));
			});
		};
		{
			var _i:GoInt = ((144 : GoInt));
			Go.cfor(_i < ((256 : GoInt)), _i++, {
				_bits[_i] = ((9 : GoInt));
			});
		};
		{
			var _i:GoInt = ((256 : GoInt));
			Go.cfor(_i < ((280 : GoInt)), _i++, {
				_bits[_i] = ((7 : GoInt));
			});
		};
		{
			var _i:GoInt = ((280 : GoInt));
			Go.cfor(_i < ((288 : GoInt)), _i++, {
				_bits[_i] = ((8 : GoInt));
			});
		};
		_fixedHuffmanDecoder._init(_bits.__slice__(0));
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
	_f._bits = Go.pointer(new GoArray<GoInt>(...[for (i in 0...316) ((0 : GoInt))]));
	_f._codebits = Go.pointer(new GoArray<GoInt>(...[for (i in 0...19) ((0 : GoInt))]));
	_f._step = (_decompressor.value).value._nextBlock;
	_f._dict._init(_maxMatchOffset, new Slice<GoUInt8>().nil());
	return Go.pointer(_f).value;
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
	_f._bits = Go.pointer(new GoArray<GoInt>(...[for (i in 0...316) ((0 : GoInt))]));
	_f._codebits = Go.pointer(new GoArray<GoInt>(...[for (i in 0...19) ((0 : GoInt))]));
	_f._step = (_decompressor.value).value._nextBlock;
	_f._dict._init(_maxMatchOffset, _dict);
	return Go.pointer(_f).value;
}

/**
	// Convert a literal into a literal token.
**/
function _literalToken(_literal:GoUInt32):T_token {
	return new T_token((_literalType + _literal));
}

/**
	// Convert a < xlength, xoffset > pair into a match token.
**/
function _matchToken(_xlength:GoUInt32, _xoffset:GoUInt32):T_token {
	return new T_token((_matchType + (_xlength << _lengthShift) + _xoffset));
}

function _lengthCode(_len:GoUInt32):GoUInt32 {
	return _lengthCodes[_len];
}

/**
	// Returns the offset code corresponding to a specific offset
**/
function _offsetCode(_off:GoUInt32):GoUInt32 {
	if (_off < ((_offsetCodes.length : GoUInt32))) {
		return _offsetCodes[_off];
	};
	if ((_off >> ((7 : GoUnTypedInt))) < ((_offsetCodes.length : GoUInt32))) {
		return _offsetCodes[(_off >> ((7 : GoUnTypedInt)))] + ((14 : GoUInt32));
	};
	return _offsetCodes[(_off >> ((14 : GoUnTypedInt)))] + ((28 : GoUInt32));
}

@:keep var _ = {
	try {
		var _offsetFreq:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0...((_offsetCodeCount : GoInt)).toBasic()) ((0 : GoInt32))]);
		_offsetFreq[((0 : GoInt))] = ((1 : GoInt32));
		_huffOffset = _newHuffmanEncoder(_offsetCodeCount);
		_huffOffset.value._generate(_offsetFreq, ((15 : GoInt32)));
	} catch (e)
		if (e.message != "__return__")
			throw e;
	true;
};

class T_compressor_extension_fields {
	public function _fillDeflate(__tmp__, _b:Slice<GoByte>):GoInt
		return __tmp__._fillDeflate(_b);

	public function _writeBlock(__tmp__, _tokens:Slice<T_token>, _index:GoInt):Error
		return __tmp__._writeBlock(_tokens, _index);

	public function _fillWindow(__tmp__, _b:Slice<GoByte>):Void
		__tmp__._fillWindow(_b);

	public function _findMatch(__tmp__, _pos:GoInt, _prevHead:GoInt, _prevLength:GoInt, _lookahead:GoInt):{var _0:GoInt; var _1:GoInt; var _2:Bool;}
		return __tmp__._findMatch(_pos, _prevHead, _prevLength, _lookahead);

	public function _writeStoredBlock(__tmp__, _buf:Slice<GoByte>):Error
		return __tmp__._writeStoredBlock(_buf);

	public function _encSpeed(__tmp__):Void
		__tmp__._encSpeed();

	public function _initDeflate(__tmp__):Void
		__tmp__._initDeflate();

	public function _deflate(__tmp__):Void
		__tmp__._deflate();

	public function _fillStore(__tmp__, _b:Slice<GoByte>):GoInt
		return __tmp__._fillStore(_b);

	public function _store(__tmp__):Void
		__tmp__._store();

	public function _storeHuff(__tmp__):Void
		__tmp__._storeHuff();

	public function _write(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__._write(_b);

	public function _syncFlush(__tmp__):Error
		return __tmp__._syncFlush();

	public function _init(__tmp__, _w:stdgo.io.Io.Writer, _level:GoInt):Error
		return __tmp__._init(_w, _level);

	public function _reset(__tmp__, _w:stdgo.io.Io.Writer):Void
		__tmp__._reset(_w);

	public function _close(__tmp__):Error
		return __tmp__._close();
}

class T_dictWriter_extension_fields {
	public function write(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.write(_b);
}

class Writer_extension_fields {
	public function write(__tmp__, _data:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.write(_data);

	public function flush(__tmp__):Error
		return __tmp__.flush();

	public function close(__tmp__):Error
		return __tmp__.close();

	public function reset(__tmp__, _dst:stdgo.io.Io.Writer):Void
		__tmp__.reset(_dst);
}

class T_deflateFast_extension_fields {
	public function _encode(__tmp__, _dst:Slice<T_token>, _src:Slice<GoByte>):Slice<T_token>
		return __tmp__._encode(_dst, _src);

	public function _matchLen(__tmp__, _s:GoInt32, _t:GoInt32, _src:Slice<GoByte>):GoInt32
		return __tmp__._matchLen(_s, _t, _src);

	public function _reset(__tmp__):Void
		__tmp__._reset();

	public function _shiftOffsets(__tmp__):Void
		__tmp__._shiftOffsets();
}

class T_dictDecoder_extension_fields {
	public function _init(__tmp__, _size:GoInt, _dict:Slice<GoByte>):Void
		__tmp__._init(_size, _dict);

	public function _histSize(__tmp__):GoInt
		return __tmp__._histSize();

	public function _availRead(__tmp__):GoInt
		return __tmp__._availRead();

	public function _availWrite(__tmp__):GoInt
		return __tmp__._availWrite();

	public function _writeSlice(__tmp__):Slice<GoByte>
		return __tmp__._writeSlice();

	public function _writeMark(__tmp__, _cnt:GoInt):Void
		__tmp__._writeMark(_cnt);

	public function _writeByte(__tmp__, _c:GoByte):Void
		__tmp__._writeByte(_c);

	public function _writeCopy(__tmp__, _dist:GoInt, _length:GoInt):GoInt
		return __tmp__._writeCopy(_dist, _length);

	public function _tryWriteCopy(__tmp__, _dist:GoInt, _length:GoInt):GoInt
		return __tmp__._tryWriteCopy(_dist, _length);

	public function _readFlush(__tmp__):Slice<GoByte>
		return __tmp__._readFlush();
}

class T_huffmanBitWriter_extension_fields {
	public function _reset(__tmp__, _writer:stdgo.io.Io.Writer):Void
		__tmp__._reset(_writer);

	public function _flush(__tmp__):Void
		__tmp__._flush();

	public function _write(__tmp__, _b:Slice<GoByte>):Void
		__tmp__._write(_b);

	public function _writeBits(__tmp__, _b:GoInt32, _nb:GoUInt):Void
		__tmp__._writeBits(_b, _nb);

	public function _writeBytes(__tmp__, _bytes:Slice<GoByte>):Void
		__tmp__._writeBytes(_bytes);

	public function _generateCodegen(__tmp__, _numLiterals:GoInt, _numOffsets:GoInt, _litEnc:Pointer<T_huffmanEncoder>, _offEnc:Pointer<T_huffmanEncoder>):Void
		__tmp__._generateCodegen(_numLiterals, _numOffsets, _litEnc, _offEnc);

	public function _dynamicSize(__tmp__, _litEnc:Pointer<T_huffmanEncoder>, _offEnc:Pointer<T_huffmanEncoder>, _extraBits:GoInt):{var _0:GoInt; var _1:GoInt;}
		return __tmp__._dynamicSize(_litEnc, _offEnc, _extraBits);

	public function _fixedSize(__tmp__, _extraBits:GoInt):GoInt
		return __tmp__._fixedSize(_extraBits);

	public function _storedSize(__tmp__, _in:Slice<GoByte>):{var _0:GoInt; var _1:Bool;}
		return __tmp__._storedSize(_in);

	public function _writeCode(__tmp__, _c:T_hcode):Void
		__tmp__._writeCode(_c);

	public function _writeDynamicHeader(__tmp__, _numLiterals:GoInt, _numOffsets:GoInt, _numCodegens:GoInt, _isEof:Bool):Void
		__tmp__._writeDynamicHeader(_numLiterals, _numOffsets, _numCodegens, _isEof);

	public function _writeStoredHeader(__tmp__, _length:GoInt, _isEof:Bool):Void
		__tmp__._writeStoredHeader(_length, _isEof);

	public function _writeFixedHeader(__tmp__, _isEof:Bool):Void
		__tmp__._writeFixedHeader(_isEof);

	public function _writeBlock(__tmp__, _tokens:Slice<T_token>, _eof:Bool, _input:Slice<GoByte>):Void
		__tmp__._writeBlock(_tokens, _eof, _input);

	public function _writeBlockDynamic(__tmp__, _tokens:Slice<T_token>, _eof:Bool, _input:Slice<GoByte>):Void
		__tmp__._writeBlockDynamic(_tokens, _eof, _input);

	public function _indexTokens(__tmp__, _tokens:Slice<T_token>):{var _0:GoInt; var _1:GoInt;}
		return __tmp__._indexTokens(_tokens);

	public function _writeTokens(__tmp__, _tokens:Slice<T_token>, _leCodes:Slice<T_hcode>, _oeCodes:Slice<T_hcode>):Void
		__tmp__._writeTokens(_tokens, _leCodes, _oeCodes);

	public function _writeBlockHuff(__tmp__, _eof:Bool, _input:Slice<GoByte>):Void
		__tmp__._writeBlockHuff(_eof, _input);
}

class T_hcode_extension_fields {
	public function _set(__tmp__, _code:GoUInt16, _length:GoUInt16):Void
		__tmp__._set(_code, _length);
}

class T_huffmanEncoder_extension_fields {
	public function _bitLength(__tmp__, _freq:Slice<GoInt32>):GoInt
		return __tmp__._bitLength(_freq);

	public function _bitCounts(__tmp__, _list:Slice<T_literalNode>, _maxBits:GoInt32):Slice<GoInt32>
		return __tmp__._bitCounts(_list, _maxBits);

	public function _assignEncodingAndSize(__tmp__, _bitCount:Slice<GoInt32>, _list:Slice<T_literalNode>):Void
		__tmp__._assignEncodingAndSize(_bitCount, _list);

	public function _generate(__tmp__, _freq:Slice<GoInt32>, _maxBits:GoInt32):Void
		__tmp__._generate(_freq, _maxBits);
}

class T_byLiteral_extension_fields {
	public function _sort(__tmp__, _a:Slice<T_literalNode>):Void
		__tmp__._sort(_a);

	public function len(__tmp__):GoInt
		return __tmp__.len();

	public function less(__tmp__, _i:GoInt, _j:GoInt):Bool
		return __tmp__.less(_i, _j);

	public function swap(__tmp__, _i:GoInt, _j:GoInt):Void
		__tmp__.swap(_i, _j);
}

class T_byFreq_extension_fields {
	public function _sort(__tmp__, _a:Slice<T_literalNode>):Void
		__tmp__._sort(_a);

	public function len(__tmp__):GoInt
		return __tmp__.len();

	public function less(__tmp__, _i:GoInt, _j:GoInt):Bool
		return __tmp__.less(_i, _j);

	public function swap(__tmp__, _i:GoInt, _j:GoInt):Void
		__tmp__.swap(_i, _j);
}

class CorruptInputError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class InternalError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class ReadError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class WriteError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class T_huffmanDecoder_extension_fields {
	public function _init(__tmp__, _lengths:Slice<GoInt>):Bool
		return __tmp__._init(_lengths);
}

class T_decompressor_extension_fields {
	public function _nextBlock(__tmp__):Void
		__tmp__._nextBlock();

	public function read(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.read(_b);

	public function close(__tmp__):Error
		return __tmp__.close();

	public function _readHuffman(__tmp__):Error
		return __tmp__._readHuffman();

	public function _huffmanBlock(__tmp__):Void
		__tmp__._huffmanBlock();

	public function _dataBlock(__tmp__):Void
		__tmp__._dataBlock();

	public function _copyData(__tmp__):Void
		__tmp__._copyData();

	public function _finishBlock(__tmp__):Void
		__tmp__._finishBlock();

	public function _moreBits(__tmp__):Error
		return __tmp__._moreBits();

	public function _huffSym(__tmp__, _h:Pointer<T_huffmanDecoder>):{var _0:GoInt; var _1:Error;}
		return __tmp__._huffSym(_h);

	public function reset(__tmp__, _r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):Error
		return __tmp__.reset(_r, _dict);
}

class T_token_extension_fields {
	public function _literal(__tmp__):GoUInt32
		return __tmp__._literal();

	public function _offset(__tmp__):GoUInt32
		return __tmp__._offset();

	public function _length(__tmp__):GoUInt32
		return __tmp__._length();
}
