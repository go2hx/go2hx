package stdgo.bytes;

import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.StdGoTypes;

@:structInit class Buffer {
	public function readString(_delim:GoByte):{var _0:GoString; var _1:Error;} {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _line:GoString = (("" : GoString)),
			_err:Error = ((null : stdgo.Error));
		var __tmp__ = _b.value._readSlice(_delim),
			_slice:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		return {_0: ((_slice : GoString)), _1: _err};
	}

	public function _readSlice(_delim:GoByte):{var _0:Slice<GoByte>; var _1:Error;} {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _line:Slice<GoByte> = new Slice<GoUInt8>().nil(),
			_err:Error = ((null : stdgo.Error));
		var _i:GoInt = indexByte(_b.value._buf.__slice__(_b.value._off), _delim);
		var _end:GoInt = _b.value._off + _i + ((1 : GoInt));
		if (_i < ((0 : GoInt))) {
			_end = _b.value._buf.length;
			_err = stdgo.io.Io.eof;
		};
		_line = _b.value._buf.__slice__(_b.value._off, _end);
		_b.value._off = _end;
		_b.value._lastRead = _opRead;
		return {_0: _line, _1: _err};
	}

	public function readBytes(_delim:GoByte):{var _0:Slice<GoByte>; var _1:Error;} {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _line:Slice<GoByte> = new Slice<GoUInt8>().nil(),
			_err:Error = ((null : stdgo.Error));
		var __tmp__ = _b.value._readSlice(_delim),
			_slice:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		_line = _line.__append__(..._slice.toArray());
		return {_0: _line, _1: _err};
	}

	public function unreadByte():Error {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_b.value._lastRead.__t__ == _opInvalid.__t__) {
			return _errUnreadByte;
		};
		_b.value._lastRead = _opInvalid;
		if (_b.value._off > ((0 : GoInt))) {
			_b.value._off--;
		};
		return ((null : stdgo.Error));
	}

	public function unreadRune():Error {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_b.value._lastRead.__t__ <= _opInvalid.__t__) {
			return stdgo.errors.Errors.new_("bytes.Buffer: UnreadRune: previous operation was not a successful ReadRune");
		};
		if (_b.value._off >= _b.value._lastRead.__t__) {
			_b.value._off = _b.value._off - (_b.value._lastRead.__t__);
		};
		_b.value._lastRead = _opInvalid;
		return ((null : stdgo.Error));
	}

	public function readRune():{var _0:GoRune; var _1:GoInt; var _2:Error;} {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _r:GoRune = ((0 : GoInt32)),
			_size:GoInt = ((0 : GoInt)),
			_err:Error = ((null : stdgo.Error));
		if (_b.value._empty()) {
			_b.value.reset();
			return {_0: ((0 : GoInt32)), _1: ((0 : GoInt)), _2: stdgo.io.Io.eof};
		};
		var _c:GoUInt8 = _b.value._buf[_b.value._off];
		if (_c < stdgo.unicode.utf8.Utf8.runeSelf) {
			_b.value._off++;
			_b.value._lastRead = _opReadRune1;
			return {_0: ((_c : GoRune)), _1: ((1 : GoInt)), _2: ((null : stdgo.Error))};
		};
		var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_b.value._buf.__slice__(_b.value._off)),
			_r:GoInt32 = __tmp__._0,
			_n:GoInt = __tmp__._1;
		_b.value._off = _b.value._off + (_n);
		_b.value._lastRead = new T_readOp(_n);
		return {_0: _r, _1: _n, _2: ((null : stdgo.Error))};
	}

	public function readByte():{var _0:GoByte; var _1:Error;} {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_b.value._empty()) {
			_b.value.reset();
			return {_0: ((0 : GoUInt8)), _1: stdgo.io.Io.eof};
		};
		var _c:GoUInt8 = _b.value._buf[_b.value._off];
		_b.value._off++;
		_b.value._lastRead = _opRead;
		return {_0: _c, _1: ((null : stdgo.Error))};
	}

	public function next(_n:GoInt):Slice<GoByte> {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_b.value._lastRead = _opInvalid;
		var _m:GoInt = _b.value.len();
		if (_n > _m) {
			_n = _m;
		};
		var _data:Slice<GoUInt8> = _b.value._buf.__slice__(_b.value._off, _b.value._off + _n);
		_b.value._off = _b.value._off + (_n);
		if (_n > ((0 : GoInt))) {
			_b.value._lastRead = _opRead;
		};
		return _data;
	}

	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		_b.value._lastRead = _opInvalid;
		if (_b.value._empty()) {
			_b.value.reset();
			if (_p.length == ((0 : GoInt))) {
				return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};
			};
			return {_0: ((0 : GoInt)), _1: stdgo.io.Io.eof};
		};
		_n = Go.copy(_p, _b.value._buf.__slice__(_b.value._off));
		_b.value._off = _b.value._off + (_n);
		if (_n > ((0 : GoInt))) {
			_b.value._lastRead = _opRead;
		};
		return {_0: _n, _1: ((null : stdgo.Error))};
	}

	public function writeRune(_r:GoRune):{var _0:GoInt; var _1:Error;} {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		if (((_r : GoUInt32)) < stdgo.unicode.utf8.Utf8.runeSelf) {
			_b.value.writeByte(((_r : GoByte)));
			return {_0: ((1 : GoInt)), _1: ((null : stdgo.Error))};
		};
		_b.value._lastRead = _opInvalid;
		var __tmp__ = _b.value._tryGrowByReslice(stdgo.unicode.utf8.Utf8.utfmax),
			_m:GoInt = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (!_ok) {
			_m = _b.value._grow(stdgo.unicode.utf8.Utf8.utfmax);
		};
		_n = stdgo.unicode.utf8.Utf8.encodeRune(_b.value._buf.__slice__(_m, _m + stdgo.unicode.utf8.Utf8.utfmax), _r);
		_b.value._buf = _b.value._buf.__slice__(0, _m + _n);
		return {_0: _n, _1: ((null : stdgo.Error))};
	}

	public function writeByte(_c:GoByte):Error {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_b.value._lastRead = _opInvalid;
		var __tmp__ = _b.value._tryGrowByReslice(((1 : GoInt))),
			_m:GoInt = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (!_ok) {
			_m = _b.value._grow(((1 : GoInt)));
		};
		_b.value._buf[_m] = _c;
		return ((null : stdgo.Error));
	}

	public function writeTo(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;} {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
		_b.value._lastRead = _opInvalid;
		{
			var _nBytes:GoInt = _b.value.len();
			if (_nBytes > ((0 : GoInt))) {
				var __tmp__ = _w.write(_b.value._buf.__slice__(_b.value._off)),
					_m:GoInt = __tmp__._0,
					_e:stdgo.Error = __tmp__._1;
				if (_m > _nBytes) {
					throw "bytes.Buffer.WriteTo: invalid Write count";
				};
				_b.value._off = _b.value._off + (_m);
				_n = ((_m : GoInt64));
				if (_e != null) {
					return {_0: _n, _1: _e};
				};
				if (_m != _nBytes) {
					return {_0: _n, _1: stdgo.io.Io.errShortWrite};
				};
			};
		};
		_b.value.reset();
		return {_0: _n, _1: ((null : stdgo.Error))};
	}

	public function readFrom(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;} {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
		_b.value._lastRead = _opInvalid;
		while (true) {
			var _i:GoInt = _b.value._grow(minRead);
			_b.value._buf = _b.value._buf.__slice__(0, _i);
			var __tmp__ = _r.read(_b.value._buf.__slice__(_i, _b.value._buf.cap())),
				_m:GoInt = __tmp__._0,
				_e:stdgo.Error = __tmp__._1;
			if (_m < ((0 : GoInt))) {
				throw _errNegativeRead;
			};
			_b.value._buf = _b.value._buf.__slice__(0, _i + _m);
			_n = _n + (((_m : GoInt64)));
			if (Go.toInterface(_e) == Go.toInterface(stdgo.io.Io.eof)) {
				return {_0: _n, _1: ((null : stdgo.Error))};
			};
			if (_e != null) {
				return {_0: _n, _1: _e};
			};
		};
	}

	public function writeString(_s:GoString):{var _0:GoInt; var _1:Error;} {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		_b.value._lastRead = _opInvalid;
		var __tmp__ = _b.value._tryGrowByReslice(_s.length),
			_m:GoInt = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (!_ok) {
			_m = _b.value._grow(_s.length);
		};
		return {_0: Go.copy(_b.value._buf.__slice__(_m), _s), _1: ((null : stdgo.Error))};
	}

	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		_b.value._lastRead = _opInvalid;
		var __tmp__ = _b.value._tryGrowByReslice(_p.length),
			_m:GoInt = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (!_ok) {
			_m = _b.value._grow(_p.length);
		};
		return {_0: Go.copy(_b.value._buf.__slice__(_m), _p), _1: ((null : stdgo.Error))};
	}

	public function grow(_n:GoInt):Void {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_n < ((0 : GoInt))) {
			throw "bytes.Buffer.Grow: negative count";
		};
		var _m:GoInt = _b.value._grow(_n);
		_b.value._buf = _b.value._buf.__slice__(0, _m);
	}

	public function _grow(_n:GoInt):GoInt {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _m:GoInt = _b.value.len();
		if (_m == ((0 : GoInt)) && _b.value._off != ((0 : GoInt))) {
			_b.value.reset();
		};
		{
			var __tmp__ = _b.value._tryGrowByReslice(_n),
				_i:GoInt = __tmp__._0,
				_ok:Bool = __tmp__._1;
			if (_ok) {
				return _i;
			};
		};
		if ((_b.value._buf == null || _b.value._buf.isNil()) && _n <= _smallBufferSize) {
			_b.value._buf = new Slice<GoUInt8>(...[for (i in 0...((_n : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_smallBufferSize : GoInt)).toBasic());
			return ((0 : GoInt));
		};
		var _c:GoInt = _b.value._buf.cap();
		if (_n <= _c / ((2 : GoInt)) - _m) {
			Go.copy(_b.value._buf, _b.value._buf.__slice__(_b.value._off));
		} else if (_c > _maxInt - _c - _n) {
			throw errTooLarge;
		} else {
			var _buf:Slice<GoUInt8> = _makeSlice(((2 : GoInt)) * _c + _n);
			Go.copy(_buf, _b.value._buf.__slice__(_b.value._off));
			_b.value._buf = _buf;
		};
		_b.value._off = ((0 : GoInt));
		_b.value._buf = _b.value._buf.__slice__(0, _m + _n);
		return _m;
	}

	public function _tryGrowByReslice(_n:GoInt):{var _0:GoInt; var _1:Bool;} {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var _l:GoInt = _b.value._buf.length;
			if (_n <= _b.value._buf.cap() - _l) {
				_b.value._buf = _b.value._buf.__slice__(0, _l + _n);
				return {_0: _l, _1: true};
			};
		};
		return {_0: ((0 : GoInt)), _1: false};
	}

	public function reset():Void {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_b.value._buf = _b.value._buf.__slice__(0, ((0 : GoInt)));
		_b.value._off = ((0 : GoInt));
		_b.value._lastRead = _opInvalid;
	}

	public function truncate(_n:GoInt):Void {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_n == ((0 : GoInt))) {
			_b.value.reset();
			return;
		};
		_b.value._lastRead = _opInvalid;
		if (_n < ((0 : GoInt)) || _n > _b.value.len()) {
			throw "bytes.Buffer: truncation out of range";
		};
		_b.value._buf = _b.value._buf.__slice__(0, _b.value._off + _n);
	}

	public function cap():GoInt {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _b.value._buf.cap();
	}

	public function len():GoInt {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _b.value._buf.length - _b.value._off;
	}

	public function _empty():Bool {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _b.value._buf.length <= _b.value._off;
	}

	public function toString():GoString {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if ((_b == null || _b.isNil())) {
			return "<nil>";
		};
		return ((_b.value._buf.__slice__(_b.value._off) : GoString));
	}

	public function bytes():Slice<GoByte> {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _b.value._buf.__slice__(_b.value._off);
	}

	public var _buf:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _off:GoInt = ((0 : GoInt));
	public var _lastRead:T_readOp = new T_readOp();

	public function new(?_buf:Slice<GoUInt8>, ?_off:GoInt, ?_lastRead:T_readOp) {
		if (_buf != null)
			this._buf = _buf;
		if (_off != null)
			this._off = _off;
		if (_lastRead != null)
			this._lastRead = _lastRead;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Buffer(_buf, _off, _lastRead);
	}

	public function __set__(__tmp__) {
		this._buf = __tmp__._buf;
		this._off = __tmp__._off;
		this._lastRead = __tmp__._lastRead;
		return this;
	}
}

@:named class T_readOp {
	public var __t__:GoInt8;

	public function new(?t:GoInt8) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_readOp(__t__);
}

@:named class T_asciiSet {
	public function _contains(_c:GoByte):Bool {
		var _as = new Pointer(() -> new T_asciiSet(this.__t__), __tmp__ -> new T_asciiSet(this.__t__ = __tmp__.__t__));
		return (_as.value.__t__[(_c >> ((5 : GoUnTypedInt)))] & ((((1 : GoUInt32)) << (((_c & ((31 : GoUInt8))) : GoUInt))))) != ((0 : GoUInt32));
	}

	public var __t__:GoArray<GoUInt32>;

	public function new(?t:GoArray<GoUInt32>) {
		__t__ = t == null ? new GoArray<GoUInt32>(...[for (i in 0...8) ((0 : GoUInt32))]) : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_asciiSet(__t__.copy());

	public function __slice__(low:GoInt, high:GoInt = -1)
		return this.__t__.__slice__(low, high);
}

@:structInit class Reader {
	public function reset(_b:Slice<GoByte>):Void {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_r.value = new Reader(_b, ((0 : GoInt64)), -((1 : GoUnTypedInt))).__copy__();
	}

	public function writeTo(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
		_r.value._prevRune = -((1 : GoUnTypedInt));
		if (_r.value._i >= ((_r.value._s.length : GoInt64))) {
			return {_0: ((0 : GoInt64)), _1: ((null : stdgo.Error))};
		};
		var _b:Slice<GoUInt8> = _r.value._s.__slice__(_r.value._i);
		var __tmp__ = _w.write(_b),
			_m:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_m > _b.length) {
			throw "bytes.Reader.WriteTo: invalid Write count";
		};
		_r.value._i = _r.value._i + (((_m : GoInt64)));
		_n = ((_m : GoInt64));
		if (_m != _b.length && _err == null) {
			_err = stdgo.io.Io.errShortWrite;
		};
		return {_0: _n, _1: _err};
	}

	public function seek(_offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_r.value._prevRune = -((1 : GoUnTypedInt));
		var _abs:GoInt64 = ((0 : GoInt64));
		if (_whence == stdgo.io.Io.seekStart) {
			_abs = _offset;
		} else if (_whence == stdgo.io.Io.seekCurrent) {
			_abs = _r.value._i + _offset;
		} else if (_whence == stdgo.io.Io.seekEnd) {
			_abs = ((_r.value._s.length : GoInt64)) + _offset;
		} else {
			return {_0: ((0 : GoInt64)), _1: stdgo.errors.Errors.new_("bytes.Reader.Seek: invalid whence")};
		};
		if (_abs < ((0 : GoInt64))) {
			return {_0: ((0 : GoInt64)), _1: stdgo.errors.Errors.new_("bytes.Reader.Seek: negative position")};
		};
		_r.value._i = _abs;
		return {_0: _abs, _1: ((null : stdgo.Error))};
	}

	public function unreadRune():Error {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_r.value._i <= ((0 : GoInt64))) {
			return stdgo.errors.Errors.new_("bytes.Reader.UnreadRune: at beginning of slice");
		};
		if (_r.value._prevRune < ((0 : GoInt))) {
			return stdgo.errors.Errors.new_("bytes.Reader.UnreadRune: previous operation was not ReadRune");
		};
		_r.value._i = ((_r.value._prevRune : GoInt64));
		_r.value._prevRune = -((1 : GoUnTypedInt));
		return ((null : stdgo.Error));
	}

	public function readRune():{var _0:GoRune; var _1:GoInt; var _2:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _ch:GoRune = ((0 : GoInt32)),
			_size:GoInt = ((0 : GoInt)),
			_err:Error = ((null : stdgo.Error));
		if (_r.value._i >= ((_r.value._s.length : GoInt64))) {
			_r.value._prevRune = -((1 : GoUnTypedInt));
			return {_0: ((0 : GoInt32)), _1: ((0 : GoInt)), _2: stdgo.io.Io.eof};
		};
		_r.value._prevRune = ((_r.value._i : GoInt));
		{
			var _c:GoUInt8 = _r.value._s[_r.value._i];
			if (_c < stdgo.unicode.utf8.Utf8.runeSelf) {
				_r.value._i++;
				return {_0: ((_c : GoRune)), _1: ((1 : GoInt)), _2: ((null : stdgo.Error))};
			};
		};
		{
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_r.value._s.__slice__(_r.value._i));
			_ch = __tmp__._0;
			_size = __tmp__._1;
		};
		_r.value._i = _r.value._i + (((_size : GoInt64)));
		return {_0: _ch, _1: _size, _2: _err};
	}

	public function unreadByte():Error {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_r.value._i <= ((0 : GoInt64))) {
			return stdgo.errors.Errors.new_("bytes.Reader.UnreadByte: at beginning of slice");
		};
		_r.value._prevRune = -((1 : GoUnTypedInt));
		_r.value._i--;
		return ((null : stdgo.Error));
	}

	public function readByte():{var _0:GoByte; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_r.value._prevRune = -((1 : GoUnTypedInt));
		if (_r.value._i >= ((_r.value._s.length : GoInt64))) {
			return {_0: ((0 : GoUInt8)), _1: stdgo.io.Io.eof};
		};
		var _b:GoUInt8 = _r.value._s[_r.value._i];
		_r.value._i++;
		return {_0: _b, _1: ((null : stdgo.Error))};
	}

	public function readAt(_b:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		if (_off < ((0 : GoInt64))) {
			return {_0: ((0 : GoInt)), _1: stdgo.errors.Errors.new_("bytes.Reader.ReadAt: negative offset")};
		};
		if (_off >= ((_r.value._s.length : GoInt64))) {
			return {_0: ((0 : GoInt)), _1: stdgo.io.Io.eof};
		};
		_n = Go.copy(_b, _r.value._s.__slice__(_off));
		if (_n < _b.length) {
			_err = stdgo.io.Io.eof;
		};
		return {_0: _n, _1: _err};
	}

	public function read(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		if (_r.value._i >= ((_r.value._s.length : GoInt64))) {
			return {_0: ((0 : GoInt)), _1: stdgo.io.Io.eof};
		};
		_r.value._prevRune = -((1 : GoUnTypedInt));
		_n = Go.copy(_b, _r.value._s.__slice__(_r.value._i));
		_r.value._i = _r.value._i + (((_n : GoInt64)));
		return {_0: _n, _1: _err};
	}

	public function size():GoInt64 {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return ((_r.value._s.length : GoInt64));
	}

	public function len():GoInt {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_r.value._i >= ((_r.value._s.length : GoInt64))) {
			return ((0 : GoInt));
		};
		return (((((_r.value._s.length : GoInt64)) - _r.value._i) : GoInt));
	}

	public var _s:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _i:GoInt64 = ((0 : GoInt64));
	public var _prevRune:GoInt = ((0 : GoInt));

	public function new(?_s:Slice<GoUInt8>, ?_i:GoInt64, ?_prevRune:GoInt) {
		if (_s != null)
			this._s = _s;
		if (_i != null)
			this._i = _i;
		if (_prevRune != null)
			this._prevRune = _prevRune;
	}

	public function toString() {
		return '{' + Go.string(_s) + " " + Go.string(_i) + " " + Go.string(_prevRune) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Reader(_s, _i, _prevRune);
	}

	public function __set__(__tmp__) {
		this._s = __tmp__._s;
		this._i = __tmp__._i;
		this._prevRune = __tmp__._prevRune;
		return this;
	}
}

var errTooLarge:stdgo.Error = stdgo.errors.Errors.new_("bytes.Buffer: too large");
final _opRead:T_readOp = new T_readOp(-((1 : GoUnTypedInt)));
final _smallBufferSize:GoInt64 = ((64 : GoUnTypedInt));
final _opReadRune1:T_readOp = new T_readOp(((1 : GoInt8)));
final _maxInt:GoInt = (((-1 ^ ((((0 : GoUInt)) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
final _opReadRune2:T_readOp = new T_readOp(((2 : GoInt8)));
var _errUnreadByte:stdgo.Error = stdgo.errors.Errors.new_("bytes.Buffer: UnreadByte: previous operation was not a successful read");
final _opReadRune3:T_readOp = new T_readOp(((3 : GoInt8)));
final _opReadRune4:T_readOp = new T_readOp(((4 : GoInt8)));
final _opInvalid:T_readOp = new T_readOp(((0 : GoInt8)));

var _asciiSpace:GoArray<GoUInt8> = {
	var s = new GoArray<GoUInt8>(...[for (i in 0...256) 0]);
	s[0] = ((1 : GoUInt8));
	s[1] = ((1 : GoUInt8));
	s[2] = ((1 : GoUInt8));
	s[3] = ((1 : GoUInt8));
	s[4] = ((1 : GoUInt8));
	s[5] = ((1 : GoUInt8));
	s;
};

final minRead:GoInt64 = ((512 : GoUnTypedInt));
var _errNegativeRead:stdgo.Error = stdgo.errors.Errors.new_("bytes.Buffer: reader returned negative count from Read");

/**
	// makeSlice allocates a slice of size n. If the allocation fails, it panics
	// with ErrTooLarge.
**/
function _makeSlice(_n:GoInt):Slice<GoByte> {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	{
		deferstack.unshift(() -> {
			var a = function():Void {
				var recover_exception:Error = null;
				if (Go.recover() != null) {
					throw errTooLarge;
				};
			};
			a();
		});
	};
	try {
		{
			for (defer in deferstack) {
				defer();
			};
			return new Slice<GoUInt8>(...[for (i in 0...((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
		};
		for (defer in deferstack) {
			defer();
		};
	} catch (e) {
		recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
		{
			for (defer in deferstack) {
				defer();
			};
			if (recover_exception != null)
				throw recover_exception;
			return new Slice<GoUInt8>().nil();
		};
	};
}

/**
	// NewBuffer creates and initializes a new Buffer using buf as its
	// initial contents. The new Buffer takes ownership of buf, and the
	// caller should not use buf after this call. NewBuffer is intended to
	// prepare a Buffer to read existing data. It can also be used to set
	// the initial size of the internal buffer for writing. To do that,
	// buf should have the desired capacity but a length of zero.
	//
	// In most cases, new(Buffer) (or just declaring a Buffer variable) is
	// sufficient to initialize a Buffer.
**/
function newBuffer(_buf:Slice<GoByte>):Pointer<Buffer> {
	return Go.pointer((({_buf: _buf, _off: 0, _lastRead: new T_readOp()} : Buffer)));
}

/**
	// NewBufferString creates and initializes a new Buffer using string s as its
	// initial contents. It is intended to prepare a buffer to read an existing
	// string.
	//
	// In most cases, new(Buffer) (or just declaring a Buffer variable) is
	// sufficient to initialize a Buffer.
**/
function newBufferString(_s:GoString):Pointer<Buffer> {
	return Go.pointer((({_buf: ((_s : Slice<GoByte>)), _off: 0, _lastRead: new T_readOp()} : Buffer)));
}

/**
	// Equal reports whether a and b
	// are the same length and contain the same bytes.
	// A nil argument is equivalent to an empty slice.
**/
function equal(_a:Slice<GoByte>, _b:Slice<GoByte>):Bool {
	return ((_a : GoString)) == ((_b : GoString));
}

/**
	// Compare returns an integer comparing two byte slices lexicographically.
	// The result will be 0 if a==b, -1 if a < b, and +1 if a > b.
	// A nil argument is equivalent to an empty slice.
**/
function compare(a:Slice<GoByte>, b:Slice<GoByte>):GoInt {
	var l = a.length;
	if (b.length < l)
		l = b.length;
	function samebytes():GoInt {
		if (a.length < b.length)
			return -1;
		if (b.length < a.length)
			return 1;
		return 0;
	}
	if (l == 0 || a[0] == b[0])
		return samebytes();
	for (i in 0...l.toBasic()) {
		final c1 = a[i];
		final c2 = b[2];
		if (c1 < c2)
			return -1;
		if (c2 < c2)
			return 1;
	}
	return samebytes();
}

/**
	// explode splits s into a slice of UTF-8 sequences, one per Unicode code point (still slices of bytes),
	// up to a maximum of n byte slices. Invalid UTF-8 sequences are chopped into individual bytes.
**/
function _explode(_s:Slice<GoByte>, _n:GoInt):Slice<Slice<GoByte>> {
	if (_n <= ((0 : GoInt))) {
		_n = _s.length;
	};
	var _a:Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>(...[for (i in 0...((_n : GoInt)).toBasic()) new Slice<GoUInt8>().nil()]);
	var _size:GoInt = ((0 : GoInt));
	var _na:GoInt = ((0 : GoInt));
	while (_s.length > ((0 : GoInt))) {
		if (_na + ((1 : GoInt)) >= _n) {
			_a[_na] = _s;
			_na++;
			break;
		};
		{
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s);
			_size = __tmp__._1;
		};
		_a[_na] = _s.__slice__(((0 : GoInt)), _size).setCap(((_size : GoInt)) - ((1 : GoInt)));
		_s = _s.__slice__(_size);
		_na++;
	};
	return _a.__slice__(((0 : GoInt)), _na);
}

/**
	// Count counts the number of non-overlapping instances of sep in s.
	// If sep is an empty slice, Count returns 1 + the number of UTF-8-encoded code points in s.
**/
function count(_s:Slice<GoByte>, _sep:Slice<GoByte>):GoInt {
	if (_sep.length == ((0 : GoInt))) {
		return stdgo.unicode.utf8.Utf8.runeCount(_s) + ((1 : GoInt));
	};
	if (_sep.length == ((1 : GoInt))) {
		return stdgo.internal.bytealg.Bytealg.count(_s, _sep[((0 : GoInt))]);
	};
	var _n:GoInt = ((0 : GoInt));
	while (true) {
		var _i:GoInt = index(_s, _sep);
		if (_i == -((1 : GoUnTypedInt))) {
			return _n;
		};
		_n++;
		_s = _s.__slice__(_i + _sep.length);
	};
}

/**
	// Contains reports whether subslice is within b.
**/
function contains(_b:Slice<GoByte>, _subslice:Slice<GoByte>):Bool {
	return index(_b, _subslice) != -((1 : GoUnTypedInt));
}

/**
	// ContainsAny reports whether any of the UTF-8-encoded code points in chars are within b.
**/
function containsAny(_b:Slice<GoByte>, _chars:GoString):Bool {
	return indexAny(_b, _chars) >= ((0 : GoInt));
}

/**
	// ContainsRune reports whether the rune is contained in the UTF-8-encoded byte slice b.
**/
function containsRune(_b:Slice<GoByte>, _r:GoRune):Bool {
	return indexRune(_b, _r) >= ((0 : GoInt));
}

/**
	// IndexByte returns the index of the first instance of c in b, or -1 if c is not present in b.
**/
function indexByte(_b:Slice<GoByte>, _c:GoByte):GoInt {
	return stdgo.internal.bytealg.Bytealg.indexByte(_b, _c);
}

function _indexBytePortable(_s:Slice<GoByte>, _c:GoByte):GoInt {
	{
		var _i;
		var _b;
		for (_obj in _s.keyValueIterator()) {
			_i = _obj.key;
			_b = _obj.value;
			if (_b == _c) {
				return _i;
			};
		};
	};
	return -((1 : GoUnTypedInt));
}

/**
	// LastIndex returns the index of the last instance of sep in s, or -1 if sep is not present in s.
**/
function lastIndex(_s:Slice<GoByte>, _sep:Slice<GoByte>):GoInt {
	var _n:GoInt = _sep.length;
	if (_n == ((0 : GoInt))) {
		return _s.length;
	} else if (_n == ((1 : GoInt))) {
		return lastIndexByte(_s, _sep[((0 : GoInt))]);
	} else if (_n == _s.length) {
		if (equal(_s, _sep)) {
			return ((0 : GoInt));
		};
		return -((1 : GoUnTypedInt));
	} else if (_n > _s.length) {
		return -((1 : GoUnTypedInt));
	};
	var __tmp__ = stdgo.internal.bytealg.Bytealg.hashStrRevBytes(_sep),
		_hashss:GoUInt32 = __tmp__._0,
		_pow:GoUInt32 = __tmp__._1;
	var _last:GoInt = _s.length - _n;
	var _h:GoUInt32 = ((0 : GoUInt32));
	{
		var _i:GoInt = _s.length - ((1 : GoInt));
		Go.cfor(_i >= _last, _i--, {
			_h = _h * stdgo.internal.bytealg.Bytealg.primeRK + ((_s[_i] : GoUInt32));
		});
	};
	if (_h == _hashss && equal(_s.__slice__(_last), _sep)) {
		return _last;
	};
	{
		var _i:GoInt = _last - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			_h = _h * (stdgo.internal.bytealg.Bytealg.primeRK);
			_h = _h + (((_s[_i] : GoUInt32)));
			_h = _h - (_pow * ((_s[_i + _n] : GoUInt32)));
			if (_h == _hashss && equal(_s.__slice__(_i, _i + _n), _sep)) {
				return _i;
			};
		});
	};
	return -((1 : GoUnTypedInt));
}

/**
	// LastIndexByte returns the index of the last instance of c in s, or -1 if c is not present in s.
**/
function lastIndexByte(_s:Slice<GoByte>, _c:GoByte):GoInt {
	{
		var _i:GoInt = _s.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			if (_s[_i] == _c) {
				return _i;
			};
		});
	};
	return -((1 : GoUnTypedInt));
}

/**
	// IndexRune interprets s as a sequence of UTF-8-encoded code points.
	// It returns the byte index of the first occurrence in s of the given rune.
	// It returns -1 if rune is not present in s.
	// If r is utf8.RuneError, it returns the first instance of any
	// invalid UTF-8 byte sequence.
**/
function indexRune(_s:Slice<GoByte>, _r:GoRune):GoInt {
	if (((0 : GoInt32)) <= _r && _r < stdgo.unicode.utf8.Utf8.runeSelf) {
		return indexByte(_s, ((_r : GoByte)));
	} else if (_r == stdgo.unicode.utf8.Utf8.runeError) {
		{
			var _i:GoInt = ((0 : GoInt));
			while (_i < _s.length) {
				var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s.__slice__(_i)),
					_r1:GoInt32 = __tmp__._0,
					_n:GoInt = __tmp__._1;
				if (_r1 == stdgo.unicode.utf8.Utf8.runeError) {
					return _i;
				};
				_i = _i + (_n);
			};
		};
		return -((1 : GoUnTypedInt));
	} else if (!stdgo.unicode.utf8.Utf8.validRune(_r)) {
		return -((1 : GoUnTypedInt));
	} else {
		var _b:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))]);
		var _n:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(_b.__slice__(0), _r);
		return index(_s, _b.__slice__(0, _n));
	};
}

/**
	// IndexAny interprets s as a sequence of UTF-8-encoded Unicode code points.
	// It returns the byte index of the first occurrence in s of any of the Unicode
	// code points in chars. It returns -1 if chars is empty or if there is no code
	// point in common.
	UPDATE: simplified algo
**/
function indexAny(_s:Slice<GoByte>, _chars:GoString):GoInt {
	final chars = _chars.toSliceByte();
	for (i in 0...chars.length.toBasic()) {
		var equals = true;
		for (j in 0...chars.length.toBasic()) {
			if (_s[i + j] != chars[j]) {
				equals = false;
				break;
			}
		}
		if (equals)
			return i;
	}
	return -1;
}

/**
	// LastIndexAny interprets s as a sequence of UTF-8-encoded Unicode code
	// points. It returns the byte index of the last occurrence in s of any of
	// the Unicode code points in chars. It returns -1 if chars is empty or if
	// there is no code point in common.
	UPDATE: simplify algo
**/
function lastIndexAny(_s:Slice<GoByte>, _chars:GoString):GoInt {
	var index:GoInt = -1;
	final chars = _chars.toSliceByte();
	var i = 0;
	while (i < chars.length.toBasic()) {
		var equals = true;
		for (j in 0...chars.length.toBasic()) {
			if (_s[i + j] != chars[j]) {
				equals = false;
				break;
			}
		}
		if (equals) {
			index = i;
			i += chars.length.toBasic();
		} else {
			i++;
		}
	}
	return index;
}

/**
	// Generic split: splits after each instance of sep,
	// including sepSave bytes of sep in the subslices.
**/
function _genSplit(_s:Slice<GoByte>, _sep:Slice<GoByte>, _sepSave:GoInt, _n:GoInt):Slice<Slice<GoByte>> {
	if (_n == ((0 : GoInt))) {
		return new Slice<Slice<GoUInt8>>().nil();
	};
	if (_sep.length == ((0 : GoInt))) {
		return _explode(_s, _n);
	};
	if (_n < ((0 : GoInt))) {
		_n = count(_s, _sep) + ((1 : GoInt));
	};
	var _a:Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>(...[for (i in 0...((_n : GoInt)).toBasic()) new Slice<GoUInt8>().nil()]);
	_n--;
	var _i:GoInt = ((0 : GoInt));
	while (_i < _n) {
		var _m:GoInt = index(_s, _sep);
		if (_m < ((0 : GoInt))) {
			break;
		};
		_a[_i] = _s.__slice__(0, _m + _sepSave).setCap(((_m + _sepSave : GoInt)) - ((1 : GoInt)));
		_s = _s.__slice__(_m + _sep.length);
		_i++;
	};
	_a[_i] = _s;
	return _a.__slice__(0, _i + ((1 : GoInt)));
}

/**
	// SplitN slices s into subslices separated by sep and returns a slice of
	// the subslices between those separators.
	// If sep is empty, SplitN splits after each UTF-8 sequence.
	// The count determines the number of subslices to return:
	//   n > 0: at most n subslices; the last subslice will be the unsplit remainder.
	//   n == 0: the result is nil (zero subslices)
	//   n < 0: all subslices
**/
function splitN(_s:Slice<GoByte>, _sep:Slice<GoByte>, _n:GoInt):Slice<Slice<GoByte>> {
	return _genSplit(_s, _sep, ((0 : GoInt)), _n);
}

/**
	// SplitAfterN slices s into subslices after each instance of sep and
	// returns a slice of those subslices.
	// If sep is empty, SplitAfterN splits after each UTF-8 sequence.
	// The count determines the number of subslices to return:
	//   n > 0: at most n subslices; the last subslice will be the unsplit remainder.
	//   n == 0: the result is nil (zero subslices)
	//   n < 0: all subslices
**/
function splitAfterN(_s:Slice<GoByte>, _sep:Slice<GoByte>, _n:GoInt):Slice<Slice<GoByte>> {
	return _genSplit(_s, _sep, _sep.length, _n);
}

/**
	// Split slices s into all subslices separated by sep and returns a slice of
	// the subslices between those separators.
	// If sep is empty, Split splits after each UTF-8 sequence.
	// It is equivalent to SplitN with a count of -1.
**/
function split(_s:Slice<GoByte>, _sep:Slice<GoByte>):Slice<Slice<GoByte>> {
	return _genSplit(_s, _sep, ((0 : GoInt)), -((1 : GoUnTypedInt)));
}

/**
	// SplitAfter slices s into all subslices after each instance of sep and
	// returns a slice of those subslices.
	// If sep is empty, SplitAfter splits after each UTF-8 sequence.
	// It is equivalent to SplitAfterN with a count of -1.
**/
function splitAfter(_s:Slice<GoByte>, _sep:Slice<GoByte>):Slice<Slice<GoByte>> {
	return _genSplit(_s, _sep, _sep.length, -((1 : GoUnTypedInt)));
}

/**
	// Fields interprets s as a sequence of UTF-8-encoded code points.
	// It splits the slice s around each instance of one or more consecutive white space
	// characters, as defined by unicode.IsSpace, returning a slice of subslices of s or an
	// empty slice if s contains only white space.
**/
function fields(_s:Slice<GoByte>):Slice<Slice<GoByte>> {
	var _n:GoInt = ((0 : GoInt));
	var _wasSpace:GoInt = ((1 : GoInt));
	var _setBits:GoUInt8 = ((((0 : GoUInt8)) : GoUInt8));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			var _r:GoUInt8 = _s[_i];
			_setBits = _setBits | (_r);
			var _isSpace:GoInt = ((_asciiSpace[_r] : GoInt));
			_n = _n + (_wasSpace & -1 ^ _isSpace);
			_wasSpace = _isSpace;
		});
	};
	if (_setBits >= stdgo.unicode.utf8.Utf8.runeSelf) {
		return fieldsFunc(_s, stdgo.unicode.Unicode.isSpace);
	};
	var _a:Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>(...[for (i in 0...((_n : GoInt)).toBasic()) new Slice<GoUInt8>().nil()]);
	var _na:GoInt = ((0 : GoInt));
	var _fieldStart:GoInt = ((0 : GoInt));
	var _i:GoInt = ((0 : GoInt));
	while (_i < _s.length && _asciiSpace[_s[_i]] != ((0 : GoUInt8))) {
		_i++;
	};
	_fieldStart = _i;
	while (_i < _s.length) {
		if (_asciiSpace[_s[_i]] == ((0 : GoUInt8))) {
			_i++;
			continue;
		};
		_a[_na] = _s.__slice__(_fieldStart, _i).setCap(((_i : GoInt)) - ((1 : GoInt)));
		_na++;
		_i++;
		while (_i < _s.length && _asciiSpace[_s[_i]] != ((0 : GoUInt8))) {
			_i++;
		};
		_fieldStart = _i;
	};
	if (_fieldStart < _s.length) {
		_a[_na] = _s.__slice__(_fieldStart, _s.length).setCap(((_s.length : GoInt)) - ((1 : GoInt)));
	};
	return _a;
}

@:structInit class T_span_fieldsFunc_0 {
	public var _start:GoInt = ((0 : GoInt));
	public var _end:GoInt = ((0 : GoInt));

	public function new(?_start:GoInt, ?_end:GoInt) {
		if (_start != null)
			this._start = _start;
		if (_end != null)
			this._end = _end;
	}

	public function toString() {
		return '{' + Go.string(_start) + " " + Go.string(_end) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_span_fieldsFunc_0(_start, _end);
	}

	public function __set__(__tmp__) {
		this._start = __tmp__._start;
		this._end = __tmp__._end;
		return this;
	}
}

/**
	// FieldsFunc interprets s as a sequence of UTF-8-encoded code points.
	// It splits the slice s at each run of code points c satisfying f(c) and
	// returns a slice of subslices of s. If all code points in s satisfy f(c), or
	// len(s) == 0, an empty slice is returned.
	//
	// FieldsFunc makes no guarantees about the order in which it calls f(c)
	// and assumes that f always returns the same value for a given c.
**/
function fieldsFunc(_s:Slice<GoByte>, _f:GoRune->Bool):Slice<Slice<GoByte>> {
	{};
	var _spans:Slice<T_span_fieldsFunc_0> = new Slice<T_span_fieldsFunc_0>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) new T_span_fieldsFunc_0()])
		.setCap(((((32 : GoInt)) : GoInt)).toBasic());
	var _start:GoInt = -((1 : GoUnTypedInt));
	{
		var _i:GoInt = ((0 : GoInt));
		while (_i < _s.length) {
			var _size:GoInt = ((1 : GoInt));
			var _r:GoInt32 = ((_s[_i] : GoRune));
			if (_r >= stdgo.unicode.utf8.Utf8.runeSelf) {
				{
					var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s.__slice__(_i));
					_r = __tmp__._0;
					_size = __tmp__._1;
				};
			};
			if (_f(_r)) {
				if (_start >= ((0 : GoInt))) {
					_spans = _spans.__append__(new T_span_fieldsFunc_0(_start, _i).__copy__());
					_start = -((1 : GoUnTypedInt));
				};
			} else {
				if (_start < ((0 : GoInt))) {
					_start = _i;
				};
			};
			_i = _i + (_size);
		};
	};
	if (_start >= ((0 : GoInt))) {
		_spans = _spans.__append__(new T_span_fieldsFunc_0(_start, _s.length).__copy__());
	};
	var _a:Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>(...[for (i in 0...((_spans.length : GoInt)).toBasic()) new Slice<GoUInt8>().nil()]);
	{
		var _i;
		var _span;
		for (_obj in _spans.keyValueIterator()) {
			_i = _obj.key;
			_span = _obj.value;
			_a[_i] = _s.__slice__(_span._start, _span._end).setCap(((_span._end : GoInt)) - ((1 : GoInt)));
		};
	};
	return _a;
}

/**
	// Join concatenates the elements of s to create a new byte slice. The separator
	// sep is placed between elements in the resulting slice.
**/
function join(_s:Slice<Slice<GoByte>>, _sep:Slice<GoByte>):Slice<GoByte> {
	if (_s.length == ((0 : GoInt))) {
		return new Slice<GoUInt8>();
	};
	if (_s.length == ((1 : GoInt))) {
		return ((new Slice<GoUInt8>().nil() : Slice<GoByte>)).__append__(..._s[((0 : GoInt))].toArray());
	};
	var _n:GoInt = _sep.length * (_s.length - ((1 : GoInt)));
	for (_v in _s) {
		_n = _n + (_v.length);
	};
	var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
	var _bp:GoInt = Go.copy(_b, _s[((0 : GoInt))]);
	for (_v in _s.__slice__(((1 : GoInt)))) {
		_bp = _bp + (Go.copy(_b.__slice__(_bp), _sep));
		_bp = _bp + (Go.copy(_b.__slice__(_bp), _v));
	};
	return _b;
}

/**
	// HasPrefix tests whether the byte slice s begins with prefix.
**/
function hasPrefix(_s:Slice<GoByte>, _prefix:Slice<GoByte>):Bool {
	return _s.length >= _prefix.length && equal(_s.__slice__(((0 : GoInt)), _prefix.length), _prefix);
}

/**
	// HasSuffix tests whether the byte slice s ends with suffix.
**/
function hasSuffix(_s:Slice<GoByte>, _suffix:Slice<GoByte>):Bool {
	return _s.length >= _suffix.length && equal(_s.__slice__(_s.length - _suffix.length), _suffix);
}

/**
	// Map returns a copy of the byte slice s with all its characters modified
	// according to the mapping function. If mapping returns a negative value, the character is
	// dropped from the byte slice with no replacement. The characters in s and the
	// output are interpreted as UTF-8-encoded code points.
**/
function map(_mapping:(_r:GoRune) -> GoRune, _s:Slice<GoByte>):Slice<GoByte> {
	var _maxbytes:GoInt = _s.length;
	var _nbytes:GoInt = ((0 : GoInt));
	var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_maxbytes : GoInt)).toBasic()) ((0 : GoUInt8))]);
	{
		var _i:GoInt = ((0 : GoInt));
		while (_i < _s.length) {
			var _wid:GoInt = ((1 : GoInt));
			var _r:GoInt32 = ((_s[_i] : GoRune));
			if (_r >= stdgo.unicode.utf8.Utf8.runeSelf) {
				{
					var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s.__slice__(_i));
					_r = __tmp__._0;
					_wid = __tmp__._1;
				};
			};
			_r = _mapping(_r);
			if (_r >= ((0 : GoInt32))) {
				var _rl:GoInt = stdgo.unicode.utf8.Utf8.runeLen(_r);
				if (_rl < ((0 : GoInt))) {
					_rl = ((stdgo.unicode.utf8.Utf8.runeError : GoString)).length;
				};
				if (_nbytes + _rl > _maxbytes) {
					_maxbytes = _maxbytes * ((2 : GoInt)) + stdgo.unicode.utf8.Utf8.utfmax;
					var _nb:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_maxbytes : GoInt)).toBasic()) ((0 : GoUInt8))]);
					Go.copy(_nb, _b.__slice__(((0 : GoInt)), _nbytes));
					_b = _nb;
				};
				_nbytes = _nbytes + (stdgo.unicode.utf8.Utf8.encodeRune(_b.__slice__(_nbytes, _maxbytes), _r));
			};
			_i = _i + (_wid);
		};
	};
	return _b.__slice__(((0 : GoInt)), _nbytes);
}

/**
	// Repeat returns a new byte slice consisting of count copies of b.
	//
	// It panics if count is negative or if
	// the result of (len(b) * count) overflows.
**/
function repeat(_b:Slice<GoByte>, _count:GoInt):Slice<GoByte> {
	if (_count == ((0 : GoInt))) {
		return new Slice<GoUInt8>();
	};
	if (_count < ((0 : GoInt))) {
		throw "bytes: negative Repeat count";
	} else if (_b.length * _count / _count != _b.length) {
		throw "bytes: Repeat count causes overflow";
	};
	var _nb:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_b.length * _count:GoInt)).toBasic()) ((0 : GoUInt8))]);
	var _bp:GoInt = Go.copy(_nb, _b);
	while (_bp < _nb.length) {
		Go.copy(_nb.__slice__(_bp), _nb.__slice__(0, _bp));
		_bp = _bp * (((2 : GoInt)));
	};
	return _nb;
}

/**
	// ToUpper returns a copy of the byte slice s with all Unicode letters mapped to
	// their upper case.
**/
function toUpper(_s:Slice<GoByte>):Slice<GoByte> {
	var _isASCII:Bool = true, _hasLower:Bool = false;
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			var _c:GoUInt8 = _s[_i];
			if (_c >= stdgo.unicode.utf8.Utf8.runeSelf) {
				_isASCII = false;
				break;
			};
			_hasLower = _hasLower || ((("a".code : GoRune)) <= _c && _c <= (("z".code : GoRune)));
		});
	};
	if (_isASCII) {
		if (!_hasLower) {
			return (("" : Slice<GoByte>)).__append__(..._s.toArray());
		};
		var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_s.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < _s.length, _i++, {
				var _c:GoUInt8 = _s[_i];
				if ((("a".code : GoRune)) <= _c && _c <= (("z".code : GoRune))) {
					_c = _c - ((("a".code : GoRune)) - (("A".code : GoRune)));
				};
				_b[_i] = _c;
			});
		};
		return _b;
	};
	return map(stdgo.unicode.Unicode.toUpper, _s);
}

/**
	// ToLower returns a copy of the byte slice s with all Unicode letters mapped to
	// their lower case.
**/
function toLower(_s:Slice<GoByte>):Slice<GoByte> {
	var _isASCII:Bool = true, _hasUpper:Bool = false;
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			var _c:GoUInt8 = _s[_i];
			if (_c >= stdgo.unicode.utf8.Utf8.runeSelf) {
				_isASCII = false;
				break;
			};
			_hasUpper = _hasUpper || ((("A".code : GoRune)) <= _c && _c <= (("Z".code : GoRune)));
		});
	};
	if (_isASCII) {
		if (!_hasUpper) {
			return (("" : Slice<GoByte>)).__append__(..._s.toArray());
		};
		var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_s.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < _s.length, _i++, {
				var _c:GoUInt8 = _s[_i];
				if ((("A".code : GoRune)) <= _c && _c <= (("Z".code : GoRune))) {
					_c = _c + ((("a".code : GoRune)) - (("A".code : GoRune)));
				};
				_b[_i] = _c;
			});
		};
		return _b;
	};
	return map(stdgo.unicode.Unicode.toLower, _s);
}

/**
	// ToTitle treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their title case.
**/
function toTitle(_s:Slice<GoByte>):Slice<GoByte> {
	return map(stdgo.unicode.Unicode.toTitle, _s);
}

/**
	// ToUpperSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
	// upper case, giving priority to the special casing rules.
**/
function toUpperSpecial(_c:stdgo.unicode.Unicode.SpecialCase, _s:Slice<GoByte>):Slice<GoByte> {
	return map(_c.toUpper, _s);
}

/**
	// ToLowerSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
	// lower case, giving priority to the special casing rules.
**/
function toLowerSpecial(_c:stdgo.unicode.Unicode.SpecialCase, _s:Slice<GoByte>):Slice<GoByte> {
	return map(_c.toLower, _s);
}

/**
	// ToTitleSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
	// title case, giving priority to the special casing rules.
**/
function toTitleSpecial(_c:stdgo.unicode.Unicode.SpecialCase, _s:Slice<GoByte>):Slice<GoByte> {
	return map(_c.toTitle, _s);
}

/**
	// ToValidUTF8 treats s as UTF-8-encoded bytes and returns a copy with each run of bytes
	// representing invalid UTF-8 replaced with the bytes in replacement, which may be empty.
**/
function toValidUTF8(_s:Slice<GoByte>, _replacement:Slice<GoByte>):Slice<GoByte> {
	var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_s.length
		+ _replacement.length:GoInt)).toBasic());
	var _invalid:Bool = false;
	{
		var _i:GoInt = ((0 : GoInt));
		while (_i < _s.length) {
			var _c:GoUInt8 = _s[_i];
			if (_c < stdgo.unicode.utf8.Utf8.runeSelf) {
				_i++;
				_invalid = false;
				_b = _b.__append__(((_c : GoByte)));
				continue;
			};
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s.__slice__(_i)),
				_:GoInt32 = __tmp__._0,
				_wid:GoInt = __tmp__._1;
			if (_wid == ((1 : GoInt))) {
				_i++;
				if (!_invalid) {
					_invalid = true;
					_b = _b.__append__(..._replacement.toArray());
				};
				continue;
			};
			_invalid = false;
			_b = _b.__append__(..._s.__slice__(_i, _i + _wid).toArray());
			_i = _i + (_wid);
		};
	};
	return _b;
}

/**
	// isSeparator reports whether the rune could mark a word boundary.
	// TODO: update when package unicode captures more of the properties.
**/
function _isSeparator(_r:GoRune):Bool {
	if (_r <= ((127 : GoInt32))) {
		if ((("0".code : GoRune)) <= _r && _r <= (("9".code : GoRune))) {
			return false;
		} else if ((("a".code : GoRune)) <= _r && _r <= (("z".code : GoRune))) {
			return false;
		} else if ((("A".code : GoRune)) <= _r && _r <= (("Z".code : GoRune))) {
			return false;
		} else if (_r == (("_".code : GoRune))) {
			return false;
		};
		return true;
	};
	if (stdgo.unicode.Unicode.isLetter(_r) || stdgo.unicode.Unicode.isDigit(_r)) {
		return false;
	};
	return stdgo.unicode.Unicode.isSpace(_r);
}

/**
	// Title treats s as UTF-8-encoded bytes and returns a copy with all Unicode letters that begin
	// words mapped to their title case.
	//
	// BUG(rsc): The rule Title uses for word boundaries does not handle Unicode punctuation properly.
**/
function title(_s:Slice<GoByte>):Slice<GoByte> {
	var _prev:GoInt32 = ((" ".code : GoRune));
	return map(function(_r:GoRune):GoRune {
		if (_isSeparator(_prev)) {
			_prev = _r;
			return stdgo.unicode.Unicode.toTitle(_r);
		};
		_prev = _r;
		return _r;
	}, _s);
}

/**
	// TrimLeftFunc treats s as UTF-8-encoded bytes and returns a subslice of s by slicing off
	// all leading UTF-8-encoded code points c that satisfy f(c).
**/
function trimLeftFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool):Slice<GoByte> {
	var _i:GoInt = _indexFunc(_s, _f, false);
	if (_i == -((1 : GoUnTypedInt))) {
		return new Slice<GoUInt8>().nil();
	};
	return _s.__slice__(_i);
}

/**
	// TrimRightFunc returns a subslice of s by slicing off all trailing
	// UTF-8-encoded code points c that satisfy f(c).
**/
function trimRightFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool):Slice<GoByte> {
	var _i:GoInt = _lastIndexFunc(_s, _f, false);
	if (_i >= ((0 : GoInt)) && _s[_i] >= stdgo.unicode.utf8.Utf8.runeSelf) {
		var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s.__slice__(_i)),
			_:GoInt32 = __tmp__._0,
			_wid:GoInt = __tmp__._1;
		_i = _i + (_wid);
	} else {
		_i++;
	};
	return _s.__slice__(((0 : GoInt)), _i);
}

/**
	// TrimFunc returns a subslice of s by slicing off all leading and trailing
	// UTF-8-encoded code points c that satisfy f(c).
**/
function trimFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool):Slice<GoByte> {
	return trimRightFunc(trimLeftFunc(_s, _f), _f);
}

/**
	// TrimPrefix returns s without the provided leading prefix string.
	// If s doesn't start with prefix, s is returned unchanged.
**/
function trimPrefix(_s:Slice<GoByte>, _prefix:Slice<GoByte>):Slice<GoByte> {
	if (hasPrefix(_s, _prefix)) {
		return _s.__slice__(_prefix.length);
	};
	return _s;
}

/**
	// TrimSuffix returns s without the provided trailing suffix string.
	// If s doesn't end with suffix, s is returned unchanged.
**/
function trimSuffix(_s:Slice<GoByte>, _suffix:Slice<GoByte>):Slice<GoByte> {
	if (hasSuffix(_s, _suffix)) {
		return _s.__slice__(0, _s.length - _suffix.length);
	};
	return _s;
}

/**
	// IndexFunc interprets s as a sequence of UTF-8-encoded code points.
	// It returns the byte index in s of the first Unicode
	// code point satisfying f(c), or -1 if none do.
**/
function indexFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool):GoInt {
	return _indexFunc(_s, _f, true);
}

/**
	// LastIndexFunc interprets s as a sequence of UTF-8-encoded code points.
	// It returns the byte index in s of the last Unicode
	// code point satisfying f(c), or -1 if none do.
**/
function lastIndexFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool):GoInt {
	return _lastIndexFunc(_s, _f, true);
}

/**
	// indexFunc is the same as IndexFunc except that if
	// truth==false, the sense of the predicate function is
	// inverted.
**/
function _indexFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool, _truth:Bool):GoInt {
	var _start:GoInt = ((0 : GoInt));
	while (_start < _s.length) {
		var _wid:GoInt = ((1 : GoInt));
		var _r:GoInt32 = ((_s[_start] : GoRune));
		if (_r >= stdgo.unicode.utf8.Utf8.runeSelf) {
			{
				var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s.__slice__(_start));
				_r = __tmp__._0;
				_wid = __tmp__._1;
			};
		};
		if (_f(_r) == _truth) {
			return _start;
		};
		_start = _start + (_wid);
	};
	return -((1 : GoUnTypedInt));
}

/**
	// lastIndexFunc is the same as LastIndexFunc except that if
	// truth==false, the sense of the predicate function is
	// inverted.
**/
function _lastIndexFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool, _truth:Bool):GoInt {
	{
		var _i:GoInt = _s.length;
		while (_i > ((0 : GoInt))) {
			var _r:GoInt32 = ((_s[_i - ((1 : GoInt))] : GoRune)),
				_size:GoInt = ((1 : GoInt));
			if (_r >= stdgo.unicode.utf8.Utf8.runeSelf) {
				{
					var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRune(_s.__slice__(((0 : GoInt)), _i));
					_r = __tmp__._0;
					_size = __tmp__._1;
				};
			};
			_i = _i - (_size);
			if (_f(_r) == _truth) {
				return _i;
			};
		};
	};
	return -((1 : GoUnTypedInt));
}

/**
	// makeASCIISet creates a set of ASCII characters and reports whether all
	// characters in chars are ASCII.
**/
function _makeASCIISet(_chars:GoString):{var _0:T_asciiSet; var _1:Bool;} {
	var _as:T_asciiSet = new T_asciiSet(), _ok:Bool = false;
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _chars.length, _i++, {
			var _c:GoUInt8 = _chars[_i];
			if (_c >= stdgo.unicode.utf8.Utf8.runeSelf) {
				return {_0: _as.__copy__(), _1: false};
			};
			_as.__t__[(_c >> ((5 : GoUnTypedInt)))] = _as.__t__[(_c >> ((5 : GoUnTypedInt)))] | ((((1 : GoUInt32)) << (((_c & ((31 : GoUInt8))) : GoUInt))));
		});
	};
	return {_0: _as.__copy__(), _1: true};
}

function _makeCutsetFunc(_cutset:GoString):(_r:GoRune) -> Bool {
	if (_cutset.length == ((1 : GoInt)) && _cutset[((0 : GoInt))] < stdgo.unicode.utf8.Utf8.runeSelf) {
		return function(_r:GoRune):Bool {
			return _r == ((_cutset[((0 : GoInt))] : GoRune));
		};
	};
	{
		var __tmp__ = _makeASCIISet(_cutset),
			_as:T_asciiSet = __tmp__._0,
			_isASCII:Bool = __tmp__._1;
		if (_isASCII) {
			return function(_r:GoRune):Bool {
				return _r < stdgo.unicode.utf8.Utf8.runeSelf && _as._contains(((_r : GoByte)));
			};
		};
	};
	return function(_r:GoRune):Bool {
		for (_c in _cutset) {
			if (_c == _r) {
				return true;
			};
		};
		return false;
	};
}

/**
	// Trim returns a subslice of s by slicing off all leading and
	// trailing UTF-8-encoded code points contained in cutset.
**/
function trim(_s:Slice<GoByte>, _cutset:GoString):Slice<GoByte> {
	return trimFunc(_s, _makeCutsetFunc(_cutset));
}

/**
	// TrimLeft returns a subslice of s by slicing off all leading
	// UTF-8-encoded code points contained in cutset.
**/
function trimLeft(_s:Slice<GoByte>, _cutset:GoString):Slice<GoByte> {
	return trimLeftFunc(_s, _makeCutsetFunc(_cutset));
}

/**
	// TrimRight returns a subslice of s by slicing off all trailing
	// UTF-8-encoded code points that are contained in cutset.
**/
function trimRight(_s:Slice<GoByte>, _cutset:GoString):Slice<GoByte> {
	return trimRightFunc(_s, _makeCutsetFunc(_cutset));
}

/**
	// TrimSpace returns a subslice of s by slicing off all leading and
	// trailing white space, as defined by Unicode.
**/
function trimSpace(_s:Slice<GoByte>):Slice<GoByte> {
	var _start:GoInt = ((0 : GoInt));
	Go.cfor(_start < _s.length, _start++, {
		var _c:GoUInt8 = _s[_start];
		if (_c >= stdgo.unicode.utf8.Utf8.runeSelf) {
			return trimFunc(_s.__slice__(_start), stdgo.unicode.Unicode.isSpace);
		};
		if (_asciiSpace[_c] == ((0 : GoUInt8))) {
			break;
		};
	});
	var _stop:GoInt = _s.length;
	Go.cfor(_stop > _start, _stop--, {
		var _c:GoUInt8 = _s[_stop - ((1 : GoInt))];
		if (_c >= stdgo.unicode.utf8.Utf8.runeSelf) {
			return trimFunc(_s.__slice__(_start, _stop), stdgo.unicode.Unicode.isSpace);
		};
		if (_asciiSpace[_c] == ((0 : GoUInt8))) {
			break;
		};
	});
	if (_start == _stop) {
		return new Slice<GoUInt8>().nil();
	};
	return _s.__slice__(_start, _stop);
}

/**
	// Runes interprets s as a sequence of UTF-8-encoded code points.
	// It returns a slice of runes (Unicode code points) equivalent to s.
**/
function runes(_s:Slice<GoByte>):Slice<GoRune> {
	var _t:Slice<GoInt32> = new Slice<GoInt32>(...[
		for (i in 0...((stdgo.unicode.utf8.Utf8.runeCount(_s) : GoInt)).toBasic()) ((0 : GoInt32))
	]);
	var _i:GoInt = ((0 : GoInt));
	while (_s.length > ((0 : GoInt))) {
		var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s),
			_r:GoInt32 = __tmp__._0,
			_l:GoInt = __tmp__._1;
		_t[_i] = _r;
		_i++;
		_s = _s.__slice__(_l);
	};
	return _t;
}

/**
	// Replace returns a copy of the slice s with the first n
	// non-overlapping instances of old replaced by new.
	// If old is empty, it matches at the beginning of the slice
	// and after each UTF-8 sequence, yielding up to k+1 replacements
	// for a k-rune slice.
	// If n < 0, there is no limit on the number of replacements.
**/
function replace(_s:Slice<GoByte>, _old:Slice<GoByte>, _new:Slice<GoByte>, _n:GoInt):Slice<GoByte> {
	var _m:GoInt = ((0 : GoInt));
	if (_n != ((0 : GoInt))) {
		_m = count(_s, _old);
	};
	if (_m == ((0 : GoInt))) {
		return ((new Slice<GoUInt8>().nil() : Slice<GoByte>)).__append__(..._s.toArray());
	};
	if (_n < ((0 : GoInt)) || _m < _n) {
		_n = _m;
	};
	var _t:Slice<GoUInt8> = new Slice<GoUInt8>(...[
		for (i in 0...((_s.length + _n * (_new.length - _old.length):GoInt)).toBasic()) ((0 : GoUInt8))
	]);
	var _w:GoInt = ((0 : GoInt));
	var _start:GoInt = ((0 : GoInt));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _n, _i++, {
			var _j:GoInt = _start;
			if (_old.length == ((0 : GoInt))) {
				if (_i > ((0 : GoInt))) {
					var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s.__slice__(_start)),
						_:GoInt32 = __tmp__._0,
						_wid:GoInt = __tmp__._1;
					_j = _j + (_wid);
				};
			} else {
				_j = _j + (index(_s.__slice__(_start), _old));
			};
			_w = _w + (Go.copy(_t.__slice__(_w), _s.__slice__(_start, _j)));
			_w = _w + (Go.copy(_t.__slice__(_w), _new));
			_start = _j + _old.length;
		});
	};
	_w = _w + (Go.copy(_t.__slice__(_w), _s.__slice__(_start)));
	return _t.__slice__(((0 : GoInt)), _w);
}

/**
	// ReplaceAll returns a copy of the slice s with all
	// non-overlapping instances of old replaced by new.
	// If old is empty, it matches at the beginning of the slice
	// and after each UTF-8 sequence, yielding up to k+1 replacements
	// for a k-rune slice.
**/
function replaceAll(_s:Slice<GoByte>, _old:Slice<GoByte>, _new:Slice<GoByte>):Slice<GoByte> {
	return replace(_s, _old, _new, -((1 : GoUnTypedInt)));
}

/**
	// EqualFold reports whether s and t, interpreted as UTF-8 strings,
	// are equal under Unicode case-folding, which is a more general
	// form of case-insensitivity.
**/
function equalFold(_s:Slice<GoByte>, _t:Slice<GoByte>):Bool {
	while (_s.length != ((0 : GoInt)) && _t.length != ((0 : GoInt))) {
		var _sr:GoRune = ((0 : GoInt32)), _tr:GoRune = ((0 : GoInt32));
		if (_s[((0 : GoInt))] < stdgo.unicode.utf8.Utf8.runeSelf) {
			{
				final __tmp__0 = ((_s[((0 : GoInt))] : GoRune));
				final __tmp__1 = _s.__slice__(((1 : GoInt)));
				_sr = __tmp__0;
				_s = __tmp__1;
			};
		} else {
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s),
				_r:GoInt32 = __tmp__._0,
				_size:GoInt = __tmp__._1;
			{
				final __tmp__0 = _r;
				final __tmp__1 = _s.__slice__(_size);
				_sr = __tmp__0;
				_s = __tmp__1;
			};
		};
		if (_t[((0 : GoInt))] < stdgo.unicode.utf8.Utf8.runeSelf) {
			{
				final __tmp__0 = ((_t[((0 : GoInt))] : GoRune));
				final __tmp__1 = _t.__slice__(((1 : GoInt)));
				_tr = __tmp__0;
				_t = __tmp__1;
			};
		} else {
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_t),
				_r:GoInt32 = __tmp__._0,
				_size:GoInt = __tmp__._1;
			{
				final __tmp__0 = _r;
				final __tmp__1 = _t.__slice__(_size);
				_tr = __tmp__0;
				_t = __tmp__1;
			};
		};
		if (_tr == _sr) {
			continue;
		};
		if (_tr < _sr) {
			{
				final __tmp__0 = _sr;
				final __tmp__1 = _tr;
				_tr = __tmp__0;
				_sr = __tmp__1;
			};
		};
		if (_tr < stdgo.unicode.utf8.Utf8.runeSelf) {
			if ((("A".code : GoRune)) <= _sr
				&& _sr <= (("Z".code : GoRune))
				&& _tr == _sr + (("a".code : GoRune)) - (("A".code : GoRune))) {
				continue;
			};
			return false;
		};
		var _r:GoInt32 = stdgo.unicode.Unicode.simpleFold(_sr);
		while (_r != _sr && _r < _tr) {
			_r = stdgo.unicode.Unicode.simpleFold(_r);
		};
		if (_r == _tr) {
			continue;
		};
		return false;
	};
	return _s.length == _t.length;
}

/**
	// Index returns the index of the first instance of sep in s, or -1 if sep is not present in s.
	UPDATE: simplified by removing complex algo
**/
function index(_s:Slice<GoByte>, _sep:Slice<GoByte>):GoInt {
	return stdgo.internal.bytealg.Bytealg.index(_s, _sep);
}

/**
	// NewReader returns a new Reader reading from b.
**/
function newReader(_b:Slice<GoByte>):Pointer<Reader> {
	return Go.pointer(new Reader(_b, ((0 : GoInt64)), -((1 : GoUnTypedInt))));
}

class Buffer_extension_fields {
	public function bytes(__tmp__):Slice<GoByte>
		return __tmp__.bytes();

	public function toString(__tmp__):GoString
		return __tmp__.toString();

	public function _empty(__tmp__):Bool
		return __tmp__._empty();

	public function len(__tmp__):GoInt
		return __tmp__.len();

	public function cap(__tmp__):GoInt
		return __tmp__.cap();

	public function truncate(__tmp__, _n:GoInt):Void
		__tmp__.truncate(_n);

	public function reset(__tmp__):Void
		__tmp__.reset();

	public function _tryGrowByReslice(__tmp__, _n:GoInt):{var _0:GoInt; var _1:Bool;}
		return __tmp__._tryGrowByReslice(_n);

	public function _grow(__tmp__, _n:GoInt):GoInt
		return __tmp__._grow(_n);

	public function grow(__tmp__, _n:GoInt):Void
		__tmp__.grow(_n);

	public function write(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.write(_p);

	public function writeString(__tmp__, _s:GoString):{var _0:GoInt; var _1:Error;}
		return __tmp__.writeString(_s);

	public function readFrom(__tmp__, _r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;}
		return __tmp__.readFrom(_r);

	public function writeTo(__tmp__, _w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;}
		return __tmp__.writeTo(_w);

	public function writeByte(__tmp__, _c:GoByte):Error
		return __tmp__.writeByte(_c);

	public function writeRune(__tmp__, _r:GoRune):{var _0:GoInt; var _1:Error;}
		return __tmp__.writeRune(_r);

	public function read(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.read(_p);

	public function next(__tmp__, _n:GoInt):Slice<GoByte>
		return __tmp__.next(_n);

	public function readByte(__tmp__):{var _0:GoByte; var _1:Error;}
		return __tmp__.readByte();

	public function readRune(__tmp__):{var _0:GoRune; var _1:GoInt; var _2:Error;}
		return __tmp__.readRune();

	public function unreadRune(__tmp__):Error
		return __tmp__.unreadRune();

	public function unreadByte(__tmp__):Error
		return __tmp__.unreadByte();

	public function readBytes(__tmp__, _delim:GoByte):{var _0:Slice<GoByte>; var _1:Error;}
		return __tmp__.readBytes(_delim);

	public function _readSlice(__tmp__, _delim:GoByte):{var _0:Slice<GoByte>; var _1:Error;}
		return __tmp__._readSlice(_delim);

	public function readString(__tmp__, _delim:GoByte):{var _0:GoString; var _1:Error;}
		return __tmp__.readString(_delim);
}

class T_asciiSet_extension_fields {
	public function _contains(__tmp__, _c:GoByte):Bool
		return __tmp__._contains(_c);
}

class Reader_extension_fields {
	public function len(__tmp__):GoInt
		return __tmp__.len();

	public function size(__tmp__):GoInt64
		return __tmp__.size();

	public function read(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.read(_b);

	public function readAt(__tmp__, _b:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;}
		return __tmp__.readAt(_b, _off);

	public function readByte(__tmp__):{var _0:GoByte; var _1:Error;}
		return __tmp__.readByte();

	public function unreadByte(__tmp__):Error
		return __tmp__.unreadByte();

	public function readRune(__tmp__):{var _0:GoRune; var _1:GoInt; var _2:Error;}
		return __tmp__.readRune();

	public function unreadRune(__tmp__):Error
		return __tmp__.unreadRune();

	public function seek(__tmp__, _offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;}
		return __tmp__.seek(_offset, _whence);

	public function writeTo(__tmp__, _w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;}
		return __tmp__.writeTo(_w);

	public function reset(__tmp__, _b:Slice<GoByte>):Void
		__tmp__.reset(_b);
}
