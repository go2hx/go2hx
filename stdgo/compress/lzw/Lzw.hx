package stdgo.compress.lzw;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

typedef T_writer = StructType & {
	> stdgo.io.Io.ByteWriter,
	public function flush():Error;
};

@:named class Order {
	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new Order(__t__);
}

@:structInit class Reader {
	public function _init(_src:stdgo.io.Io.Reader, _order:Order, _litWidth:GoInt):Void {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_order.__t__ == lsb.__t__) {
			_r.value._read = (reader.value).value._readLSB;
		} else if (_order.__t__ == msb.__t__) {
			_r.value._read = (reader.value).value._readMSB;
		} else {
			_r.value._err = stdgo.errors.Errors.new_("lzw: unknown order");
			return;
		};
		if (_litWidth < ((2 : GoInt)) || ((8 : GoInt)) < _litWidth) {
			_r.value._err = stdgo.fmt.Fmt.errorf("lzw: litWidth %d out of range", Go.toInterface(_litWidth));
			return;
		};
		var __tmp__ = try {
			{value: ((_src.__underlying__().value : stdgo.io.Io.ByteReader)), ok: true};
		} catch (_) {
			{value: ((null : stdgo.io.Io.ByteReader)), ok: false};
		}, _br = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok && _src != null) {
			_br = bufio.Bufio.newReader(_src).value;
		};
		_r.value._r = _br;
		_r.value._litWidth = _litWidth;
		_r.value._width = ((1 : GoUInt)) + ((_litWidth : GoUInt));
		_r.value._clear = (((((1 : GoUInt16)) : GoUInt16)) << ((_litWidth : GoUInt)));
		{
			final __tmp__0 = _r.value._clear + ((1 : GoUInt16));
			final __tmp__1 = _r.value._clear + ((1 : GoUInt16));
			_r.value._eof = __tmp__0;
			_r.value._hi = __tmp__1;
		};
		_r.value._overflow = (((((1 : GoUInt16)) : GoUInt16)) << _r.value._width);
		_r.value._last = _decoderInvalidCode;
	}

	public function reset(_src:stdgo.io.Io.Reader, _order:Order, _litWidth:GoInt):Void {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_r.value = new Reader().__copy__();
		_r.value._init(_src, _order, _litWidth);
	}

	public function close():Error {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_r.value._err = _errClosed;
		return ((null : stdgo.Error));
	}

	public function _decode():Void {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		stdgo.internal.Macro.controlFlow({
			@:label("loop") while (true) {
				var __tmp__ = _r.value._read(_r),
					_code:GoUInt16 = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err != null) {
					if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
						_err = stdgo.io.Io.errUnexpectedEOF;
					};
					_r.value._err = _err;
					break;
				};
				{
					var __switchIndex__ = -1;
					while (true) {
						if (_code < _r.value._clear) {
							_r.value._output[_r.value._o] = ((_code : GoUInt8));
							_r.value._o++;
							if (_r.value._last != _decoderInvalidCode) {
								_r.value._suffix[_r.value._hi] = ((_code : GoUInt8));
								_r.value._prefix[_r.value._hi] = _r.value._last;
							};
							break;
						} else if (_code == _r.value._clear) {
							_r.value._width = ((1 : GoUInt)) + ((_r.value._litWidth : GoUInt));
							_r.value._hi = _r.value._eof;
							_r.value._overflow = (((1 : GoUInt16)) << _r.value._width);
							_r.value._last = _decoderInvalidCode;
							continue;
							break;
						} else if (_code == _r.value._eof) {
							_r.value._err = stdgo.io.Io.eof;
							@:break {
								____exit____ = true;
								____break____ = true;
								break;
							};
							break;
						} else if (_code <= _r.value._hi) {
							var _c:GoUInt16 = _code,
								_i:GoInt = _r.value._output.length - ((1 : GoInt));
							if (_code == _r.value._hi && _r.value._last != _decoderInvalidCode) {
								_c = _r.value._last;
								while (_c >= _r.value._clear) {
									_c = _r.value._prefix[_c];
								};
								_r.value._output[_i] = ((_c : GoUInt8));
								_i--;
								_c = _r.value._last;
							};
							while (_c >= _r.value._clear) {
								_r.value._output[_i] = _r.value._suffix[_c];
								_i--;
								_c = _r.value._prefix[_c];
							};
							_r.value._output[_i] = ((_c : GoUInt8));
							_r.value._o = _r.value._o + (Go.copy(_r.value._output.__slice__(_r.value._o), _r.value._output.__slice__(_i)));
							if (_r.value._last != _decoderInvalidCode) {
								_r.value._suffix[_r.value._hi] = ((_c : GoUInt8));
								_r.value._prefix[_r.value._hi] = _r.value._last;
							};
							break;
						} else {
							_r.value._err = stdgo.errors.Errors.new_("lzw: invalid code");
							@:break {
								____exit____ = true;
								____break____ = true;
								break;
							};
						};
						break;
					};
				};
				{
					final __tmp__0 = _code;
					final __tmp__1 = _r.value._hi + ((1 : GoUInt16));
					_r.value._last = __tmp__0;
					_r.value._hi = __tmp__1;
				};
				if (_r.value._hi >= _r.value._overflow) {
					if (_r.value._hi > _r.value._overflow) {
						throw "unreachable";
					};
					if (_r.value._width == _maxWidth) {
						_r.value._last = _decoderInvalidCode;
						_r.value._hi--;
					} else {
						_r.value._width++;
						_r.value._overflow = (((1 : GoUInt16)) << _r.value._width);
					};
				};
				if (_r.value._o >= _flushBuffer) {
					break;
				};
			};
			_r.value._toRead = _r.value._output.__slice__(0, _r.value._o);
			_r.value._o = ((0 : GoInt));
		});
	}

	public function read(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		while (true) {
			if (_r.value._toRead.length > ((0 : GoInt))) {
				var _n:GoInt = Go.copy(_b, _r.value._toRead);
				_r.value._toRead = _r.value._toRead.__slice__(_n);
				return {_0: _n, _1: ((null : stdgo.Error))};
			};
			if (_r.value._err != null) {
				return {_0: ((0 : GoInt)), _1: _r.value._err};
			};
			_r.value._decode();
		};
	}

	public function _readMSB():{var _0:GoUInt16; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		while (_r.value._nBits < _r.value._width) {
			var __tmp__ = _r.value._r.readByte(),
				_x:GoUInt8 = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return {_0: ((0 : GoUInt16)), _1: _err};
			};
			_r.value._bits = _r.value._bits | ((((_x : GoUInt32)) << (((24 : GoUInt)) - _r.value._nBits)));
			_r.value._nBits = _r.value._nBits + (((8 : GoUInt)));
		};
		var _code:GoUInt16 = (((_r.value._bits >> (((32 : GoUInt)) - _r.value._width)) : GoUInt16));
		_r.value._bits = (_r.value._bits << (_r.value._width));
		_r.value._nBits = _r.value._nBits - (_r.value._width);
		return {_0: _code, _1: ((null : stdgo.Error))};
	}

	public function _readLSB():{var _0:GoUInt16; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		while (_r.value._nBits < _r.value._width) {
			var __tmp__ = _r.value._r.readByte(),
				_x:GoUInt8 = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return {_0: ((0 : GoUInt16)), _1: _err};
			};
			_r.value._bits = _r.value._bits | ((((_x : GoUInt32)) << _r.value._nBits));
			_r.value._nBits = _r.value._nBits + (((8 : GoUInt)));
		};
		var _code:GoUInt16 = (((_r.value._bits & ((((1 : GoUInt32)) << _r.value._width) - ((1 : GoUInt32)))) : GoUInt16));
		_r.value._bits = (_r.value._bits >> (_r.value._width));
		_r.value._nBits = _r.value._nBits - (_r.value._width);
		return {_0: _code, _1: ((null : stdgo.Error))};
	}

	public var _r:stdgo.io.Io.ByteReader = ((null : stdgo.io.Io.ByteReader));
	public var _bits:GoUInt32 = ((0 : GoUInt32));
	public var _nBits:GoUInt = ((0 : GoUInt));
	public var _width:GoUInt = ((0 : GoUInt));
	public var _read:Pointer<Reader> -> {
		var _0:GoUInt16;
		var _1:stdgo.Error;
	} = null;
	public var _litWidth:GoInt = ((0 : GoInt));
	public var _err:stdgo.Error = ((null : stdgo.Error));
	public var _clear:GoUInt16 = ((0 : GoUInt16));
	public var _eof:GoUInt16 = ((0 : GoUInt16));
	public var _hi:GoUInt16 = ((0 : GoUInt16));
	public var _overflow:GoUInt16 = ((0 : GoUInt16));
	public var _last:GoUInt16 = ((0 : GoUInt16));
	public var _suffix:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...4096) ((0 : GoUInt8))]);
	public var _prefix:GoArray<GoUInt16> = new GoArray<GoUInt16>(...[for (i in 0...4096) ((0 : GoUInt16))]);
	public var _output:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...8192) ((0 : GoUInt8))]);
	public var _o:GoInt = ((0 : GoInt));
	public var _toRead:Slice<GoUInt8> = new Slice<GoUInt8>().nil();

	public function new(?_r:stdgo.io.Io.ByteReader, ?_bits:GoUInt32, ?_nBits:GoUInt, ?_width:GoUInt, ?_read:Pointer<Reader> -> {
		var _0:GoUInt16;
		var _1:stdgo.Error;
	},
			?_litWidth:GoInt, ?_err:stdgo.Error, ?_clear:GoUInt16, ?_eof:GoUInt16, ?_hi:GoUInt16, ?_overflow:GoUInt16, ?_last:GoUInt16,
			?_suffix:GoArray<GoUInt8>, ?_prefix:GoArray<GoUInt16>, ?_output:GoArray<GoUInt8>, ?_o:GoInt, ?_toRead:Slice<GoUInt8>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_r) + " " + Go.string(_bits) + " " + Go.string(_nBits) + " " + Go.string(_width) + " " + Go.string(_read) + " "
			+ Go.string(_litWidth) + " " + Go.string(_err) + " " + Go.string(_clear) + " " + Go.string(_eof) + " " + Go.string(_hi) + " "
			+ Go.string(_overflow) + " " + Go.string(_last) + " " + Go.string(_suffix) + " " + Go.string(_prefix) + " " + Go.string(_output) + " "
			+ Go.string(_o) + " " + Go.string(_toRead) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Reader(_r, _bits, _nBits, _width, _read, _litWidth, _err, _clear, _eof, _hi, _overflow, _last, _suffix, _prefix, _output, _o, _toRead);
	}

	public function __set__(__tmp__) {
		this._r = __tmp__._r;
		this._bits = __tmp__._bits;
		this._nBits = __tmp__._nBits;
		this._width = __tmp__._width;
		this._read = __tmp__._read;
		this._litWidth = __tmp__._litWidth;
		this._err = __tmp__._err;
		this._clear = __tmp__._clear;
		this._eof = __tmp__._eof;
		this._hi = __tmp__._hi;
		this._overflow = __tmp__._overflow;
		this._last = __tmp__._last;
		this._suffix = __tmp__._suffix;
		this._prefix = __tmp__._prefix;
		this._output = __tmp__._output;
		this._o = __tmp__._o;
		this._toRead = __tmp__._toRead;
		return this;
	}
}

@:structInit class Writer {
	public function _init(_dst:stdgo.io.Io.Writer, _order:Order, _litWidth:GoInt):Void {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_order.__t__ == lsb.__t__) {
			_w.value._write = (writer.value).value._writeLSB;
		} else if (_order.__t__ == msb.__t__) {
			_w.value._write = (writer.value).value._writeMSB;
		} else {
			_w.value._err = stdgo.errors.Errors.new_("lzw: unknown order");
			return;
		};
		if (_litWidth < ((2 : GoInt)) || ((8 : GoInt)) < _litWidth) {
			_w.value._err = stdgo.fmt.Fmt.errorf("lzw: litWidth %d out of range", Go.toInterface(_litWidth));
			return;
		};
		var __tmp__ = try {
			{value: ((_dst.__underlying__().value : T_writer)), ok: true};
		} catch (_) {
			{value: ((null : T_writer)), ok: false};
		}, _bw = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok && _dst != null) {
			_bw = bufio.Bufio.newWriter(_dst).value;
		};
		_w.value._w = _bw;
		var _lw:GoUInt = ((_litWidth : GoUInt));
		_w.value._order = _order;
		_w.value._width = ((1 : GoUInt)) + _lw;
		_w.value._litWidth = _lw;
		_w.value._hi = (((1 : GoUInt32)) << _lw) + ((1 : GoUInt32));
		_w.value._overflow = (((1 : GoUInt32)) << (_lw + ((1 : GoUInt))));
		_w.value._savedCode = _invalidCode;
	}

	public function reset(_dst:stdgo.io.Io.Writer, _order:Order, _litWidth:GoInt):Void {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_w.value = new Writer().__copy__();
		_w.value._init(_dst, _order, _litWidth);
	}

	public function close():Error {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_w.value._err != null) {
			if (Go.toInterface(_w.value._err) == Go.toInterface(_errClosed)) {
				return ((null : stdgo.Error));
			};
			return _w.value._err;
		};
		_w.value._err = _errClosed;
		if (_w.value._savedCode != _invalidCode) {
			{
				var _err:stdgo.Error = _w.value._write(_w, _w.value._savedCode);
				if (_err != null) {
					return _err;
				};
			};
			{
				var _err:stdgo.Error = _w.value._incHi();
				if (_err != null && Go.toInterface(_err) != Go.toInterface(_errOutOfCodes)) {
					return _err;
				};
			};
		};
		var _eof:GoUInt32 = (((((1 : GoUInt32)) : GoUInt32)) << _w.value._litWidth) + ((1 : GoUInt32));
		{
			var _err:stdgo.Error = _w.value._write(_w, _eof);
			if (_err != null) {
				return _err;
			};
		};
		if (_w.value._nBits > ((0 : GoUInt))) {
			if (_w.value._order.__t__ == msb.__t__) {
				_w.value._bits = (_w.value._bits >> (((24 : GoUnTypedInt))));
			};
			{
				var _err:stdgo.Error = _w.value._w.writeByte(((_w.value._bits : GoUInt8)));
				if (_err != null) {
					return _err;
				};
			};
		};
		return _w.value._w.flush();
	}

	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.internal.Macro.controlFlow({
			var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
			if (_w.value._err != null) {
				return {_0: ((0 : GoInt)), _1: _w.value._err};
			};
			if (_p.length == ((0 : GoInt))) {
				return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};
			};
			{
				var _maxLit:GoUInt8 = ((((((1 : GoUInt8)) << _w.value._litWidth) - ((1 : GoUInt8))) : GoUInt8));
				if (_maxLit != ((255 : GoUInt8))) {
					for (_x in _p) {
						if (_x > _maxLit) {
							_w.value._err = stdgo.errors.Errors.new_("lzw: input byte too large for the litWidth");
							return {_0: ((0 : GoInt)), _1: _w.value._err};
						};
					};
				};
			};
			_n = _p.length;
			var _code:GoUInt32 = _w.value._savedCode;
			if (_code == _invalidCode) {
				{
					final __tmp__0 = ((_p[((0 : GoInt))] : GoUInt32));
					final __tmp__1 = _p.__slice__(((1 : GoInt)));
					_code = __tmp__0;
					_p = __tmp__1;
				};
			};
			@:label("loop") for (_x in _p) {
				var _literal:GoUInt32 = ((_x : GoUInt32));
				var _key:GoUInt32 = (_code << ((8 : GoUnTypedInt))) | _literal;
				var _hash:GoUInt32 = ((_key >> ((12 : GoUnTypedInt))) ^ _key) & _tableMask;
				{
					var _h:GoUInt32 = _hash,
						_t:GoUInt32 = _w.value._table[_hash];
					while (_t != _invalidEntry) {
						if (_key == (_t >> ((12 : GoUnTypedInt)))) {
							_code = _t & _maxCode;
							continue;
						};
						_h = (_h + ((1 : GoUInt32))) & _tableMask;
						_t = _w.value._table[_h];
					};
				};
				{
					_w.value._err = _w.value._write(_w, _code);
					if (_w.value._err != null) {
						return {_0: ((0 : GoInt)), _1: _w.value._err};
					};
				};
				_code = _literal;
				{
					var _err1:stdgo.Error = _w.value._incHi();
					if (_err1 != null) {
						if (Go.toInterface(_err1) == Go.toInterface(_errOutOfCodes)) {
							continue;
						};
						_w.value._err = _err1;
						return {_0: ((0 : GoInt)), _1: _w.value._err};
					};
				};
				while (true) {
					if (_w.value._table[_hash] == _invalidEntry) {
						_w.value._table[_hash] = ((_key << ((12 : GoUnTypedInt)))) | _w.value._hi;
						break;
					};
					_hash = (_hash + ((1 : GoUInt32))) & _tableMask;
				};
			};
			_w.value._savedCode = _code;
			return {_0: _n, _1: ((null : stdgo.Error))};
		});
	}

	public function _incHi():Error {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_w.value._hi++;
		if (_w.value._hi == _w.value._overflow) {
			_w.value._width++;
			_w.value._overflow = (_w.value._overflow << (((1 : GoUnTypedInt))));
		};
		if (_w.value._hi == _maxCode) {
			var _clear:GoUInt32 = (((((1 : GoUInt32)) : GoUInt32)) << _w.value._litWidth);
			{
				var _err:stdgo.Error = _w.value._write(_w, _clear);
				if (_err != null) {
					return _err;
				};
			};
			_w.value._width = _w.value._litWidth + ((1 : GoUInt));
			_w.value._hi = _clear + ((1 : GoUInt32));
			_w.value._overflow = (_clear << ((1 : GoUnTypedInt)));
			{
				var _i;
				for (_obj in _w.value._table.keyValueIterator()) {
					_i = _obj.key;
					_w.value._table[_i] = _invalidEntry;
				};
			};
			return _errOutOfCodes;
		};
		return ((null : stdgo.Error));
	}

	public function _writeMSB(_c:GoUInt32):Error {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_w.value._bits = _w.value._bits | ((_c << (((32 : GoUInt)) - _w.value._width - _w.value._nBits)));
		_w.value._nBits = _w.value._nBits + (_w.value._width);
		while (_w.value._nBits >= ((8 : GoUInt))) {
			{
				var _err:stdgo.Error = _w.value._w.writeByte((((_w.value._bits >> ((24 : GoUnTypedInt))) : GoUInt8)));
				if (_err != null) {
					return _err;
				};
			};
			_w.value._bits = (_w.value._bits << (((8 : GoUnTypedInt))));
			_w.value._nBits = _w.value._nBits - (((8 : GoUInt)));
		};
		return ((null : stdgo.Error));
	}

	public function _writeLSB(_c:GoUInt32):Error {
		var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_w.value._bits = _w.value._bits | ((_c << _w.value._nBits));
		_w.value._nBits = _w.value._nBits + (_w.value._width);
		while (_w.value._nBits >= ((8 : GoUInt))) {
			{
				var _err:stdgo.Error = _w.value._w.writeByte(((_w.value._bits : GoUInt8)));
				if (_err != null) {
					return _err;
				};
			};
			_w.value._bits = (_w.value._bits >> (((8 : GoUnTypedInt))));
			_w.value._nBits = _w.value._nBits - (((8 : GoUInt)));
		};
		return ((null : stdgo.Error));
	}

	public var _w:T_writer = ((null : T_writer));
	public var _order:Order = new Order();
	public var _write:(Pointer<Writer>, GoUInt32) -> stdgo.Error = null;
	public var _bits:GoUInt32 = ((0 : GoUInt32));
	public var _nBits:GoUInt = ((0 : GoUInt));
	public var _width:GoUInt = ((0 : GoUInt));
	public var _litWidth:GoUInt = ((0 : GoUInt));
	public var _hi:GoUInt32 = ((0 : GoUInt32));
	public var _overflow:GoUInt32 = ((0 : GoUInt32));
	public var _savedCode:GoUInt32 = ((0 : GoUInt32));
	public var _err:stdgo.Error = ((null : stdgo.Error));
	public var _table:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0...16384) ((0 : GoUInt32))]);

	public function new(?_w:T_writer, ?_order:Order, ?_write:(Pointer<Writer>, GoUInt32) -> stdgo.Error, ?_bits:GoUInt32, ?_nBits:GoUInt, ?_width:GoUInt,
			?_litWidth:GoUInt, ?_hi:GoUInt32, ?_overflow:GoUInt32, ?_savedCode:GoUInt32, ?_err:stdgo.Error, ?_table:GoArray<GoUInt32>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_w) + " " + Go.string(_order) + " " + Go.string(_write) + " " + Go.string(_bits) + " " + Go.string(_nBits) + " "
			+ Go.string(_width) + " " + Go.string(_litWidth) + " " + Go.string(_hi) + " " + Go.string(_overflow) + " " + Go.string(_savedCode) + " "
			+ Go.string(_err) + " " + Go.string(_table) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Writer(_w, _order, _write, _bits, _nBits, _width, _litWidth, _hi, _overflow, _savedCode, _err, _table);
	}

	public function __set__(__tmp__) {
		this._w = __tmp__._w;
		this._order = __tmp__._order;
		this._write = __tmp__._write;
		this._bits = __tmp__._bits;
		this._nBits = __tmp__._nBits;
		this._width = __tmp__._width;
		this._litWidth = __tmp__._litWidth;
		this._hi = __tmp__._hi;
		this._overflow = __tmp__._overflow;
		this._savedCode = __tmp__._savedCode;
		this._err = __tmp__._err;
		this._table = __tmp__._table;
		return this;
	}
}

final _maxWidth:GoInt64 = ((12 : GoUnTypedInt));
final lsb:Order = new Order((0 : GoUnTypedInt));
final _tableSize:GoUnTypedInt = (((4 : GoUnTypedInt)) * ((1 : GoUnTypedInt)) << ((12 : GoUnTypedInt)));
final _tableMask:GoUnTypedInt = _tableSize - ((1 : GoUnTypedInt));
final _maxCode:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((12 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
final msb:Order = new Order((1 : GoUnTypedInt));
final _invalidCode:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((32 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
final _flushBuffer:GoUnTypedInt = (((1 : GoUnTypedInt)) << _maxWidth);
final _decoderInvalidCode:GoInt64 = ((65535 : GoUnTypedInt));
var _errOutOfCodes:stdgo.Error = stdgo.errors.Errors.new_("lzw: out of codes");
final _invalidEntry:GoInt64 = ((0 : GoUnTypedInt));
var _errClosed:stdgo.Error = stdgo.errors.Errors.new_("lzw: reader/writer is closed");

/**
	// NewReader creates a new io.ReadCloser.
	// Reads from the returned io.ReadCloser read and decompress data from r.
	// If r does not also implement io.ByteReader,
	// the decompressor may read more data than necessary from r.
	// It is the caller's responsibility to call Close on the ReadCloser when
	// finished reading.
	// The number of bits to use for literal codes, litWidth, must be in the
	// range [2,8] and is typically 8. It must equal the litWidth
	// used during compression.
	//
	// It is guaranteed that the underlying type of the returned io.ReadCloser
	// is a *Reader.
**/
function newReader(_r:stdgo.io.Io.Reader, _order:Order, _litWidth:GoInt):stdgo.io.Io.ReadCloser {
	return _newReader(_r, _order, _litWidth).value;
}

function _newReader(_src:stdgo.io.Io.Reader, _order:Order, _litWidth:GoInt):Pointer<Reader> {
	var _r:Pointer<Reader> = Go.pointer(new Reader());
	_r.value._init(_src, _order, _litWidth);
	return _r;
}

/**
	// NewWriter creates a new io.WriteCloser.
	// Writes to the returned io.WriteCloser are compressed and written to w.
	// It is the caller's responsibility to call Close on the WriteCloser when
	// finished writing.
	// The number of bits to use for literal codes, litWidth, must be in the
	// range [2,8] and is typically 8. Input bytes must be less than 1<<litWidth.
	//
	// It is guaranteed that the underlying type of the returned io.WriteCloser
	// is a *Writer.
**/
function newWriter(_w:stdgo.io.Io.Writer, _order:Order, _litWidth:GoInt):stdgo.io.Io.WriteCloser {
	return _newWriter(_w, _order, _litWidth).value;
}

function _newWriter(_dst:stdgo.io.Io.Writer, _order:Order, _litWidth:GoInt):Pointer<Writer> {
	var _w:Pointer<Writer> = Go.pointer(new Writer());
	_w.value._init(_dst, _order, _litWidth);
	return _w;
}

class Reader_extension_fields {
	public function _readLSB(__tmp__):{var _0:GoUInt16; var _1:Error;}
		return __tmp__._readLSB();

	public function _readMSB(__tmp__):{var _0:GoUInt16; var _1:Error;}
		return __tmp__._readMSB();

	public function read(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.read(_b);

	public function _decode(__tmp__):Void
		__tmp__._decode();

	public function close(__tmp__):Error
		return __tmp__.close();

	public function reset(__tmp__, _src:stdgo.io.Io.Reader, _order:Order, _litWidth:GoInt):Void
		__tmp__.reset(_src, _order, _litWidth);

	public function _init(__tmp__, _src:stdgo.io.Io.Reader, _order:Order, _litWidth:GoInt):Void
		__tmp__._init(_src, _order, _litWidth);
}

class Writer_extension_fields {
	public function _writeLSB(__tmp__, _c:GoUInt32):Error
		return __tmp__._writeLSB(_c);

	public function _writeMSB(__tmp__, _c:GoUInt32):Error
		return __tmp__._writeMSB(_c);

	public function _incHi(__tmp__):Error
		return __tmp__._incHi();

	public function write(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.write(_p);

	public function close(__tmp__):Error
		return __tmp__.close();

	public function reset(__tmp__, _dst:stdgo.io.Io.Writer, _order:Order, _litWidth:GoInt):Void
		__tmp__.reset(_dst, _order, _litWidth);

	public function _init(__tmp__, _dst:stdgo.io.Io.Writer, _order:Order, _litWidth:GoInt):Void
		__tmp__._init(_dst, _order, _litWidth);
}
