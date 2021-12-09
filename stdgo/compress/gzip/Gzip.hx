package stdgo.compress.gzip;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:structInit class Header {
	public var comment:GoString = (("" : GoString));
	public var extra:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var modTime:stdgo.time.Time.Time = new stdgo.time.Time.Time();
	public var name:GoString = (("" : GoString));
	public var os:GoUInt8 = ((0 : GoUInt8));

	public function new(?comment:GoString, ?extra:Slice<GoUInt8>, ?modTime:stdgo.time.Time.Time, ?name:GoString, ?os:GoUInt8)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(comment)
			+ " "
			+ Go.string(extra)
			+ " "
			+ Go.string(modTime)
			+ " "
			+ Go.string(name)
			+ " "
			+ Go.string(os)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Header(comment, extra, modTime, name, os);
	}

	public function __set__(__tmp__) {
		this.comment = __tmp__.comment;
		this.extra = __tmp__.extra;
		this.modTime = __tmp__.modTime;
		this.name = __tmp__.name;
		this.os = __tmp__.os;
		return this;
	}
}

@:structInit class Reader {
	public function close():Error {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _z.value._decompressor.close();
	}

	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		if (_z.value._err != null) {
			return {_0: ((0 : GoInt)), _1: _z.value._err};
		};
		{
			var __tmp__ = _z.value._decompressor.read(_p);
			_n = __tmp__._0;
			_z.value._err = __tmp__._1;
		};
		_z.value._digest = stdgo.hash.crc32.Crc32.update(_z.value._digest, stdgo.hash.crc32.Crc32.ieeetable, _p.__slice__(0, _n));
		_z.value._size = _z.value._size + (((_n : GoUInt32)));
		if (Go.toInterface(_z.value._err) != Go.toInterface(stdgo.io.Io.eof)) {
			return {_0: _n, _1: _z.value._err};
		};
		{
			var __tmp__ = stdgo.io.Io.readFull(_z.value._r, _z.value._buf.__slice__(0, ((8 : GoInt)))),
				_:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				_z.value._err = _noEOF(_err);
				return {_0: _n, _1: _z.value._err};
			};
		};
		var _digest:GoUInt32 = _le.uint32(_z.value._buf.__slice__(0, ((4 : GoInt))));
		var _size:GoUInt32 = _le.uint32(_z.value._buf.__slice__(((4 : GoInt)), ((8 : GoInt))));
		if (_digest != _z.value._digest || _size != _z.value._size) {
			_z.value._err = errChecksum;
			return {_0: _n, _1: _z.value._err};
		};
		{
			final __tmp__0 = ((0 : GoUInt32));
			final __tmp__1 = ((0 : GoUInt32));
			_z.value._digest = __tmp__0;
			_z.value._size = __tmp__1;
		};
		if (!_z.value._multistream) {
			return {_0: _n, _1: stdgo.io.Io.eof};
		};
		_z.value._err = ((null : stdgo.Error));
		{
			{
				var __tmp__ = _z.value._readHeader();
				_z.value._err = __tmp__._1;
			};
			if (_z.value._err != null) {
				return {_0: _n, _1: _z.value._err};
			};
		};
		if (_n > ((0 : GoInt))) {
			return {_0: _n, _1: ((null : stdgo.Error))};
		};
		return _z.value.read(_p);
	}

	public function _readHeader():{var _0:Header; var _1:Error;} {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _hdr:Header = new Header(), _err:Error = ((null : stdgo.Error));
		{
			{
				var __tmp__ = stdgo.io.Io.readFull(_z.value._r, _z.value._buf.__slice__(0, ((10 : GoInt))));
				_err = __tmp__._1;
			};
			if (_err != null) {
				return {_0: _hdr.__copy__(), _1: _err};
			};
		};
		if (_z.value._buf[((0 : GoInt))] != _gzipID1
			|| _z.value._buf[((1 : GoInt))] != _gzipID2
			|| _z.value._buf[((2 : GoInt))] != _gzipDeflate) {
			return {_0: _hdr.__copy__(), _1: errHeader};
		};
		var _flg:GoUInt8 = _z.value._buf[((3 : GoInt))];
		{
			var _t:GoInt64 = ((_le.uint32(_z.value._buf.__slice__(((4 : GoInt)), ((8 : GoInt)))) : GoInt64));
			if (_t > ((0 : GoInt64))) {
				_hdr.modTime = stdgo.time.Time.unix(_t, ((0 : GoInt64))).__copy__();
			};
		};
		_hdr.os = _z.value._buf[((9 : GoInt))];
		_z.value._digest = stdgo.hash.crc32.Crc32.checksumIEEE(_z.value._buf.__slice__(0, ((10 : GoInt))));
		if (_flg & _flagExtra != ((0 : GoUInt8))) {
			{
				{
					var __tmp__ = stdgo.io.Io.readFull(_z.value._r, _z.value._buf.__slice__(0, ((2 : GoInt))));
					_err = __tmp__._1;
				};
				if (_err != null) {
					return {_0: _hdr.__copy__(), _1: _noEOF(_err)};
				};
			};
			_z.value._digest = stdgo.hash.crc32.Crc32.update(_z.value._digest, stdgo.hash.crc32.Crc32.ieeetable, _z.value._buf.__slice__(0, ((2 : GoInt))));
			var _data:Slice<GoUInt8> = new Slice<GoUInt8>(...[
				for (i in 0...((_le.uint16(_z.value._buf.__slice__(0, ((2 : GoInt)))) : GoInt)).toBasic()) ((0 : GoUInt8))
			]);
			{
				{
					var __tmp__ = stdgo.io.Io.readFull(_z.value._r, _data);
					_err = __tmp__._1;
				};
				if (_err != null) {
					return {_0: _hdr.__copy__(), _1: _noEOF(_err)};
				};
			};
			_z.value._digest = stdgo.hash.crc32.Crc32.update(_z.value._digest, stdgo.hash.crc32.Crc32.ieeetable, _data);
			_hdr.extra = _data;
		};
		var _s:GoString = (("" : GoString));
		if (_flg & _flagName != ((0 : GoUInt8))) {
			{
				{
					var __tmp__ = _z.value._readString();
					_s = __tmp__._0;
					_err = __tmp__._1;
				};
				if (_err != null) {
					return {_0: _hdr.__copy__(), _1: _err};
				};
			};
			_hdr.name = _s;
		};
		if (_flg & _flagComment != ((0 : GoUInt8))) {
			{
				{
					var __tmp__ = _z.value._readString();
					_s = __tmp__._0;
					_err = __tmp__._1;
				};
				if (_err != null) {
					return {_0: _hdr.__copy__(), _1: _err};
				};
			};
			_hdr.comment = _s;
		};
		if (_flg & _flagHdrCrc != ((0 : GoUInt8))) {
			{
				{
					var __tmp__ = stdgo.io.Io.readFull(_z.value._r, _z.value._buf.__slice__(0, ((2 : GoInt))));
					_err = __tmp__._1;
				};
				if (_err != null) {
					return {_0: _hdr.__copy__(), _1: _noEOF(_err)};
				};
			};
			var _digest:GoUInt16 = _le.uint16(_z.value._buf.__slice__(0, ((2 : GoInt))));
			if (_digest != ((_z.value._digest : GoUInt16))) {
				return {_0: _hdr.__copy__(), _1: errHeader};
			};
		};
		_z.value._digest = ((0 : GoUInt32));
		if (_z.value._decompressor == null) {
			_z.value._decompressor = stdgo.compress.flate.Flate.newReader(_z.value._r);
		} else {
			((_z.value._decompressor.__underlying__().value : stdgo.compress.flate.Flate.Resetter)).reset(_z.value._r, new Slice<GoUInt8>().nil());
		};
		return {_0: _hdr.__copy__(), _1: ((null : stdgo.Error))};
	}

	public function _readString():{var _0:GoString; var _1:Error;} {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _err:Error = ((null : stdgo.Error));
		var _needConv:Bool = false;
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(true, _i++, {
				if (_i >= _z.value._buf.length) {
					return {_0: "", _1: errHeader};
				};
				{
					var __tmp__ = _z.value._r.readByte();
					_z.value._buf[_i] = __tmp__._0;
					_err = __tmp__._1;
				};
				if (_err != null) {
					return {_0: "", _1: _err};
				};
				if (_z.value._buf[_i] > ((127 : GoUInt8))) {
					_needConv = true;
				};
				if (_z.value._buf[_i] == ((0 : GoUInt8))) {
					_z.value._digest = stdgo.hash.crc32.Crc32.update(_z.value._digest, stdgo.hash.crc32.Crc32.ieeetable,
						_z.value._buf.__slice__(0, _i + ((1 : GoInt))));
					if (_needConv) {
						var _s:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))])
							.setCap(((_i : GoInt)).toBasic());
						for (_v in _z.value._buf.__slice__(0, _i)) {
							_s = _s.__append__(((_v : GoRune)));
						};
						return {_0: ((_s : GoString)), _1: ((null : stdgo.Error))};
					};
					return {_0: ((_z.value._buf.__slice__(0, _i) : GoString)), _1: ((null : stdgo.Error))};
				};
			});
		};
	}

	public function multistream(_ok:Bool):Void {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_z.value._multistream = _ok;
	}

	public function reset(_r:stdgo.io.Io.Reader):Error {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_z.value = (({
			_decompressor: _z.value._decompressor,
			_multistream: true,
			header: new Header(),
			_r: ((null : stdgo.compress.flate.Flate.Reader)),
			_digest: 0,
			_size: 0,
			_buf: new GoArray<GoUInt8>(...[for (i in 0...512) ((0 : GoUInt8))]),
			_err: ((null : stdgo.Error))
		} : Reader)).__copy__();
		{
			var __tmp__ = try {
				{value: ((_r.__underlying__().value : stdgo.compress.flate.Flate.Reader)), ok: true};
			} catch (_) {
				{value: ((null : stdgo.compress.flate.Flate.Reader)), ok: false};
			}, _rr = __tmp__.value, _ok = __tmp__.ok;
			if (_ok) {
				_z.value._r = _rr;
			} else {
				_z.value._r = bufio.Bufio.newReader(_r).value;
			};
		};
		{
			var __tmp__ = _z.value._readHeader();
			_z.value.header = __tmp__._0.__copy__();
			_z.value._err = __tmp__._1;
		};
		return _z.value._err;
	}

	@:embedded
	public var header:Header = new Header();
	public var _r:stdgo.compress.flate.Flate.Reader = ((null : stdgo.compress.flate.Flate.Reader));
	public var _decompressor:stdgo.io.Io.ReadCloser = ((null : stdgo.io.Io.ReadCloser));
	public var _digest:GoUInt32 = ((0 : GoUInt32));
	public var _size:GoUInt32 = ((0 : GoUInt32));
	public var _buf:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...512) ((0 : GoUInt8))]);
	public var _err:stdgo.Error = ((null : stdgo.Error));
	public var _multistream:Bool = false;

	public function new(?header:Header, ?_r:stdgo.compress.flate.Flate.Reader, ?_decompressor:stdgo.io.Io.ReadCloser, ?_digest:GoUInt32, ?_size:GoUInt32,
			?_buf:GoArray<GoUInt8>, ?_err:stdgo.Error, ?_multistream:Bool)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(header) + " " + Go.string(_r) + " " + Go.string(_decompressor) + " " + Go.string(_digest) + " " + Go.string(_size) + " "
			+ Go.string(_buf) + " " + Go.string(_err) + " " + Go.string(_multistream) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Reader(header, _r, _decompressor, _digest, _size, _buf, _err, _multistream);
	}

	public function __set__(__tmp__) {
		this.header = __tmp__.header;
		this._r = __tmp__._r;
		this._decompressor = __tmp__._decompressor;
		this._digest = __tmp__._digest;
		this._size = __tmp__._size;
		this._buf = __tmp__._buf;
		this._err = __tmp__._err;
		this._multistream = __tmp__._multistream;
		return this;
	}
}

@:structInit class Writer {
	public function close():Error {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_z.value._err != null) {
			return _z.value._err;
		};
		if (_z.value._closed) {
			return ((null : stdgo.Error));
		};
		_z.value._closed = true;
		if (!_z.value._wroteHeader) {
			_z.value.write(new Slice<GoUInt8>().nil());
			if (_z.value._err != null) {
				return _z.value._err;
			};
		};
		_z.value._err = _z.value._compressor.value.close();
		if (_z.value._err != null) {
			return _z.value._err;
		};
		_le.putUint32(_z.value._buf.__slice__(0, ((4 : GoInt))), _z.value._digest);
		_le.putUint32(_z.value._buf.__slice__(((4 : GoInt)), ((8 : GoInt))), _z.value._size);
		{
			var __tmp__ = _z.value._w.write(_z.value._buf.__slice__(0, ((8 : GoInt))));
			_z.value._err = __tmp__._1;
		};
		return _z.value._err;
	}

	public function flush():Error {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_z.value._err != null) {
			return _z.value._err;
		};
		if (_z.value._closed) {
			return ((null : stdgo.Error));
		};
		if (!_z.value._wroteHeader) {
			_z.value.write(new Slice<GoUInt8>().nil());
			if (_z.value._err != null) {
				return _z.value._err;
			};
		};
		_z.value._err = _z.value._compressor.value.flush();
		return _z.value._err;
	}

	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_z.value._err != null) {
			return {_0: ((0 : GoInt)), _1: _z.value._err};
		};
		var _n:GoInt = ((0 : GoInt));
		if (!_z.value._wroteHeader) {
			_z.value._wroteHeader = true;
			_z.value._buf = {
				var s = new GoArray<GoUInt8>(...[for (i in 0...10) 0]);
				s[0] = _gzipID1;
				s[1] = _gzipID2;
				s[2] = _gzipDeflate;
				s;
			};
			if (_z.value.header.extra != null && !_z.value.header.extra.isNil()) {
				_z.value._buf[((3 : GoInt))] = _z.value._buf[((3 : GoInt))] | (((4 : GoUInt8)));
			};
			if (_z.value.header.name != (("" : GoString))) {
				_z.value._buf[((3 : GoInt))] = _z.value._buf[((3 : GoInt))] | (((8 : GoUInt8)));
			};
			if (_z.value.header.comment != (("" : GoString))) {
				_z.value._buf[((3 : GoInt))] = _z.value._buf[((3 : GoInt))] | (((16 : GoUInt8)));
			};
			if (_z.value.header.modTime.after(stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__())) {
				_le.putUint32(_z.value._buf.__slice__(((4 : GoInt)), ((8 : GoInt))), ((_z.value.header.modTime.unix() : GoUInt32)));
			};
			if (_z.value._level == bestCompression) {
				_z.value._buf[((8 : GoInt))] = ((2 : GoUInt8));
			} else if (_z.value._level == bestSpeed) {
				_z.value._buf[((8 : GoInt))] = ((4 : GoUInt8));
			};
			_z.value._buf[((9 : GoInt))] = _z.value.header.os;
			{
				var __tmp__ = _z.value._w.write(_z.value._buf.__slice__(0, ((10 : GoInt))));
				_z.value._err = __tmp__._1;
			};
			if (_z.value._err != null) {
				return {_0: ((0 : GoInt)), _1: _z.value._err};
			};
			if (_z.value.header.extra != null && !_z.value.header.extra.isNil()) {
				_z.value._err = _z.value._writeBytes(_z.value.header.extra);
				if (_z.value._err != null) {
					return {_0: ((0 : GoInt)), _1: _z.value._err};
				};
			};
			if (_z.value.header.name != (("" : GoString))) {
				_z.value._err = _z.value._writeString(_z.value.header.name);
				if (_z.value._err != null) {
					return {_0: ((0 : GoInt)), _1: _z.value._err};
				};
			};
			if (_z.value.header.comment != (("" : GoString))) {
				_z.value._err = _z.value._writeString(_z.value.header.comment);
				if (_z.value._err != null) {
					return {_0: ((0 : GoInt)), _1: _z.value._err};
				};
			};
			if (_z.value._compressor == null || _z.value._compressor.isNil()) {
				{
					var __tmp__ = stdgo.compress.flate.Flate.newWriter(_z.value._w, _z.value._level);
					_z.value._compressor = __tmp__._0;
				};
			};
		};
		_z.value._size = _z.value._size + (((_p.length : GoUInt32)));
		_z.value._digest = stdgo.hash.crc32.Crc32.update(_z.value._digest, stdgo.hash.crc32.Crc32.ieeetable, _p);
		{
			var __tmp__ = _z.value._compressor.value.write(_p);
			_n = __tmp__._0;
			_z.value._err = __tmp__._1;
		};
		return {_0: _n, _1: _z.value._err};
	}

	public function _writeString(_s:GoString):Error {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _err:Error = ((null : stdgo.Error));
		var _needconv:Bool = false;
		for (_v in _s) {
			if (_v == ((0 : GoInt32)) || _v > ((255 : GoInt32))) {
				return stdgo.errors.Errors.new_("gzip.Write: non-Latin-1 header string");
			};
			if (_v > ((127 : GoInt32))) {
				_needconv = true;
			};
		};
		if (_needconv) {
			var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_s.length : GoInt))
				.toBasic());
			for (_v in _s) {
				_b = _b.__append__(((_v : GoByte)));
			};
			{
				var __tmp__ = _z.value._w.write(_b);
				_err = __tmp__._1;
			};
		} else {
			{
				var __tmp__ = stdgo.io.Io.writeString(_z.value._w, _s);
				_err = __tmp__._1;
			};
		};
		if (_err != null) {
			return _err;
		};
		_z.value._buf[((0 : GoInt))] = ((0 : GoUInt8));
		{
			var __tmp__ = _z.value._w.write(_z.value._buf.__slice__(0, ((1 : GoInt))));
			_err = __tmp__._1;
		};
		return _err;
	}

	public function _writeBytes(_b:Slice<GoByte>):Error {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_b.length > ((65535 : GoInt))) {
			return stdgo.errors.Errors.new_("gzip.Write: Extra data is too large");
		};
		_le.putUint16(_z.value._buf.__slice__(0, ((2 : GoInt))), ((_b.length : GoUInt16)));
		var __tmp__ = _z.value._w.write(_z.value._buf.__slice__(0, ((2 : GoInt)))),
			_:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return _err;
		};
		{
			var __tmp__ = _z.value._w.write(_b);
			_err = __tmp__._1;
		};
		return _err;
	}

	public function reset(_w:stdgo.io.Io.Writer):Void {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_z.value._init(_w, _z.value._level);
	}

	public function _init(_w:stdgo.io.Io.Writer, _level:GoInt):Void {
		var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _compressor:Pointer<stdgo.compress.flate.Flate.Writer> = _z.value._compressor;
		if (_compressor != null && !_compressor.isNil()) {
			_compressor.value.reset(_w);
		};
		_z.value = (({
			header: (({
				os: ((255 : GoUInt8)),
				comment: "",
				extra: new Slice<GoUInt8>().nil(),
				modTime: new stdgo.time.Time.Time(),
				name: ""
			} : Header)).__copy__(),
			_w: _w,
			_level: _level,
			_compressor: _compressor,
			_wroteHeader: false,
			_digest: 0,
			_size: 0,
			_closed: false,
			_buf: new GoArray<GoUInt8>(...[for (i in 0...10) ((0 : GoUInt8))]),
			_err: ((null : stdgo.Error))
		} : Writer)).__copy__();
	}

	@:embedded
	public var header:Header = new Header();
	public var _w:stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
	public var _level:GoInt = ((0 : GoInt));
	public var _wroteHeader:Bool = false;
	public var _compressor:Pointer<stdgo.compress.flate.Flate.Writer> = new Pointer<stdgo.compress.flate.Flate.Writer>().nil();
	public var _digest:GoUInt32 = ((0 : GoUInt32));
	public var _size:GoUInt32 = ((0 : GoUInt32));
	public var _closed:Bool = false;
	public var _buf:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...10) ((0 : GoUInt8))]);
	public var _err:stdgo.Error = ((null : stdgo.Error));

	public function new(?header:Header, ?_w:stdgo.io.Io.Writer, ?_level:GoInt, ?_wroteHeader:Bool, ?_compressor:Pointer<stdgo.compress.flate.Flate.Writer>,
			?_digest:GoUInt32, ?_size:GoUInt32, ?_closed:Bool, ?_buf:GoArray<GoUInt8>, ?_err:stdgo.Error)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(header) + " " + Go.string(_w) + " " + Go.string(_level) + " " + Go.string(_wroteHeader) + " " + Go.string(_compressor) + " "
			+ Go.string(_digest) + " " + Go.string(_size) + " " + Go.string(_closed) + " " + Go.string(_buf) + " " + Go.string(_err) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Writer(header, _w, _level, _wroteHeader, _compressor, _digest, _size, _closed, _buf, _err);
	}

	public function __set__(__tmp__) {
		this.header = __tmp__.header;
		this._w = __tmp__._w;
		this._level = __tmp__._level;
		this._wroteHeader = __tmp__._wroteHeader;
		this._compressor = __tmp__._compressor;
		this._digest = __tmp__._digest;
		this._size = __tmp__._size;
		this._closed = __tmp__._closed;
		this._buf = __tmp__._buf;
		this._err = __tmp__._err;
		return this;
	}
}

final bestCompression:GoUnTypedInt = stdgo.compress.flate.Flate.bestCompression;
var errHeader:stdgo.Error = stdgo.errors.Errors.new_("gzip: invalid header");
var errChecksum:stdgo.Error = stdgo.errors.Errors.new_("gzip: invalid checksum");
final bestSpeed:GoUnTypedInt = stdgo.compress.flate.Flate.bestSpeed;
final huffmanOnly:GoUnTypedInt = stdgo.compress.flate.Flate.huffmanOnly;
final _gzipID1:GoInt64 = ((31 : GoUnTypedInt));
final noCompression:GoUnTypedInt = stdgo.compress.flate.Flate.noCompression;
final _flagName:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((3 : GoUnTypedInt)));
final _flagHdrCrc:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((1 : GoUnTypedInt)));
final _gzipID2:GoInt64 = ((139 : GoUnTypedInt));
var _le:stdgo.encoding.binary.Binary.T_littleEndian = stdgo.encoding.binary.Binary.littleEndian.__copy__();
final _flagComment:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((4 : GoUnTypedInt)));
final _flagExtra:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((2 : GoUnTypedInt)));
final _flagText:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((0 : GoUnTypedInt)));
final defaultCompression:GoUnTypedInt = stdgo.compress.flate.Flate.defaultCompression;
final _gzipDeflate:GoInt64 = ((8 : GoUnTypedInt));

/**
	// noEOF converts io.EOF to io.ErrUnexpectedEOF.
**/
function _noEOF(_err:Error):Error {
	if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
		return stdgo.io.Io.errUnexpectedEOF;
	};
	return _err;
}

/**
	// NewReader creates a new Reader reading the given reader.
	// If r does not also implement io.ByteReader,
	// the decompressor may read more data than necessary from r.
	//
	// It is the caller's responsibility to call Close on the Reader when done.
	//
	// The Reader.Header fields will be valid in the Reader returned.
**/
function newReader(_r:stdgo.io.Io.Reader):{var _0:Pointer<Reader>; var _1:Error;} {
	var _z:Pointer<Reader> = Go.pointer(new Reader());
	{
		var _err:stdgo.Error = _z.value.reset(_r);
		if (_err != null) {
			return {_0: new Pointer<Reader>().nil(), _1: _err};
		};
	};
	return {_0: _z, _1: ((null : stdgo.Error))};
}

/**
	// NewWriter returns a new Writer.
	// Writes to the returned writer are compressed and written to w.
	//
	// It is the caller's responsibility to call Close on the Writer when done.
	// Writes may be buffered and not flushed until Close.
	//
	// Callers that wish to set the fields in Writer.Header must do so before
	// the first call to Write, Flush, or Close.
**/
function newWriter(_w:stdgo.io.Io.Writer):Pointer<Writer> {
	var __tmp__ = newWriterLevel(_w, defaultCompression),
		_z:Pointer<Writer> = __tmp__._0,
		_:stdgo.Error = __tmp__._1;
	return _z;
}

/**
	// NewWriterLevel is like NewWriter but specifies the compression level instead
	// of assuming DefaultCompression.
	//
	// The compression level can be DefaultCompression, NoCompression, HuffmanOnly
	// or any integer value between BestSpeed and BestCompression inclusive.
	// The error returned will be nil if the level is valid.
**/
function newWriterLevel(_w:stdgo.io.Io.Writer, _level:GoInt):{var _0:Pointer<Writer>; var _1:Error;} {
	if (_level < huffmanOnly || _level > bestCompression) {
		return {_0: new Pointer<Writer>().nil(), _1: stdgo.fmt.Fmt.errorf("gzip: invalid compression level: %d", Go.toInterface(_level))};
	};
	var _z:Pointer<Writer> = Go.pointer(new Writer());
	_z.value._init(_w, _level);
	return {_0: _z, _1: ((null : stdgo.Error))};
}

class Reader_extension_fields {
	public function reset(__tmp__, _r:stdgo.io.Io.Reader):Error
		return __tmp__.reset(_r);

	public function multistream(__tmp__, _ok:Bool):Void
		__tmp__.multistream(_ok);

	public function _readString(__tmp__):{var _0:GoString; var _1:Error;}
		return __tmp__._readString();

	public function _readHeader(__tmp__):{var _0:Header; var _1:Error;}
		return __tmp__._readHeader();

	public function read(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.read(_p);

	public function close(__tmp__):Error
		return __tmp__.close();
}

class Writer_extension_fields {
	public function _init(__tmp__, _w:stdgo.io.Io.Writer, _level:GoInt):Void
		__tmp__._init(_w, _level);

	public function reset(__tmp__, _w:stdgo.io.Io.Writer):Void
		__tmp__.reset(_w);

	public function _writeBytes(__tmp__, _b:Slice<GoByte>):Error
		return __tmp__._writeBytes(_b);

	public function _writeString(__tmp__, _s:GoString):Error
		return __tmp__._writeString(_s);

	public function write(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.write(_p);

	public function flush(__tmp__):Error
		return __tmp__.flush();

	public function close(__tmp__):Error
		return __tmp__.close();
}
