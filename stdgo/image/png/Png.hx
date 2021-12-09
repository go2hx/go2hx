package stdgo.image.png;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

typedef EncoderBufferPool = StructType & {
	public function get():Pointer<EncoderBuffer>;
	public function put(arg0:Pointer<EncoderBuffer>):Void;
};

typedef T_opaquer = StructType & {
	public function opaque():Bool;
};

@:structInit class T_interlaceScan {
	public var _xFactor:GoInt = ((0 : GoInt));
	public var _yFactor:GoInt = ((0 : GoInt));
	public var _xOffset:GoInt = ((0 : GoInt));
	public var _yOffset:GoInt = ((0 : GoInt));

	public function new(?_xFactor:GoInt, ?_yFactor:GoInt, ?_xOffset:GoInt, ?_yOffset:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_xFactor) + " " + Go.string(_yFactor) + " " + Go.string(_xOffset) + " " + Go.string(_yOffset) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_interlaceScan(_xFactor, _yFactor, _xOffset, _yOffset);
	}

	public function __set__(__tmp__) {
		this._xFactor = __tmp__._xFactor;
		this._yFactor = __tmp__._yFactor;
		this._xOffset = __tmp__._xOffset;
		this._yOffset = __tmp__._yOffset;
		return this;
	}
}

@:structInit class T_decoder {
	public function _checkHeader():Error {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = stdgo.io.Io.readFull(_d.value._r, _d.value._tmp.__slice__(0, _pngHeader.length)),
			_:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return _err;
		};
		if (((_d.value._tmp.__slice__(0, _pngHeader.length) : GoString)) != _pngHeader) {
			return new FormatError("not a PNG file");
		};
		return ((null : stdgo.Error));
	}

	public function _verifyChecksum():Error {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var __tmp__ = stdgo.io.Io.readFull(_d.value._r, _d.value._tmp.__slice__(0, ((4 : GoInt)))),
				_:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return _err;
			};
		};
		if (stdgo.encoding.binary.Binary.bigEndian.uint32(_d.value._tmp.__slice__(0, ((4 : GoInt)))) != _d.value._crc.sum32()) {
			return new FormatError("invalid checksum");
		};
		return ((null : stdgo.Error));
	}

	public function _parseChunk():Error {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var __tmp__ = stdgo.io.Io.readFull(_d.value._r, _d.value._tmp.__slice__(0, ((8 : GoInt)))),
				_:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return _err;
			};
		};
		var _length:GoUInt32 = stdgo.encoding.binary.Binary.bigEndian.uint32(_d.value._tmp.__slice__(0, ((4 : GoInt))));
		_d.value._crc.reset();
		_d.value._crc.write(_d.value._tmp.__slice__(((4 : GoInt)), ((8 : GoInt))));
		{
			var __switchIndex__ = -1;
			while (true) {
				if (((_d.value._tmp.__slice__(((4 : GoInt)), ((8 : GoInt))) : GoString)) == (("IHDR" : GoString))) {
					if (_d.value._stage != _dsStart) {
						return _chunkOrderError;
					};
					_d.value._stage = _dsSeenIHDR;
					return _d.value._parseIHDR(_length);
					break;
				} else if (((_d.value._tmp.__slice__(((4 : GoInt)), ((8 : GoInt))) : GoString)) == (("PLTE" : GoString))) {
					if (_d.value._stage != _dsSeenIHDR) {
						return _chunkOrderError;
					};
					_d.value._stage = _dsSeenPLTE;
					return _d.value._parsePLTE(_length);
					break;
				} else if (((_d.value._tmp.__slice__(((4 : GoInt)), ((8 : GoInt))) : GoString)) == (("tRNS" : GoString))) {
					if (_cbPaletted(_d.value._cb)) {
						if (_d.value._stage != _dsSeenPLTE) {
							return _chunkOrderError;
						};
					} else if (_d.value._stage != _dsSeenIHDR) {
						return _chunkOrderError;
					};
					_d.value._stage = _dsSeentRNS;
					return _d.value._parsetRNS(_length);
					break;
				} else if (((_d.value._tmp.__slice__(((4 : GoInt)), ((8 : GoInt))) : GoString)) == (("IDAT" : GoString))) {
					if (_d.value._stage < _dsSeenIHDR
						|| _d.value._stage > _dsSeenIDAT
						|| (_d.value._stage == _dsSeenIHDR && _cbPaletted(_d.value._cb))) {
						return _chunkOrderError;
					} else if (_d.value._stage == _dsSeenIDAT) {
						break;
					};
					_d.value._stage = _dsSeenIDAT;
					return _d.value._parseIDAT(_length);
					break;
				} else if (((_d.value._tmp.__slice__(((4 : GoInt)), ((8 : GoInt))) : GoString)) == (("IEND" : GoString))) {
					if (_d.value._stage != _dsSeenIDAT) {
						return _chunkOrderError;
					};
					_d.value._stage = _dsSeenIEND;
					return _d.value._parseIEND(_length);
					break;
				};
				break;
			};
		};
		if (_length > ((2147483647 : GoUInt32))) {
			return new FormatError(stdgo.fmt.Fmt.sprintf("Bad chunk length: %d", Go.toInterface(_length)));
		};
		var _ignored:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...4096) ((0 : GoUInt8))]);
		while (_length > ((0 : GoUInt32))) {
			var __tmp__ = stdgo.io.Io.readFull(_d.value._r, _ignored.__slice__(0, _min(_ignored.length, ((_length : GoInt))))),
				_n:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return _err;
			};
			_d.value._crc.write(_ignored.__slice__(0, _n));
			_length = _length - (((_n : GoUInt32)));
		};
		return _d.value._verifyChecksum();
	}

	public function _parseIEND(_length:GoUInt32):Error {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_length != ((0 : GoUInt32))) {
			return new FormatError("bad IEND length");
		};
		return _d.value._verifyChecksum();
	}

	public function _parseIDAT(_length:GoUInt32):Error {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _err:Error = ((null : stdgo.Error));
		_d.value._idatLength = _length;
		{
			var __tmp__ = _d.value._decode();
			_d.value._img = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return _err;
		};
		return _d.value._verifyChecksum();
	}

	public function _mergePassInto(_dst:stdgo.image.Image.Image, _src:stdgo.image.Image.Image, _pass:GoInt):Void {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _p:T_interlaceScan = _interlacing[_pass].__copy__();
		var _srcPix:Slice<GoUInt8> = new Slice<GoUInt8>().nil(),
			_dstPix:Slice<GoUInt8> = new Slice<GoUInt8>().nil(),
			_stride:GoInt = ((0 : GoInt)),
			_rect:stdgo.image.Image.Rectangle = new stdgo.image.Image.Rectangle(),
			_bytesPerPixel:GoInt = ((0 : GoInt));
		if (Go.assertable(((_dst : Pointer<stdgo.image.Image.Alpha>)))) {
			var _target:Pointer<stdgo.image.Image.Alpha> = _dst == null ? null : _dst.__underlying__() == null ? null : _dst == null ? null : _dst.__underlying__()
				.value;
			_srcPix = ((_src.__underlying__().value : stdgo.image.Image.Alpha)).value.pix;
			{
				final __tmp__0 = _target.value.pix;
				final __tmp__1 = _target.value.stride;
				final __tmp__2 = _target.value.rect.__copy__();
				_dstPix = __tmp__0;
				_stride = __tmp__1;
				_rect = __tmp__2;
			};
			_bytesPerPixel = ((1 : GoInt));
		} else if (Go.assertable(((_dst : Pointer<stdgo.image.Image.Alpha16>)))) {
			var _target:Pointer<stdgo.image.Image.Alpha16> = _dst == null ? null : _dst.__underlying__() == null ? null : _dst == null ? null : _dst.__underlying__()
				.value;
			_srcPix = ((_src.__underlying__().value : stdgo.image.Image.Alpha16)).value.pix;
			{
				final __tmp__0 = _target.value.pix;
				final __tmp__1 = _target.value.stride;
				final __tmp__2 = _target.value.rect.__copy__();
				_dstPix = __tmp__0;
				_stride = __tmp__1;
				_rect = __tmp__2;
			};
			_bytesPerPixel = ((2 : GoInt));
		} else if (Go.assertable(((_dst : Pointer<stdgo.image.Image.Gray>)))) {
			var _target:Pointer<stdgo.image.Image.Gray> = _dst == null ? null : _dst.__underlying__() == null ? null : _dst == null ? null : _dst.__underlying__()
				.value;
			_srcPix = ((_src.__underlying__().value : stdgo.image.Image.Gray)).value.pix;
			{
				final __tmp__0 = _target.value.pix;
				final __tmp__1 = _target.value.stride;
				final __tmp__2 = _target.value.rect.__copy__();
				_dstPix = __tmp__0;
				_stride = __tmp__1;
				_rect = __tmp__2;
			};
			_bytesPerPixel = ((1 : GoInt));
		} else if (Go.assertable(((_dst : Pointer<stdgo.image.Image.Gray16>)))) {
			var _target:Pointer<stdgo.image.Image.Gray16> = _dst == null ? null : _dst.__underlying__() == null ? null : _dst == null ? null : _dst.__underlying__()
				.value;
			_srcPix = ((_src.__underlying__().value : stdgo.image.Image.Gray16)).value.pix;
			{
				final __tmp__0 = _target.value.pix;
				final __tmp__1 = _target.value.stride;
				final __tmp__2 = _target.value.rect.__copy__();
				_dstPix = __tmp__0;
				_stride = __tmp__1;
				_rect = __tmp__2;
			};
			_bytesPerPixel = ((2 : GoInt));
		} else if (Go.assertable(((_dst : Pointer<stdgo.image.Image.NRGBA>)))) {
			var _target:Pointer<stdgo.image.Image.NRGBA> = _dst == null ? null : _dst.__underlying__() == null ? null : _dst == null ? null : _dst.__underlying__()
				.value;
			_srcPix = ((_src.__underlying__().value : stdgo.image.Image.NRGBA)).value.pix;
			{
				final __tmp__0 = _target.value.pix;
				final __tmp__1 = _target.value.stride;
				final __tmp__2 = _target.value.rect.__copy__();
				_dstPix = __tmp__0;
				_stride = __tmp__1;
				_rect = __tmp__2;
			};
			_bytesPerPixel = ((4 : GoInt));
		} else if (Go.assertable(((_dst : Pointer<stdgo.image.Image.NRGBA64>)))) {
			var _target:Pointer<stdgo.image.Image.NRGBA64> = _dst == null ? null : _dst.__underlying__() == null ? null : _dst == null ? null : _dst.__underlying__()
				.value;
			_srcPix = ((_src.__underlying__().value : stdgo.image.Image.NRGBA64)).value.pix;
			{
				final __tmp__0 = _target.value.pix;
				final __tmp__1 = _target.value.stride;
				final __tmp__2 = _target.value.rect.__copy__();
				_dstPix = __tmp__0;
				_stride = __tmp__1;
				_rect = __tmp__2;
			};
			_bytesPerPixel = ((8 : GoInt));
		} else if (Go.assertable(((_dst : Pointer<stdgo.image.Image.Paletted>)))) {
			var _target:Pointer<stdgo.image.Image.Paletted> = _dst == null ? null : _dst.__underlying__() == null ? null : _dst == null ? null : _dst.__underlying__()
				.value;
			_srcPix = ((_src.__underlying__().value : stdgo.image.Image.Paletted)).value.pix;
			{
				final __tmp__0 = _target.value.pix;
				final __tmp__1 = _target.value.stride;
				final __tmp__2 = _target.value.rect.__copy__();
				_dstPix = __tmp__0;
				_stride = __tmp__1;
				_rect = __tmp__2;
			};
			_bytesPerPixel = ((1 : GoInt));
		} else if (Go.assertable(((_dst : Pointer<stdgo.image.Image.RGBA>)))) {
			var _target:Pointer<stdgo.image.Image.RGBA> = _dst == null ? null : _dst.__underlying__() == null ? null : _dst == null ? null : _dst.__underlying__()
				.value;
			_srcPix = ((_src.__underlying__().value : stdgo.image.Image.RGBA)).value.pix;
			{
				final __tmp__0 = _target.value.pix;
				final __tmp__1 = _target.value.stride;
				final __tmp__2 = _target.value.rect.__copy__();
				_dstPix = __tmp__0;
				_stride = __tmp__1;
				_rect = __tmp__2;
			};
			_bytesPerPixel = ((4 : GoInt));
		} else if (Go.assertable(((_dst : Pointer<stdgo.image.Image.RGBA64>)))) {
			var _target:Pointer<stdgo.image.Image.RGBA64> = _dst == null ? null : _dst.__underlying__() == null ? null : _dst == null ? null : _dst.__underlying__()
				.value;
			_srcPix = ((_src.__underlying__().value : stdgo.image.Image.RGBA64)).value.pix;
			{
				final __tmp__0 = _target.value.pix;
				final __tmp__1 = _target.value.stride;
				final __tmp__2 = _target.value.rect.__copy__();
				_dstPix = __tmp__0;
				_stride = __tmp__1;
				_rect = __tmp__2;
			};
			_bytesPerPixel = ((8 : GoInt));
		};
		var _s:GoInt = ((0 : GoInt)),
			_bounds:stdgo.image.Image.Rectangle = _src.bounds().__copy__();
		{
			var _y:GoInt = _bounds.min.y;
			Go.cfor(_y < _bounds.max.y, _y++, {
				var _dBase:GoInt = (_y * _p._yFactor + _p._yOffset - _rect.min.y) * _stride + (_p._xOffset - _rect.min.x) * _bytesPerPixel;
				{
					var _x:GoInt = _bounds.min.x;
					Go.cfor(_x < _bounds.max.x, _x++, {
						var _d:GoInt = _dBase + _x * _p._xFactor * _bytesPerPixel;
						Go.copy(_dstPix.__slice__(_d), _srcPix.__slice__(_s, _s + _bytesPerPixel));
						_s = _s + (_bytesPerPixel);
					});
				};
			});
		};
	}

	public function _readImagePass(_r:stdgo.io.Io.Reader, _pass:GoInt, _allocateOnly:Bool):{var _0:stdgo.image.Image.Image; var _1:Error;} {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _bitsPerPixel:GoInt = ((0 : GoInt));
		var _pixOffset:GoInt = ((0 : GoInt));
		var _gray:Pointer<stdgo.image.Image.Gray> = new Pointer<stdgo.image.Image.Gray>().nil(),
			_rgba:Pointer<stdgo.image.Image.RGBA> = new Pointer<stdgo.image.Image.RGBA>().nil(),
			_paletted:Pointer<stdgo.image.Image.Paletted> = new Pointer<stdgo.image.Image.Paletted>().nil(),
			_nrgba:Pointer<stdgo.image.Image.NRGBA> = new Pointer<stdgo.image.Image.NRGBA>().nil(),
			_gray16:Pointer<stdgo.image.Image.Gray16> = new Pointer<stdgo.image.Image.Gray16>().nil(),
			_rgba64:Pointer<stdgo.image.Image.RGBA64> = new Pointer<stdgo.image.Image.RGBA64>().nil(),
			_nrgba64:Pointer<stdgo.image.Image.NRGBA64> = new Pointer<stdgo.image.Image.NRGBA64>().nil(),
			_img:stdgo.image.Image.Image = ((null : stdgo.image.Image.Image));
		var _width:GoInt = _d.value._width, _height:GoInt = _d.value._height;
		if (_d.value._interlace == _itAdam7 && !_allocateOnly) {
			var _p:T_interlaceScan = _interlacing[_pass].__copy__();
			_width = (_width - _p._xOffset + _p._xFactor - ((1 : GoInt))) / _p._xFactor;
			_height = (_height - _p._yOffset + _p._yFactor - ((1 : GoInt))) / _p._yFactor;
			if (_width == ((0 : GoInt)) || _height == ((0 : GoInt))) {
				return {_0: ((null : stdgo.image.Image.Image)), _1: ((null : stdgo.Error))};
			};
		};
		if (_d.value._cb == _cbG1 || _d.value._cb == _cbG2 || _d.value._cb == _cbG4 || _d.value._cb == _cbG8) {
			_bitsPerPixel = _d.value._depth;
			if (_d.value._useTransparent) {
				_nrgba = stdgo.image.Image.newNRGBA(stdgo.image.Image.rect(((0 : GoInt)), ((0 : GoInt)), _width, _height).__copy__());
				_img = _nrgba.value;
			} else {
				_gray = stdgo.image.Image.newGray(stdgo.image.Image.rect(((0 : GoInt)), ((0 : GoInt)), _width, _height).__copy__());
				_img = _gray.value;
			};
		} else if (_d.value._cb == _cbGA8) {
			_bitsPerPixel = ((16 : GoInt));
			_nrgba = stdgo.image.Image.newNRGBA(stdgo.image.Image.rect(((0 : GoInt)), ((0 : GoInt)), _width, _height).__copy__());
			_img = _nrgba.value;
		} else if (_d.value._cb == _cbTC8) {
			_bitsPerPixel = ((24 : GoInt));
			if (_d.value._useTransparent) {
				_nrgba = stdgo.image.Image.newNRGBA(stdgo.image.Image.rect(((0 : GoInt)), ((0 : GoInt)), _width, _height).__copy__());
				_img = _nrgba.value;
			} else {
				_rgba = stdgo.image.Image.newRGBA(stdgo.image.Image.rect(((0 : GoInt)), ((0 : GoInt)), _width, _height).__copy__());
				_img = _rgba.value;
			};
		} else if (_d.value._cb == _cbP1 || _d.value._cb == _cbP2 || _d.value._cb == _cbP4 || _d.value._cb == _cbP8) {
			_bitsPerPixel = _d.value._depth;
			_paletted = stdgo.image.Image.newPaletted(stdgo.image.Image.rect(((0 : GoInt)), ((0 : GoInt)), _width, _height).__copy__(),
				_d.value._palette.__copy__());
			_img = _paletted.value;
		} else if (_d.value._cb == _cbTCA8) {
			_bitsPerPixel = ((32 : GoInt));
			_nrgba = stdgo.image.Image.newNRGBA(stdgo.image.Image.rect(((0 : GoInt)), ((0 : GoInt)), _width, _height).__copy__());
			_img = _nrgba.value;
		} else if (_d.value._cb == _cbG16) {
			_bitsPerPixel = ((16 : GoInt));
			if (_d.value._useTransparent) {
				_nrgba64 = stdgo.image.Image.newNRGBA64(stdgo.image.Image.rect(((0 : GoInt)), ((0 : GoInt)), _width, _height).__copy__());
				_img = _nrgba64.value;
			} else {
				_gray16 = stdgo.image.Image.newGray16(stdgo.image.Image.rect(((0 : GoInt)), ((0 : GoInt)), _width, _height).__copy__());
				_img = _gray16.value;
			};
		} else if (_d.value._cb == _cbGA16) {
			_bitsPerPixel = ((32 : GoInt));
			_nrgba64 = stdgo.image.Image.newNRGBA64(stdgo.image.Image.rect(((0 : GoInt)), ((0 : GoInt)), _width, _height).__copy__());
			_img = _nrgba64.value;
		} else if (_d.value._cb == _cbTC16) {
			_bitsPerPixel = ((48 : GoInt));
			if (_d.value._useTransparent) {
				_nrgba64 = stdgo.image.Image.newNRGBA64(stdgo.image.Image.rect(((0 : GoInt)), ((0 : GoInt)), _width, _height).__copy__());
				_img = _nrgba64.value;
			} else {
				_rgba64 = stdgo.image.Image.newRGBA64(stdgo.image.Image.rect(((0 : GoInt)), ((0 : GoInt)), _width, _height).__copy__());
				_img = _rgba64.value;
			};
		} else if (_d.value._cb == _cbTCA16) {
			_bitsPerPixel = ((64 : GoInt));
			_nrgba64 = stdgo.image.Image.newNRGBA64(stdgo.image.Image.rect(((0 : GoInt)), ((0 : GoInt)), _width, _height).__copy__());
			_img = _nrgba64.value;
		};
		if (_allocateOnly) {
			return {_0: _img, _1: ((null : stdgo.Error))};
		};
		var _bytesPerPixel:GoInt = (_bitsPerPixel + ((7 : GoInt))) / ((8 : GoInt));
		var _rowSize:GoInt64 = ((1 : GoInt64)) + (((_bitsPerPixel : GoInt64)) * ((_width : GoInt64)) + ((7 : GoInt64))) / ((8 : GoInt64));
		if (_rowSize != ((((_rowSize : GoInt)) : GoInt64))) {
			return {_0: ((null : stdgo.image.Image.Image)), _1: new UnsupportedError("dimension overflow")};
		};
		var _cr:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_rowSize : GoInt)).toBasic()) ((0 : GoUInt8))]);
		var _pr:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_rowSize : GoInt)).toBasic()) ((0 : GoUInt8))]);
		{
			var _y:GoInt = ((0 : GoInt));
			Go.cfor(_y < _height, _y++, {
				var __tmp__ = stdgo.io.Io.readFull(_r, _cr),
					_:GoInt = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err != null) {
					if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)
						|| Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.errUnexpectedEOF)) {
						return {_0: ((null : stdgo.image.Image.Image)), _1: new FormatError("not enough pixel data")};
					};
					return {_0: ((null : stdgo.image.Image.Image)), _1: _err};
				};
				var _cdat:Slice<GoUInt8> = _cr.__slice__(((1 : GoInt)));
				var _pdat:Slice<GoUInt8> = _pr.__slice__(((1 : GoInt)));
				if (_cr[((0 : GoInt))] == _ftNone) {} else if (_cr[((0 : GoInt))] == _ftSub) {
					{
						var _i:GoInt = _bytesPerPixel;
						Go.cfor(_i < _cdat.length, _i++, {
							_cdat[_i] = _cdat[_i] + (_cdat[_i - _bytesPerPixel]);
						});
					};
				} else if (_cr[((0 : GoInt))] == _ftUp) {
					{
						var _i;
						var _p;
						for (_obj in _pdat.keyValueIterator()) {
							_i = _obj.key;
							_p = _obj.value;
							_cdat[_i] = _cdat[_i] + (_p);
						};
					};
				} else if (_cr[((0 : GoInt))] == _ftAverage) {
					{
						var _i:GoInt = ((0 : GoInt));
						Go.cfor(_i < _bytesPerPixel, _i++, {
							_cdat[_i] = _cdat[_i] + (_pdat[_i] / ((2 : GoUInt8)));
						});
					};
					{
						var _i:GoInt = _bytesPerPixel;
						Go.cfor(_i < _cdat.length, _i++, {
							_cdat[_i] = _cdat[_i] + (((((((_cdat[_i - _bytesPerPixel] : GoInt)) + ((_pdat[_i] : GoInt))) / ((2 : GoInt))) : GoUInt8)));
						});
					};
				} else if (_cr[((0 : GoInt))] == _ftPaeth) {
					_filterPaeth(_cdat, _pdat, _bytesPerPixel);
				} else {
					return {_0: ((null : stdgo.image.Image.Image)), _1: new FormatError("bad filter type")};
				};
				if (_d.value._cb == _cbG1) {
					if (_d.value._useTransparent) {
						var _ty:GoUInt8 = _d.value._transparent[((1 : GoInt))];
						{
							var _x:GoInt = ((0 : GoInt));
							Go.cfor(_x < _width, _x = _x + (((8 : GoInt))), {
								var _b:GoUInt8 = _cdat[_x / ((8 : GoInt))];
								{
									var _x2:GoInt = ((0 : GoInt));
									Go.cfor(_x2 < ((8 : GoInt)) && _x + _x2 < _width, _x2++, {
										var _ycol:GoUInt8 = ((_b >> ((7 : GoUnTypedInt)))) * ((255 : GoUInt8));
										var _acol:GoUInt8 = ((((255 : GoUInt8)) : GoUInt8));
										if (_ycol == _ty) {
											_acol = ((0 : GoUInt8));
										};
										_nrgba.value.setNRGBA(_x + _x2, _y, new stdgo.image.color.Color.NRGBA(_ycol, _ycol, _ycol, _acol).__copy__());
										_b = (_b << (((1 : GoUnTypedInt))));
									});
								};
							});
						};
					} else {
						{
							var _x:GoInt = ((0 : GoInt));
							Go.cfor(_x < _width, _x = _x + (((8 : GoInt))), {
								var _b:GoUInt8 = _cdat[_x / ((8 : GoInt))];
								{
									var _x2:GoInt = ((0 : GoInt));
									Go.cfor(_x2 < ((8 : GoInt)) && _x + _x2 < _width, _x2++, {
										_gray.value.setGray(_x + _x2, _y,
											new stdgo.image.color.Color.Gray(((_b >> ((7 : GoUnTypedInt)))) * ((255 : GoUInt8))).__copy__());
										_b = (_b << (((1 : GoUnTypedInt))));
									});
								};
							});
						};
					};
				} else if (_d.value._cb == _cbG2) {
					if (_d.value._useTransparent) {
						var _ty:GoUInt8 = _d.value._transparent[((1 : GoInt))];
						{
							var _x:GoInt = ((0 : GoInt));
							Go.cfor(_x < _width, _x = _x + (((4 : GoInt))), {
								var _b:GoUInt8 = _cdat[_x / ((4 : GoInt))];
								{
									var _x2:GoInt = ((0 : GoInt));
									Go.cfor(_x2 < ((4 : GoInt)) && _x + _x2 < _width, _x2++, {
										var _ycol:GoUInt8 = ((_b >> ((6 : GoUnTypedInt)))) * ((85 : GoUInt8));
										var _acol:GoUInt8 = ((((255 : GoUInt8)) : GoUInt8));
										if (_ycol == _ty) {
											_acol = ((0 : GoUInt8));
										};
										_nrgba.value.setNRGBA(_x + _x2, _y, new stdgo.image.color.Color.NRGBA(_ycol, _ycol, _ycol, _acol).__copy__());
										_b = (_b << (((2 : GoUnTypedInt))));
									});
								};
							});
						};
					} else {
						{
							var _x:GoInt = ((0 : GoInt));
							Go.cfor(_x < _width, _x = _x + (((4 : GoInt))), {
								var _b:GoUInt8 = _cdat[_x / ((4 : GoInt))];
								{
									var _x2:GoInt = ((0 : GoInt));
									Go.cfor(_x2 < ((4 : GoInt)) && _x + _x2 < _width, _x2++, {
										_gray.value.setGray(_x + _x2, _y,
											new stdgo.image.color.Color.Gray(((_b >> ((6 : GoUnTypedInt)))) * ((85 : GoUInt8))).__copy__());
										_b = (_b << (((2 : GoUnTypedInt))));
									});
								};
							});
						};
					};
				} else if (_d.value._cb == _cbG4) {
					if (_d.value._useTransparent) {
						var _ty:GoUInt8 = _d.value._transparent[((1 : GoInt))];
						{
							var _x:GoInt = ((0 : GoInt));
							Go.cfor(_x < _width, _x = _x + (((2 : GoInt))), {
								var _b:GoUInt8 = _cdat[_x / ((2 : GoInt))];
								{
									var _x2:GoInt = ((0 : GoInt));
									Go.cfor(_x2 < ((2 : GoInt)) && _x + _x2 < _width, _x2++, {
										var _ycol:GoUInt8 = ((_b >> ((4 : GoUnTypedInt)))) * ((17 : GoUInt8));
										var _acol:GoUInt8 = ((((255 : GoUInt8)) : GoUInt8));
										if (_ycol == _ty) {
											_acol = ((0 : GoUInt8));
										};
										_nrgba.value.setNRGBA(_x + _x2, _y, new stdgo.image.color.Color.NRGBA(_ycol, _ycol, _ycol, _acol).__copy__());
										_b = (_b << (((4 : GoUnTypedInt))));
									});
								};
							});
						};
					} else {
						{
							var _x:GoInt = ((0 : GoInt));
							Go.cfor(_x < _width, _x = _x + (((2 : GoInt))), {
								var _b:GoUInt8 = _cdat[_x / ((2 : GoInt))];
								{
									var _x2:GoInt = ((0 : GoInt));
									Go.cfor(_x2 < ((2 : GoInt)) && _x + _x2 < _width, _x2++, {
										_gray.value.setGray(_x + _x2, _y,
											new stdgo.image.color.Color.Gray(((_b >> ((4 : GoUnTypedInt)))) * ((17 : GoUInt8))).__copy__());
										_b = (_b << (((4 : GoUnTypedInt))));
									});
								};
							});
						};
					};
				} else if (_d.value._cb == _cbG8) {
					if (_d.value._useTransparent) {
						var _ty:GoUInt8 = _d.value._transparent[((1 : GoInt))];
						{
							var _x:GoInt = ((0 : GoInt));
							Go.cfor(_x < _width, _x++, {
								var _ycol:GoUInt8 = _cdat[_x];
								var _acol:GoUInt8 = ((((255 : GoUInt8)) : GoUInt8));
								if (_ycol == _ty) {
									_acol = ((0 : GoUInt8));
								};
								_nrgba.value.setNRGBA(_x, _y, new stdgo.image.color.Color.NRGBA(_ycol, _ycol, _ycol, _acol).__copy__());
							});
						};
					} else {
						Go.copy(_gray.value.pix.__slice__(_pixOffset), _cdat);
						_pixOffset = _pixOffset + (_gray.value.stride);
					};
				} else if (_d.value._cb == _cbGA8) {
					{
						var _x:GoInt = ((0 : GoInt));
						Go.cfor(_x < _width, _x++, {
							var _ycol:GoUInt8 = _cdat[((2 : GoInt)) * _x + ((0 : GoInt))];
							_nrgba.value.setNRGBA(_x, _y,
								new stdgo.image.color.Color.NRGBA(_ycol, _ycol, _ycol, _cdat[((2 : GoInt)) * _x + ((1 : GoInt))]).__copy__());
						});
					};
				} else if (_d.value._cb == _cbTC8) {
					if (_d.value._useTransparent) {
						var _pix:Slice<GoUInt8> = _nrgba.value.pix,
							_i:GoInt = _pixOffset,
							_j:GoInt = ((0 : GoInt));
						var _tr:GoUInt8 = _d.value._transparent[((1 : GoInt))],
							_tg:GoUInt8 = _d.value._transparent[((3 : GoInt))],
							_tb:GoUInt8 = _d.value._transparent[((5 : GoInt))];
						{
							var _x:GoInt = ((0 : GoInt));
							Go.cfor(_x < _width, _x++, {
								var _r:GoUInt8 = _cdat[_j + ((0 : GoInt))];
								var _g:GoUInt8 = _cdat[_j + ((1 : GoInt))];
								var _b:GoUInt8 = _cdat[_j + ((2 : GoInt))];
								var _a:GoUInt8 = ((((255 : GoUInt8)) : GoUInt8));
								if (_r == _tr && _g == _tg && _b == _tb) {
									_a = ((0 : GoUInt8));
								};
								_pix[_i + ((0 : GoInt))] = _r;
								_pix[_i + ((1 : GoInt))] = _g;
								_pix[_i + ((2 : GoInt))] = _b;
								_pix[_i + ((3 : GoInt))] = _a;
								_i = _i + (((4 : GoInt)));
								_j = _j + (((3 : GoInt)));
							});
						};
						_pixOffset = _pixOffset + (_nrgba.value.stride);
					} else {
						var _pix:Slice<GoUInt8> = _rgba.value.pix,
							_i:GoInt = _pixOffset,
							_j:GoInt = ((0 : GoInt));
						{
							var _x:GoInt = ((0 : GoInt));
							Go.cfor(_x < _width, _x++, {
								_pix[_i + ((0 : GoInt))] = _cdat[_j + ((0 : GoInt))];
								_pix[_i + ((1 : GoInt))] = _cdat[_j + ((1 : GoInt))];
								_pix[_i + ((2 : GoInt))] = _cdat[_j + ((2 : GoInt))];
								_pix[_i + ((3 : GoInt))] = ((255 : GoUInt8));
								_i = _i + (((4 : GoInt)));
								_j = _j + (((3 : GoInt)));
							});
						};
						_pixOffset = _pixOffset + (_rgba.value.stride);
					};
				} else if (_d.value._cb == _cbP1) {
					{
						var _x:GoInt = ((0 : GoInt));
						Go.cfor(_x < _width, _x = _x + (((8 : GoInt))), {
							var _b:GoUInt8 = _cdat[_x / ((8 : GoInt))];
							{
								var _x2:GoInt = ((0 : GoInt));
								Go.cfor(_x2 < ((8 : GoInt)) && _x + _x2 < _width, _x2++, {
									var _idx:GoUInt8 = (_b >> ((7 : GoUnTypedInt)));
									if (_paletted.value.palette.__t__.length <= ((_idx : GoInt))) {
										_paletted.value.palette = _paletted.value.palette.__slice__(0, ((_idx : GoInt)) + ((1 : GoInt))).__copy__();
									};
									_paletted.value.setColorIndex(_x + _x2, _y, _idx);
									_b = (_b << (((1 : GoUnTypedInt))));
								});
							};
						});
					};
				} else if (_d.value._cb == _cbP2) {
					{
						var _x:GoInt = ((0 : GoInt));
						Go.cfor(_x < _width, _x = _x + (((4 : GoInt))), {
							var _b:GoUInt8 = _cdat[_x / ((4 : GoInt))];
							{
								var _x2:GoInt = ((0 : GoInt));
								Go.cfor(_x2 < ((4 : GoInt)) && _x + _x2 < _width, _x2++, {
									var _idx:GoUInt8 = (_b >> ((6 : GoUnTypedInt)));
									if (_paletted.value.palette.__t__.length <= ((_idx : GoInt))) {
										_paletted.value.palette = _paletted.value.palette.__slice__(0, ((_idx : GoInt)) + ((1 : GoInt))).__copy__();
									};
									_paletted.value.setColorIndex(_x + _x2, _y, _idx);
									_b = (_b << (((2 : GoUnTypedInt))));
								});
							};
						});
					};
				} else if (_d.value._cb == _cbP4) {
					{
						var _x:GoInt = ((0 : GoInt));
						Go.cfor(_x < _width, _x = _x + (((2 : GoInt))), {
							var _b:GoUInt8 = _cdat[_x / ((2 : GoInt))];
							{
								var _x2:GoInt = ((0 : GoInt));
								Go.cfor(_x2 < ((2 : GoInt)) && _x + _x2 < _width, _x2++, {
									var _idx:GoUInt8 = (_b >> ((4 : GoUnTypedInt)));
									if (_paletted.value.palette.__t__.length <= ((_idx : GoInt))) {
										_paletted.value.palette = _paletted.value.palette.__slice__(0, ((_idx : GoInt)) + ((1 : GoInt))).__copy__();
									};
									_paletted.value.setColorIndex(_x + _x2, _y, _idx);
									_b = (_b << (((4 : GoUnTypedInt))));
								});
							};
						});
					};
				} else if (_d.value._cb == _cbP8) {
					if (_paletted.value.palette.__t__.length != ((256 : GoInt))) {
						{
							var _x:GoInt = ((0 : GoInt));
							Go.cfor(_x < _width, _x++, {
								if (_paletted.value.palette.__t__.length <= ((_cdat[_x] : GoInt))) {
									_paletted.value.palette = _paletted.value.palette.__slice__(0, ((_cdat[_x] : GoInt)) + ((1 : GoInt))).__copy__();
								};
							});
						};
					};
					Go.copy(_paletted.value.pix.__slice__(_pixOffset), _cdat);
					_pixOffset = _pixOffset + (_paletted.value.stride);
				} else if (_d.value._cb == _cbTCA8) {
					Go.copy(_nrgba.value.pix.__slice__(_pixOffset), _cdat);
					_pixOffset = _pixOffset + (_nrgba.value.stride);
				} else if (_d.value._cb == _cbG16) {
					if (_d.value._useTransparent) {
						var _ty:GoUInt16 = (((_d.value._transparent[((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_d.value._transparent[((1 : GoInt))] : GoUInt16));
						{
							var _x:GoInt = ((0 : GoInt));
							Go.cfor(_x < _width, _x++, {
								var _ycol:GoUInt16 = (((_cdat[((2 : GoInt)) * _x + ((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_cdat[((2 : GoInt)) * _x
									+ ((1 : GoInt))] : GoUInt16));
								var _acol:GoUInt16 = ((((65535 : GoUInt16)) : GoUInt16));
								if (_ycol == _ty) {
									_acol = ((0 : GoUInt16));
								};
								_nrgba64.value.setNRGBA64(_x, _y, new stdgo.image.color.Color.NRGBA64(_ycol, _ycol, _ycol, _acol).__copy__());
							});
						};
					} else {
						{
							var _x:GoInt = ((0 : GoInt));
							Go.cfor(_x < _width, _x++, {
								var _ycol:GoUInt16 = (((_cdat[((2 : GoInt)) * _x + ((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_cdat[((2 : GoInt)) * _x
									+ ((1 : GoInt))] : GoUInt16));
								_gray16.value.setGray16(_x, _y, new stdgo.image.color.Color.Gray16(_ycol).__copy__());
							});
						};
					};
				} else if (_d.value._cb == _cbGA16) {
					{
						var _x:GoInt = ((0 : GoInt));
						Go.cfor(_x < _width, _x++, {
							var _ycol:GoUInt16 = (((_cdat[((4 : GoInt)) * _x + ((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_cdat[((4 : GoInt)) * _x
								+ ((1 : GoInt))] : GoUInt16));
							var _acol:GoUInt16 = (((_cdat[((4 : GoInt)) * _x + ((2 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_cdat[((4 : GoInt)) * _x
								+ ((3 : GoInt))] : GoUInt16));
							_nrgba64.value.setNRGBA64(_x, _y, new stdgo.image.color.Color.NRGBA64(_ycol, _ycol, _ycol, _acol).__copy__());
						});
					};
				} else if (_d.value._cb == _cbTC16) {
					if (_d.value._useTransparent) {
						var _tr:GoUInt16 = (((_d.value._transparent[((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_d.value._transparent[((1 : GoInt))] : GoUInt16));
						var _tg:GoUInt16 = (((_d.value._transparent[((2 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_d.value._transparent[((3 : GoInt))] : GoUInt16));
						var _tb:GoUInt16 = (((_d.value._transparent[((4 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_d.value._transparent[((5 : GoInt))] : GoUInt16));
						{
							var _x:GoInt = ((0 : GoInt));
							Go.cfor(_x < _width, _x++, {
								var _rcol:GoUInt16 = (((_cdat[((6 : GoInt)) * _x + ((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_cdat[((6 : GoInt)) * _x
									+ ((1 : GoInt))] : GoUInt16));
								var _gcol:GoUInt16 = (((_cdat[((6 : GoInt)) * _x + ((2 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_cdat[((6 : GoInt)) * _x
									+ ((3 : GoInt))] : GoUInt16));
								var _bcol:GoUInt16 = (((_cdat[((6 : GoInt)) * _x + ((4 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_cdat[((6 : GoInt)) * _x
									+ ((5 : GoInt))] : GoUInt16));
								var _acol:GoUInt16 = ((((65535 : GoUInt16)) : GoUInt16));
								if (_rcol == _tr && _gcol == _tg && _bcol == _tb) {
									_acol = ((0 : GoUInt16));
								};
								_nrgba64.value.setNRGBA64(_x, _y, new stdgo.image.color.Color.NRGBA64(_rcol, _gcol, _bcol, _acol).__copy__());
							});
						};
					} else {
						{
							var _x:GoInt = ((0 : GoInt));
							Go.cfor(_x < _width, _x++, {
								var _rcol:GoUInt16 = (((_cdat[((6 : GoInt)) * _x + ((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_cdat[((6 : GoInt)) * _x
									+ ((1 : GoInt))] : GoUInt16));
								var _gcol:GoUInt16 = (((_cdat[((6 : GoInt)) * _x + ((2 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_cdat[((6 : GoInt)) * _x
									+ ((3 : GoInt))] : GoUInt16));
								var _bcol:GoUInt16 = (((_cdat[((6 : GoInt)) * _x + ((4 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_cdat[((6 : GoInt)) * _x
									+ ((5 : GoInt))] : GoUInt16));
								_rgba64.value.setRGBA64(_x, _y, new stdgo.image.color.Color.RGBA64(_rcol, _gcol, _bcol, ((65535 : GoUInt16))).__copy__());
							});
						};
					};
				} else if (_d.value._cb == _cbTCA16) {
					{
						var _x:GoInt = ((0 : GoInt));
						Go.cfor(_x < _width, _x++, {
							var _rcol:GoUInt16 = (((_cdat[((8 : GoInt)) * _x + ((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_cdat[((8 : GoInt)) * _x
								+ ((1 : GoInt))] : GoUInt16));
							var _gcol:GoUInt16 = (((_cdat[((8 : GoInt)) * _x + ((2 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_cdat[((8 : GoInt)) * _x
								+ ((3 : GoInt))] : GoUInt16));
							var _bcol:GoUInt16 = (((_cdat[((8 : GoInt)) * _x + ((4 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_cdat[((8 : GoInt)) * _x
								+ ((5 : GoInt))] : GoUInt16));
							var _acol:GoUInt16 = (((_cdat[((8 : GoInt)) * _x + ((6 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_cdat[((8 : GoInt)) * _x
								+ ((7 : GoInt))] : GoUInt16));
							_nrgba64.value.setNRGBA64(_x, _y, new stdgo.image.color.Color.NRGBA64(_rcol, _gcol, _bcol, _acol).__copy__());
						});
					};
				};
				{
					final __tmp__0 = _cr;
					final __tmp__1 = _pr;
					_pr = __tmp__0;
					_cr = __tmp__1;
				};
			});
		};
		return {_0: _img, _1: ((null : stdgo.Error))};
	}

	public function _decode():{var _0:stdgo.image.Image.Image; var _1:Error;} {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		var __tmp__ = stdgo.compress.zlib.Zlib.newReader(_d.value),
			_r:stdgo.io.Io.ReadCloser = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: ((null : stdgo.image.Image.Image)), _1: _err};
		};
		try {
			deferstack.unshift(() -> _r.close());
			var _img:stdgo.image.Image.Image = ((null : stdgo.image.Image.Image));
			if (_d.value._interlace == _itNone) {
				{
					var __tmp__ = _d.value._readImagePass(_r, ((0 : GoInt)), false);
					_img = __tmp__._0;
					_err = __tmp__._1;
				};
				if (_err != null) {
					{
						for (defer in deferstack) {
							defer();
						};
						return {_0: ((null : stdgo.image.Image.Image)), _1: _err};
					};
				};
			} else if (_d.value._interlace == _itAdam7) {
				{
					var __tmp__ = _d.value._readImagePass(((null : stdgo.io.Io.Reader)), ((0 : GoInt)), true);
					_img = __tmp__._0;
					_err = __tmp__._1;
				};
				if (_err != null) {
					{
						for (defer in deferstack) {
							defer();
						};
						return {_0: ((null : stdgo.image.Image.Image)), _1: _err};
					};
				};
				{
					var _pass:GoInt = ((0 : GoInt));
					Go.cfor(_pass < ((7 : GoInt)), _pass++, {
						var __tmp__ = _d.value._readImagePass(_r, _pass, false),
							_imagePass:stdgo.image.Image.Image = __tmp__._0,
							_err:stdgo.Error = __tmp__._1;
						if (_err != null) {
							{
								for (defer in deferstack) {
									defer();
								};
								return {_0: ((null : stdgo.image.Image.Image)), _1: _err};
							};
						};
						if (_imagePass != null) {
							_d.value._mergePassInto(_img, _imagePass, _pass);
						};
					});
				};
			};
			var _n:GoInt = ((0 : GoInt));
			{
				var _i:GoInt = ((0 : GoInt));
				Go.cfor(_n == ((0 : GoInt)) && _err == null, _i++, {
					if (_i == ((100 : GoInt))) {
						{
							for (defer in deferstack) {
								defer();
							};
							return {_0: ((null : stdgo.image.Image.Image)), _1: stdgo.io.Io.errNoProgress};
						};
					};
					{
						var __tmp__ = _r.read(_d.value._tmp.__slice__(0, ((1 : GoInt))));
						_n = __tmp__._0;
						_err = __tmp__._1;
					};
				});
			};
			if (_err != null && Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
				{
					for (defer in deferstack) {
						defer();
					};
					return {_0: ((null : stdgo.image.Image.Image)), _1: new FormatError(_err.error())};
				};
			};
			if (_n != ((0 : GoInt)) || _d.value._idatLength != ((0 : GoUInt32))) {
				{
					for (defer in deferstack) {
						defer();
					};
					return {_0: ((null : stdgo.image.Image.Image)), _1: new FormatError("too much pixel data")};
				};
			};
			{
				for (defer in deferstack) {
					defer();
				};
				return {_0: _img, _1: ((null : stdgo.Error))};
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
				return {_0: ((null : stdgo.image.Image.Image)), _1: ((null : stdgo.Error))};
			};
		};
	}

	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_p.length == ((0 : GoInt))) {
			return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};
		};
		while (_d.value._idatLength == ((0 : GoUInt32))) {
			{
				var _err:stdgo.Error = _d.value._verifyChecksum();
				if (_err != null) {
					return {_0: ((0 : GoInt)), _1: _err};
				};
			};
			{
				var __tmp__ = stdgo.io.Io.readFull(_d.value._r, _d.value._tmp.__slice__(0, ((8 : GoInt)))),
					_:GoInt = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err != null) {
					return {_0: ((0 : GoInt)), _1: _err};
				};
			};
			_d.value._idatLength = stdgo.encoding.binary.Binary.bigEndian.uint32(_d.value._tmp.__slice__(0, ((4 : GoInt))));
			if (((_d.value._tmp.__slice__(((4 : GoInt)), ((8 : GoInt))) : GoString)) != (("IDAT" : GoString))) {
				return {_0: ((0 : GoInt)), _1: new FormatError("not enough pixel data")};
			};
			_d.value._crc.reset();
			_d.value._crc.write(_d.value._tmp.__slice__(((4 : GoInt)), ((8 : GoInt))));
		};
		if (((_d.value._idatLength : GoInt)) < ((0 : GoInt))) {
			return {_0: ((0 : GoInt)), _1: new UnsupportedError("IDAT chunk length overflow")};
		};
		var __tmp__ = _d.value._r.read(_p.__slice__(0, _min(_p.length, ((_d.value._idatLength : GoInt))))),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		_d.value._crc.write(_p.__slice__(0, _n));
		_d.value._idatLength = _d.value._idatLength - (((_n : GoUInt32)));
		return {_0: _n, _1: _err};
	}

	public function _parsetRNS(_length:GoUInt32):Error {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_d.value._cb == _cbG1
			|| _d.value._cb == _cbG2
			|| _d.value._cb == _cbG4
			|| _d.value._cb == _cbG8
			|| _d.value._cb == _cbG16) {
			if (_length != ((2 : GoUInt32))) {
				return new FormatError("bad tRNS length");
			};
			var __tmp__ = stdgo.io.Io.readFull(_d.value._r, _d.value._tmp.__slice__(0, _length)),
				_n:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return _err;
			};
			_d.value._crc.write(_d.value._tmp.__slice__(0, _n));
			Go.copy(_d.value._transparent.__slice__(0), _d.value._tmp.__slice__(0, _length));
			if (_d.value._cb == _cbG1) {
				_d.value._transparent[((1 : GoInt))] = _d.value._transparent[((1 : GoInt))] * (((255 : GoUInt8)));
			} else if (_d.value._cb == _cbG2) {
				_d.value._transparent[((1 : GoInt))] = _d.value._transparent[((1 : GoInt))] * (((85 : GoUInt8)));
			} else if (_d.value._cb == _cbG4) {
				_d.value._transparent[((1 : GoInt))] = _d.value._transparent[((1 : GoInt))] * (((17 : GoUInt8)));
			};
			_d.value._useTransparent = true;
		} else if (_d.value._cb == _cbTC8 || _d.value._cb == _cbTC16) {
			if (_length != ((6 : GoUInt32))) {
				return new FormatError("bad tRNS length");
			};
			var __tmp__ = stdgo.io.Io.readFull(_d.value._r, _d.value._tmp.__slice__(0, _length)),
				_n:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return _err;
			};
			_d.value._crc.write(_d.value._tmp.__slice__(0, _n));
			Go.copy(_d.value._transparent.__slice__(0), _d.value._tmp.__slice__(0, _length));
			_d.value._useTransparent = true;
		} else if (_d.value._cb == _cbP1 || _d.value._cb == _cbP2 || _d.value._cb == _cbP4 || _d.value._cb == _cbP8) {
			if (_length > ((256 : GoUInt32))) {
				return new FormatError("bad tRNS length");
			};
			var __tmp__ = stdgo.io.Io.readFull(_d.value._r, _d.value._tmp.__slice__(0, _length)),
				_n:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return _err;
			};
			_d.value._crc.write(_d.value._tmp.__slice__(0, _n));
			if (_d.value._palette.__t__.length < _n) {
				_d.value._palette = _d.value._palette.__slice__(0, _n).__copy__();
			};
			{
				var _i:GoInt = ((0 : GoInt));
				Go.cfor(_i < _n, _i++, {
					var _rgba:stdgo.image.color.Color.RGBA = ((_d.value._palette.__t__[_i].__underlying__().value : stdgo.image.color.Color.RGBA)).__copy__();
					_d.value._palette.__t__[_i] = new stdgo.image.color.Color.NRGBA(_rgba.r, _rgba.g, _rgba.b, _d.value._tmp[_i]).__copy__();
				});
			};
		} else {
			return new FormatError("tRNS, color type mismatch");
		};
		return _d.value._verifyChecksum();
	}

	public function _parsePLTE(_length:GoUInt32):Error {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _np:GoInt = (((_length / ((3 : GoUInt32))) : GoInt));
		if (_length % ((3 : GoUInt32)) != ((0 : GoUInt32))
			|| _np <= ((0 : GoInt))
			|| _np > ((256 : GoInt))
			|| _np > (((1 : GoInt)) << ((_d.value._depth : GoUInt)))) {
			return new FormatError("bad PLTE length");
		};
		var __tmp__ = stdgo.io.Io.readFull(_d.value._r, _d.value._tmp.__slice__(0, ((3 : GoInt)) * _np)),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return _err;
		};
		_d.value._crc.write(_d.value._tmp.__slice__(0, _n));
		if (_d.value._cb == _cbP1 || _d.value._cb == _cbP2 || _d.value._cb == _cbP4 || _d.value._cb == _cbP8) {
			_d.value._palette = new stdgo.image.color.Color.Palette(new Slice<stdgo.image.color.Color.Color>(...[
				for (i in 0...((((256 : GoInt)) : GoInt)).toBasic()) ((null : stdgo.image.color.Color.Color))
			])).__copy__();
			{
				var _i:GoInt = ((0 : GoInt));
				Go.cfor(_i < _np, _i++, {
					_d.value._palette.__t__[_i] = new stdgo.image.color.Color.RGBA(_d.value._tmp[((3 : GoInt)) * _i + ((0 : GoInt))],
						_d.value._tmp[((3 : GoInt)) * _i + ((1 : GoInt))], _d.value._tmp[((3 : GoInt)) * _i + ((2 : GoInt))], ((255 : GoUInt8))).__copy__();
				});
			};
			{
				var _i:GoInt = _np;
				Go.cfor(_i < ((256 : GoInt)), _i++, {
					_d.value._palette.__t__[_i] = new stdgo.image.color.Color.RGBA(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
						((255 : GoUInt8))).__copy__();
				});
			};
			_d.value._palette = _d.value._palette.__slice__(0, _np).__copy__();
		} else if (_d.value._cb == _cbTC8 || _d.value._cb == _cbTCA8 || _d.value._cb == _cbTC16 || _d.value._cb == _cbTCA16) {} else {
			return new FormatError("PLTE, color type mismatch");
		};
		return _d.value._verifyChecksum();
	}

	public function _parseIHDR(_length:GoUInt32):Error {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_length != ((13 : GoUInt32))) {
			return new FormatError("bad IHDR length");
		};
		{
			var __tmp__ = stdgo.io.Io.readFull(_d.value._r, _d.value._tmp.__slice__(0, ((13 : GoInt)))),
				_:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return _err;
			};
		};
		_d.value._crc.write(_d.value._tmp.__slice__(0, ((13 : GoInt))));
		if (_d.value._tmp[((10 : GoInt))] != ((0 : GoUInt8))) {
			return new UnsupportedError("compression method");
		};
		if (_d.value._tmp[((11 : GoInt))] != ((0 : GoUInt8))) {
			return new UnsupportedError("filter method");
		};
		if (_d.value._tmp[((12 : GoInt))] != _itNone && _d.value._tmp[((12 : GoInt))] != _itAdam7) {
			return new FormatError("invalid interlace method");
		};
		_d.value._interlace = ((_d.value._tmp[((12 : GoInt))] : GoInt));
		var _w:GoInt32 = ((stdgo.encoding.binary.Binary.bigEndian.uint32(_d.value._tmp.__slice__(((0 : GoInt)), ((4 : GoInt)))) : GoInt32));
		var _h:GoInt32 = ((stdgo.encoding.binary.Binary.bigEndian.uint32(_d.value._tmp.__slice__(((4 : GoInt)), ((8 : GoInt)))) : GoInt32));
		if (_w <= ((0 : GoInt32)) || _h <= ((0 : GoInt32))) {
			return new FormatError("non-positive dimension");
		};
		var _nPixels64:GoInt64 = ((_w : GoInt64)) * ((_h : GoInt64));
		var _nPixels:GoInt = ((_nPixels64 : GoInt));
		if (_nPixels64 != ((_nPixels : GoInt64))) {
			return new UnsupportedError("dimension overflow");
		};
		if (_nPixels != (_nPixels * ((8 : GoInt))) / ((8 : GoInt))) {
			return new UnsupportedError("dimension overflow");
		};
		_d.value._cb = _cbInvalid;
		_d.value._depth = ((_d.value._tmp[((8 : GoInt))] : GoInt));
		if (_d.value._depth == ((1 : GoInt))) {
			if (_d.value._tmp[((9 : GoInt))] == _ctGrayscale) {
				_d.value._cb = _cbG1;
			} else if (_d.value._tmp[((9 : GoInt))] == _ctPaletted) {
				_d.value._cb = _cbP1;
			};
		} else if (_d.value._depth == ((2 : GoInt))) {
			if (_d.value._tmp[((9 : GoInt))] == _ctGrayscale) {
				_d.value._cb = _cbG2;
			} else if (_d.value._tmp[((9 : GoInt))] == _ctPaletted) {
				_d.value._cb = _cbP2;
			};
		} else if (_d.value._depth == ((4 : GoInt))) {
			if (_d.value._tmp[((9 : GoInt))] == _ctGrayscale) {
				_d.value._cb = _cbG4;
			} else if (_d.value._tmp[((9 : GoInt))] == _ctPaletted) {
				_d.value._cb = _cbP4;
			};
		} else if (_d.value._depth == ((8 : GoInt))) {
			if (_d.value._tmp[((9 : GoInt))] == _ctGrayscale) {
				_d.value._cb = _cbG8;
			} else if (_d.value._tmp[((9 : GoInt))] == _ctTrueColor) {
				_d.value._cb = _cbTC8;
			} else if (_d.value._tmp[((9 : GoInt))] == _ctPaletted) {
				_d.value._cb = _cbP8;
			} else if (_d.value._tmp[((9 : GoInt))] == _ctGrayscaleAlpha) {
				_d.value._cb = _cbGA8;
			} else if (_d.value._tmp[((9 : GoInt))] == _ctTrueColorAlpha) {
				_d.value._cb = _cbTCA8;
			};
		} else if (_d.value._depth == ((16 : GoInt))) {
			if (_d.value._tmp[((9 : GoInt))] == _ctGrayscale) {
				_d.value._cb = _cbG16;
			} else if (_d.value._tmp[((9 : GoInt))] == _ctTrueColor) {
				_d.value._cb = _cbTC16;
			} else if (_d.value._tmp[((9 : GoInt))] == _ctGrayscaleAlpha) {
				_d.value._cb = _cbGA16;
			} else if (_d.value._tmp[((9 : GoInt))] == _ctTrueColorAlpha) {
				_d.value._cb = _cbTCA16;
			};
		};
		if (_d.value._cb == _cbInvalid) {
			return new UnsupportedError(stdgo.fmt.Fmt.sprintf("bit depth %d, color type %d", Go.toInterface(_d.value._tmp[((8 : GoInt))]),
				Go.toInterface(_d.value._tmp[((9 : GoInt))])));
		};
		{
			final __tmp__0 = ((_w : GoInt));
			final __tmp__1 = ((_h : GoInt));
			_d.value._width = __tmp__0;
			_d.value._height = __tmp__1;
		};
		return _d.value._verifyChecksum();
	}

	public var _r:stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
	public var _img:stdgo.image.Image.Image = ((null : stdgo.image.Image.Image));
	public var _crc:stdgo.hash.Hash.Hash32 = ((null : stdgo.hash.Hash.Hash32));
	public var _width:GoInt = ((0 : GoInt));
	public var _height:GoInt = ((0 : GoInt));
	public var _depth:GoInt = ((0 : GoInt));
	public var _palette:stdgo.image.color.Color.Palette = new stdgo.image.color.Color.Palette();
	public var _cb:GoInt = ((0 : GoInt));
	public var _stage:GoInt = ((0 : GoInt));
	public var _idatLength:GoUInt32 = ((0 : GoUInt32));
	public var _tmp:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...768) ((0 : GoUInt8))]);
	public var _interlace:GoInt = ((0 : GoInt));
	public var _useTransparent:Bool = false;
	public var _transparent:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...6) ((0 : GoUInt8))]);

	public function new(?_r:stdgo.io.Io.Reader, ?_img:stdgo.image.Image.Image, ?_crc:stdgo.hash.Hash.Hash32, ?_width:GoInt, ?_height:GoInt, ?_depth:GoInt,
			?_palette:stdgo.image.color.Color.Palette, ?_cb:GoInt, ?_stage:GoInt, ?_idatLength:GoUInt32, ?_tmp:GoArray<GoUInt8>, ?_interlace:GoInt,
			?_useTransparent:Bool, ?_transparent:GoArray<GoUInt8>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_r) + " " + Go.string(_img) + " " + Go.string(_crc) + " " + Go.string(_width) + " " + Go.string(_height) + " "
			+ Go.string(_depth) + " " + Go.string(_palette) + " " + Go.string(_cb) + " " + Go.string(_stage) + " " + Go.string(_idatLength) + " "
			+ Go.string(_tmp) + " " + Go.string(_interlace) + " " + Go.string(_useTransparent) + " " + Go.string(_transparent) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_decoder(_r, _img, _crc, _width, _height, _depth, _palette, _cb, _stage, _idatLength, _tmp, _interlace, _useTransparent, _transparent);
	}

	public function __set__(__tmp__) {
		this._r = __tmp__._r;
		this._img = __tmp__._img;
		this._crc = __tmp__._crc;
		this._width = __tmp__._width;
		this._height = __tmp__._height;
		this._depth = __tmp__._depth;
		this._palette = __tmp__._palette;
		this._cb = __tmp__._cb;
		this._stage = __tmp__._stage;
		this._idatLength = __tmp__._idatLength;
		this._tmp = __tmp__._tmp;
		this._interlace = __tmp__._interlace;
		this._useTransparent = __tmp__._useTransparent;
		this._transparent = __tmp__._transparent;
		return this;
	}
}

@:named class FormatError {
	public function error():GoString {
		var _e = this.__copy__();
		return (("png: invalid format: " : GoString)) + _e.__t__;
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
		return new FormatError(__t__);
}

@:named class UnsupportedError {
	public function error():GoString {
		var _e = this.__copy__();
		return (("png: unsupported feature: " : GoString)) + _e.__t__;
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
		return new UnsupportedError(__t__);
}

@:structInit class Encoder {
	public function encode(_w:stdgo.io.Io.Writer, _m:stdgo.image.Image.Image):Error {
		var _enc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		var _mw:GoInt64 = ((_m.bounds().dx() : GoInt64)),
			_mh:GoInt64 = ((_m.bounds().dy() : GoInt64));
		try {
			if (_mw <= ((0 : GoInt64))
				|| _mh <= ((0 : GoInt64))
				|| _mw >= (((1 : GoUnTypedInt)) << ((32 : GoUnTypedInt)))
				|| _mh >= (((1 : GoUnTypedInt)) << ((32 : GoUnTypedInt)))) {
				return new FormatError(((("invalid image size: " : GoString)) + stdgo.strconv.Strconv.formatInt(_mw, ((10 : GoInt))) + (("x" : GoString))
					+ stdgo.strconv.Strconv.formatInt(_mh, ((10 : GoInt)))));
			};
			var _e:Pointer<T_encoder> = new Pointer<T_encoder>().nil();
			if (_enc.value.bufferPool != null) {
				var _buffer:Pointer<EncoderBuffer> = _enc.value.bufferPool.get();
				_e = {
					var p = new Pointer<T_encoder>(() -> new T_encoder(_buffer.value._enc, _buffer.value._w, _buffer.value._m, _buffer.value._cb,
						_buffer.value._err, _buffer.value._header, _buffer.value._footer, _buffer.value._tmp, _buffer.value._cr, _buffer.value._pr,
						_buffer.value._zw, _buffer.value._zwLevel, _buffer.value._bw),
						null, false, _buffer);
					p.convert = v -> new EncoderBuffer(v._enc, v._w, v._m, v._cb, v._err, v._header, v._footer, v._tmp, v._cr, v._pr, v._zw, v._zwLevel,
						v._bw);
					p;
				};
			};
			if (_e == null || _e.isNil()) {
				_e = Go.pointer(new T_encoder());
			};
			if (_enc.value.bufferPool != null) {
				{
					var a0 = {
						var p = new Pointer<EncoderBuffer>(() -> new EncoderBuffer(_e.value._enc, _e.value._w, _e.value._m, _e.value._cb, _e.value._err,
							_e.value._header, _e.value._footer, _e.value._tmp, _e.value._cr, _e.value._pr, _e.value._zw, _e.value._zwLevel, _e.value._bw),
							null, false, _e);
						p.convert = v -> new T_encoder(v._enc, v._w, v._m, v._cb, v._err, v._header, v._footer, v._tmp, v._cr, v._pr, v._zw, v._zwLevel,
							v._bw);
						p;
					};
					deferstack.unshift(() -> _enc.value.bufferPool.put(a0));
				};
			};
			_e.value._enc = _enc;
			_e.value._w = _w;
			_e.value._m = _m;
			var _pal:stdgo.image.color.Color.Palette = new stdgo.image.color.Color.Palette();
			{
				var __tmp__ = try {
					{value: ((_m.__underlying__().value : stdgo.image.Image.PalettedImage)), ok: true};
				} catch (_) {
					{value: ((null : stdgo.image.Image.PalettedImage)), ok: false};
				}, _ = __tmp__.value, _ok = __tmp__.ok;
				if (_ok) {
					{
						var __tmp__ = try {
							{value: new stdgo.image.color.Color.Palette(_m.colorModel()), ok: true};
						} catch (_) {
							{value: new stdgo.image.color.Color.Palette(), ok: false};
						};
						_pal = __tmp__.value.__copy__();
					};
				};
			};
			if (_pal.__t__ != null && !_pal.__t__.isNil()) {
				if (_pal.__t__.length <= ((2 : GoInt))) {
					_e.value._cb = _cbP1;
				} else if (_pal.__t__.length <= ((4 : GoInt))) {
					_e.value._cb = _cbP2;
				} else if (_pal.__t__.length <= ((16 : GoInt))) {
					_e.value._cb = _cbP4;
				} else {
					_e.value._cb = _cbP8;
				};
			} else {
				if (Go.toInterface(_m.colorModel()) == Go.toInterface(stdgo.image.color.Color.grayModel)) {
					_e.value._cb = _cbG8;
				} else if (Go.toInterface(_m.colorModel()) == Go.toInterface(stdgo.image.color.Color.gray16Model)) {
					_e.value._cb = _cbG16;
				} else if (Go.toInterface(_m.colorModel()) == Go.toInterface(stdgo.image.color.Color.rgbamodel)
					|| Go.toInterface(_m.colorModel()) == Go.toInterface(stdgo.image.color.Color.nrgbamodel)
					|| Go.toInterface(_m.colorModel()) == Go.toInterface(stdgo.image.color.Color.alphaModel)) {
					if (_opaque(_m)) {
						_e.value._cb = _cbTC8;
					} else {
						_e.value._cb = _cbTCA8;
					};
				} else {
					if (_opaque(_m)) {
						_e.value._cb = _cbTC16;
					} else {
						_e.value._cb = _cbTCA16;
					};
				};
			};
			{
				var __tmp__ = stdgo.io.Io.writeString(_w, _pngHeader);
				_e.value._err = __tmp__._1;
			};
			_e.value._writeIHDR();
			if (_pal.__t__ != null && !_pal.__t__.isNil()) {
				_e.value._writePLTEAndTRNS(_pal.__copy__());
			};
			_e.value._writeIDATs();
			_e.value._writeIEND();
			{
				for (defer in deferstack) {
					defer();
				};
				return _e.value._err;
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
				return ((null : stdgo.Error));
			};
		};
	}

	public var compressionLevel:CompressionLevel = new CompressionLevel();
	public var bufferPool:EncoderBufferPool = ((null : EncoderBufferPool));

	public function new(?compressionLevel:CompressionLevel, ?bufferPool:EncoderBufferPool)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(compressionLevel) + " " + Go.string(bufferPool) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Encoder(compressionLevel, bufferPool);
	}

	public function __set__(__tmp__) {
		this.compressionLevel = __tmp__.compressionLevel;
		this.bufferPool = __tmp__.bufferPool;
		return this;
	}
}

@:named @:structInit class EncoderBuffer extends T_encoder {
	public function new(?_enc, ?_w, ?_m, ?_cb, ?_err, ?_header, ?_footer, ?_tmp, ?_cr, ?_pr, ?_zw, ?_zwLevel, ?_bw)
		super(_enc, _w, _m, _cb, _err, _header, _footer, _tmp, _cr, _pr, _zw, _zwLevel, _bw);

	public override function __copy__()
		return new EncoderBuffer(_enc, _w, _m, _cb, _err, _header, _footer, _tmp, _cr, _pr, _zw, _zwLevel, _bw);
}

@:structInit class T_encoder {
	public function _writeIEND():Void {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_e.value._writeChunk(new Slice<GoUInt8>().nil(), "IEND");
	}

	public function _writeIDATs():Void {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_e.value._err != null) {
			return;
		};
		if (_e.value._bw == null || _e.value._bw.isNil()) {
			_e.value._bw = bufio.Bufio.newWriterSize(_e.value, (((1 : GoUnTypedInt)) << ((15 : GoUnTypedInt))));
		} else {
			_e.value._bw.value.reset(_e.value);
		};
		_e.value._err = _e.value._writeImage(_e.value._bw.value, _e.value._m, _e.value._cb, _levelToZlib(_e.value._enc.value.compressionLevel));
		if (_e.value._err != null) {
			return;
		};
		_e.value._err = _e.value._bw.value.flush();
	}

	public function _writeImage(_w:stdgo.io.Io.Writer, _m:stdgo.image.Image.Image, _cb:GoInt, _level:GoInt):Error {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		if (_e.value._zw == null || _e.value._zw.isNil() || _e.value._zwLevel != _level) {
			var __tmp__ = stdgo.compress.zlib.Zlib.newWriterLevel(_w, _level),
				_zw:Pointer<stdgo.compress.zlib.Zlib.Writer> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return _err;
			};
			_e.value._zw = _zw;
			_e.value._zwLevel = _level;
		} else {
			_e.value._zw.value.reset(_w);
		};
		try {
			deferstack.unshift(() -> _e.value._zw.value.close());
			var _bitsPerPixel:GoInt = ((0 : GoInt));
			if (_cb == _cbG8) {
				_bitsPerPixel = ((8 : GoInt));
			} else if (_cb == _cbTC8) {
				_bitsPerPixel = ((24 : GoInt));
			} else if (_cb == _cbP8) {
				_bitsPerPixel = ((8 : GoInt));
			} else if (_cb == _cbP4) {
				_bitsPerPixel = ((4 : GoInt));
			} else if (_cb == _cbP2) {
				_bitsPerPixel = ((2 : GoInt));
			} else if (_cb == _cbP1) {
				_bitsPerPixel = ((1 : GoInt));
			} else if (_cb == _cbTCA8) {
				_bitsPerPixel = ((32 : GoInt));
			} else if (_cb == _cbTC16) {
				_bitsPerPixel = ((48 : GoInt));
			} else if (_cb == _cbTCA16) {
				_bitsPerPixel = ((64 : GoInt));
			} else if (_cb == _cbG16) {
				_bitsPerPixel = ((16 : GoInt));
			};
			var _b:stdgo.image.Image.Rectangle = _m.bounds().__copy__();
			var _sz:GoInt = ((1 : GoInt)) + (_bitsPerPixel * _b.dx() + ((7 : GoInt))) / ((8 : GoInt));
			{
				var _i;
				for (_obj in _e.value._cr.keyValueIterator()) {
					_i = _obj.key;
					if (_e.value._cr[_i].cap() < _sz) {
						_e.value._cr[_i] = new Slice<GoUInt8>(...[for (i in 0...((_sz : GoInt)).toBasic()) ((0 : GoUInt8))]);
					} else {
						_e.value._cr[_i] = _e.value._cr[_i].__slice__(0, _sz);
					};
					_e.value._cr[_i][((0 : GoInt))] = ((_i : GoUInt8));
				};
			};
			var _cr:GoArray<Slice<GoUInt8>> = _e.value._cr.copy();
			if (_e.value._pr.cap() < _sz) {
				_e.value._pr = new Slice<GoUInt8>(...[for (i in 0...((_sz : GoInt)).toBasic()) ((0 : GoUInt8))]);
			} else {
				_e.value._pr = _e.value._pr.__slice__(0, _sz);
				_zeroMemory(_e.value._pr);
			};
			var _pr:Slice<GoUInt8> = _e.value._pr;
			var __tmp__ = try {
				{value: ((_m.__underlying__().value : stdgo.image.Image.Gray)), ok: true};
			} catch (_) {
				{value: new Pointer<stdgo.image.Image.Gray>().nil(), ok: false};
			}, _gray = __tmp__.value, _ = __tmp__.ok;
			var __tmp__ = try {
				{value: ((_m.__underlying__().value : stdgo.image.Image.RGBA)), ok: true};
			} catch (_) {
				{value: new Pointer<stdgo.image.Image.RGBA>().nil(), ok: false};
			}, _rgba = __tmp__.value, _ = __tmp__.ok;
			var __tmp__ = try {
				{value: ((_m.__underlying__().value : stdgo.image.Image.Paletted)), ok: true};
			} catch (_) {
				{value: new Pointer<stdgo.image.Image.Paletted>().nil(), ok: false};
			}, _paletted = __tmp__.value, _ = __tmp__.ok;
			var __tmp__ = try {
				{value: ((_m.__underlying__().value : stdgo.image.Image.NRGBA)), ok: true};
			} catch (_) {
				{value: new Pointer<stdgo.image.Image.NRGBA>().nil(), ok: false};
			}, _nrgba = __tmp__.value, _ = __tmp__.ok;
			{
				var _y:GoInt = _b.min.y;
				Go.cfor(_y < _b.max.y, _y++, {
					var _i:GoInt = ((1 : GoInt));
					if (_cb == _cbG8) {
						if (_gray != null && !_gray.isNil()) {
							var _offset:GoInt = (_y - _b.min.y) * _gray.value.stride;
							Go.copy(_cr[((0 : GoInt))].__slice__(((1 : GoInt))), _gray.value.pix.__slice__(_offset, _offset + _b.dx()));
						} else {
							{
								var _x:GoInt = _b.min.x;
								Go.cfor(_x < _b.max.x, _x++, {
									var _c:stdgo.image.color.Color.Gray = ((stdgo.image.color.Color.grayModel.convert(_m.at(_x, _y))
										.__underlying__()
										.value : stdgo.image.color.Color.Gray)).__copy__();
									_cr[((0 : GoInt))][_i] = _c.y;
									_i++;
								});
							};
						};
					} else if (_cb == _cbTC8) {
						var _cr0:Slice<GoUInt8> = _cr[((0 : GoInt))];
						var _stride:GoInt = ((0 : GoInt)),
							_pix:Slice<GoUInt8> = ((new Slice<GoUInt8>().nil() : Slice<GoByte>));
						if (_rgba != null && !_rgba.isNil()) {
							{
								final __tmp__0 = _rgba.value.stride;
								final __tmp__1 = _rgba.value.pix;
								_stride = __tmp__0;
								_pix = __tmp__1;
							};
						} else if (_nrgba != null && !_nrgba.isNil()) {
							{
								final __tmp__0 = _nrgba.value.stride;
								final __tmp__1 = _nrgba.value.pix;
								_stride = __tmp__0;
								_pix = __tmp__1;
							};
						};
						if (_stride != ((0 : GoInt))) {
							var _j0:GoInt = (_y - _b.min.y) * _stride;
							var _j1:GoInt = _j0 + _b.dx() * ((4 : GoInt));
							{
								var _j:GoInt = _j0;
								Go.cfor(_j < _j1, _j = _j + (((4 : GoInt))), {
									_cr0[_i + ((0 : GoInt))] = _pix[_j + ((0 : GoInt))];
									_cr0[_i + ((1 : GoInt))] = _pix[_j + ((1 : GoInt))];
									_cr0[_i + ((2 : GoInt))] = _pix[_j + ((2 : GoInt))];
									_i = _i + (((3 : GoInt)));
								});
							};
						} else {
							{
								var _x:GoInt = _b.min.x;
								Go.cfor(_x < _b.max.x, _x++, {
									var __tmp__ = _m.at(_x, _y).rgba(),
										_r:GoUInt32 = __tmp__._0,
										_g:GoUInt32 = __tmp__._1,
										_b:GoUInt32 = __tmp__._2,
										_:GoUInt32 = __tmp__._3;
									_cr0[_i + ((0 : GoInt))] = (((_r >> ((8 : GoUnTypedInt))) : GoUInt8));
									_cr0[_i + ((1 : GoInt))] = (((_g >> ((8 : GoUnTypedInt))) : GoUInt8));
									_cr0[_i + ((2 : GoInt))] = (((_b >> ((8 : GoUnTypedInt))) : GoUInt8));
									_i = _i + (((3 : GoInt)));
								});
							};
						};
					} else if (_cb == _cbP8) {
						if (_paletted != null && !_paletted.isNil()) {
							var _offset:GoInt = (_y - _b.min.y) * _paletted.value.stride;
							Go.copy(_cr[((0 : GoInt))].__slice__(((1 : GoInt))), _paletted.value.pix.__slice__(_offset, _offset + _b.dx()));
						} else {
							var _pi:stdgo.image.Image.PalettedImage = ((_m.__underlying__().value : stdgo.image.Image.PalettedImage));
							{
								var _x:GoInt = _b.min.x;
								Go.cfor(_x < _b.max.x, _x++, {
									_cr[((0 : GoInt))][_i] = _pi.colorIndexAt(_x, _y);
									_i = _i + (((1 : GoInt)));
								});
							};
						};
					} else if (_cb == _cbP4 || _cb == _cbP2 || _cb == _cbP1) {
						var _pi:stdgo.image.Image.PalettedImage = ((_m.__underlying__().value : stdgo.image.Image.PalettedImage));
						var _a:GoUInt8 = ((0 : GoUInt8));
						var _c:GoInt = ((0 : GoInt));
						var _pixelsPerByte:GoInt = ((8 : GoInt)) / _bitsPerPixel;
						{
							var _x:GoInt = _b.min.x;
							Go.cfor(_x < _b.max.x, _x++, {
								_a = (_a << ((_bitsPerPixel : GoUInt))) | _pi.colorIndexAt(_x, _y);
								_c++;
								if (_c == _pixelsPerByte) {
									_cr[((0 : GoInt))][_i] = _a;
									_i = _i + (((1 : GoInt)));
									_a = ((0 : GoUInt8));
									_c = ((0 : GoInt));
								};
							});
						};
						if (_c != ((0 : GoInt))) {
							while (_c != _pixelsPerByte) {
								_a = (_a << ((_bitsPerPixel : GoUInt)));
								_c++;
							};
							_cr[((0 : GoInt))][_i] = _a;
						};
					} else if (_cb == _cbTCA8) {
						if (_nrgba != null && !_nrgba.isNil()) {
							var _offset:GoInt = (_y - _b.min.y) * _nrgba.value.stride;
							Go.copy(_cr[((0 : GoInt))].__slice__(((1 : GoInt))), _nrgba.value.pix.__slice__(_offset, _offset + _b.dx() * ((4 : GoInt))));
						} else {
							{
								var _x:GoInt = _b.min.x;
								Go.cfor(_x < _b.max.x, _x++, {
									var _c:stdgo.image.color.Color.NRGBA = ((stdgo.image.color.Color.nrgbamodel.convert(_m.at(_x, _y))
										.__underlying__()
										.value : stdgo.image.color.Color.NRGBA)).__copy__();
									_cr[((0 : GoInt))][_i + ((0 : GoInt))] = _c.r;
									_cr[((0 : GoInt))][_i + ((1 : GoInt))] = _c.g;
									_cr[((0 : GoInt))][_i + ((2 : GoInt))] = _c.b;
									_cr[((0 : GoInt))][_i + ((3 : GoInt))] = _c.a;
									_i = _i + (((4 : GoInt)));
								});
							};
						};
					} else if (_cb == _cbG16) {
						{
							var _x:GoInt = _b.min.x;
							Go.cfor(_x < _b.max.x, _x++, {
								var _c:stdgo.image.color.Color.Gray16 = ((stdgo.image.color.Color.gray16Model.convert(_m.at(_x, _y))
									.__underlying__()
									.value : stdgo.image.color.Color.Gray16)).__copy__();
								_cr[((0 : GoInt))][_i + ((0 : GoInt))] = (((_c.y >> ((8 : GoUnTypedInt))) : GoUInt8));
								_cr[((0 : GoInt))][_i + ((1 : GoInt))] = ((_c.y : GoUInt8));
								_i = _i + (((2 : GoInt)));
							});
						};
					} else if (_cb == _cbTC16) {
						{
							var _x:GoInt = _b.min.x;
							Go.cfor(_x < _b.max.x, _x++, {
								var __tmp__ = _m.at(_x, _y).rgba(),
									_r:GoUInt32 = __tmp__._0,
									_g:GoUInt32 = __tmp__._1,
									_b:GoUInt32 = __tmp__._2,
									_:GoUInt32 = __tmp__._3;
								_cr[((0 : GoInt))][_i + ((0 : GoInt))] = (((_r >> ((8 : GoUnTypedInt))) : GoUInt8));
								_cr[((0 : GoInt))][_i + ((1 : GoInt))] = ((_r : GoUInt8));
								_cr[((0 : GoInt))][_i + ((2 : GoInt))] = (((_g >> ((8 : GoUnTypedInt))) : GoUInt8));
								_cr[((0 : GoInt))][_i + ((3 : GoInt))] = ((_g : GoUInt8));
								_cr[((0 : GoInt))][_i + ((4 : GoInt))] = (((_b >> ((8 : GoUnTypedInt))) : GoUInt8));
								_cr[((0 : GoInt))][_i + ((5 : GoInt))] = ((_b : GoUInt8));
								_i = _i + (((6 : GoInt)));
							});
						};
					} else if (_cb == _cbTCA16) {
						{
							var _x:GoInt = _b.min.x;
							Go.cfor(_x < _b.max.x, _x++, {
								var _c:stdgo.image.color.Color.NRGBA64 = ((stdgo.image.color.Color.nrgba64model.convert(_m.at(_x, _y))
									.__underlying__()
									.value : stdgo.image.color.Color.NRGBA64)).__copy__();
								_cr[((0 : GoInt))][_i + ((0 : GoInt))] = (((_c.r >> ((8 : GoUnTypedInt))) : GoUInt8));
								_cr[((0 : GoInt))][_i + ((1 : GoInt))] = ((_c.r : GoUInt8));
								_cr[((0 : GoInt))][_i + ((2 : GoInt))] = (((_c.g >> ((8 : GoUnTypedInt))) : GoUInt8));
								_cr[((0 : GoInt))][_i + ((3 : GoInt))] = ((_c.g : GoUInt8));
								_cr[((0 : GoInt))][_i + ((4 : GoInt))] = (((_c.b >> ((8 : GoUnTypedInt))) : GoUInt8));
								_cr[((0 : GoInt))][_i + ((5 : GoInt))] = ((_c.b : GoUInt8));
								_cr[((0 : GoInt))][_i + ((6 : GoInt))] = (((_c.a >> ((8 : GoUnTypedInt))) : GoUInt8));
								_cr[((0 : GoInt))][_i + ((7 : GoInt))] = ((_c.a : GoUInt8));
								_i = _i + (((8 : GoInt)));
							});
						};
					};
					var _f:GoInt = _ftNone;
					if (_level != stdgo.compress.zlib.Zlib.noCompression && _cb != _cbP8 && _cb != _cbP4 && _cb != _cbP2 && _cb != _cbP1) {
						var _bpp:GoInt = _bitsPerPixel / ((8 : GoInt));
						_f = _filter(Go.pointer(_cr), _pr, _bpp);
					};
					{
						var __tmp__ = _e.value._zw.value.write(_cr[_f]),
							_:GoInt = __tmp__._0,
							_err:stdgo.Error = __tmp__._1;
						if (_err != null) {
							{
								for (defer in deferstack) {
									defer();
								};
								return _err;
							};
						};
					};
					{
						final __tmp__0 = _cr[((0 : GoInt))];
						final __tmp__1 = _pr;
						_pr = __tmp__0;
						_cr[((0 : GoInt))] = __tmp__1;
					};
				});
			};
			{
				for (defer in deferstack) {
					defer();
				};
				return ((null : stdgo.Error));
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
				return ((null : stdgo.Error));
			};
		};
	}

	public function write(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_e.value._writeChunk(_b, "IDAT");
		if (_e.value._err != null) {
			return {_0: ((0 : GoInt)), _1: _e.value._err};
		};
		return {_0: _b.length, _1: ((null : stdgo.Error))};
	}

	public function _writePLTEAndTRNS(_p:stdgo.image.color.Color.Palette):Void {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_p.__t__.length < ((1 : GoInt)) || _p.__t__.length > ((256 : GoInt))) {
			_e.value._err = new FormatError(((("bad palette length: " : GoString)) + stdgo.strconv.Strconv.itoa(_p.__t__.length)));
			return;
		};
		var _last:GoInt = -((1 : GoUnTypedInt));
		{
			var _i;
			var _c;
			for (_obj in _p.__t__.keyValueIterator()) {
				_i = _obj.key;
				_c = _obj.value;
				var _c1:stdgo.image.color.Color.NRGBA = ((stdgo.image.color.Color.nrgbamodel.convert(_c)
					.__underlying__()
					.value : stdgo.image.color.Color.NRGBA)).__copy__();
				_e.value._tmp[((3 : GoInt)) * _i + ((0 : GoInt))] = _c1.r;
				_e.value._tmp[((3 : GoInt)) * _i + ((1 : GoInt))] = _c1.g;
				_e.value._tmp[((3 : GoInt)) * _i + ((2 : GoInt))] = _c1.b;
				if (_c1.a != ((255 : GoUInt8))) {
					_last = _i;
				};
				_e.value._tmp[((3 : GoUnTypedInt)) * ((256 : GoUnTypedInt)) + _i] = _c1.a;
			};
		};
		_e.value._writeChunk(_e.value._tmp.__slice__(0, ((3 : GoInt)) * _p.__t__.length), "PLTE");
		if (_last != -((1 : GoUnTypedInt))) {
			_e.value._writeChunk(_e.value._tmp.__slice__(((3 : GoUnTypedInt)) * ((256 : GoUnTypedInt)),
				((3 : GoUnTypedInt)) * ((256 : GoUnTypedInt)) + ((1 : GoUnTypedInt)) + _last),
				"tRNS");
		};
	}

	public function _writeIHDR():Void {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _b:stdgo.image.Image.Rectangle = _e.value._m.bounds().__copy__();
		stdgo.encoding.binary.Binary.bigEndian.putUint32(_e.value._tmp.__slice__(((0 : GoInt)), ((4 : GoInt))), ((_b.dx() : GoUInt32)));
		stdgo.encoding.binary.Binary.bigEndian.putUint32(_e.value._tmp.__slice__(((4 : GoInt)), ((8 : GoInt))), ((_b.dy() : GoUInt32)));
		if (_e.value._cb == _cbG8) {
			_e.value._tmp[((8 : GoInt))] = ((8 : GoUInt8));
			_e.value._tmp[((9 : GoInt))] = _ctGrayscale;
		} else if (_e.value._cb == _cbTC8) {
			_e.value._tmp[((8 : GoInt))] = ((8 : GoUInt8));
			_e.value._tmp[((9 : GoInt))] = _ctTrueColor;
		} else if (_e.value._cb == _cbP8) {
			_e.value._tmp[((8 : GoInt))] = ((8 : GoUInt8));
			_e.value._tmp[((9 : GoInt))] = _ctPaletted;
		} else if (_e.value._cb == _cbP4) {
			_e.value._tmp[((8 : GoInt))] = ((4 : GoUInt8));
			_e.value._tmp[((9 : GoInt))] = _ctPaletted;
		} else if (_e.value._cb == _cbP2) {
			_e.value._tmp[((8 : GoInt))] = ((2 : GoUInt8));
			_e.value._tmp[((9 : GoInt))] = _ctPaletted;
		} else if (_e.value._cb == _cbP1) {
			_e.value._tmp[((8 : GoInt))] = ((1 : GoUInt8));
			_e.value._tmp[((9 : GoInt))] = _ctPaletted;
		} else if (_e.value._cb == _cbTCA8) {
			_e.value._tmp[((8 : GoInt))] = ((8 : GoUInt8));
			_e.value._tmp[((9 : GoInt))] = _ctTrueColorAlpha;
		} else if (_e.value._cb == _cbG16) {
			_e.value._tmp[((8 : GoInt))] = ((16 : GoUInt8));
			_e.value._tmp[((9 : GoInt))] = _ctGrayscale;
		} else if (_e.value._cb == _cbTC16) {
			_e.value._tmp[((8 : GoInt))] = ((16 : GoUInt8));
			_e.value._tmp[((9 : GoInt))] = _ctTrueColor;
		} else if (_e.value._cb == _cbTCA16) {
			_e.value._tmp[((8 : GoInt))] = ((16 : GoUInt8));
			_e.value._tmp[((9 : GoInt))] = _ctTrueColorAlpha;
		};
		_e.value._tmp[((10 : GoInt))] = ((0 : GoUInt8));
		_e.value._tmp[((11 : GoInt))] = ((0 : GoUInt8));
		_e.value._tmp[((12 : GoInt))] = ((0 : GoUInt8));
		_e.value._writeChunk(_e.value._tmp.__slice__(0, ((13 : GoInt))), "IHDR");
	}

	public function _writeChunk(_b:Slice<GoByte>, _name:GoString):Void {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_e.value._err != null) {
			return;
		};
		var _n:GoUInt32 = ((_b.length : GoUInt32));
		if (((_n : GoInt)) != _b.length) {
			_e.value._err = new UnsupportedError((_name + ((" chunk is too large: " : GoString)) + stdgo.strconv.Strconv.itoa(_b.length)));
			return;
		};
		stdgo.encoding.binary.Binary.bigEndian.putUint32(_e.value._header.__slice__(0, ((4 : GoInt))), _n);
		_e.value._header[((4 : GoInt))] = _name[((0 : GoInt))];
		_e.value._header[((5 : GoInt))] = _name[((1 : GoInt))];
		_e.value._header[((6 : GoInt))] = _name[((2 : GoInt))];
		_e.value._header[((7 : GoInt))] = _name[((3 : GoInt))];
		var _crc:stdgo.hash.Hash.Hash32 = stdgo.hash.crc32.Crc32.newIEEE();
		_crc.write(_e.value._header.__slice__(((4 : GoInt)), ((8 : GoInt))));
		_crc.write(_b);
		stdgo.encoding.binary.Binary.bigEndian.putUint32(_e.value._footer.__slice__(0, ((4 : GoInt))), _crc.sum32());
		{
			var __tmp__ = _e.value._w.write(_e.value._header.__slice__(0, ((8 : GoInt))));
			_e.value._err = __tmp__._1;
		};
		if (_e.value._err != null) {
			return;
		};
		{
			var __tmp__ = _e.value._w.write(_b);
			_e.value._err = __tmp__._1;
		};
		if (_e.value._err != null) {
			return;
		};
		{
			var __tmp__ = _e.value._w.write(_e.value._footer.__slice__(0, ((4 : GoInt))));
			_e.value._err = __tmp__._1;
		};
	}

	public var _enc:Pointer<Encoder> = new Pointer<Encoder>().nil();
	public var _w:stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
	public var _m:stdgo.image.Image.Image = ((null : stdgo.image.Image.Image));
	public var _cb:GoInt = ((0 : GoInt));
	public var _err:stdgo.Error = ((null : stdgo.Error));
	public var _header:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...8) ((0 : GoUInt8))]);
	public var _footer:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))]);
	public var _tmp:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...1024) ((0 : GoUInt8))]);
	public var _cr:GoArray<Slice<GoUInt8>> = new GoArray<Slice<GoUInt8>>(...[for (i in 0...5) new Slice<GoUInt8>().nil()]);
	public var _pr:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _zw:Pointer<stdgo.compress.zlib.Zlib.Writer> = new Pointer<stdgo.compress.zlib.Zlib.Writer>().nil();
	public var _zwLevel:GoInt = ((0 : GoInt));
	public var _bw:Pointer<bufio.Bufio.Writer> = new Pointer<bufio.Bufio.Writer>().nil();

	public function new(?_enc:Pointer<Encoder>, ?_w:stdgo.io.Io.Writer, ?_m:stdgo.image.Image.Image, ?_cb:GoInt, ?_err:stdgo.Error, ?_header:GoArray<GoUInt8>,
			?_footer:GoArray<GoUInt8>, ?_tmp:GoArray<GoUInt8>, ?_cr:GoArray<Slice<GoUInt8>>, ?_pr:Slice<GoUInt8>,
			?_zw:Pointer<stdgo.compress.zlib.Zlib.Writer>, ?_zwLevel:GoInt, ?_bw:Pointer<bufio.Bufio.Writer>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_enc) + " " + Go.string(_w) + " " + Go.string(_m) + " " + Go.string(_cb) + " " + Go.string(_err) + " " + Go.string(_header)
			+ " " + Go.string(_footer) + " " + Go.string(_tmp) + " " + Go.string(_cr) + " " + Go.string(_pr) + " " + Go.string(_zw) + " "
			+ Go.string(_zwLevel) + " " + Go.string(_bw) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_encoder(_enc, _w, _m, _cb, _err, _header, _footer, _tmp, _cr, _pr, _zw, _zwLevel, _bw);
	}

	public function __set__(__tmp__) {
		this._enc = __tmp__._enc;
		this._w = __tmp__._w;
		this._m = __tmp__._m;
		this._cb = __tmp__._cb;
		this._err = __tmp__._err;
		this._header = __tmp__._header;
		this._footer = __tmp__._footer;
		this._tmp = __tmp__._tmp;
		this._cr = __tmp__._cr;
		this._pr = __tmp__._pr;
		this._zw = __tmp__._zw;
		this._zwLevel = __tmp__._zwLevel;
		this._bw = __tmp__._bw;
		return this;
	}
}

@:named class CompressionLevel {
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
		return new CompressionLevel(__t__);
}

final noCompression:CompressionLevel = new CompressionLevel(-((1 : GoUnTypedInt)));
final _ctPaletted:GoInt64 = ((3 : GoUnTypedInt));
final _dsStart:GoUnTypedInt = (0 : GoUnTypedInt);
final _cbInvalid:GoUnTypedInt = (0 : GoUnTypedInt);
final _cbTC8 = (6 : GoUnTypedInt);
final _ftUp:GoInt64 = ((2 : GoUnTypedInt));
final _cbG1 = (1 : GoUnTypedInt);
final _cbGA16 = (13 : GoUnTypedInt);
var _chunkOrderError:FormatError = new FormatError("chunk out of order");
final _itNone:GoInt64 = ((0 : GoUnTypedInt));
final _ctTrueColor:GoInt64 = ((2 : GoUnTypedInt));
final _cbG2 = (2 : GoUnTypedInt);
final _ctTrueColorAlpha:GoInt64 = ((6 : GoUnTypedInt));
final _cbP1 = (7 : GoUnTypedInt);
final _dsSeenPLTE = (2 : GoUnTypedInt);
final _cbP2 = (8 : GoUnTypedInt);
final _cbG4 = (3 : GoUnTypedInt);
final _ftNone:GoInt64 = ((0 : GoUnTypedInt));
final defaultCompression:CompressionLevel = new CompressionLevel(((0 : GoInt)));
final _pngHeader:GoString = "\\x89PNG\r\n\\x1a\n";
final _cbP4 = (9 : GoUnTypedInt);
final _itAdam7:GoInt64 = ((1 : GoUnTypedInt));
final _ftSub:GoInt64 = ((1 : GoUnTypedInt));
final _dsSeenIEND = (5 : GoUnTypedInt);

var _interlacing:Slice<T_interlaceScan> = new Slice<T_interlaceScan>(new T_interlaceScan(((8 : GoInt)), ((8 : GoInt)), ((0 : GoInt)),
	((0 : GoInt))).__copy__(),
	new T_interlaceScan(((8 : GoInt)), ((8 : GoInt)), ((4 : GoInt)), ((0 : GoInt))).__copy__(),
	new T_interlaceScan(((4 : GoInt)), ((8 : GoInt)), ((0 : GoInt)), ((4 : GoInt))).__copy__(),
	new T_interlaceScan(((4 : GoInt)), ((4 : GoInt)), ((2 : GoInt)), ((0 : GoInt))).__copy__(),
	new T_interlaceScan(((2 : GoInt)), ((4 : GoInt)), ((0 : GoInt)), ((2 : GoInt))).__copy__(),
	new T_interlaceScan(((2 : GoInt)), ((2 : GoInt)), ((1 : GoInt)), ((0 : GoInt))).__copy__(),
	new T_interlaceScan(((1 : GoInt)), ((2 : GoInt)), ((0 : GoInt)), ((1 : GoInt))).__copy__());

final _cbG8 = (4 : GoUnTypedInt);
final _ctGrayscale:GoInt64 = ((0 : GoUnTypedInt));
final _cbP8 = (10 : GoUnTypedInt);
final bestCompression:CompressionLevel = new CompressionLevel(-((3 : GoUnTypedInt)));
final bestSpeed:CompressionLevel = new CompressionLevel(-((2 : GoUnTypedInt)));
final _dsSeentRNS = (3 : GoUnTypedInt);
final _dsSeenIDAT = (4 : GoUnTypedInt);
final _ftAverage:GoInt64 = ((3 : GoUnTypedInt));
final _cbTCA8 = (11 : GoUnTypedInt);
final _cbTC16 = (14 : GoUnTypedInt);
final _ctGrayscaleAlpha:GoInt64 = ((4 : GoUnTypedInt));
final _nFilter:GoInt64 = ((5 : GoUnTypedInt));
final _ftPaeth:GoInt64 = ((4 : GoUnTypedInt));
final _intSize:GoUnTypedInt = (((32 : GoUnTypedInt)) << ((-1 ^ ((((0 : GoUInt)) : GoUInt)) >> ((63 : GoUnTypedInt)))));
final _cbGA8 = (5 : GoUnTypedInt);
final _cbG16 = (12 : GoUnTypedInt);
final _dsSeenIHDR = (1 : GoUnTypedInt);
final _cbTCA16 = (15 : GoUnTypedInt);

function _abs(_x:GoInt):GoInt {
	var _m:GoInt = (_x >> (_intSize - ((1 : GoUnTypedInt))));
	return (_x ^ _m) - _m;
}

/**
	// paeth implements the Paeth filter function, as per the PNG specification.
**/
function _paeth(_a:GoUInt8, _b:GoUInt8, _c:GoUInt8):GoUInt8 {
	var _pc:GoInt = ((_c : GoInt));
	var _pa:GoInt = ((_b : GoInt)) - _pc;
	var _pb:GoInt = ((_a : GoInt)) - _pc;
	_pc = _abs(_pa + _pb);
	_pa = _abs(_pa);
	_pb = _abs(_pb);
	if (_pa <= _pb && _pa <= _pc) {
		return _a;
	} else if (_pb <= _pc) {
		return _b;
	};
	return _c;
}

/**
	// filterPaeth applies the Paeth filter to the cdat slice.
	// cdat is the current row's data, pdat is the previous row's data.
**/
function _filterPaeth(_cdat:Slice<GoByte>, _pdat:Slice<GoByte>, _bytesPerPixel:GoInt):Void {
	var _a:GoInt = ((0 : GoInt)),
		_b:GoInt = ((0 : GoInt)),
		_c:GoInt = ((0 : GoInt)),
		_pa:GoInt = ((0 : GoInt)),
		_pb:GoInt = ((0 : GoInt)),
		_pc:GoInt = ((0 : GoInt));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _bytesPerPixel, _i++, {
			{
				final __tmp__0 = ((0 : GoInt));
				final __tmp__1 = ((0 : GoInt));
				_a = __tmp__0;
				_c = __tmp__1;
			};
			{
				var _j:GoInt = _i;
				Go.cfor(_j < _cdat.length, _j = _j + (_bytesPerPixel), {
					_b = ((_pdat[_j] : GoInt));
					_pa = _b - _c;
					_pb = _a - _c;
					_pc = _abs(_pa + _pb);
					_pa = _abs(_pa);
					_pb = _abs(_pb);
					if (_pa <= _pb && _pa <= _pc) {} else if (_pb <= _pc) {
						_a = _b;
					} else {
						_a = _c;
					};
					_a = _a + (((_cdat[_j] : GoInt)));
					_a = _a & (((255 : GoInt)));
					_cdat[_j] = ((_a : GoUInt8));
					_c = _b;
				});
			};
		});
	};
}

function _cbPaletted(_cb:GoInt):Bool {
	return _cbP1 <= _cb && _cb <= _cbP8;
}

function _min(_a:GoInt, _b:GoInt):GoInt {
	if (_a < _b) {
		return _a;
	};
	return _b;
}

/**
	// Decode reads a PNG image from r and returns it as an image.Image.
	// The type of Image returned depends on the PNG contents.
**/
function decode(_r:stdgo.io.Io.Reader):{var _0:stdgo.image.Image.Image; var _1:Error;} {
	var _d:Pointer<T_decoder> = Go.pointer((({
		_r: _r,
		_crc: stdgo.hash.crc32.Crc32.newIEEE(),
		_img: ((null : stdgo.image.Image.Image)),
		_width: 0,
		_height: 0,
		_depth: 0,
		_palette: new stdgo.image.color.Color.Palette(),
		_cb: 0,
		_stage: 0,
		_idatLength: 0,
		_tmp: new GoArray<GoUInt8>(...[for (i in 0...768) ((0 : GoUInt8))]),
		_interlace: 0,
		_useTransparent: false,
		_transparent: new GoArray<GoUInt8>(...[for (i in 0...6) ((0 : GoUInt8))])
	} : T_decoder)));
	{
		var _err:stdgo.Error = _d.value._checkHeader();
		if (_err != null) {
			if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
				_err = stdgo.io.Io.errUnexpectedEOF;
			};
			return {_0: ((null : stdgo.image.Image.Image)), _1: _err};
		};
	};
	while (_d.value._stage != _dsSeenIEND) {
		{
			var _err:stdgo.Error = _d.value._parseChunk();
			if (_err != null) {
				if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
					_err = stdgo.io.Io.errUnexpectedEOF;
				};
				return {_0: ((null : stdgo.image.Image.Image)), _1: _err};
			};
		};
	};
	return {_0: _d.value._img, _1: ((null : stdgo.Error))};
}

/**
	// DecodeConfig returns the color model and dimensions of a PNG image without
	// decoding the entire image.
**/
function decodeConfig(_r:stdgo.io.Io.Reader):{var _0:stdgo.image.Image.Config; var _1:Error;} {
	var _d:Pointer<T_decoder> = Go.pointer((({
		_r: _r,
		_crc: stdgo.hash.crc32.Crc32.newIEEE(),
		_img: ((null : stdgo.image.Image.Image)),
		_width: 0,
		_height: 0,
		_depth: 0,
		_palette: new stdgo.image.color.Color.Palette(),
		_cb: 0,
		_stage: 0,
		_idatLength: 0,
		_tmp: new GoArray<GoUInt8>(...[for (i in 0...768) ((0 : GoUInt8))]),
		_interlace: 0,
		_useTransparent: false,
		_transparent: new GoArray<GoUInt8>(...[for (i in 0...6) ((0 : GoUInt8))])
	} : T_decoder)));
	{
		var _err:stdgo.Error = _d.value._checkHeader();
		if (_err != null) {
			if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
				_err = stdgo.io.Io.errUnexpectedEOF;
			};
			return {_0: new stdgo.image.Image.Config().__copy__(), _1: _err};
		};
	};
	while (true) {
		{
			var _err:stdgo.Error = _d.value._parseChunk();
			if (_err != null) {
				if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
					_err = stdgo.io.Io.errUnexpectedEOF;
				};
				return {_0: new stdgo.image.Image.Config().__copy__(), _1: _err};
			};
		};
		var _paletted:Bool = _cbPaletted(_d.value._cb);
		if (_d.value._stage == _dsSeenIHDR && !_paletted) {
			break;
		};
		if (_d.value._stage == _dsSeenPLTE && _paletted) {
			break;
		};
	};
	var _cm:stdgo.image.color.Color.Model = ((null : stdgo.image.color.Color.Model));
	if (_d.value._cb == _cbG1 || _d.value._cb == _cbG2 || _d.value._cb == _cbG4 || _d.value._cb == _cbG8) {
		_cm = stdgo.image.color.Color.grayModel;
	} else if (_d.value._cb == _cbGA8) {
		_cm = stdgo.image.color.Color.nrgbamodel;
	} else if (_d.value._cb == _cbTC8) {
		_cm = stdgo.image.color.Color.rgbamodel;
	} else if (_d.value._cb == _cbP1 || _d.value._cb == _cbP2 || _d.value._cb == _cbP4 || _d.value._cb == _cbP8) {
		_cm = _d.value._palette.__copy__();
	} else if (_d.value._cb == _cbTCA8) {
		_cm = stdgo.image.color.Color.nrgbamodel;
	} else if (_d.value._cb == _cbG16) {
		_cm = stdgo.image.color.Color.gray16Model;
	} else if (_d.value._cb == _cbGA16) {
		_cm = stdgo.image.color.Color.nrgba64model;
	} else if (_d.value._cb == _cbTC16) {
		_cm = stdgo.image.color.Color.rgba64model;
	} else if (_d.value._cb == _cbTCA16) {
		_cm = stdgo.image.color.Color.nrgba64model;
	};
	return {_0: (({colorModel: _cm, width: _d.value._width, height: _d.value._height} : stdgo.image.Image.Config)).__copy__(), _1: ((null : stdgo.Error))};
}

/**
	// Returns whether or not the image is fully opaque.
**/
function _opaque(_m:stdgo.image.Image.Image):Bool {
	{
		var __tmp__ = try {
			{value: ((_m.__underlying__().value : T_opaquer)), ok: true};
		} catch (_) {
			{value: ((null : T_opaquer)), ok: false};
		}, _o = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _o.opaque();
		};
	};
	var _b:stdgo.image.Image.Rectangle = _m.bounds().__copy__();
	{
		var _y:GoInt = _b.min.y;
		Go.cfor(_y < _b.max.y, _y++, {
			{
				var _x:GoInt = _b.min.x;
				Go.cfor(_x < _b.max.x, _x++, {
					var __tmp__ = _m.at(_x, _y).rgba(),
						_:GoUInt32 = __tmp__._0,
						_:GoUInt32 = __tmp__._1,
						_:GoUInt32 = __tmp__._2,
						_a:GoUInt32 = __tmp__._3;
					if (_a != ((65535 : GoUInt32))) {
						return false;
					};
				});
			};
		});
	};
	return true;
}

/**
	// The absolute value of a byte interpreted as a signed int8.
**/
function _abs8(_d:GoUInt8):GoInt {
	if (_d < ((128 : GoUInt8))) {
		return ((_d : GoInt));
	};
	return ((256 : GoInt)) - ((_d : GoInt));
}

/**
	// Chooses the filter to use for encoding the current row, and applies it.
	// The return value is the index of the filter and also of the row in cr that has had it applied.
**/
function _filter(_cr:Pointer<GoArray<Slice<GoByte>>>, _pr:Slice<GoByte>, _bpp:GoInt):GoInt {
	var _cdat0:Slice<GoUInt8> = _cr.value[((0 : GoInt))].__slice__(((1 : GoInt)));
	var _cdat1:Slice<GoUInt8> = _cr.value[((1 : GoInt))].__slice__(((1 : GoInt)));
	var _cdat2:Slice<GoUInt8> = _cr.value[((2 : GoInt))].__slice__(((1 : GoInt)));
	var _cdat3:Slice<GoUInt8> = _cr.value[((3 : GoInt))].__slice__(((1 : GoInt)));
	var _cdat4:Slice<GoUInt8> = _cr.value[((4 : GoInt))].__slice__(((1 : GoInt)));
	var _pdat:Slice<GoUInt8> = _pr.__slice__(((1 : GoInt)));
	var _n:GoInt = _cdat0.length;
	var _sum:GoInt = ((0 : GoInt));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _n, _i++, {
			_cdat2[_i] = _cdat0[_i] - _pdat[_i];
			_sum = _sum + (_abs8(_cdat2[_i]));
		});
	};
	var _best:GoInt = _sum;
	var _filter:GoInt = _ftUp;
	_sum = ((0 : GoInt));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _bpp, _i++, {
			_cdat4[_i] = _cdat0[_i] - _pdat[_i];
			_sum = _sum + (_abs8(_cdat4[_i]));
		});
	};
	{
		var _i:GoInt = _bpp;
		Go.cfor(_i < _n, _i++, {
			_cdat4[_i] = _cdat0[_i] - _paeth(_cdat0[_i - _bpp], _pdat[_i], _pdat[_i - _bpp]);
			_sum = _sum + (_abs8(_cdat4[_i]));
			if (_sum >= _best) {
				break;
			};
		});
	};
	if (_sum < _best) {
		_best = _sum;
		_filter = _ftPaeth;
	};
	_sum = ((0 : GoInt));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _n, _i++, {
			_sum = _sum + (_abs8(_cdat0[_i]));
			if (_sum >= _best) {
				break;
			};
		});
	};
	if (_sum < _best) {
		_best = _sum;
		_filter = _ftNone;
	};
	_sum = ((0 : GoInt));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _bpp, _i++, {
			_cdat1[_i] = _cdat0[_i];
			_sum = _sum + (_abs8(_cdat1[_i]));
		});
	};
	{
		var _i:GoInt = _bpp;
		Go.cfor(_i < _n, _i++, {
			_cdat1[_i] = _cdat0[_i] - _cdat0[_i - _bpp];
			_sum = _sum + (_abs8(_cdat1[_i]));
			if (_sum >= _best) {
				break;
			};
		});
	};
	if (_sum < _best) {
		_best = _sum;
		_filter = _ftSub;
	};
	_sum = ((0 : GoInt));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _bpp, _i++, {
			_cdat3[_i] = _cdat0[_i] - _pdat[_i] / ((2 : GoUInt8));
			_sum = _sum + (_abs8(_cdat3[_i]));
		});
	};
	{
		var _i:GoInt = _bpp;
		Go.cfor(_i < _n, _i++, {
			_cdat3[_i] = _cdat0[_i] - ((((((_cdat0[_i - _bpp] : GoInt)) + ((_pdat[_i] : GoInt))) / ((2 : GoInt))) : GoUInt8));
			_sum = _sum + (_abs8(_cdat3[_i]));
			if (_sum >= _best) {
				break;
			};
		});
	};
	if (_sum < _best) {
		_filter = _ftAverage;
	};
	return _filter;
}

function _zeroMemory(_v:Slice<GoUInt8>):Void {
	{
		var _i;
		for (_obj in _v.keyValueIterator()) {
			_i = _obj.key;
			_v[_i] = ((0 : GoUInt8));
		};
	};
}

/**
	// This function is required because we want the zero value of
	// Encoder.CompressionLevel to map to zlib.DefaultCompression.
**/
function _levelToZlib(_l:CompressionLevel):GoInt {
	if (_l.__t__ == defaultCompression.__t__) {
		return stdgo.compress.zlib.Zlib.defaultCompression;
	} else if (_l.__t__ == noCompression.__t__) {
		return stdgo.compress.zlib.Zlib.noCompression;
	} else if (_l.__t__ == bestSpeed.__t__) {
		return stdgo.compress.zlib.Zlib.bestSpeed;
	} else if (_l.__t__ == bestCompression.__t__) {
		return stdgo.compress.zlib.Zlib.bestCompression;
	} else {
		return stdgo.compress.zlib.Zlib.defaultCompression;
	};
}

/**
	// Encode writes the Image m to w in PNG format. Any Image may be
	// encoded, but images that are not image.NRGBA might be encoded lossily.
**/
function encode(_w:stdgo.io.Io.Writer, _m:stdgo.image.Image.Image):Error {
	var _e:Encoder = new Encoder();
	return _e.encode(_w, _m);
}

@:keep var _ = {
	try {
		stdgo.image.Image.registerFormat("png", _pngHeader, decode, decodeConfig);
	} catch (e)
		if (e.message != "__return__")
			throw e;
	true;
};

class T_decoder_extension_fields {
	public function _parseIHDR(__tmp__, _length:GoUInt32):Error
		return __tmp__._parseIHDR(_length);

	public function _parsePLTE(__tmp__, _length:GoUInt32):Error
		return __tmp__._parsePLTE(_length);

	public function _parsetRNS(__tmp__, _length:GoUInt32):Error
		return __tmp__._parsetRNS(_length);

	public function read(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.read(_p);

	public function _decode(__tmp__):{var _0:stdgo.image.Image.Image; var _1:Error;}
		return __tmp__._decode();

	public function _readImagePass(__tmp__, _r:stdgo.io.Io.Reader, _pass:GoInt, _allocateOnly:Bool):{var _0:stdgo.image.Image.Image; var _1:Error;}
		return __tmp__._readImagePass(_r, _pass, _allocateOnly);

	public function _mergePassInto(__tmp__, _dst:stdgo.image.Image.Image, _src:stdgo.image.Image.Image, _pass:GoInt):Void
		__tmp__._mergePassInto(_dst, _src, _pass);

	public function _parseIDAT(__tmp__, _length:GoUInt32):Error
		return __tmp__._parseIDAT(_length);

	public function _parseIEND(__tmp__, _length:GoUInt32):Error
		return __tmp__._parseIEND(_length);

	public function _parseChunk(__tmp__):Error
		return __tmp__._parseChunk();

	public function _verifyChecksum(__tmp__):Error
		return __tmp__._verifyChecksum();

	public function _checkHeader(__tmp__):Error
		return __tmp__._checkHeader();
}

class FormatError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class UnsupportedError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class Encoder_extension_fields {
	public function encode(__tmp__, _w:stdgo.io.Io.Writer, _m:stdgo.image.Image.Image):Error
		return __tmp__.encode(_w, _m);
}

class T_encoder_extension_fields {
	public function _writeChunk(__tmp__, _b:Slice<GoByte>, _name:GoString):Void
		__tmp__._writeChunk(_b, _name);

	public function _writeIHDR(__tmp__):Void
		__tmp__._writeIHDR();

	public function _writePLTEAndTRNS(__tmp__, _p:stdgo.image.color.Color.Palette):Void
		__tmp__._writePLTEAndTRNS(_p);

	public function write(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.write(_b);

	public function _writeImage(__tmp__, _w:stdgo.io.Io.Writer, _m:stdgo.image.Image.Image, _cb:GoInt, _level:GoInt):Error
		return __tmp__._writeImage(_w, _m, _cb, _level);

	public function _writeIDATs(__tmp__):Void
		__tmp__._writeIDATs();

	public function _writeIEND(__tmp__):Void
		__tmp__._writeIEND();
}
