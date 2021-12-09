package stdgo.image.draw;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

typedef Image = StructType & {
	> stdgo.image.Image.Image,
	public function set(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void;
};

typedef RGBA64Image = StructType & {
	> stdgo.image.Image.RGBA64Image,
	public function set(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void;
	public function setRGBA64(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void;
};

typedef Quantizer = StructType & {
	public function quantize(_p:stdgo.image.color.Color.Palette, _m:stdgo.image.Image.Image):stdgo.image.color.Color.Palette;
};

typedef Drawer = StructType & {
	public function draw(_dst:Image, _r:stdgo.image.Image.Rectangle, _src:stdgo.image.Image.Image, _sp:stdgo.image.Image.Point):Void;
};

@:named class Op {
	public function draw(_dst:Image, _r:stdgo.image.Image.Rectangle, _src:stdgo.image.Image.Image, _sp:stdgo.image.Image.Point):Void {
		var _op = this.__copy__();
		drawMask(_dst, _r.__copy__(), _src, _sp.__copy__(), ((null : stdgo.image.Image.Image)), new stdgo.image.Image.Point().__copy__(), _op);
	}

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
		return new Op(__t__);
}

@:structInit class T_floydSteinberg {
	public function draw(_dst:Image, _r:stdgo.image.Image.Rectangle, _src:stdgo.image.Image.Image, _sp:stdgo.image.Image.Point):Void {
		_clip(_dst, Go.pointer(_r), _src, Go.pointer(_sp), ((null : stdgo.image.Image.Image)), new Pointer<stdgo.image.Image.Point>().nil());
		if (_r.empty()) {
			return;
		};
		_drawPaletted(_dst, _r.__copy__(), _src, _sp.__copy__(), true);
	}

	public function new()
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return "{}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_floydSteinberg();
	}

	public function __set__(__tmp__) {
		return this;
	}
}

final _m:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((16 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
final src:Op = new Op((1 : GoUnTypedInt));
var floydSteinberg:Drawer = new T_floydSteinberg().__copy__();
final over:Op = new Op((0 : GoUnTypedInt));

/**
	// clip clips r against each image's bounds (after translating into the
	// destination image's coordinate space) and shifts the points sp and mp by
	// the same amount as the change in r.Min.
**/
function _clip(_dst:Image, _r:Pointer<stdgo.image.Image.Rectangle>, _src:stdgo.image.Image.Image, _sp:Pointer<stdgo.image.Image.Point>,
		_mask:stdgo.image.Image.Image, _mp:Pointer<stdgo.image.Image.Point>):Void {
	var _orig:stdgo.image.Image.Point = _r.value.min.__copy__();
	_r.value = _r.value.intersect(_dst.bounds().__copy__()).__copy__();
	_r.value = _r.value.intersect(_src.bounds().add(_orig.sub(_sp.value.__copy__()).__copy__()).__copy__()).__copy__();
	if (_mask != null) {
		_r.value = _r.value.intersect(_mask.bounds().add(_orig.sub(_mp.value.__copy__()).__copy__()).__copy__()).__copy__();
	};
	var _dx:GoInt = _r.value.min.x - _orig.x;
	var _dy:GoInt = _r.value.min.y - _orig.y;
	if (_dx == ((0 : GoInt)) && _dy == ((0 : GoInt))) {
		return;
	};
	_sp.value.x = _sp.value.x + (_dx);
	_sp.value.y = _sp.value.y + (_dy);
	if (_mp != null && !_mp.isNil()) {
		_mp.value.x = _mp.value.x + (_dx);
		_mp.value.y = _mp.value.y + (_dy);
	};
}

function _processBackward(_dst:stdgo.image.Image.Image, _r:stdgo.image.Image.Rectangle, _src:stdgo.image.Image.Image, _sp:stdgo.image.Image.Point):Bool {
	return Go.toInterface(_dst) == Go.toInterface(_src)
		&& _r.overlaps(_r.add(_sp.sub(_r.min.__copy__()).__copy__()).__copy__())
		&& (_sp.y < _r.min.y || (_sp.y == _r.min.y && _sp.x < _r.min.x));
}

/**
	// Draw calls DrawMask with a nil mask.
**/
function draw(_dst:Image, _r:stdgo.image.Image.Rectangle, _src:stdgo.image.Image.Image, _sp:stdgo.image.Image.Point, _op:Op):Void {
	drawMask(_dst, _r.__copy__(), _src, _sp.__copy__(), ((null : stdgo.image.Image.Image)), new stdgo.image.Image.Point().__copy__(), _op);
}

/**
	// DrawMask aligns r.Min in dst with sp in src and mp in mask and then replaces the rectangle r
	// in dst with the result of a Porter-Duff composition. A nil mask is treated as opaque.
**/
function drawMask(_dst:Image, _r:stdgo.image.Image.Rectangle, _src:stdgo.image.Image.Image, _sp:stdgo.image.Image.Point, _mask:stdgo.image.Image.Image,
		_mp:stdgo.image.Image.Point, _op:Op):Void {
	_clip(_dst, Go.pointer(_r), _src, Go.pointer(_sp), _mask, Go.pointer(_mp));
	if (_r.empty()) {
		return;
	};
	if (Go.assertable(((_dst : Pointer<stdgo.image.Image.RGBA>)))) {
		var _dst0:Pointer<stdgo.image.Image.RGBA> = _dst == null ? null : _dst.__underlying__() == null ? null : _dst == null ? null : _dst.__underlying__()
			.value;
		if (_op.__t__ == over.__t__) {
			if (_mask == null) {
				if (Go.assertable(((_src : Pointer<stdgo.image.Image.Uniform>)))) {
					var _src0:Pointer<stdgo.image.Image.Uniform> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__()
						.value;
					var __tmp__ = _src0.value.rgba(),
						_sr:GoUInt32 = __tmp__._0,
						_sg:GoUInt32 = __tmp__._1,
						_sb:GoUInt32 = __tmp__._2,
						_sa:GoUInt32 = __tmp__._3;
					if (_sa == ((65535 : GoUInt32))) {
						_drawFillSrc(_dst0, _r.__copy__(), _sr, _sg, _sb, _sa);
					} else {
						_drawFillOver(_dst0, _r.__copy__(), _sr, _sg, _sb, _sa);
					};
					return;
				} else if (Go.assertable(((_src : Pointer<stdgo.image.Image.RGBA>)))) {
					var _src0:Pointer<stdgo.image.Image.RGBA> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__()
						.value;
					_drawCopyOver(_dst0, _r.__copy__(), _src0, _sp.__copy__());
					return;
				} else if (Go.assertable(((_src : Pointer<stdgo.image.Image.NRGBA>)))) {
					var _src0:Pointer<stdgo.image.Image.NRGBA> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__()
						.value;
					_drawNRGBAOver(_dst0, _r.__copy__(), _src0, _sp.__copy__());
					return;
				} else if (Go.assertable(((_src : Pointer<stdgo.image.Image.YCbCr>)))) {
					var _src0:Pointer<stdgo.image.Image.YCbCr> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__()
						.value;
					if (image.internal.imageutil.Imageutil.drawYCbCr(_dst0, _r.__copy__(), _src0, _sp.__copy__())) {
						return;
					};
				} else if (Go.assertable(((_src : Pointer<stdgo.image.Image.Gray>)))) {
					var _src0:Pointer<stdgo.image.Image.Gray> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__()
						.value;
					_drawGray(_dst0, _r.__copy__(), _src0, _sp.__copy__());
					return;
				} else if (Go.assertable(((_src : Pointer<stdgo.image.Image.CMYK>)))) {
					var _src0:Pointer<stdgo.image.Image.CMYK> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__()
						.value;
					_drawCMYK(_dst0, _r.__copy__(), _src0, _sp.__copy__());
					return;
				};
			} else {
				var __tmp__ = try {
					{value: ((_mask.__underlying__().value : stdgo.image.Image.Alpha)), ok: true};
				} catch (_) {
					{value: new Pointer<stdgo.image.Image.Alpha>().nil(), ok: false};
				}, _mask0 = __tmp__.value, _ok = __tmp__.ok;
				if (_ok) {
					if (Go.assertable(((_src : Pointer<stdgo.image.Image.Uniform>)))) {
						var _src0:Pointer<stdgo.image.Image.Uniform> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__()
							.value;
						_drawGlyphOver(_dst0, _r.__copy__(), _src0, _mask0, _mp.__copy__());
						return;
					};
				};
			};
		} else {
			if (_mask == null) {
				if (Go.assertable(((_src : Pointer<stdgo.image.Image.Uniform>)))) {
					var _src0:Pointer<stdgo.image.Image.Uniform> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__()
						.value;
					var __tmp__ = _src0.value.rgba(),
						_sr:GoUInt32 = __tmp__._0,
						_sg:GoUInt32 = __tmp__._1,
						_sb:GoUInt32 = __tmp__._2,
						_sa:GoUInt32 = __tmp__._3;
					_drawFillSrc(_dst0, _r.__copy__(), _sr, _sg, _sb, _sa);
					return;
				} else if (Go.assertable(((_src : Pointer<stdgo.image.Image.RGBA>)))) {
					var _src0:Pointer<stdgo.image.Image.RGBA> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__()
						.value;
					_drawCopySrc(_dst0, _r.__copy__(), _src0, _sp.__copy__());
					return;
				} else if (Go.assertable(((_src : Pointer<stdgo.image.Image.NRGBA>)))) {
					var _src0:Pointer<stdgo.image.Image.NRGBA> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__()
						.value;
					_drawNRGBASrc(_dst0, _r.__copy__(), _src0, _sp.__copy__());
					return;
				} else if (Go.assertable(((_src : Pointer<stdgo.image.Image.YCbCr>)))) {
					var _src0:Pointer<stdgo.image.Image.YCbCr> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__()
						.value;
					if (image.internal.imageutil.Imageutil.drawYCbCr(_dst0, _r.__copy__(), _src0, _sp.__copy__())) {
						return;
					};
				} else if (Go.assertable(((_src : Pointer<stdgo.image.Image.Gray>)))) {
					var _src0:Pointer<stdgo.image.Image.Gray> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__()
						.value;
					_drawGray(_dst0, _r.__copy__(), _src0, _sp.__copy__());
					return;
				} else if (Go.assertable(((_src : Pointer<stdgo.image.Image.CMYK>)))) {
					var _src0:Pointer<stdgo.image.Image.CMYK> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__()
						.value;
					_drawCMYK(_dst0, _r.__copy__(), _src0, _sp.__copy__());
					return;
				};
			};
		};
		_drawRGBA(_dst0, _r.__copy__(), _src, _sp.__copy__(), _mask, _mp.__copy__(), _op);
		return;
	} else if (Go.assertable(((_dst : Pointer<stdgo.image.Image.Paletted>)))) {
		var _dst0:Pointer<stdgo.image.Image.Paletted> = _dst == null ? null : _dst.__underlying__() == null ? null : _dst == null ? null : _dst.__underlying__()
			.value;
		if (_op.__t__ == src.__t__ && _mask == null) {
			{
				var __tmp__ = try {
					{value: ((_src.__underlying__().value : stdgo.image.Image.Uniform)), ok: true};
				} catch (_) {
					{value: new Pointer<stdgo.image.Image.Uniform>().nil(), ok: false};
				}, _src0 = __tmp__.value, _ok = __tmp__.ok;
				if (_ok) {
					var _colorIndex:GoUInt8 = ((_dst0.value.palette.index(_src0.value.c) : GoUInt8));
					var _i0:GoInt = _dst0.value.pixOffset(_r.min.x, _r.min.y);
					var _i1:GoInt = _i0 + _r.dx();
					{
						var _i:GoInt = _i0;
						Go.cfor(_i < _i1, _i++, {
							_dst0.value.pix[_i] = _colorIndex;
						});
					};
					var _firstRow:Slice<GoUInt8> = _dst0.value.pix.__slice__(_i0, _i1);
					{
						var _y:GoInt = _r.min.y + ((1 : GoInt));
						Go.cfor(_y < _r.max.y, _y++, {
							_i0 = _i0 + (_dst0.value.stride);
							_i1 = _i1 + (_dst0.value.stride);
							Go.copy(_dst0.value.pix.__slice__(_i0, _i1), _firstRow);
						});
					};
					return;
				} else if (!_processBackward(_dst, _r.__copy__(), _src, _sp.__copy__())) {
					_drawPaletted(_dst0.value, _r.__copy__(), _src, _sp.__copy__(), false);
					return;
				};
			};
		};
	};
	var _x0:GoInt = _r.min.x, _x1:GoInt = _r.max.x, _dx:GoInt = ((1 : GoInt));
	var _y0:GoInt = _r.min.y, _y1:GoInt = _r.max.y, _dy:GoInt = ((1 : GoInt));
	if (_processBackward(_dst, _r.__copy__(), _src, _sp.__copy__())) {
		{
			final __tmp__0 = _x1 - ((1 : GoInt));
			final __tmp__1 = _x0 - ((1 : GoInt));
			final __tmp__2 = -((1 : GoUnTypedInt));
			_x0 = __tmp__0;
			_x1 = __tmp__1;
			_dx = __tmp__2;
		};
		{
			final __tmp__0 = _y1 - ((1 : GoInt));
			final __tmp__1 = _y0 - ((1 : GoInt));
			final __tmp__2 = -((1 : GoUnTypedInt));
			_y0 = __tmp__0;
			_y1 = __tmp__1;
			_dy = __tmp__2;
		};
	};
	var _out:stdgo.image.color.Color.RGBA64 = new stdgo.image.color.Color.RGBA64();
	var _sy:GoInt = _sp.y + _y0 - _r.min.y;
	var _my:GoInt = _mp.y + _y0 - _r.min.y;
	{
		var _y:GoInt = _y0;
		Go.cfor(_y != _y1, {
			final __tmp__0 = _y + _dy;
			final __tmp__1 = _sy + _dy;
			final __tmp__2 = _my + _dy;
			_y = __tmp__0;
			_sy = __tmp__1;
			_my = __tmp__2;
		}, {
			var _sx:GoInt = _sp.x + _x0 - _r.min.x;
			var _mx:GoInt = _mp.x + _x0 - _r.min.x;
			{
				var _x:GoInt = _x0;
				Go.cfor(_x != _x1, {
					final __tmp__0 = _x + _dx;
					final __tmp__1 = _sx + _dx;
					final __tmp__2 = _mx + _dx;
					_x = __tmp__0;
					_sx = __tmp__1;
					_mx = __tmp__2;
				}, {
					var _ma:GoUInt32 = ((_m : GoUInt32));
					if (_mask != null) {
						{
							var __tmp__ = _mask.at(_mx, _my).rgba();
							_ma = __tmp__._3;
						};
					};
					if (_ma == ((0 : GoUInt32))) {
						if (_op.__t__ == over.__t__) {} else {
							_dst.set(_x, _y, stdgo.image.color.Color.transparent.__copy__());
						};
					} else if (_ma == _m && _op.__t__ == src.__t__) {
						_dst.set(_x, _y, _src.at(_sx, _sy));
					} else {
						var __tmp__ = _src.at(_sx, _sy).rgba(),
							_sr:GoUInt32 = __tmp__._0,
							_sg:GoUInt32 = __tmp__._1,
							_sb:GoUInt32 = __tmp__._2,
							_sa:GoUInt32 = __tmp__._3;
						if (_op.__t__ == over.__t__) {
							var __tmp__ = _dst.at(_x, _y).rgba(),
								_dr:GoUInt32 = __tmp__._0,
								_dg:GoUInt32 = __tmp__._1,
								_db:GoUInt32 = __tmp__._2,
								_da:GoUInt32 = __tmp__._3;
							var _a:GoUInt32 = _m - (_sa * _ma / _m);
							_out.r = ((((_dr * _a + _sr * _ma) / _m) : GoUInt16));
							_out.g = ((((_dg * _a + _sg * _ma) / _m) : GoUInt16));
							_out.b = ((((_db * _a + _sb * _ma) / _m) : GoUInt16));
							_out.a = ((((_da * _a + _sa * _ma) / _m) : GoUInt16));
						} else {
							_out.r = (((_sr * _ma / _m) : GoUInt16));
							_out.g = (((_sg * _ma / _m) : GoUInt16));
							_out.b = (((_sb * _ma / _m) : GoUInt16));
							_out.a = (((_sa * _ma / _m) : GoUInt16));
						};
						_dst.set(_x, _y, Go.pointer(_out).value);
					};
				});
			};
		});
	};
}

function _drawFillOver(_dst:Pointer<stdgo.image.Image.RGBA>, _r:stdgo.image.Image.Rectangle, _sr:GoUInt32, _sg:GoUInt32, _sb:GoUInt32, _sa:GoUInt32):Void {
	var _a:GoUInt32 = (_m - _sa) * ((257 : GoUInt32));
	var _i0:GoInt = _dst.value.pixOffset(_r.min.x, _r.min.y);
	var _i1:GoInt = _i0 + _r.dx() * ((4 : GoInt));
	{
		var _y:GoInt = _r.min.y;
		Go.cfor(_y != _r.max.y, _y++, {
			{
				var _i:GoInt = _i0;
				Go.cfor(_i < _i1, _i = _i + (((4 : GoInt))), {
					var _dr:Pointer<GoUInt8> = Go.pointer(_dst.value.pix[_i + ((0 : GoInt))]);
					var _dg:Pointer<GoUInt8> = Go.pointer(_dst.value.pix[_i + ((1 : GoInt))]);
					var _db:Pointer<GoUInt8> = Go.pointer(_dst.value.pix[_i + ((2 : GoInt))]);
					var _da:Pointer<GoUInt8> = Go.pointer(_dst.value.pix[_i + ((3 : GoInt))]);
					_dr.value = ((((((_dr.value : GoUInt32)) * _a / _m + _sr) >> ((8 : GoUnTypedInt))) : GoUInt8));
					_dg.value = ((((((_dg.value : GoUInt32)) * _a / _m + _sg) >> ((8 : GoUnTypedInt))) : GoUInt8));
					_db.value = ((((((_db.value : GoUInt32)) * _a / _m + _sb) >> ((8 : GoUnTypedInt))) : GoUInt8));
					_da.value = ((((((_da.value : GoUInt32)) * _a / _m + _sa) >> ((8 : GoUnTypedInt))) : GoUInt8));
				});
			};
			_i0 = _i0 + (_dst.value.stride);
			_i1 = _i1 + (_dst.value.stride);
		});
	};
}

function _drawFillSrc(_dst:Pointer<stdgo.image.Image.RGBA>, _r:stdgo.image.Image.Rectangle, _sr:GoUInt32, _sg:GoUInt32, _sb:GoUInt32, _sa:GoUInt32):Void {
	var _sr8:GoUInt8 = (((_sr >> ((8 : GoUnTypedInt))) : GoUInt8));
	var _sg8:GoUInt8 = (((_sg >> ((8 : GoUnTypedInt))) : GoUInt8));
	var _sb8:GoUInt8 = (((_sb >> ((8 : GoUnTypedInt))) : GoUInt8));
	var _sa8:GoUInt8 = (((_sa >> ((8 : GoUnTypedInt))) : GoUInt8));
	var _i0:GoInt = _dst.value.pixOffset(_r.min.x, _r.min.y);
	var _i1:GoInt = _i0 + _r.dx() * ((4 : GoInt));
	{
		var _i:GoInt = _i0;
		Go.cfor(_i < _i1, _i = _i + (((4 : GoInt))), {
			_dst.value.pix[_i + ((0 : GoInt))] = _sr8;
			_dst.value.pix[_i + ((1 : GoInt))] = _sg8;
			_dst.value.pix[_i + ((2 : GoInt))] = _sb8;
			_dst.value.pix[_i + ((3 : GoInt))] = _sa8;
		});
	};
	var _firstRow:Slice<GoUInt8> = _dst.value.pix.__slice__(_i0, _i1);
	{
		var _y:GoInt = _r.min.y + ((1 : GoInt));
		Go.cfor(_y < _r.max.y, _y++, {
			_i0 = _i0 + (_dst.value.stride);
			_i1 = _i1 + (_dst.value.stride);
			Go.copy(_dst.value.pix.__slice__(_i0, _i1), _firstRow);
		});
	};
}

function _drawCopyOver(_dst:Pointer<stdgo.image.Image.RGBA>, _r:stdgo.image.Image.Rectangle, _src:Pointer<stdgo.image.Image.RGBA>,
		_sp:stdgo.image.Image.Point):Void {
	var _dx:GoInt = _r.dx(), _dy:GoInt = _r.dy();
	var _d0:GoInt = _dst.value.pixOffset(_r.min.x, _r.min.y);
	var _s0:GoInt = _src.value.pixOffset(_sp.x, _sp.y);
	var _ddelta:GoInt = ((0 : GoInt)),
		_sdelta:GoInt = ((0 : GoInt)),
		_i0:GoInt = ((0 : GoInt)),
		_i1:GoInt = ((0 : GoInt)),
		_idelta:GoInt = ((0 : GoInt));
	if (_r.min.y < _sp.y || _r.min.y == _sp.y && _r.min.x <= _sp.x) {
		_ddelta = _dst.value.stride;
		_sdelta = _src.value.stride;
		{
			final __tmp__0 = ((0 : GoInt));
			final __tmp__1 = _dx * ((4 : GoInt));
			final __tmp__2 = ((4 : GoUnTypedInt));
			_i0 = __tmp__0;
			_i1 = __tmp__1;
			_idelta = __tmp__2;
		};
	} else {
		_d0 = _d0 + ((_dy - ((1 : GoInt))) * _dst.value.stride);
		_s0 = _s0 + ((_dy - ((1 : GoInt))) * _src.value.stride);
		_ddelta = -_dst.value.stride;
		_sdelta = -_src.value.stride;
		{
			final __tmp__0 = (_dx - ((1 : GoInt))) * ((4 : GoInt));
			final __tmp__1 = -((4 : GoUnTypedInt));
			final __tmp__2 = -((4 : GoUnTypedInt));
			_i0 = __tmp__0;
			_i1 = __tmp__1;
			_idelta = __tmp__2;
		};
	};
	Go.cfor(_dy > ((0 : GoInt)), _dy--, {
		var _dpix:Slice<GoUInt8> = _dst.value.pix.__slice__(_d0);
		var _spix:Slice<GoUInt8> = _src.value.pix.__slice__(_s0);
		{
			var _i:GoInt = _i0;
			Go.cfor(_i != _i1, _i = _i + (_idelta), {
				var _s:Slice<GoUInt8> = _spix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
				var _sr:GoUInt32 = ((_s[((0 : GoInt))] : GoUInt32)) * ((257 : GoUInt32));
				var _sg:GoUInt32 = ((_s[((1 : GoInt))] : GoUInt32)) * ((257 : GoUInt32));
				var _sb:GoUInt32 = ((_s[((2 : GoInt))] : GoUInt32)) * ((257 : GoUInt32));
				var _sa:GoUInt32 = ((_s[((3 : GoInt))] : GoUInt32)) * ((257 : GoUInt32));
				var _a:GoUInt32 = (_m - _sa) * ((257 : GoUInt32));
				var _d:Slice<GoUInt8> = _dpix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
				_d[((0 : GoInt))] = ((((((_d[((0 : GoInt))] : GoUInt32)) * _a / _m + _sr) >> ((8 : GoUnTypedInt))) : GoUInt8));
				_d[((1 : GoInt))] = ((((((_d[((1 : GoInt))] : GoUInt32)) * _a / _m + _sg) >> ((8 : GoUnTypedInt))) : GoUInt8));
				_d[((2 : GoInt))] = ((((((_d[((2 : GoInt))] : GoUInt32)) * _a / _m + _sb) >> ((8 : GoUnTypedInt))) : GoUInt8));
				_d[((3 : GoInt))] = ((((((_d[((3 : GoInt))] : GoUInt32)) * _a / _m + _sa) >> ((8 : GoUnTypedInt))) : GoUInt8));
			});
		};
		_d0 = _d0 + (_ddelta);
		_s0 = _s0 + (_sdelta);
	});
}

function _drawCopySrc(_dst:Pointer<stdgo.image.Image.RGBA>, _r:stdgo.image.Image.Rectangle, _src:Pointer<stdgo.image.Image.RGBA>,
		_sp:stdgo.image.Image.Point):Void {
	var _n:GoInt = ((4 : GoInt)) * _r.dx(), _dy:GoInt = _r.dy();
	var _d0:GoInt = _dst.value.pixOffset(_r.min.x, _r.min.y);
	var _s0:GoInt = _src.value.pixOffset(_sp.x, _sp.y);
	var _ddelta:GoInt = ((0 : GoInt)), _sdelta:GoInt = ((0 : GoInt));
	if (_r.min.y <= _sp.y) {
		_ddelta = _dst.value.stride;
		_sdelta = _src.value.stride;
	} else {
		_d0 = _d0 + ((_dy - ((1 : GoInt))) * _dst.value.stride);
		_s0 = _s0 + ((_dy - ((1 : GoInt))) * _src.value.stride);
		_ddelta = -_dst.value.stride;
		_sdelta = -_src.value.stride;
	};
	Go.cfor(_dy > ((0 : GoInt)), _dy--, {
		Go.copy(_dst.value.pix.__slice__(_d0, _d0 + _n), _src.value.pix.__slice__(_s0, _s0 + _n));
		_d0 = _d0 + (_ddelta);
		_s0 = _s0 + (_sdelta);
	});
}

function _drawNRGBAOver(_dst:Pointer<stdgo.image.Image.RGBA>, _r:stdgo.image.Image.Rectangle, _src:Pointer<stdgo.image.Image.NRGBA>,
		_sp:stdgo.image.Image.Point):Void {
	var _i0:GoInt = (_r.min.x - _dst.value.rect.min.x) * ((4 : GoInt));
	var _i1:GoInt = (_r.max.x - _dst.value.rect.min.x) * ((4 : GoInt));
	var _si0:GoInt = (_sp.x - _src.value.rect.min.x) * ((4 : GoInt));
	var _yMax:GoInt = _r.max.y - _dst.value.rect.min.y;
	var _y:GoInt = _r.min.y - _dst.value.rect.min.y;
	var _sy:GoInt = _sp.y - _src.value.rect.min.y;
	Go.cfor(_y != _yMax, {
		final __tmp__0 = _y + ((1 : GoInt));
		final __tmp__1 = _sy + ((1 : GoInt));
		_y = __tmp__0;
		_sy = __tmp__1;
	}, {
		var _dpix:Slice<GoUInt8> = _dst.value.pix.__slice__(_y * _dst.value.stride);
		var _spix:Slice<GoUInt8> = _src.value.pix.__slice__(_sy * _src.value.stride);
		{
			var _i:GoInt = _i0, _si:GoInt = _si0;
			Go.cfor(_i < _i1, {
				final __tmp__0 = _i + ((4 : GoInt));
				final __tmp__1 = _si + ((4 : GoInt));
				_i = __tmp__0;
				_si = __tmp__1;
			}, {
				var _s:Slice<GoUInt8> = _spix.__slice__(_si, _si + ((4 : GoInt))).setCap(((_si + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
				var _sa:GoUInt32 = ((_s[((3 : GoInt))] : GoUInt32)) * ((257 : GoUInt32));
				var _sr:GoUInt32 = ((_s[((0 : GoInt))] : GoUInt32)) * _sa / ((255 : GoUInt32));
				var _sg:GoUInt32 = ((_s[((1 : GoInt))] : GoUInt32)) * _sa / ((255 : GoUInt32));
				var _sb:GoUInt32 = ((_s[((2 : GoInt))] : GoUInt32)) * _sa / ((255 : GoUInt32));
				var _d:Slice<GoUInt8> = _dpix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
				var _dr:GoUInt32 = ((_d[((0 : GoInt))] : GoUInt32));
				var _dg:GoUInt32 = ((_d[((1 : GoInt))] : GoUInt32));
				var _db:GoUInt32 = ((_d[((2 : GoInt))] : GoUInt32));
				var _da:GoUInt32 = ((_d[((3 : GoInt))] : GoUInt32));
				var _a:GoUInt32 = (_m - _sa) * ((257 : GoUInt32));
				_d[((0 : GoInt))] = ((((_dr * _a / _m + _sr) >> ((8 : GoUnTypedInt))) : GoUInt8));
				_d[((1 : GoInt))] = ((((_dg * _a / _m + _sg) >> ((8 : GoUnTypedInt))) : GoUInt8));
				_d[((2 : GoInt))] = ((((_db * _a / _m + _sb) >> ((8 : GoUnTypedInt))) : GoUInt8));
				_d[((3 : GoInt))] = ((((_da * _a / _m + _sa) >> ((8 : GoUnTypedInt))) : GoUInt8));
			});
		};
	});
}

function _drawNRGBASrc(_dst:Pointer<stdgo.image.Image.RGBA>, _r:stdgo.image.Image.Rectangle, _src:Pointer<stdgo.image.Image.NRGBA>,
		_sp:stdgo.image.Image.Point):Void {
	var _i0:GoInt = (_r.min.x - _dst.value.rect.min.x) * ((4 : GoInt));
	var _i1:GoInt = (_r.max.x - _dst.value.rect.min.x) * ((4 : GoInt));
	var _si0:GoInt = (_sp.x - _src.value.rect.min.x) * ((4 : GoInt));
	var _yMax:GoInt = _r.max.y - _dst.value.rect.min.y;
	var _y:GoInt = _r.min.y - _dst.value.rect.min.y;
	var _sy:GoInt = _sp.y - _src.value.rect.min.y;
	Go.cfor(_y != _yMax, {
		final __tmp__0 = _y + ((1 : GoInt));
		final __tmp__1 = _sy + ((1 : GoInt));
		_y = __tmp__0;
		_sy = __tmp__1;
	}, {
		var _dpix:Slice<GoUInt8> = _dst.value.pix.__slice__(_y * _dst.value.stride);
		var _spix:Slice<GoUInt8> = _src.value.pix.__slice__(_sy * _src.value.stride);
		{
			var _i:GoInt = _i0, _si:GoInt = _si0;
			Go.cfor(_i < _i1, {
				final __tmp__0 = _i + ((4 : GoInt));
				final __tmp__1 = _si + ((4 : GoInt));
				_i = __tmp__0;
				_si = __tmp__1;
			}, {
				var _s:Slice<GoUInt8> = _spix.__slice__(_si, _si + ((4 : GoInt))).setCap(((_si + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
				var _sa:GoUInt32 = ((_s[((3 : GoInt))] : GoUInt32)) * ((257 : GoUInt32));
				var _sr:GoUInt32 = ((_s[((0 : GoInt))] : GoUInt32)) * _sa / ((255 : GoUInt32));
				var _sg:GoUInt32 = ((_s[((1 : GoInt))] : GoUInt32)) * _sa / ((255 : GoUInt32));
				var _sb:GoUInt32 = ((_s[((2 : GoInt))] : GoUInt32)) * _sa / ((255 : GoUInt32));
				var _d:Slice<GoUInt8> = _dpix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
				_d[((0 : GoInt))] = (((_sr >> ((8 : GoUnTypedInt))) : GoUInt8));
				_d[((1 : GoInt))] = (((_sg >> ((8 : GoUnTypedInt))) : GoUInt8));
				_d[((2 : GoInt))] = (((_sb >> ((8 : GoUnTypedInt))) : GoUInt8));
				_d[((3 : GoInt))] = (((_sa >> ((8 : GoUnTypedInt))) : GoUInt8));
			});
		};
	});
}

function _drawGray(_dst:Pointer<stdgo.image.Image.RGBA>, _r:stdgo.image.Image.Rectangle, _src:Pointer<stdgo.image.Image.Gray>,
		_sp:stdgo.image.Image.Point):Void {
	var _i0:GoInt = (_r.min.x - _dst.value.rect.min.x) * ((4 : GoInt));
	var _i1:GoInt = (_r.max.x - _dst.value.rect.min.x) * ((4 : GoInt));
	var _si0:GoInt = (_sp.x - _src.value.rect.min.x) * ((1 : GoInt));
	var _yMax:GoInt = _r.max.y - _dst.value.rect.min.y;
	var _y:GoInt = _r.min.y - _dst.value.rect.min.y;
	var _sy:GoInt = _sp.y - _src.value.rect.min.y;
	Go.cfor(_y != _yMax, {
		final __tmp__0 = _y + ((1 : GoInt));
		final __tmp__1 = _sy + ((1 : GoInt));
		_y = __tmp__0;
		_sy = __tmp__1;
	}, {
		var _dpix:Slice<GoUInt8> = _dst.value.pix.__slice__(_y * _dst.value.stride);
		var _spix:Slice<GoUInt8> = _src.value.pix.__slice__(_sy * _src.value.stride);
		{
			var _i:GoInt = _i0, _si:GoInt = _si0;
			Go.cfor(_i < _i1, {
				final __tmp__0 = _i + ((4 : GoInt));
				final __tmp__1 = _si + ((1 : GoInt));
				_i = __tmp__0;
				_si = __tmp__1;
			}, {
				var _p:GoUInt8 = _spix[_si];
				var _d:Slice<GoUInt8> = _dpix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
				_d[((0 : GoInt))] = _p;
				_d[((1 : GoInt))] = _p;
				_d[((2 : GoInt))] = _p;
				_d[((3 : GoInt))] = ((255 : GoUInt8));
			});
		};
	});
}

function _drawCMYK(_dst:Pointer<stdgo.image.Image.RGBA>, _r:stdgo.image.Image.Rectangle, _src:Pointer<stdgo.image.Image.CMYK>,
		_sp:stdgo.image.Image.Point):Void {
	var _i0:GoInt = (_r.min.x - _dst.value.rect.min.x) * ((4 : GoInt));
	var _i1:GoInt = (_r.max.x - _dst.value.rect.min.x) * ((4 : GoInt));
	var _si0:GoInt = (_sp.x - _src.value.rect.min.x) * ((4 : GoInt));
	var _yMax:GoInt = _r.max.y - _dst.value.rect.min.y;
	var _y:GoInt = _r.min.y - _dst.value.rect.min.y;
	var _sy:GoInt = _sp.y - _src.value.rect.min.y;
	Go.cfor(_y != _yMax, {
		final __tmp__0 = _y + ((1 : GoInt));
		final __tmp__1 = _sy + ((1 : GoInt));
		_y = __tmp__0;
		_sy = __tmp__1;
	}, {
		var _dpix:Slice<GoUInt8> = _dst.value.pix.__slice__(_y * _dst.value.stride);
		var _spix:Slice<GoUInt8> = _src.value.pix.__slice__(_sy * _src.value.stride);
		{
			var _i:GoInt = _i0, _si:GoInt = _si0;
			Go.cfor(_i < _i1, {
				final __tmp__0 = _i + ((4 : GoInt));
				final __tmp__1 = _si + ((4 : GoInt));
				_i = __tmp__0;
				_si = __tmp__1;
			}, {
				var _s:Slice<GoUInt8> = _spix.__slice__(_si, _si + ((4 : GoInt))).setCap(((_si + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
				var _d:Slice<GoUInt8> = _dpix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
				{
					var __tmp__ = stdgo.image.color.Color.cmyktoRGB(_s[((0 : GoInt))], _s[((1 : GoInt))], _s[((2 : GoInt))], _s[((3 : GoInt))]);
					_d[((0 : GoInt))] = __tmp__._0;
					_d[((1 : GoInt))] = __tmp__._1;
					_d[((2 : GoInt))] = __tmp__._2;
				};
				_d[((3 : GoInt))] = ((255 : GoUInt8));
			});
		};
	});
}

function _drawGlyphOver(_dst:Pointer<stdgo.image.Image.RGBA>, _r:stdgo.image.Image.Rectangle, _src:Pointer<stdgo.image.Image.Uniform>,
		_mask:Pointer<stdgo.image.Image.Alpha>, _mp:stdgo.image.Image.Point):Void {
	var _i0:GoInt = _dst.value.pixOffset(_r.min.x, _r.min.y);
	var _i1:GoInt = _i0 + _r.dx() * ((4 : GoInt));
	var _mi0:GoInt = _mask.value.pixOffset(_mp.x, _mp.y);
	var __tmp__ = _src.value.rgba(),
		_sr:GoUInt32 = __tmp__._0,
		_sg:GoUInt32 = __tmp__._1,
		_sb:GoUInt32 = __tmp__._2,
		_sa:GoUInt32 = __tmp__._3;
	{
		var _y:GoInt = _r.min.y, _my:GoInt = _mp.y;
		Go.cfor(_y != _r.max.y, {
			final __tmp__0 = _y + ((1 : GoInt));
			final __tmp__1 = _my + ((1 : GoInt));
			_y = __tmp__0;
			_my = __tmp__1;
		}, {
			{
				var _i:GoInt = _i0, _mi:GoInt = _mi0;
				Go.cfor(_i < _i1, {
					final __tmp__0 = _i + ((4 : GoInt));
					final __tmp__1 = _mi + ((1 : GoInt));
					_i = __tmp__0;
					_mi = __tmp__1;
				}, {
					var _ma:GoUInt32 = ((_mask.value.pix[_mi] : GoUInt32));
					if (_ma == ((0 : GoUInt32))) {
						continue;
					};
					_ma = _ma | ((_ma << ((8 : GoUnTypedInt))));
					var _a:GoUInt32 = (_m - (_sa * _ma / _m)) * ((257 : GoUInt32));
					var _d:Slice<GoUInt8> = _dst.value.pix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
					_d[((0 : GoInt))] = ((((((_d[((0 : GoInt))] : GoUInt32)) * _a + _sr * _ma) / _m >> ((8 : GoUnTypedInt))) : GoUInt8));
					_d[((1 : GoInt))] = ((((((_d[((1 : GoInt))] : GoUInt32)) * _a + _sg * _ma) / _m >> ((8 : GoUnTypedInt))) : GoUInt8));
					_d[((2 : GoInt))] = ((((((_d[((2 : GoInt))] : GoUInt32)) * _a + _sb * _ma) / _m >> ((8 : GoUnTypedInt))) : GoUInt8));
					_d[((3 : GoInt))] = ((((((_d[((3 : GoInt))] : GoUInt32)) * _a + _sa * _ma) / _m >> ((8 : GoUnTypedInt))) : GoUInt8));
				});
			};
			_i0 = _i0 + (_dst.value.stride);
			_i1 = _i1 + (_dst.value.stride);
			_mi0 = _mi0 + (_mask.value.stride);
		});
	};
}

function _drawRGBA(_dst:Pointer<stdgo.image.Image.RGBA>, _r:stdgo.image.Image.Rectangle, _src:stdgo.image.Image.Image, _sp:stdgo.image.Image.Point,
		_mask:stdgo.image.Image.Image, _mp:stdgo.image.Image.Point, _op:Op):Void {
	var _x0:GoInt = _r.min.x, _x1:GoInt = _r.max.x, _dx:GoInt = ((1 : GoInt));
	var _y0:GoInt = _r.min.y, _y1:GoInt = _r.max.y, _dy:GoInt = ((1 : GoInt));
	if (Go.toInterface(((_dst.value : stdgo.image.Image.Image))) == Go.toInterface(_src)
		&& _r.overlaps(_r.add(_sp.sub(_r.min.__copy__()).__copy__()).__copy__())) {
		if (_sp.y < _r.min.y || _sp.y == _r.min.y && _sp.x < _r.min.x) {
			{
				final __tmp__0 = _x1 - ((1 : GoInt));
				final __tmp__1 = _x0 - ((1 : GoInt));
				final __tmp__2 = -((1 : GoUnTypedInt));
				_x0 = __tmp__0;
				_x1 = __tmp__1;
				_dx = __tmp__2;
			};
			{
				final __tmp__0 = _y1 - ((1 : GoInt));
				final __tmp__1 = _y0 - ((1 : GoInt));
				final __tmp__2 = -((1 : GoUnTypedInt));
				_y0 = __tmp__0;
				_y1 = __tmp__1;
				_dy = __tmp__2;
			};
		};
	};
	var _sy:GoInt = _sp.y + _y0 - _r.min.y;
	var _my:GoInt = _mp.y + _y0 - _r.min.y;
	var _sx0:GoInt = _sp.x + _x0 - _r.min.x;
	var _mx0:GoInt = _mp.x + _x0 - _r.min.x;
	var _sx1:GoInt = _sx0 + (_x1 - _x0);
	var _i0:GoInt = _dst.value.pixOffset(_x0, _y0);
	var _di:GoInt = _dx * ((4 : GoInt));
	{
		var _y:GoInt = _y0;
		Go.cfor(_y != _y1, {
			final __tmp__0 = _y + _dy;
			final __tmp__1 = _sy + _dy;
			final __tmp__2 = _my + _dy;
			_y = __tmp__0;
			_sy = __tmp__1;
			_my = __tmp__2;
		}, {
			{
				var _i:GoInt = _i0, _sx:GoInt = _sx0, _mx:GoInt = _mx0;
				Go.cfor(_sx != _sx1, {
					final __tmp__0 = _i + _di;
					final __tmp__1 = _sx + _dx;
					final __tmp__2 = _mx + _dx;
					_i = __tmp__0;
					_sx = __tmp__1;
					_mx = __tmp__2;
				}, {
					var _ma:GoUInt32 = ((_m : GoUInt32));
					if (_mask != null) {
						{
							var __tmp__ = _mask.at(_mx, _my).rgba();
							_ma = __tmp__._3;
						};
					};
					var __tmp__ = _src.at(_sx, _sy).rgba(),
						_sr:GoUInt32 = __tmp__._0,
						_sg:GoUInt32 = __tmp__._1,
						_sb:GoUInt32 = __tmp__._2,
						_sa:GoUInt32 = __tmp__._3;
					var _d:Slice<GoUInt8> = _dst.value.pix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
					if (_op.__t__ == over.__t__) {
						var _dr:GoUInt32 = ((_d[((0 : GoInt))] : GoUInt32));
						var _dg:GoUInt32 = ((_d[((1 : GoInt))] : GoUInt32));
						var _db:GoUInt32 = ((_d[((2 : GoInt))] : GoUInt32));
						var _da:GoUInt32 = ((_d[((3 : GoInt))] : GoUInt32));
						var _a:GoUInt32 = (_m - (_sa * _ma / _m)) * ((257 : GoUInt32));
						_d[((0 : GoInt))] = ((((_dr * _a + _sr * _ma) / _m >> ((8 : GoUnTypedInt))) : GoUInt8));
						_d[((1 : GoInt))] = ((((_dg * _a + _sg * _ma) / _m >> ((8 : GoUnTypedInt))) : GoUInt8));
						_d[((2 : GoInt))] = ((((_db * _a + _sb * _ma) / _m >> ((8 : GoUnTypedInt))) : GoUInt8));
						_d[((3 : GoInt))] = ((((_da * _a + _sa * _ma) / _m >> ((8 : GoUnTypedInt))) : GoUInt8));
					} else {
						_d[((0 : GoInt))] = (((_sr * _ma / _m >> ((8 : GoUnTypedInt))) : GoUInt8));
						_d[((1 : GoInt))] = (((_sg * _ma / _m >> ((8 : GoUnTypedInt))) : GoUInt8));
						_d[((2 : GoInt))] = (((_sb * _ma / _m >> ((8 : GoUnTypedInt))) : GoUInt8));
						_d[((3 : GoInt))] = (((_sa * _ma / _m >> ((8 : GoUnTypedInt))) : GoUInt8));
					};
				});
			};
			_i0 = _i0 + (_dy * _dst.value.stride);
		});
	};
}

/**
	// clamp clamps i to the interval [0, 0xffff].
**/
function _clamp(_i:GoInt32):GoInt32 {
	if (_i < ((0 : GoInt32))) {
		return ((0 : GoInt32));
	};
	if (_i > ((65535 : GoInt32))) {
		return ((65535 : GoInt32));
	};
	return _i;
}

/**
	// sqDiff returns the squared-difference of x and y, shifted by 2 so that
	// adding four of those won't overflow a uint32.
	//
	// x and y are both assumed to be in the range [0, 0xffff].
**/
function _sqDiff(_x:GoInt32, _y:GoInt32):GoUInt32 {
	var _d:GoUInt32 = (((_x - _y) : GoUInt32));
	return ((_d * _d) >> ((2 : GoUnTypedInt)));
}

function _drawPaletted(_dst:Image, _r:stdgo.image.Image.Rectangle, _src:stdgo.image.Image.Image, _sp:stdgo.image.Image.Point, _floydSteinberg:Bool):Void {
	var _palette:Slice<GoArray<GoInt32>> = ((new Slice<GoArray<GoInt32>>().nil() : Slice<GoArray<GoInt32>>)),
		_pix:Slice<GoUInt8> = ((new Slice<GoUInt8>().nil() : Slice<GoByte>)),
		_stride:GoInt = ((0 : GoInt));
	{
		var __tmp__ = try {
			{value: ((_dst.__underlying__().value : stdgo.image.Image.Paletted)), ok: true};
		} catch (_) {
			{value: new Pointer<stdgo.image.Image.Paletted>().nil(), ok: false};
		}, _p = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			_palette = new Slice<GoArray<GoInt32>>(...[
				for (i in 0...((_p.value.palette.__t__.length : GoInt)).toBasic()) new GoArray<GoInt32>(...[for (i in 0...4) ((0 : GoInt32))])
			]);
			{
				var _i;
				var _col;
				for (_obj in _p.value.palette.__t__.keyValueIterator()) {
					_i = _obj.key;
					_col = _obj.value;
					var __tmp__ = _col.rgba(),
						_r:GoUInt32 = __tmp__._0,
						_g:GoUInt32 = __tmp__._1,
						_b:GoUInt32 = __tmp__._2,
						_a:GoUInt32 = __tmp__._3;
					_palette[_i][((0 : GoInt))] = ((_r : GoInt32));
					_palette[_i][((1 : GoInt))] = ((_g : GoInt32));
					_palette[_i][((2 : GoInt))] = ((_b : GoInt32));
					_palette[_i][((3 : GoInt))] = ((_a : GoInt32));
				};
			};
			{
				final __tmp__0 = _p.value.pix.__slice__(_p.value.pixOffset(_r.min.x, _r.min.y));
				final __tmp__1 = _p.value.stride;
				_pix = __tmp__0;
				_stride = __tmp__1;
			};
		};
	};
	var _quantErrorCurr:Slice<GoArray<GoInt32>> = new Slice<GoArray<GoInt32>>().nil(),
		_quantErrorNext:Slice<GoArray<GoInt32>> = new Slice<GoArray<GoInt32>>().nil();
	if (_floydSteinberg) {
		_quantErrorCurr = new Slice<GoArray<GoInt32>>(...[
			for (i in 0...((_r.dx() + ((2 : GoInt)):GoInt)).toBasic()) new GoArray<GoInt32>(...[for (i in 0...4) ((0 : GoInt32))])
		]);
		_quantErrorNext = new Slice<GoArray<GoInt32>>(...[
			for (i in 0...((_r.dx() + ((2 : GoInt)):GoInt)).toBasic()) new GoArray<GoInt32>(...[for (i in 0...4) ((0 : GoInt32))])
		]);
	};
	var _pxRGBA:(GoInt, GoInt) -> {
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	} = function(_x:GoInt, _y:GoInt):{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	} {
		var _r:GoUInt32 = ((0 : GoUInt32)), _g:GoUInt32 = ((0 : GoUInt32)), _b:GoUInt32 = ((0 : GoUInt32)), _a:GoUInt32 = ((0 : GoUInt32));
		return _src.at(_x, _y).rgba();
		};
	if (Go.assertable(((_src : Pointer<stdgo.image.Image.RGBA>)))) {
		var _src0:Pointer<stdgo.image.Image.RGBA> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__()
			.value;
		_pxRGBA = function(_x:GoInt, _y:GoInt):{
			var _0:GoUInt32;
			var _1:GoUInt32;
			var _2:GoUInt32;
			var _3:GoUInt32;
		} {
			var _r:GoUInt32 = ((0 : GoUInt32)),
				_g:GoUInt32 = ((0 : GoUInt32)),
				_b:GoUInt32 = ((0 : GoUInt32)),
				_a:GoUInt32 = ((0 : GoUInt32));
			return _src0.value.rgbaat(_x, _y).rgba();
		};
	} else if (Go.assertable(((_src : Pointer<stdgo.image.Image.NRGBA>)))) {
		var _src0:Pointer<stdgo.image.Image.NRGBA> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__()
			.value;
		_pxRGBA = function(_x:GoInt, _y:GoInt):{
			var _0:GoUInt32;
			var _1:GoUInt32;
			var _2:GoUInt32;
			var _3:GoUInt32;
		} {
			var _r:GoUInt32 = ((0 : GoUInt32)),
				_g:GoUInt32 = ((0 : GoUInt32)),
				_b:GoUInt32 = ((0 : GoUInt32)),
				_a:GoUInt32 = ((0 : GoUInt32));
			return _src0.value.nrgbaat(_x, _y).rgba();
		};
	} else if (Go.assertable(((_src : Pointer<stdgo.image.Image.YCbCr>)))) {
		var _src0:Pointer<stdgo.image.Image.YCbCr> = _src == null ? null : _src.__underlying__() == null ? null : _src == null ? null : _src.__underlying__()
			.value;
		_pxRGBA = function(_x:GoInt, _y:GoInt):{
			var _0:GoUInt32;
			var _1:GoUInt32;
			var _2:GoUInt32;
			var _3:GoUInt32;
		} {
			var _r:GoUInt32 = ((0 : GoUInt32)),
				_g:GoUInt32 = ((0 : GoUInt32)),
				_b:GoUInt32 = ((0 : GoUInt32)),
				_a:GoUInt32 = ((0 : GoUInt32));
			return _src0.value.ycbCrAt(_x, _y).rgba();
		};
	};
	var _out:stdgo.image.color.Color.RGBA64 = (({
		a: ((65535 : GoUInt16)),
		r: 0,
		g: 0,
		b: 0
	} : stdgo.image.color.Color.RGBA64)).__copy__();
	{
		var _y:GoInt = ((0 : GoInt));
		Go.cfor(_y != _r.dy(), _y++, {
			{
				var _x:GoInt = ((0 : GoInt));
				Go.cfor(_x != _r.dx(), _x++, {
					var __tmp__ = _pxRGBA(_sp.x + _x, _sp.y + _y),
						_sr:GoUInt32 = __tmp__._0,
						_sg:GoUInt32 = __tmp__._1,
						_sb:GoUInt32 = __tmp__._2,
						_sa:GoUInt32 = __tmp__._3;
					var _er:GoInt32 = ((_sr : GoInt32)),
						_eg:GoInt32 = ((_sg : GoInt32)),
						_eb:GoInt32 = ((_sb : GoInt32)),
						_ea:GoInt32 = ((_sa : GoInt32));
					if (_floydSteinberg) {
						_er = _clamp(_er + _quantErrorCurr[_x + ((1 : GoInt))][((0 : GoInt))] / ((16 : GoInt32)));
						_eg = _clamp(_eg + _quantErrorCurr[_x + ((1 : GoInt))][((1 : GoInt))] / ((16 : GoInt32)));
						_eb = _clamp(_eb + _quantErrorCurr[_x + ((1 : GoInt))][((2 : GoInt))] / ((16 : GoInt32)));
						_ea = _clamp(_ea + _quantErrorCurr[_x + ((1 : GoInt))][((3 : GoInt))] / ((16 : GoInt32)));
					};
					if (_palette != null && !_palette.isNil()) {
						var _bestIndex:GoInt = ((0 : GoInt)),
							_bestSum:GoUInt32 = ((((((1 : GoUnTypedInt)) << ((32 : GoUnTypedInt))) - ((1 : GoUnTypedInt))) : GoUInt32));
						{
							var _index;
							var _p;
							for (_obj in _palette.keyValueIterator()) {
								_index = _obj.key;
								_p = _obj.value;
								var _sum:GoUInt32 = _sqDiff(_er, _p[((0 : GoInt))]) + _sqDiff(_eg, _p[((1 : GoInt))]) + _sqDiff(_eb, _p[((2 : GoInt))])
									+ _sqDiff(_ea, _p[((3 : GoInt))]);
								if (_sum < _bestSum) {
									{
										final __tmp__0 = _index;
										final __tmp__1 = _sum;
										_bestIndex = __tmp__0;
										_bestSum = __tmp__1;
									};
									if (_sum == ((0 : GoUInt32))) {
										break;
									};
								};
							};
						};
						_pix[_y * _stride + _x] = ((_bestIndex : GoByte));
						if (!_floydSteinberg) {
							continue;
						};
						_er = _er - (_palette[_bestIndex][((0 : GoInt))]);
						_eg = _eg - (_palette[_bestIndex][((1 : GoInt))]);
						_eb = _eb - (_palette[_bestIndex][((2 : GoInt))]);
						_ea = _ea - (_palette[_bestIndex][((3 : GoInt))]);
					} else {
						_out.r = ((_er : GoUInt16));
						_out.g = ((_eg : GoUInt16));
						_out.b = ((_eb : GoUInt16));
						_out.a = ((_ea : GoUInt16));
						_dst.set(_r.min.x + _x, _r.min.y + _y, Go.pointer(_out).value);
						if (!_floydSteinberg) {
							continue;
						};
						{
							var __tmp__ = _dst.at(_r.min.x + _x, _r.min.y + _y).rgba();
							_sr = __tmp__._0;
							_sg = __tmp__._1;
							_sb = __tmp__._2;
							_sa = __tmp__._3;
						};
						_er = _er - (((_sr : GoInt32)));
						_eg = _eg - (((_sg : GoInt32)));
						_eb = _eb - (((_sb : GoInt32)));
						_ea = _ea - (((_sa : GoInt32)));
					};
					_quantErrorNext[_x + ((0 : GoInt))][((0 : GoInt))] = _quantErrorNext[_x + ((0 : GoInt))][((0 : GoInt))] + (_er * ((3 : GoInt32)));
					_quantErrorNext[_x + ((0 : GoInt))][((1 : GoInt))] = _quantErrorNext[_x + ((0 : GoInt))][((1 : GoInt))] + (_eg * ((3 : GoInt32)));
					_quantErrorNext[_x + ((0 : GoInt))][((2 : GoInt))] = _quantErrorNext[_x + ((0 : GoInt))][((2 : GoInt))] + (_eb * ((3 : GoInt32)));
					_quantErrorNext[_x + ((0 : GoInt))][((3 : GoInt))] = _quantErrorNext[_x + ((0 : GoInt))][((3 : GoInt))] + (_ea * ((3 : GoInt32)));
					_quantErrorNext[_x + ((1 : GoInt))][((0 : GoInt))] = _quantErrorNext[_x + ((1 : GoInt))][((0 : GoInt))] + (_er * ((5 : GoInt32)));
					_quantErrorNext[_x + ((1 : GoInt))][((1 : GoInt))] = _quantErrorNext[_x + ((1 : GoInt))][((1 : GoInt))] + (_eg * ((5 : GoInt32)));
					_quantErrorNext[_x + ((1 : GoInt))][((2 : GoInt))] = _quantErrorNext[_x + ((1 : GoInt))][((2 : GoInt))] + (_eb * ((5 : GoInt32)));
					_quantErrorNext[_x + ((1 : GoInt))][((3 : GoInt))] = _quantErrorNext[_x + ((1 : GoInt))][((3 : GoInt))] + (_ea * ((5 : GoInt32)));
					_quantErrorNext[_x + ((2 : GoInt))][((0 : GoInt))] = _quantErrorNext[_x + ((2 : GoInt))][((0 : GoInt))] + (_er * ((1 : GoInt32)));
					_quantErrorNext[_x + ((2 : GoInt))][((1 : GoInt))] = _quantErrorNext[_x + ((2 : GoInt))][((1 : GoInt))] + (_eg * ((1 : GoInt32)));
					_quantErrorNext[_x + ((2 : GoInt))][((2 : GoInt))] = _quantErrorNext[_x + ((2 : GoInt))][((2 : GoInt))] + (_eb * ((1 : GoInt32)));
					_quantErrorNext[_x + ((2 : GoInt))][((3 : GoInt))] = _quantErrorNext[_x + ((2 : GoInt))][((3 : GoInt))] + (_ea * ((1 : GoInt32)));
					_quantErrorCurr[_x + ((2 : GoInt))][((0 : GoInt))] = _quantErrorCurr[_x + ((2 : GoInt))][((0 : GoInt))] + (_er * ((7 : GoInt32)));
					_quantErrorCurr[_x + ((2 : GoInt))][((1 : GoInt))] = _quantErrorCurr[_x + ((2 : GoInt))][((1 : GoInt))] + (_eg * ((7 : GoInt32)));
					_quantErrorCurr[_x + ((2 : GoInt))][((2 : GoInt))] = _quantErrorCurr[_x + ((2 : GoInt))][((2 : GoInt))] + (_eb * ((7 : GoInt32)));
					_quantErrorCurr[_x + ((2 : GoInt))][((3 : GoInt))] = _quantErrorCurr[_x + ((2 : GoInt))][((3 : GoInt))] + (_ea * ((7 : GoInt32)));
				});
			};
			if (_floydSteinberg) {
				{
					final __tmp__0 = _quantErrorNext;
					final __tmp__1 = _quantErrorCurr;
					_quantErrorCurr = __tmp__0;
					_quantErrorNext = __tmp__1;
				};
				{
					var _i;
					for (_obj in _quantErrorNext.keyValueIterator()) {
						_i = _obj.key;
						_quantErrorNext[_i] = new GoArray<GoInt32>(...([].concat([for (i in 0...4) 0]))).copy();
					};
				};
			};
		});
	};
}

class Op_extension_fields {
	public function draw(__tmp__, _dst:Image, _r:stdgo.image.Image.Rectangle, _src:stdgo.image.Image.Image, _sp:stdgo.image.Image.Point):Void
		__tmp__.draw(_dst, _r, _src, _sp);
}

class T_floydSteinberg_extension_fields {
	public function draw(__tmp__, _dst:Image, _r:stdgo.image.Image.Rectangle, _src:stdgo.image.Image.Image, _sp:stdgo.image.Image.Point):Void
		__tmp__.draw(_dst, _r, _src, _sp);
}
