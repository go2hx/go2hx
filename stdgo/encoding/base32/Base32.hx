package stdgo.encoding.base32;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:structInit class Encoding {
	public function decodedLen(_n:GoInt):GoInt {
		var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_enc.value._padChar == noPadding) {
			return _n * ((5 : GoInt)) / ((8 : GoInt));
		};
		return _n / ((8 : GoInt)) * ((5 : GoInt));
	}

	public function decodeString(_s:GoString):{var _0:Slice<GoByte>; var _1:Error;} {
		var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _buf:Slice<GoUInt8> = ((_s : Slice<GoByte>));
		var _l:GoInt = _stripNewlines(_buf, _buf);
		var __tmp__ = _enc.value._decode(_buf, _buf.__slice__(0, _l)),
			_n:GoInt = __tmp__._0,
			_:Bool = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		return {_0: _buf.__slice__(0, _n), _1: _err};
	}

	public function decode(_dst:Slice<GoByte>, _src:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_src.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
		var _l:GoInt = _stripNewlines(_buf, _src);
		{
			var __tmp__ = _enc.value._decode(_dst, _buf.__slice__(0, _l));
			_n = __tmp__._0;
			_err = __tmp__._2;
		};
		return {_0: _n, _1: _err};
	}

	public function _decode(_dst:Slice<GoByte>, _src:Slice<GoByte>):{var _0:GoInt; var _1:Bool; var _2:Error;} {
		var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)),
			_end:Bool = false,
			_err:Error = ((null : stdgo.Error));
		_enc.value._decodeMap;
		var _dsti:GoInt = ((0 : GoInt));
		var _olen:GoInt = _src.length;
		while (_src.length > ((0 : GoInt)) && !_end) {
			var _dbuf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...8) ((0 : GoUInt8))]);
			var _dlen:GoInt = ((8 : GoInt));
			{
				var _j:GoInt = ((0 : GoInt));
				while (_j < ((8 : GoInt))) {
					if (_src.length == ((0 : GoInt))) {
						if (_enc.value._padChar != noPadding) {
							return {_0: _n, _1: false, _2: new CorruptInputError((_olen - _src.length - _j))};
						};
						{
							final __tmp__0 = _j;
							final __tmp__1 = true;
							_dlen = __tmp__0;
							_end = __tmp__1;
						};
						break;
					};
					var _in:GoUInt8 = _src[((0 : GoInt))];
					_src = _src.__slice__(((1 : GoInt)));
					if (_in == ((_enc.value._padChar : GoByte)) && _j >= ((2 : GoInt)) && _src.length < ((8 : GoInt))) {
						if (_src.length + _j < ((8 : GoUnTypedInt)) - ((1 : GoUnTypedInt))) {
							return {_0: _n, _1: false, _2: new CorruptInputError(_olen)};
						};
						{
							var _k:GoInt = ((0 : GoInt));
							Go.cfor(_k < ((8 : GoUnTypedInt)) - ((1 : GoUnTypedInt)) - _j, _k++, {
								if (_src.length > _k && _src[_k] != ((_enc.value._padChar : GoByte))) {
									return {_0: _n, _1: false, _2: new CorruptInputError((_olen - _src.length + _k - ((1 : GoInt))))};
								};
							});
						};
						{
							final __tmp__0 = _j;
							final __tmp__1 = true;
							_dlen = __tmp__0;
							_end = __tmp__1;
						};
						if (_dlen == ((1 : GoInt)) || _dlen == ((3 : GoInt)) || _dlen == ((6 : GoInt))) {
							return {_0: _n, _1: false, _2: new CorruptInputError((_olen - _src.length - ((1 : GoInt))))};
						};
						break;
					};
					_dbuf[_j] = _enc.value._decodeMap[_in];
					if (_dbuf[_j] == ((255 : GoUInt8))) {
						return {_0: _n, _1: false, _2: new CorruptInputError((_olen - _src.length - ((1 : GoInt))))};
					};
					_j++;
				};
			};
			{
				var __switchIndex__ = -1;
				while (true) {
					if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _dlen == ((8 : GoInt)))) {
						_dst[_dsti + ((4 : GoInt))] = (_dbuf[((6 : GoInt))] << ((5 : GoUnTypedInt))) | _dbuf[((7 : GoInt))];
						_n++;
						@:fallthrough {
							__switchIndex__ = 1;
							continue;
						};
						break;
					} else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _dlen == ((7 : GoInt)))) {
						_dst[_dsti + ((3 : GoInt))] = (_dbuf[((4 : GoInt))] << ((7 : GoUnTypedInt))) | (_dbuf[((5 : GoInt))] << ((2 : GoUnTypedInt))) | (_dbuf[((6 : GoInt))] >> ((3 : GoUnTypedInt)));
						_n++;
						@:fallthrough {
							__switchIndex__ = 2;
							continue;
						};
						break;
					} else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _dlen == ((5 : GoInt)))) {
						_dst[_dsti + ((2 : GoInt))] = (_dbuf[((3 : GoInt))] << ((4 : GoUnTypedInt))) | (_dbuf[((4 : GoInt))] >> ((1 : GoUnTypedInt)));
						_n++;
						@:fallthrough {
							__switchIndex__ = 3;
							continue;
						};
						break;
					} else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && _dlen == ((4 : GoInt)))) {
						_dst[_dsti + ((1 : GoInt))] = (_dbuf[((1 : GoInt))] << ((6 : GoUnTypedInt))) | (_dbuf[((2 : GoInt))] << ((1 : GoUnTypedInt))) | (_dbuf[((3 : GoInt))] >> ((4 : GoUnTypedInt)));
						_n++;
						@:fallthrough {
							__switchIndex__ = 4;
							continue;
						};
						break;
					} else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && _dlen == ((2 : GoInt)))) {
						_dst[_dsti + ((0 : GoInt))] = (_dbuf[((0 : GoInt))] << ((3 : GoUnTypedInt))) | (_dbuf[((1 : GoInt))] >> ((2 : GoUnTypedInt)));
						_n++;
						break;
						break;
					};
					break;
				};
			};
			_dsti = _dsti + (((5 : GoInt)));
		};
		return {_0: _n, _1: _end, _2: ((null : stdgo.Error))};
	}

	public function encodedLen(_n:GoInt):GoInt {
		var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_enc.value._padChar == noPadding) {
			return (_n * ((8 : GoInt)) + ((4 : GoInt))) / ((5 : GoInt));
		};
		return (_n + ((4 : GoInt))) / ((5 : GoInt)) * ((8 : GoInt));
	}

	public function encodeToString(_src:Slice<GoByte>):GoString {
		var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[
			for (i in 0...((_enc.value.encodedLen(_src.length) : GoInt)).toBasic()) ((0 : GoUInt8))
		]);
		_enc.value.encode(_buf, _src);
		return ((_buf : GoString));
	}

	public function encode(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
		var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		while (_src.length > ((0 : GoInt))) {
			var _b:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...8) ((0 : GoUInt8))]);
			{
				var __switchIndex__ = -1;
				while (true) {
					if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _src.length == ((4 : GoInt)))) {
						_b[((6 : GoInt))] = _b[((6 : GoInt))] | (((_src[((3 : GoInt))] << ((3 : GoUnTypedInt)))) & ((31 : GoUInt8)));
						_b[((5 : GoInt))] = ((_src[((3 : GoInt))] >> ((2 : GoUnTypedInt)))) & ((31 : GoUInt8));
						_b[((4 : GoInt))] = (_src[((3 : GoInt))] >> ((7 : GoUnTypedInt)));
						@:fallthrough {
							__switchIndex__ = 2;
							continue;
						};
						break;
					} else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _src.length == ((3 : GoInt)))) {
						_b[((4 : GoInt))] = _b[((4 : GoInt))] | (((_src[((2 : GoInt))] << ((1 : GoUnTypedInt)))) & ((31 : GoUInt8)));
						_b[((3 : GoInt))] = ((_src[((2 : GoInt))] >> ((4 : GoUnTypedInt)))) & ((31 : GoUInt8));
						@:fallthrough {
							__switchIndex__ = 3;
							continue;
						};
						break;
					} else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && _src.length == ((2 : GoInt)))) {
						_b[((3 : GoInt))] = _b[((3 : GoInt))] | (((_src[((1 : GoInt))] << ((4 : GoUnTypedInt)))) & ((31 : GoUInt8)));
						_b[((2 : GoInt))] = ((_src[((1 : GoInt))] >> ((1 : GoUnTypedInt)))) & ((31 : GoUInt8));
						_b[((1 : GoInt))] = ((_src[((1 : GoInt))] >> ((6 : GoUnTypedInt)))) & ((31 : GoUInt8));
						@:fallthrough {
							__switchIndex__ = 4;
							continue;
						};
						break;
					} else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && _src.length == ((1 : GoInt)))) {
						_b[((1 : GoInt))] = _b[((1 : GoInt))] | (((_src[((0 : GoInt))] << ((2 : GoUnTypedInt)))) & ((31 : GoUInt8)));
						_b[((0 : GoInt))] = (_src[((0 : GoInt))] >> ((3 : GoUnTypedInt)));
						break;
						break;
					};
					break;
				};
			};
			var _size:GoInt = _dst.length;
			if (_size >= ((8 : GoInt))) {
				_dst[((0 : GoInt))] = _enc.value._encode[_b[((0 : GoInt))] & ((31 : GoUInt8))];
				_dst[((1 : GoInt))] = _enc.value._encode[_b[((1 : GoInt))] & ((31 : GoUInt8))];
				_dst[((2 : GoInt))] = _enc.value._encode[_b[((2 : GoInt))] & ((31 : GoUInt8))];
				_dst[((3 : GoInt))] = _enc.value._encode[_b[((3 : GoInt))] & ((31 : GoUInt8))];
				_dst[((4 : GoInt))] = _enc.value._encode[_b[((4 : GoInt))] & ((31 : GoUInt8))];
				_dst[((5 : GoInt))] = _enc.value._encode[_b[((5 : GoInt))] & ((31 : GoUInt8))];
				_dst[((6 : GoInt))] = _enc.value._encode[_b[((6 : GoInt))] & ((31 : GoUInt8))];
				_dst[((7 : GoInt))] = _enc.value._encode[_b[((7 : GoInt))] & ((31 : GoUInt8))];
			} else {
				{
					var _i:GoInt = ((0 : GoInt));
					Go.cfor(_i < _size, _i++, {
						_dst[_i] = _enc.value._encode[_b[_i] & ((31 : GoUInt8))];
					});
				};
			};
			if (_src.length < ((5 : GoInt))) {
				if (_enc.value._padChar == noPadding) {
					break;
				};
				_dst[((7 : GoInt))] = ((_enc.value._padChar : GoByte));
				if (_src.length < ((4 : GoInt))) {
					_dst[((6 : GoInt))] = ((_enc.value._padChar : GoByte));
					_dst[((5 : GoInt))] = ((_enc.value._padChar : GoByte));
					if (_src.length < ((3 : GoInt))) {
						_dst[((4 : GoInt))] = ((_enc.value._padChar : GoByte));
						if (_src.length < ((2 : GoInt))) {
							_dst[((3 : GoInt))] = ((_enc.value._padChar : GoByte));
							_dst[((2 : GoInt))] = ((_enc.value._padChar : GoByte));
						};
					};
				};
				break;
			};
			_src = _src.__slice__(((5 : GoInt)));
			_dst = _dst.__slice__(((8 : GoInt)));
		};
	}

	public function withPadding(_padding:GoRune):Pointer<Encoding> {
		var _enc = this.__copy__();
		if (_padding == (("\r".code : GoRune)) || _padding == (("\n".code : GoRune)) || _padding > ((255 : GoInt32))) {
			throw "invalid padding";
		};
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < _enc._encode.length, _i++, {
				if (((_enc._encode[_i] : GoRune)) == _padding) {
					throw "padding contained in alphabet";
				};
			});
		};
		_enc._padChar = _padding;
		return Go.pointer(_enc);
	}

	public var _encode:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...32) ((0 : GoUInt8))]);
	public var _decodeMap:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...256) ((0 : GoUInt8))]);
	public var _padChar:GoInt32 = ((0 : GoInt32));

	public function new(?_encode:GoArray<GoUInt8>, ?_decodeMap:GoArray<GoUInt8>, ?_padChar:GoInt32)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_encode) + " " + Go.string(_decodeMap) + " " + Go.string(_padChar) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Encoding(_encode, _decodeMap, _padChar);
	}

	public function __set__(__tmp__) {
		this._encode = __tmp__._encode;
		this._decodeMap = __tmp__._decodeMap;
		this._padChar = __tmp__._padChar;
		return this;
	}
}

@:structInit class T_encoder {
	public function close():Error {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_e.value._err == null && _e.value._nbuf > ((0 : GoInt))) {
			_e.value._enc.value.encode(_e.value._out.__slice__(((0 : GoInt))), _e.value._buf.__slice__(((0 : GoInt)), _e.value._nbuf));
			var _encodedLen:GoInt = _e.value._enc.value.encodedLen(_e.value._nbuf);
			_e.value._nbuf = ((0 : GoInt));
			{
				var __tmp__ = _e.value._w.write(_e.value._out.__slice__(((0 : GoInt)), _encodedLen));
				_e.value._err = __tmp__._1;
			};
		};
		return _e.value._err;
	}

	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		if (_e.value._err != null) {
			return {_0: ((0 : GoInt)), _1: _e.value._err};
		};
		if (_e.value._nbuf > ((0 : GoInt))) {
			var _i:GoInt = ((0 : GoInt));
			{
				_i = ((0 : GoInt));
				Go.cfor(_i < _p.length && _e.value._nbuf < ((5 : GoInt)), _i++, {
					_e.value._buf[_e.value._nbuf] = _p[_i];
					_e.value._nbuf++;
				});
			};
			_n = _n + (_i);
			_p = _p.__slice__(_i);
			if (_e.value._nbuf < ((5 : GoInt))) {
				return {_0: _n, _1: _err};
			};
			_e.value._enc.value.encode(_e.value._out.__slice__(((0 : GoInt))), _e.value._buf.__slice__(((0 : GoInt))));
			{
				{
					var __tmp__ = _e.value._w.write(_e.value._out.__slice__(((0 : GoInt)), ((8 : GoInt))));
					_e.value._err = __tmp__._1;
				};
				if (_e.value._err != null) {
					return {_0: _n, _1: _e.value._err};
				};
			};
			_e.value._nbuf = ((0 : GoInt));
		};
		while (_p.length >= ((5 : GoInt))) {
			var _nn:GoInt = _e.value._out.length / ((8 : GoInt)) * ((5 : GoInt));
			if (_nn > _p.length) {
				_nn = _p.length;
				_nn = _nn - (_nn % ((5 : GoInt)));
			};
			_e.value._enc.value.encode(_e.value._out.__slice__(((0 : GoInt))), _p.__slice__(((0 : GoInt)), _nn));
			{
				{
					var __tmp__ = _e.value._w.write(_e.value._out.__slice__(((0 : GoInt)), _nn / ((5 : GoInt)) * ((8 : GoInt))));
					_e.value._err = __tmp__._1;
				};
				if (_e.value._err != null) {
					return {_0: _n, _1: _e.value._err};
				};
			};
			_n = _n + (_nn);
			_p = _p.__slice__(_nn);
		};
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < _p.length, _i++, {
				_e.value._buf[_i] = _p[_i];
			});
		};
		_e.value._nbuf = _p.length;
		_n = _n + (_p.length);
		return {_0: _n, _1: _err};
	}

	public var _err:stdgo.Error = ((null : stdgo.Error));
	public var _enc:Pointer<Encoding> = new Pointer<Encoding>().nil();
	public var _w:stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
	public var _buf:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...5) ((0 : GoUInt8))]);
	public var _nbuf:GoInt = ((0 : GoInt));
	public var _out:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...1024) ((0 : GoUInt8))]);

	public function new(?_err:stdgo.Error, ?_enc:Pointer<Encoding>, ?_w:stdgo.io.Io.Writer, ?_buf:GoArray<GoUInt8>, ?_nbuf:GoInt, ?_out:GoArray<GoUInt8>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_err) + " " + Go.string(_enc) + " " + Go.string(_w) + " " + Go.string(_buf) + " " + Go.string(_nbuf) + " " + Go.string(_out)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_encoder(_err, _enc, _w, _buf, _nbuf, _out);
	}

	public function __set__(__tmp__) {
		this._err = __tmp__._err;
		this._enc = __tmp__._enc;
		this._w = __tmp__._w;
		this._buf = __tmp__._buf;
		this._nbuf = __tmp__._nbuf;
		this._out = __tmp__._out;
		return this;
	}
}

@:named class CorruptInputError {
	public function error():GoString {
		var _e = this.__copy__();
		return (("illegal base32 data at input byte " : GoString)) + stdgo.strconv.Strconv.formatInt(_e.__t__, ((10 : GoInt)));
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

@:structInit class T_decoder {
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		if (_d.value._out.length > ((0 : GoInt))) {
			_n = Go.copy(_p, _d.value._out);
			_d.value._out = _d.value._out.__slice__(_n);
			if (_d.value._out.length == ((0 : GoInt))) {
				return {_0: _n, _1: _d.value._err};
			};
			return {_0: _n, _1: ((null : stdgo.Error))};
		};
		if (_d.value._err != null) {
			return {_0: ((0 : GoInt)), _1: _d.value._err};
		};
		var _nn:GoInt = _p.length / ((5 : GoInt)) * ((8 : GoInt));
		if (_nn < ((8 : GoInt))) {
			_nn = ((8 : GoInt));
		};
		if (_nn > _d.value._buf.length) {
			_nn = _d.value._buf.length;
		};
		var _min:GoInt = ((0 : GoInt));
		var _expectsPadding:Bool = false;
		if (_d.value._enc.value._padChar == noPadding) {
			_min = ((1 : GoInt));
			_expectsPadding = false;
		} else {
			_min = ((8 : GoInt)) - _d.value._nbuf;
			_expectsPadding = true;
		};
		{
			var __tmp__ = _readEncodedData(_d.value._r, _d.value._buf.__slice__(_d.value._nbuf, _nn), _min, _expectsPadding);
			_nn = __tmp__._0;
			_d.value._err = __tmp__._1;
		};
		_d.value._nbuf = _d.value._nbuf + (_nn);
		if (_d.value._nbuf < _min) {
			return {_0: ((0 : GoInt)), _1: _d.value._err};
		};
		var _nr:GoInt = ((0 : GoInt));
		if (_d.value._enc.value._padChar == noPadding) {
			_nr = _d.value._nbuf;
		} else {
			_nr = _d.value._nbuf / ((8 : GoInt)) * ((8 : GoInt));
		};
		var _nw:GoInt = _d.value._enc.value.decodedLen(_d.value._nbuf);
		if (_nw > _p.length) {
			{
				var __tmp__ = _d.value._enc.value._decode(_d.value._outbuf.__slice__(((0 : GoInt))), _d.value._buf.__slice__(((0 : GoInt)), _nr));
				_nw = __tmp__._0;
				_d.value._end = __tmp__._1;
				_err = __tmp__._2;
			};
			_d.value._out = _d.value._outbuf.__slice__(((0 : GoInt)), _nw);
			_n = Go.copy(_p, _d.value._out);
			_d.value._out = _d.value._out.__slice__(_n);
		} else {
			{
				var __tmp__ = _d.value._enc.value._decode(_p, _d.value._buf.__slice__(((0 : GoInt)), _nr));
				_n = __tmp__._0;
				_d.value._end = __tmp__._1;
				_err = __tmp__._2;
			};
		};
		_d.value._nbuf = _d.value._nbuf - (_nr);
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < _d.value._nbuf, _i++, {
				_d.value._buf[_i] = _d.value._buf[_i + _nr];
			});
		};
		if (_err != null && (_d.value._err == null || Go.toInterface(_d.value._err) == Go.toInterface(stdgo.io.Io.eof))) {
			_d.value._err = _err;
		};
		if (_d.value._out.length > ((0 : GoInt))) {
			return {_0: _n, _1: ((null : stdgo.Error))};
		};
		return {_0: _n, _1: _d.value._err};
	}

	public var _err:stdgo.Error = ((null : stdgo.Error));
	public var _enc:Pointer<Encoding> = new Pointer<Encoding>().nil();
	public var _r:stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
	public var _end:Bool = false;
	public var _buf:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...1024) ((0 : GoUInt8))]);
	public var _nbuf:GoInt = ((0 : GoInt));
	public var _out:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _outbuf:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...640) ((0 : GoUInt8))]);

	public function new(?_err:stdgo.Error, ?_enc:Pointer<Encoding>, ?_r:stdgo.io.Io.Reader, ?_end:Bool, ?_buf:GoArray<GoUInt8>, ?_nbuf:GoInt,
			?_out:Slice<GoUInt8>, ?_outbuf:GoArray<GoUInt8>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_err) + " " + Go.string(_enc) + " " + Go.string(_r) + " " + Go.string(_end) + " " + Go.string(_buf) + " " + Go.string(_nbuf)
			+ " " + Go.string(_out) + " " + Go.string(_outbuf) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_decoder(_err, _enc, _r, _end, _buf, _nbuf, _out, _outbuf);
	}

	public function __set__(__tmp__) {
		this._err = __tmp__._err;
		this._enc = __tmp__._enc;
		this._r = __tmp__._r;
		this._end = __tmp__._end;
		this._buf = __tmp__._buf;
		this._nbuf = __tmp__._nbuf;
		this._out = __tmp__._out;
		this._outbuf = __tmp__._outbuf;
		return this;
	}
}

@:structInit class T_newlineFilteringReader {
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _r.value._wrapped.read(_p),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		while (_n > ((0 : GoInt))) {
			var _s:Slice<GoUInt8> = _p.__slice__(((0 : GoInt)), _n);
			var _offset:GoInt = _stripNewlines(_s, _s);
			if (_err != null || _offset > ((0 : GoInt))) {
				return {_0: _offset, _1: _err};
			};
			{
				var __tmp__ = _r.value._wrapped.read(_p);
				_n = __tmp__._0;
				_err = __tmp__._1;
			};
		};
		return {_0: _n, _1: _err};
	}

	public var _wrapped:stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));

	public function new(?_wrapped:stdgo.io.Io.Reader)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_wrapped) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_newlineFilteringReader(_wrapped);
	}

	public function __set__(__tmp__) {
		this._wrapped = __tmp__._wrapped;
		return this;
	}
}

final _encodeHex:GoString = "0123456789ABCDEFGHIJKLMNOPQRSTUV";
var hexEncoding:Pointer<Encoding> = newEncoding(_encodeHex);
final noPadding:GoRune = -((1 : GoUnTypedInt));
final stdPadding:GoRune = (("=".code : GoRune));
final _encodeStd:GoString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567";
var stdEncoding:Pointer<Encoding> = newEncoding(_encodeStd);

/**
	// NewEncoding returns a new Encoding defined by the given alphabet,
	// which must be a 32-byte string.
**/
function newEncoding(_encoder:GoString):Pointer<Encoding> {
	if (_encoder.length != ((32 : GoInt))) {
		throw "encoding alphabet is not 32-bytes long";
	};
	var _e:Pointer<Encoding> = Go.pointer(new Encoding());
	Go.copy(_e.value._encode.__slice__(0), _encoder);
	_e.value._padChar = stdPadding;
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _e.value._decodeMap.length, _i++, {
			_e.value._decodeMap[_i] = ((255 : GoUInt8));
		});
	};
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _encoder.length, _i++, {
			_e.value._decodeMap[_encoder[_i]] = ((_i : GoByte));
		});
	};
	return _e;
}

/**
	// NewEncoder returns a new base32 stream encoder. Data written to
	// the returned writer will be encoded using enc and then written to w.
	// Base32 encodings operate in 5-byte blocks; when finished
	// writing, the caller must Close the returned encoder to flush any
	// partially written blocks.
**/
function newEncoder(_enc:Pointer<Encoding>, _w:stdgo.io.Io.Writer):stdgo.io.Io.WriteCloser {
	return Go.pointer((({
		_enc: _enc,
		_w: _w,
		_err: ((null : stdgo.Error)),
		_buf: new GoArray<GoUInt8>(...[for (i in 0...5) ((0 : GoUInt8))]),
		_nbuf: 0,
		_out: new GoArray<GoUInt8>(...[for (i in 0...1024) ((0 : GoUInt8))])
	} : T_encoder))).value;
}

function _readEncodedData(_r:stdgo.io.Io.Reader, _buf:Slice<GoByte>, _min:GoInt, _expectsPadding:Bool):{var _0:GoInt; var _1:Error;} {
	var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
	while (_n < _min && _err == null) {
		var _nn:GoInt = ((0 : GoInt));
		{
			var __tmp__ = _r.read(_buf.__slice__(_n));
			_nn = __tmp__._0;
			_err = __tmp__._1;
		};
		_n = _n + (_nn);
	};
	if (_n < _min && _n > ((0 : GoInt)) && Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
		_err = stdgo.io.Io.errUnexpectedEOF;
	};
	if (_expectsPadding
		&& _min < ((8 : GoInt))
		&& _n == ((0 : GoInt))
		&& Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
		_err = stdgo.io.Io.errUnexpectedEOF;
	};
	return {_0: _n, _1: _err};
}

/**
	// stripNewlines removes newline characters and returns the number
	// of non-newline characters copied to dst.
**/
function _stripNewlines(_dst:Slice<GoByte>, _src:Slice<GoByte>):GoInt {
	var _offset:GoInt = ((0 : GoInt));
	for (_b in _src) {
		if (_b == (("\r".code : GoRune)) || _b == (("\n".code : GoRune))) {
			continue;
		};
		_dst[_offset] = _b;
		_offset++;
	};
	return _offset;
}

/**
	// NewDecoder constructs a new base32 stream decoder.
**/
function newDecoder(_enc:Pointer<Encoding>, _r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
	return Go.pointer((({
		_enc: _enc,
		_r: Go.pointer(new T_newlineFilteringReader(_r)).value,
		_err: ((null : stdgo.Error)),
		_end: false,
		_buf: new GoArray<GoUInt8>(...[for (i in 0...1024) ((0 : GoUInt8))]),
		_nbuf: 0,
		_out: new Slice<GoUInt8>().nil(),
		_outbuf: new GoArray<GoUInt8>(...[for (i in 0...640) ((0 : GoUInt8))])
	} : T_decoder))).value;
}

class Encoding_extension_fields {
	public function withPadding(__tmp__, _padding:GoRune):Pointer<Encoding>
		return __tmp__.withPadding(_padding);

	public function encode(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void
		__tmp__.encode(_dst, _src);

	public function encodeToString(__tmp__, _src:Slice<GoByte>):GoString
		return __tmp__.encodeToString(_src);

	public function encodedLen(__tmp__, _n:GoInt):GoInt
		return __tmp__.encodedLen(_n);

	public function _decode(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>):{var _0:GoInt; var _1:Bool; var _2:Error;}
		return __tmp__._decode(_dst, _src);

	public function decode(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.decode(_dst, _src);

	public function decodeString(__tmp__, _s:GoString):{var _0:Slice<GoByte>; var _1:Error;}
		return __tmp__.decodeString(_s);

	public function decodedLen(__tmp__, _n:GoInt):GoInt
		return __tmp__.decodedLen(_n);
}

class T_encoder_extension_fields {
	public function write(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.write(_p);

	public function close(__tmp__):Error
		return __tmp__.close();
}

class CorruptInputError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class T_decoder_extension_fields {
	public function read(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.read(_p);
}

class T_newlineFilteringReader_extension_fields {
	public function read(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.read(_p);
}
