package stdgo.image;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

typedef T_reader = StructType & {
	> stdgo.io.Io.Reader,
	public function peek(arg0:GoInt):{var _0:Slice<GoByte>; var _1:Error;};
};

typedef Image = StructType & {
	public function colorModel():stdgo.image.color.Color.Model;
	public function bounds():Rectangle;
	public function at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Color;
};

typedef RGBA64Image = StructType & {
	> Image,
	public function rgba64at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64;
};

typedef PalettedImage = StructType & {
	> Image,
	public function colorIndexAt(_x:GoInt, _y:GoInt):GoUInt8;
};

@:structInit class T_format {
	public var _name:GoString = (("" : GoString));
	public var _magic:GoString = (("" : GoString));
	public var _decode:stdgo.io.Io.Reader -> {
		var _0:Image;
		var _1:stdgo.Error;
	} = null;
	public var _decodeConfig:stdgo.io.Io.Reader -> {
		var _0:Config;
		var _1:stdgo.Error;
	} = null;

	public function new(?_name:GoString, ?_magic:GoString, ?_decode:stdgo.io.Io.Reader -> {
		var _0:Image;
		var _1:stdgo.Error;
	}, ?_decodeConfig:stdgo.io.Io.Reader -> {
		var _0:Config;
		var _1:stdgo.Error;
	})
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_name) + " " + Go.string(_magic) + " " + Go.string(_decode) + " " + Go.string(_decodeConfig) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_format(_name, _magic, _decode, _decodeConfig);
	}

	public function __set__(__tmp__) {
		this._name = __tmp__._name;
		this._magic = __tmp__._magic;
		this._decode = __tmp__._decode;
		this._decodeConfig = __tmp__._decodeConfig;
		return this;
	}
}

@:structInit class Point {
	public function eq(_q:Point):Bool {
		var _p = this.__copy__();
		return Go.toInterface(_p) == Go.toInterface(_q);
	}

	public function mod(_r:Rectangle):Point {
		var _p = this.__copy__();
		var _w:GoInt = _r.dx(), _h:GoInt = _r.dy();
		_p = _p.sub(_r.min.__copy__()).__copy__();
		_p.x = _p.x % _w;
		if (_p.x < ((0 : GoInt))) {
			_p.x = _p.x + (_w);
		};
		_p.y = _p.y % _h;
		if (_p.y < ((0 : GoInt))) {
			_p.y = _p.y + (_h);
		};
		return _p.add(_r.min.__copy__()).__copy__();
	}

	public function in_(_r:Rectangle):Bool {
		var _p = this.__copy__();
		return _r.min.x <= _p.x && _p.x < _r.max.x && _r.min.y <= _p.y && _p.y < _r.max.y;
	}

	public function div(_k:GoInt):Point {
		var _p = this.__copy__();
		return new Point(_p.x / _k, _p.y / _k).__copy__();
	}

	public function mul(_k:GoInt):Point {
		var _p = this.__copy__();
		return new Point(_p.x * _k, _p.y * _k).__copy__();
	}

	public function sub(_q:Point):Point {
		var _p = this.__copy__();
		return new Point(_p.x - _q.x, _p.y - _q.y).__copy__();
	}

	public function add(_q:Point):Point {
		var _p = this.__copy__();
		return new Point(_p.x + _q.x, _p.y + _q.y).__copy__();
	}

	public function toString():GoString {
		var _p = this.__copy__();
		return (("(" : GoString))
			+ stdgo.strconv.Strconv.itoa(_p.x)
			+ (("," : GoString))
			+ stdgo.strconv.Strconv.itoa(_p.y)
			+ ((")" : GoString));
	}

	public var x:GoInt = ((0 : GoInt));
	public var y:GoInt = ((0 : GoInt));

	public function new(?x:GoInt, ?y:GoInt)
		stdgo.internal.Macro.initLocals();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Point(x, y);
	}

	public function __set__(__tmp__) {
		this.x = __tmp__.x;
		this.y = __tmp__.y;
		return this;
	}
}

@:structInit class Rectangle {
	public function colorModel():stdgo.image.color.Color.Model {
		var _r = this.__copy__();
		return stdgo.image.color.Color.alpha16Model;
	}

	public function bounds():Rectangle {
		var _r = this.__copy__();
		return _r.__copy__();
	}

	public function rgba64at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64 {
		var _r = this.__copy__();
		if ((new Point(_x, _y)).in_(_r.__copy__())) {
			return new stdgo.image.color.Color.RGBA64(((65535 : GoUInt16)), ((65535 : GoUInt16)), ((65535 : GoUInt16)), ((65535 : GoUInt16))).__copy__();
		};
		return new stdgo.image.color.Color.RGBA64().__copy__();
	}

	public function at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Color {
		var _r = this.__copy__();
		if ((new Point(_x, _y)).in_(_r.__copy__())) {
			return stdgo.image.color.Color.opaque.__copy__();
		};
		return stdgo.image.color.Color.transparent.__copy__();
	}

	public function canon():Rectangle {
		var _r = this.__copy__();
		if (_r.max.x < _r.min.x) {
			{
				final __tmp__0 = _r.max.x;
				final __tmp__1 = _r.min.x;
				_r.min.x = __tmp__0;
				_r.max.x = __tmp__1;
			};
		};
		if (_r.max.y < _r.min.y) {
			{
				final __tmp__0 = _r.max.y;
				final __tmp__1 = _r.min.y;
				_r.min.y = __tmp__0;
				_r.max.y = __tmp__1;
			};
		};
		return _r.__copy__();
	}

	public function in_(_s:Rectangle):Bool {
		var _r = this.__copy__();
		if (_r.empty()) {
			return true;
		};
		return _s.min.x <= _r.min.x && _r.max.x <= _s.max.x && _s.min.y <= _r.min.y && _r.max.y <= _s.max.y;
	}

	public function overlaps(_s:Rectangle):Bool {
		var _r = this.__copy__();
		return !_r.empty() && !_s.empty() && _r.min.x < _s.max.x && _s.min.x < _r.max.x && _r.min.y < _s.max.y && _s.min.y < _r.max.y;
	}

	public function eq(_s:Rectangle):Bool {
		var _r = this.__copy__();
		return Go.toInterface(_r) == Go.toInterface(_s) || _r.empty() && _s.empty();
	}

	public function empty():Bool {
		var _r = this.__copy__();
		return _r.min.x >= _r.max.x || _r.min.y >= _r.max.y;
	}

	public function union(_s:Rectangle):Rectangle {
		var _r = this.__copy__();
		if (_r.empty()) {
			return _s.__copy__();
		};
		if (_s.empty()) {
			return _r.__copy__();
		};
		if (_r.min.x > _s.min.x) {
			_r.min.x = _s.min.x;
		};
		if (_r.min.y > _s.min.y) {
			_r.min.y = _s.min.y;
		};
		if (_r.max.x < _s.max.x) {
			_r.max.x = _s.max.x;
		};
		if (_r.max.y < _s.max.y) {
			_r.max.y = _s.max.y;
		};
		return _r.__copy__();
	}

	public function intersect(_s:Rectangle):Rectangle {
		var _r = this.__copy__();
		if (_r.min.x < _s.min.x) {
			_r.min.x = _s.min.x;
		};
		if (_r.min.y < _s.min.y) {
			_r.min.y = _s.min.y;
		};
		if (_r.max.x > _s.max.x) {
			_r.max.x = _s.max.x;
		};
		if (_r.max.y > _s.max.y) {
			_r.max.y = _s.max.y;
		};
		if (_r.empty()) {
			return zr.__copy__();
		};
		return _r.__copy__();
	}

	public function inset(_n:GoInt):Rectangle {
		var _r = this.__copy__();
		if (_r.dx() < ((2 : GoInt)) * _n) {
			_r.min.x = (_r.min.x + _r.max.x) / ((2 : GoInt));
			_r.max.x = _r.min.x;
		} else {
			_r.min.x = _r.min.x + (_n);
			_r.max.x = _r.max.x - (_n);
		};
		if (_r.dy() < ((2 : GoInt)) * _n) {
			_r.min.y = (_r.min.y + _r.max.y) / ((2 : GoInt));
			_r.max.y = _r.min.y;
		} else {
			_r.min.y = _r.min.y + (_n);
			_r.max.y = _r.max.y - (_n);
		};
		return _r.__copy__();
	}

	public function sub(_p:Point):Rectangle {
		var _r = this.__copy__();
		return new Rectangle(new Point(_r.min.x - _p.x, _r.min.y - _p.y).__copy__(), new Point(_r.max.x - _p.x, _r.max.y - _p.y).__copy__()).__copy__();
	}

	public function add(_p:Point):Rectangle {
		var _r = this.__copy__();
		return new Rectangle(new Point(_r.min.x + _p.x, _r.min.y + _p.y).__copy__(), new Point(_r.max.x + _p.x, _r.max.y + _p.y).__copy__()).__copy__();
	}

	public function size():Point {
		var _r = this.__copy__();
		return new Point(_r.max.x - _r.min.x, _r.max.y - _r.min.y).__copy__();
	}

	public function dy():GoInt {
		var _r = this.__copy__();
		return _r.max.y - _r.min.y;
	}

	public function dx():GoInt {
		var _r = this.__copy__();
		return _r.max.x - _r.min.x;
	}

	public function toString():GoString {
		var _r = this.__copy__();
		return _r.min.toString() + (("-" : GoString)) + _r.max.toString();
	}

	public var min:Point = new Point();
	public var max:Point = new Point();

	public function new(?min:Point, ?max:Point)
		stdgo.internal.Macro.initLocals();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Rectangle(min, max);
	}

	public function __set__(__tmp__) {
		this.min = __tmp__.min;
		this.max = __tmp__.max;
		return this;
	}
}

@:structInit class Config {
	public var colorModel:stdgo.image.color.Color.Model = ((null : stdgo.image.color.Color.Model));
	public var width:GoInt = ((0 : GoInt));
	public var height:GoInt = ((0 : GoInt));

	public function new(?colorModel:stdgo.image.color.Color.Model, ?width:GoInt, ?height:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(colorModel) + " " + Go.string(width) + " " + Go.string(height) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Config(colorModel, width, height);
	}

	public function __set__(__tmp__) {
		this.colorModel = __tmp__.colorModel;
		this.width = __tmp__.width;
		this.height = __tmp__.height;
		return this;
	}
}

@:structInit class RGBA {
	public function opaque():Bool {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_p.value.rect.empty()) {
			return true;
		};
		var _i0:GoInt = ((3 : GoInt)),
			_i1:GoInt = _p.value.rect.dx() * ((4 : GoInt));
		{
			var _y:GoInt = _p.value.rect.min.y;
			Go.cfor(_y < _p.value.rect.max.y, _y++, {
				{
					var _i:GoInt = _i0;
					Go.cfor(_i < _i1, _i = _i + (((4 : GoInt))), {
						if (_p.value.pix[_i] != ((255 : GoUInt8))) {
							return false;
						};
					});
				};
				_i0 = _i0 + (_p.value.stride);
				_i1 = _i1 + (_p.value.stride);
			});
		};
		return true;
	}

	public function subImage(_r:Rectangle):Image {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_r = _r.intersect(_p.value.rect.__copy__()).__copy__();
		if (_r.empty()) {
			return Go.pointer(new RGBA()).value;
		};
		var _i:GoInt = _p.value.pixOffset(_r.min.x, _r.min.y);
		return Go.pointer((({pix: _p.value.pix.__slice__(_i), stride: _p.value.stride, rect: _r.__copy__()} : RGBA))).value;
	}

	public function setRGBA(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
		_s[((0 : GoInt))] = _c.r;
		_s[((1 : GoInt))] = _c.g;
		_s[((2 : GoInt))] = _c.b;
		_s[((3 : GoInt))] = _c.a;
	}

	public function setRGBA64(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
		_s[((0 : GoInt))] = (((_c.r >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((1 : GoInt))] = (((_c.g >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((2 : GoInt))] = (((_c.b >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((3 : GoInt))] = (((_c.a >> ((8 : GoUnTypedInt))) : GoUInt8));
	}

	public function set(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _c1:stdgo.image.color.Color.RGBA = ((stdgo.image.color.Color.rgbamodel.convert(_c)
			.__underlying__()
			.value : stdgo.image.color.Color.RGBA)).__copy__();
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
		_s[((0 : GoInt))] = _c1.r;
		_s[((1 : GoInt))] = _c1.g;
		_s[((2 : GoInt))] = _c1.b;
		_s[((3 : GoInt))] = _c1.a;
	}

	public function pixOffset(_x:GoInt, _y:GoInt):GoInt {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (_y - _p.value.rect.min.y) * _p.value.stride + (_x - _p.value.rect.min.x) * ((4 : GoInt));
	}

	public function rgbaat(_x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return new stdgo.image.color.Color.RGBA().__copy__();
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
		return new stdgo.image.color.Color.RGBA(_s[((0 : GoInt))], _s[((1 : GoInt))], _s[((2 : GoInt))], _s[((3 : GoInt))]).__copy__();
	}

	public function rgba64at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64 {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return new stdgo.image.color.Color.RGBA64().__copy__();
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
		var _r:GoUInt16 = ((_s[((0 : GoInt))] : GoUInt16));
		var _g:GoUInt16 = ((_s[((1 : GoInt))] : GoUInt16));
		var _b:GoUInt16 = ((_s[((2 : GoInt))] : GoUInt16));
		var _a:GoUInt16 = ((_s[((3 : GoInt))] : GoUInt16));
		return new stdgo.image.color.Color.RGBA64(((_r << ((8 : GoUnTypedInt)))) | _r, ((_g << ((8 : GoUnTypedInt)))) | _g,
			((_b << ((8 : GoUnTypedInt)))) | _b, ((_a << ((8 : GoUnTypedInt)))) | _a).__copy__();
	}

	public function at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Color {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.rgbaat(_x, _y).__copy__();
	}

	public function bounds():Rectangle {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.rect.__copy__();
	}

	public function colorModel():stdgo.image.color.Color.Model {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.image.color.Color.rgbamodel;
	}

	public var pix:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var stride:GoInt = ((0 : GoInt));
	public var rect:Rectangle = new Rectangle();

	public function new(?pix:Slice<GoUInt8>, ?stride:GoInt, ?rect:Rectangle)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(pix) + " " + Go.string(stride) + " " + Go.string(rect) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new RGBA(pix, stride, rect);
	}

	public function __set__(__tmp__) {
		this.pix = __tmp__.pix;
		this.stride = __tmp__.stride;
		this.rect = __tmp__.rect;
		return this;
	}
}

@:structInit class RGBA64 {
	public function opaque():Bool {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_p.value.rect.empty()) {
			return true;
		};
		var _i0:GoInt = ((6 : GoInt)),
			_i1:GoInt = _p.value.rect.dx() * ((8 : GoInt));
		{
			var _y:GoInt = _p.value.rect.min.y;
			Go.cfor(_y < _p.value.rect.max.y, _y++, {
				{
					var _i:GoInt = _i0;
					Go.cfor(_i < _i1, _i = _i + (((8 : GoInt))), {
						if (_p.value.pix[_i + ((0 : GoInt))] != ((255 : GoUInt8))
							|| _p.value.pix[_i + ((1 : GoInt))] != ((255 : GoUInt8))) {
							return false;
						};
					});
				};
				_i0 = _i0 + (_p.value.stride);
				_i1 = _i1 + (_p.value.stride);
			});
		};
		return true;
	}

	public function subImage(_r:Rectangle):Image {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_r = _r.intersect(_p.value.rect.__copy__()).__copy__();
		if (_r.empty()) {
			return Go.pointer(new RGBA64()).value;
		};
		var _i:GoInt = _p.value.pixOffset(_r.min.x, _r.min.y);
		return Go.pointer((({pix: _p.value.pix.__slice__(_i), stride: _p.value.stride, rect: _r.__copy__()} : RGBA64))).value;
	}

	public function setRGBA64(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((8 : GoInt))).setCap(((_i + ((8 : GoInt)) : GoInt)) - ((1 : GoInt)));
		_s[((0 : GoInt))] = (((_c.r >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((1 : GoInt))] = ((_c.r : GoUInt8));
		_s[((2 : GoInt))] = (((_c.g >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((3 : GoInt))] = ((_c.g : GoUInt8));
		_s[((4 : GoInt))] = (((_c.b >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((5 : GoInt))] = ((_c.b : GoUInt8));
		_s[((6 : GoInt))] = (((_c.a >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((7 : GoInt))] = ((_c.a : GoUInt8));
	}

	public function set(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _c1:stdgo.image.color.Color.RGBA64 = ((stdgo.image.color.Color.rgba64model.convert(_c)
			.__underlying__()
			.value : stdgo.image.color.Color.RGBA64)).__copy__();
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((8 : GoInt))).setCap(((_i + ((8 : GoInt)) : GoInt)) - ((1 : GoInt)));
		_s[((0 : GoInt))] = (((_c1.r >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((1 : GoInt))] = ((_c1.r : GoUInt8));
		_s[((2 : GoInt))] = (((_c1.g >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((3 : GoInt))] = ((_c1.g : GoUInt8));
		_s[((4 : GoInt))] = (((_c1.b >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((5 : GoInt))] = ((_c1.b : GoUInt8));
		_s[((6 : GoInt))] = (((_c1.a >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((7 : GoInt))] = ((_c1.a : GoUInt8));
	}

	public function pixOffset(_x:GoInt, _y:GoInt):GoInt {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (_y - _p.value.rect.min.y) * _p.value.stride + (_x - _p.value.rect.min.x) * ((8 : GoInt));
	}

	public function rgba64at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64 {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return new stdgo.image.color.Color.RGBA64().__copy__();
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((8 : GoInt))).setCap(((_i + ((8 : GoInt)) : GoInt)) - ((1 : GoInt)));
		return new stdgo.image.color.Color.RGBA64((((_s[((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_s[((1 : GoInt))] : GoUInt16)),
			(((_s[((2 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_s[((3 : GoInt))] : GoUInt16)),
			(((_s[((4 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_s[((5 : GoInt))] : GoUInt16)),
			(((_s[((6 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_s[((7 : GoInt))] : GoUInt16))).__copy__();
	}

	public function at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Color {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.rgba64at(_x, _y).__copy__();
	}

	public function bounds():Rectangle {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.rect.__copy__();
	}

	public function colorModel():stdgo.image.color.Color.Model {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.image.color.Color.rgba64model;
	}

	public var pix:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var stride:GoInt = ((0 : GoInt));
	public var rect:Rectangle = new Rectangle();

	public function new(?pix:Slice<GoUInt8>, ?stride:GoInt, ?rect:Rectangle)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(pix) + " " + Go.string(stride) + " " + Go.string(rect) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new RGBA64(pix, stride, rect);
	}

	public function __set__(__tmp__) {
		this.pix = __tmp__.pix;
		this.stride = __tmp__.stride;
		this.rect = __tmp__.rect;
		return this;
	}
}

@:structInit class NRGBA {
	public function opaque():Bool {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_p.value.rect.empty()) {
			return true;
		};
		var _i0:GoInt = ((3 : GoInt)),
			_i1:GoInt = _p.value.rect.dx() * ((4 : GoInt));
		{
			var _y:GoInt = _p.value.rect.min.y;
			Go.cfor(_y < _p.value.rect.max.y, _y++, {
				{
					var _i:GoInt = _i0;
					Go.cfor(_i < _i1, _i = _i + (((4 : GoInt))), {
						if (_p.value.pix[_i] != ((255 : GoUInt8))) {
							return false;
						};
					});
				};
				_i0 = _i0 + (_p.value.stride);
				_i1 = _i1 + (_p.value.stride);
			});
		};
		return true;
	}

	public function subImage(_r:Rectangle):Image {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_r = _r.intersect(_p.value.rect.__copy__()).__copy__();
		if (_r.empty()) {
			return Go.pointer(new NRGBA()).value;
		};
		var _i:GoInt = _p.value.pixOffset(_r.min.x, _r.min.y);
		return Go.pointer((({pix: _p.value.pix.__slice__(_i), stride: _p.value.stride, rect: _r.__copy__()} : NRGBA))).value;
	}

	public function setNRGBA(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.NRGBA):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
		_s[((0 : GoInt))] = _c.r;
		_s[((1 : GoInt))] = _c.g;
		_s[((2 : GoInt))] = _c.b;
		_s[((3 : GoInt))] = _c.a;
	}

	public function setRGBA64(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _r:GoUInt32 = ((_c.r : GoUInt32)),
			_g:GoUInt32 = ((_c.g : GoUInt32)),
			_b:GoUInt32 = ((_c.b : GoUInt32)),
			_a:GoUInt32 = ((_c.a : GoUInt32));
		if ((_a != ((0 : GoUInt32))) && (_a != ((65535 : GoUInt32)))) {
			_r = (_r * ((65535 : GoUInt32))) / _a;
			_g = (_g * ((65535 : GoUInt32))) / _a;
			_b = (_b * ((65535 : GoUInt32))) / _a;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
		_s[((0 : GoInt))] = (((_r >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((1 : GoInt))] = (((_g >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((2 : GoInt))] = (((_b >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((3 : GoInt))] = (((_a >> ((8 : GoUnTypedInt))) : GoUInt8));
	}

	public function set(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _c1:stdgo.image.color.Color.NRGBA = ((stdgo.image.color.Color.nrgbamodel.convert(_c)
			.__underlying__()
			.value : stdgo.image.color.Color.NRGBA)).__copy__();
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
		_s[((0 : GoInt))] = _c1.r;
		_s[((1 : GoInt))] = _c1.g;
		_s[((2 : GoInt))] = _c1.b;
		_s[((3 : GoInt))] = _c1.a;
	}

	public function pixOffset(_x:GoInt, _y:GoInt):GoInt {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (_y - _p.value.rect.min.y) * _p.value.stride + (_x - _p.value.rect.min.x) * ((4 : GoInt));
	}

	public function nrgbaat(_x:GoInt, _y:GoInt):stdgo.image.color.Color.NRGBA {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return new stdgo.image.color.Color.NRGBA().__copy__();
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
		return new stdgo.image.color.Color.NRGBA(_s[((0 : GoInt))], _s[((1 : GoInt))], _s[((2 : GoInt))], _s[((3 : GoInt))]).__copy__();
	}

	public function rgba64at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64 {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _p.value.nrgbaat(_x, _y).rgba(),
			_r:GoUInt32 = __tmp__._0,
			_g:GoUInt32 = __tmp__._1,
			_b:GoUInt32 = __tmp__._2,
			_a:GoUInt32 = __tmp__._3;
		return new stdgo.image.color.Color.RGBA64(((_r : GoUInt16)), ((_g : GoUInt16)), ((_b : GoUInt16)), ((_a : GoUInt16))).__copy__();
	}

	public function at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Color {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.nrgbaat(_x, _y).__copy__();
	}

	public function bounds():Rectangle {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.rect.__copy__();
	}

	public function colorModel():stdgo.image.color.Color.Model {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.image.color.Color.nrgbamodel;
	}

	public var pix:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var stride:GoInt = ((0 : GoInt));
	public var rect:Rectangle = new Rectangle();

	public function new(?pix:Slice<GoUInt8>, ?stride:GoInt, ?rect:Rectangle)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(pix) + " " + Go.string(stride) + " " + Go.string(rect) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new NRGBA(pix, stride, rect);
	}

	public function __set__(__tmp__) {
		this.pix = __tmp__.pix;
		this.stride = __tmp__.stride;
		this.rect = __tmp__.rect;
		return this;
	}
}

@:structInit class NRGBA64 {
	public function opaque():Bool {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_p.value.rect.empty()) {
			return true;
		};
		var _i0:GoInt = ((6 : GoInt)),
			_i1:GoInt = _p.value.rect.dx() * ((8 : GoInt));
		{
			var _y:GoInt = _p.value.rect.min.y;
			Go.cfor(_y < _p.value.rect.max.y, _y++, {
				{
					var _i:GoInt = _i0;
					Go.cfor(_i < _i1, _i = _i + (((8 : GoInt))), {
						if (_p.value.pix[_i + ((0 : GoInt))] != ((255 : GoUInt8))
							|| _p.value.pix[_i + ((1 : GoInt))] != ((255 : GoUInt8))) {
							return false;
						};
					});
				};
				_i0 = _i0 + (_p.value.stride);
				_i1 = _i1 + (_p.value.stride);
			});
		};
		return true;
	}

	public function subImage(_r:Rectangle):Image {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_r = _r.intersect(_p.value.rect.__copy__()).__copy__();
		if (_r.empty()) {
			return Go.pointer(new NRGBA64()).value;
		};
		var _i:GoInt = _p.value.pixOffset(_r.min.x, _r.min.y);
		return Go.pointer((({pix: _p.value.pix.__slice__(_i), stride: _p.value.stride, rect: _r.__copy__()} : NRGBA64))).value;
	}

	public function setNRGBA64(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.NRGBA64):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((8 : GoInt))).setCap(((_i + ((8 : GoInt)) : GoInt)) - ((1 : GoInt)));
		_s[((0 : GoInt))] = (((_c.r >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((1 : GoInt))] = ((_c.r : GoUInt8));
		_s[((2 : GoInt))] = (((_c.g >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((3 : GoInt))] = ((_c.g : GoUInt8));
		_s[((4 : GoInt))] = (((_c.b >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((5 : GoInt))] = ((_c.b : GoUInt8));
		_s[((6 : GoInt))] = (((_c.a >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((7 : GoInt))] = ((_c.a : GoUInt8));
	}

	public function setRGBA64(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _r:GoUInt32 = ((_c.r : GoUInt32)),
			_g:GoUInt32 = ((_c.g : GoUInt32)),
			_b:GoUInt32 = ((_c.b : GoUInt32)),
			_a:GoUInt32 = ((_c.a : GoUInt32));
		if ((_a != ((0 : GoUInt32))) && (_a != ((65535 : GoUInt32)))) {
			_r = (_r * ((65535 : GoUInt32))) / _a;
			_g = (_g * ((65535 : GoUInt32))) / _a;
			_b = (_b * ((65535 : GoUInt32))) / _a;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((8 : GoInt))).setCap(((_i + ((8 : GoInt)) : GoInt)) - ((1 : GoInt)));
		_s[((0 : GoInt))] = (((_r >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((1 : GoInt))] = ((_r : GoUInt8));
		_s[((2 : GoInt))] = (((_g >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((3 : GoInt))] = ((_g : GoUInt8));
		_s[((4 : GoInt))] = (((_b >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((5 : GoInt))] = ((_b : GoUInt8));
		_s[((6 : GoInt))] = (((_a >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((7 : GoInt))] = ((_a : GoUInt8));
	}

	public function set(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _c1:stdgo.image.color.Color.NRGBA64 = ((stdgo.image.color.Color.nrgba64model.convert(_c)
			.__underlying__()
			.value : stdgo.image.color.Color.NRGBA64)).__copy__();
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((8 : GoInt))).setCap(((_i + ((8 : GoInt)) : GoInt)) - ((1 : GoInt)));
		_s[((0 : GoInt))] = (((_c1.r >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((1 : GoInt))] = ((_c1.r : GoUInt8));
		_s[((2 : GoInt))] = (((_c1.g >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((3 : GoInt))] = ((_c1.g : GoUInt8));
		_s[((4 : GoInt))] = (((_c1.b >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((5 : GoInt))] = ((_c1.b : GoUInt8));
		_s[((6 : GoInt))] = (((_c1.a >> ((8 : GoUnTypedInt))) : GoUInt8));
		_s[((7 : GoInt))] = ((_c1.a : GoUInt8));
	}

	public function pixOffset(_x:GoInt, _y:GoInt):GoInt {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (_y - _p.value.rect.min.y) * _p.value.stride + (_x - _p.value.rect.min.x) * ((8 : GoInt));
	}

	public function nrgba64at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.NRGBA64 {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return new stdgo.image.color.Color.NRGBA64().__copy__();
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((8 : GoInt))).setCap(((_i + ((8 : GoInt)) : GoInt)) - ((1 : GoInt)));
		return new stdgo.image.color.Color.NRGBA64((((_s[((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_s[((1 : GoInt))] : GoUInt16)),
			(((_s[((2 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_s[((3 : GoInt))] : GoUInt16)),
			(((_s[((4 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_s[((5 : GoInt))] : GoUInt16)),
			(((_s[((6 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_s[((7 : GoInt))] : GoUInt16))).__copy__();
	}

	public function rgba64at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64 {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _p.value.nrgba64at(_x, _y).rgba(),
			_r:GoUInt32 = __tmp__._0,
			_g:GoUInt32 = __tmp__._1,
			_b:GoUInt32 = __tmp__._2,
			_a:GoUInt32 = __tmp__._3;
		return new stdgo.image.color.Color.RGBA64(((_r : GoUInt16)), ((_g : GoUInt16)), ((_b : GoUInt16)), ((_a : GoUInt16))).__copy__();
	}

	public function at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Color {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.nrgba64at(_x, _y).__copy__();
	}

	public function bounds():Rectangle {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.rect.__copy__();
	}

	public function colorModel():stdgo.image.color.Color.Model {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.image.color.Color.nrgba64model;
	}

	public var pix:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var stride:GoInt = ((0 : GoInt));
	public var rect:Rectangle = new Rectangle();

	public function new(?pix:Slice<GoUInt8>, ?stride:GoInt, ?rect:Rectangle)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(pix) + " " + Go.string(stride) + " " + Go.string(rect) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new NRGBA64(pix, stride, rect);
	}

	public function __set__(__tmp__) {
		this.pix = __tmp__.pix;
		this.stride = __tmp__.stride;
		this.rect = __tmp__.rect;
		return this;
	}
}

@:structInit class Alpha {
	public function opaque():Bool {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_p.value.rect.empty()) {
			return true;
		};
		var _i0:GoInt = ((0 : GoInt)), _i1:GoInt = _p.value.rect.dx();
		{
			var _y:GoInt = _p.value.rect.min.y;
			Go.cfor(_y < _p.value.rect.max.y, _y++, {
				{
					var _i:GoInt = _i0;
					Go.cfor(_i < _i1, _i++, {
						if (_p.value.pix[_i] != ((255 : GoUInt8))) {
							return false;
						};
					});
				};
				_i0 = _i0 + (_p.value.stride);
				_i1 = _i1 + (_p.value.stride);
			});
		};
		return true;
	}

	public function subImage(_r:Rectangle):Image {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_r = _r.intersect(_p.value.rect.__copy__()).__copy__();
		if (_r.empty()) {
			return Go.pointer(new Alpha()).value;
		};
		var _i:GoInt = _p.value.pixOffset(_r.min.x, _r.min.y);
		return Go.pointer((({pix: _p.value.pix.__slice__(_i), stride: _p.value.stride, rect: _r.__copy__()} : Alpha))).value;
	}

	public function setAlpha(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Alpha):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		_p.value.pix[_i] = _c.a;
	}

	public function setRGBA64(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		_p.value.pix[_i] = (((_c.a >> ((8 : GoUnTypedInt))) : GoUInt8));
	}

	public function set(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		_p.value.pix[_i] = ((stdgo.image.color.Color.alphaModel.convert(_c).__underlying__().value : stdgo.image.color.Color.Alpha)).a;
	}

	public function pixOffset(_x:GoInt, _y:GoInt):GoInt {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (_y - _p.value.rect.min.y) * _p.value.stride + (_x - _p.value.rect.min.x) * ((1 : GoInt));
	}

	public function alphaAt(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Alpha {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return new stdgo.image.color.Color.Alpha().__copy__();
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		return new stdgo.image.color.Color.Alpha(_p.value.pix[_i]).__copy__();
	}

	public function rgba64at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64 {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _a:GoUInt16 = ((_p.value.alphaAt(_x, _y).a : GoUInt16));
		_a = _a | ((_a << ((8 : GoUnTypedInt))));
		return new stdgo.image.color.Color.RGBA64(_a, _a, _a, _a).__copy__();
	}

	public function at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Color {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.alphaAt(_x, _y).__copy__();
	}

	public function bounds():Rectangle {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.rect.__copy__();
	}

	public function colorModel():stdgo.image.color.Color.Model {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.image.color.Color.alphaModel;
	}

	public var pix:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var stride:GoInt = ((0 : GoInt));
	public var rect:Rectangle = new Rectangle();

	public function new(?pix:Slice<GoUInt8>, ?stride:GoInt, ?rect:Rectangle)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(pix) + " " + Go.string(stride) + " " + Go.string(rect) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Alpha(pix, stride, rect);
	}

	public function __set__(__tmp__) {
		this.pix = __tmp__.pix;
		this.stride = __tmp__.stride;
		this.rect = __tmp__.rect;
		return this;
	}
}

@:structInit class Alpha16 {
	public function opaque():Bool {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_p.value.rect.empty()) {
			return true;
		};
		var _i0:GoInt = ((0 : GoInt)),
			_i1:GoInt = _p.value.rect.dx() * ((2 : GoInt));
		{
			var _y:GoInt = _p.value.rect.min.y;
			Go.cfor(_y < _p.value.rect.max.y, _y++, {
				{
					var _i:GoInt = _i0;
					Go.cfor(_i < _i1, _i = _i + (((2 : GoInt))), {
						if (_p.value.pix[_i + ((0 : GoInt))] != ((255 : GoUInt8))
							|| _p.value.pix[_i + ((1 : GoInt))] != ((255 : GoUInt8))) {
							return false;
						};
					});
				};
				_i0 = _i0 + (_p.value.stride);
				_i1 = _i1 + (_p.value.stride);
			});
		};
		return true;
	}

	public function subImage(_r:Rectangle):Image {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_r = _r.intersect(_p.value.rect.__copy__()).__copy__();
		if (_r.empty()) {
			return Go.pointer(new Alpha16()).value;
		};
		var _i:GoInt = _p.value.pixOffset(_r.min.x, _r.min.y);
		return Go.pointer((({pix: _p.value.pix.__slice__(_i), stride: _p.value.stride, rect: _r.__copy__()} : Alpha16))).value;
	}

	public function setAlpha16(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Alpha16):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		_p.value.pix[_i + ((0 : GoInt))] = (((_c.a >> ((8 : GoUnTypedInt))) : GoUInt8));
		_p.value.pix[_i + ((1 : GoInt))] = ((_c.a : GoUInt8));
	}

	public function setRGBA64(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		_p.value.pix[_i + ((0 : GoInt))] = (((_c.a >> ((8 : GoUnTypedInt))) : GoUInt8));
		_p.value.pix[_i + ((1 : GoInt))] = ((_c.a : GoUInt8));
	}

	public function set(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _c1:stdgo.image.color.Color.Alpha16 = ((stdgo.image.color.Color.alpha16Model.convert(_c)
			.__underlying__()
			.value : stdgo.image.color.Color.Alpha16)).__copy__();
		_p.value.pix[_i + ((0 : GoInt))] = (((_c1.a >> ((8 : GoUnTypedInt))) : GoUInt8));
		_p.value.pix[_i + ((1 : GoInt))] = ((_c1.a : GoUInt8));
	}

	public function pixOffset(_x:GoInt, _y:GoInt):GoInt {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (_y - _p.value.rect.min.y) * _p.value.stride + (_x - _p.value.rect.min.x) * ((2 : GoInt));
	}

	public function alpha16At(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Alpha16 {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return new stdgo.image.color.Color.Alpha16().__copy__();
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		return new stdgo.image.color.Color.Alpha16((((_p.value.pix[_i + ((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_p.value.pix[_i
			+ ((1 : GoInt))] : GoUInt16))).__copy__();
	}

	public function rgba64at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64 {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _a:GoUInt16 = _p.value.alpha16At(_x, _y).a;
		return new stdgo.image.color.Color.RGBA64(_a, _a, _a, _a).__copy__();
	}

	public function at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Color {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.alpha16At(_x, _y).__copy__();
	}

	public function bounds():Rectangle {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.rect.__copy__();
	}

	public function colorModel():stdgo.image.color.Color.Model {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.image.color.Color.alpha16Model;
	}

	public var pix:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var stride:GoInt = ((0 : GoInt));
	public var rect:Rectangle = new Rectangle();

	public function new(?pix:Slice<GoUInt8>, ?stride:GoInt, ?rect:Rectangle)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(pix) + " " + Go.string(stride) + " " + Go.string(rect) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Alpha16(pix, stride, rect);
	}

	public function __set__(__tmp__) {
		this.pix = __tmp__.pix;
		this.stride = __tmp__.stride;
		this.rect = __tmp__.rect;
		return this;
	}
}

@:structInit class Gray {
	public function opaque():Bool {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return true;
	}

	public function subImage(_r:Rectangle):Image {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_r = _r.intersect(_p.value.rect.__copy__()).__copy__();
		if (_r.empty()) {
			return Go.pointer(new Gray()).value;
		};
		var _i:GoInt = _p.value.pixOffset(_r.min.x, _r.min.y);
		return Go.pointer((({pix: _p.value.pix.__slice__(_i), stride: _p.value.stride, rect: _r.__copy__()} : Gray))).value;
	}

	public function setGray(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Gray):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		_p.value.pix[_i] = _c.y;
	}

	public function setRGBA64(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _gray:GoUInt32 = ((((19595 : GoUInt32)) * ((_c.r : GoUInt32)) + ((38470 : GoUInt32)) * ((_c.g : GoUInt32))
			+ ((7471 : GoUInt32)) * ((_c.b : GoUInt32)) + (((1 : GoUnTypedInt)) << ((15 : GoUnTypedInt)))) >> ((24 : GoUnTypedInt)));
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		_p.value.pix[_i] = ((_gray : GoUInt8));
	}

	public function set(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		_p.value.pix[_i] = ((stdgo.image.color.Color.grayModel.convert(_c).__underlying__().value : stdgo.image.color.Color.Gray)).y;
	}

	public function pixOffset(_x:GoInt, _y:GoInt):GoInt {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (_y - _p.value.rect.min.y) * _p.value.stride + (_x - _p.value.rect.min.x) * ((1 : GoInt));
	}

	public function grayAt(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Gray {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return new stdgo.image.color.Color.Gray().__copy__();
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		return new stdgo.image.color.Color.Gray(_p.value.pix[_i]).__copy__();
	}

	public function rgba64at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64 {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _gray:GoUInt16 = ((_p.value.grayAt(_x, _y).y : GoUInt16));
		_gray = _gray | ((_gray << ((8 : GoUnTypedInt))));
		return new stdgo.image.color.Color.RGBA64(_gray, _gray, _gray, ((65535 : GoUInt16))).__copy__();
	}

	public function at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Color {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.grayAt(_x, _y).__copy__();
	}

	public function bounds():Rectangle {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.rect.__copy__();
	}

	public function colorModel():stdgo.image.color.Color.Model {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.image.color.Color.grayModel;
	}

	public var pix:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var stride:GoInt = ((0 : GoInt));
	public var rect:Rectangle = new Rectangle();

	public function new(?pix:Slice<GoUInt8>, ?stride:GoInt, ?rect:Rectangle)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(pix) + " " + Go.string(stride) + " " + Go.string(rect) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Gray(pix, stride, rect);
	}

	public function __set__(__tmp__) {
		this.pix = __tmp__.pix;
		this.stride = __tmp__.stride;
		this.rect = __tmp__.rect;
		return this;
	}
}

@:structInit class Gray16 {
	public function opaque():Bool {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return true;
	}

	public function subImage(_r:Rectangle):Image {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_r = _r.intersect(_p.value.rect.__copy__()).__copy__();
		if (_r.empty()) {
			return Go.pointer(new Gray16()).value;
		};
		var _i:GoInt = _p.value.pixOffset(_r.min.x, _r.min.y);
		return Go.pointer((({pix: _p.value.pix.__slice__(_i), stride: _p.value.stride, rect: _r.__copy__()} : Gray16))).value;
	}

	public function setGray16(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Gray16):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		_p.value.pix[_i + ((0 : GoInt))] = (((_c.y >> ((8 : GoUnTypedInt))) : GoUInt8));
		_p.value.pix[_i + ((1 : GoInt))] = ((_c.y : GoUInt8));
	}

	public function setRGBA64(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _gray:GoUInt32 = ((((19595 : GoUInt32)) * ((_c.r : GoUInt32)) + ((38470 : GoUInt32)) * ((_c.g : GoUInt32))
			+ ((7471 : GoUInt32)) * ((_c.b : GoUInt32)) + (((1 : GoUnTypedInt)) << ((15 : GoUnTypedInt)))) >> ((16 : GoUnTypedInt)));
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		_p.value.pix[_i + ((0 : GoInt))] = (((_gray >> ((8 : GoUnTypedInt))) : GoUInt8));
		_p.value.pix[_i + ((1 : GoInt))] = ((_gray : GoUInt8));
	}

	public function set(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _c1:stdgo.image.color.Color.Gray16 = ((stdgo.image.color.Color.gray16Model.convert(_c)
			.__underlying__()
			.value : stdgo.image.color.Color.Gray16)).__copy__();
		_p.value.pix[_i + ((0 : GoInt))] = (((_c1.y >> ((8 : GoUnTypedInt))) : GoUInt8));
		_p.value.pix[_i + ((1 : GoInt))] = ((_c1.y : GoUInt8));
	}

	public function pixOffset(_x:GoInt, _y:GoInt):GoInt {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (_y - _p.value.rect.min.y) * _p.value.stride + (_x - _p.value.rect.min.x) * ((2 : GoInt));
	}

	public function gray16At(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Gray16 {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return new stdgo.image.color.Color.Gray16().__copy__();
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		return
			new stdgo.image.color.Color.Gray16((((_p.value.pix[_i + ((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_p.value.pix[_i + ((1 : GoInt))] : GoUInt16)))
				.__copy__();
	}

	public function rgba64at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64 {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _gray:GoUInt16 = _p.value.gray16At(_x, _y).y;
		return new stdgo.image.color.Color.RGBA64(_gray, _gray, _gray, ((65535 : GoUInt16))).__copy__();
	}

	public function at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Color {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.gray16At(_x, _y).__copy__();
	}

	public function bounds():Rectangle {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.rect.__copy__();
	}

	public function colorModel():stdgo.image.color.Color.Model {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.image.color.Color.gray16Model;
	}

	public var pix:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var stride:GoInt = ((0 : GoInt));
	public var rect:Rectangle = new Rectangle();

	public function new(?pix:Slice<GoUInt8>, ?stride:GoInt, ?rect:Rectangle)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(pix) + " " + Go.string(stride) + " " + Go.string(rect) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Gray16(pix, stride, rect);
	}

	public function __set__(__tmp__) {
		this.pix = __tmp__.pix;
		this.stride = __tmp__.stride;
		this.rect = __tmp__.rect;
		return this;
	}
}

@:structInit class CMYK {
	public function opaque():Bool {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return true;
	}

	public function subImage(_r:Rectangle):Image {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_r = _r.intersect(_p.value.rect.__copy__()).__copy__();
		if (_r.empty()) {
			return Go.pointer(new CMYK()).value;
		};
		var _i:GoInt = _p.value.pixOffset(_r.min.x, _r.min.y);
		return Go.pointer((({pix: _p.value.pix.__slice__(_i), stride: _p.value.stride, rect: _r.__copy__()} : CMYK))).value;
	}

	public function setCMYK(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.CMYK):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
		_s[((0 : GoInt))] = _c.c;
		_s[((1 : GoInt))] = _c.m;
		_s[((2 : GoInt))] = _c.y;
		_s[((3 : GoInt))] = _c.k;
	}

	public function setRGBA64(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var __tmp__ = stdgo.image.color.Color.rgbtoCMYK((((_c.r >> ((8 : GoUnTypedInt))) : GoUInt8)), (((_c.g >> ((8 : GoUnTypedInt))) : GoUInt8)),
			(((_c.b >> ((8 : GoUnTypedInt))) : GoUInt8))),
			_cc:GoUInt8 = __tmp__._0,
			_mm:GoUInt8 = __tmp__._1,
			_yy:GoUInt8 = __tmp__._2,
			_kk:GoUInt8 = __tmp__._3;
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
		_s[((0 : GoInt))] = _cc;
		_s[((1 : GoInt))] = _mm;
		_s[((2 : GoInt))] = _yy;
		_s[((3 : GoInt))] = _kk;
	}

	public function set(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _c1:stdgo.image.color.Color.CMYK = ((stdgo.image.color.Color.cmykmodel.convert(_c)
			.__underlying__()
			.value : stdgo.image.color.Color.CMYK)).__copy__();
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
		_s[((0 : GoInt))] = _c1.c;
		_s[((1 : GoInt))] = _c1.m;
		_s[((2 : GoInt))] = _c1.y;
		_s[((3 : GoInt))] = _c1.k;
	}

	public function pixOffset(_x:GoInt, _y:GoInt):GoInt {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (_y - _p.value.rect.min.y) * _p.value.stride + (_x - _p.value.rect.min.x) * ((4 : GoInt));
	}

	public function cmykat(_x:GoInt, _y:GoInt):stdgo.image.color.Color.CMYK {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return new stdgo.image.color.Color.CMYK().__copy__();
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		var _s:Slice<GoUInt8> = _p.value.pix.__slice__(_i, _i + ((4 : GoInt))).setCap(((_i + ((4 : GoInt)) : GoInt)) - ((1 : GoInt)));
		return new stdgo.image.color.Color.CMYK(_s[((0 : GoInt))], _s[((1 : GoInt))], _s[((2 : GoInt))], _s[((3 : GoInt))]).__copy__();
	}

	public function rgba64at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64 {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _p.value.cmykat(_x, _y).rgba(),
			_r:GoUInt32 = __tmp__._0,
			_g:GoUInt32 = __tmp__._1,
			_b:GoUInt32 = __tmp__._2,
			_a:GoUInt32 = __tmp__._3;
		return new stdgo.image.color.Color.RGBA64(((_r : GoUInt16)), ((_g : GoUInt16)), ((_b : GoUInt16)), ((_a : GoUInt16))).__copy__();
	}

	public function at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Color {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.cmykat(_x, _y).__copy__();
	}

	public function bounds():Rectangle {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.rect.__copy__();
	}

	public function colorModel():stdgo.image.color.Color.Model {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.image.color.Color.cmykmodel;
	}

	public var pix:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var stride:GoInt = ((0 : GoInt));
	public var rect:Rectangle = new Rectangle();

	public function new(?pix:Slice<GoUInt8>, ?stride:GoInt, ?rect:Rectangle)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(pix) + " " + Go.string(stride) + " " + Go.string(rect) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new CMYK(pix, stride, rect);
	}

	public function __set__(__tmp__) {
		this.pix = __tmp__.pix;
		this.stride = __tmp__.stride;
		this.rect = __tmp__.rect;
		return this;
	}
}

@:structInit class Paletted {
	public function opaque():Bool {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _present:GoArray<Bool> = new GoArray<Bool>(...[for (i in 0...256) false]);
		var _i0:GoInt = ((0 : GoInt)), _i1:GoInt = _p.value.rect.dx();
		{
			var _y:GoInt = _p.value.rect.min.y;
			Go.cfor(_y < _p.value.rect.max.y, _y++, {
				for (_c in _p.value.pix.__slice__(_i0, _i1)) {
					_present[_c] = true;
				};
				_i0 = _i0 + (_p.value.stride);
				_i1 = _i1 + (_p.value.stride);
			});
		};
		{
			var _i;
			var _c;
			for (_obj in _p.value.palette.__t__.keyValueIterator()) {
				_i = _obj.key;
				_c = _obj.value;
				if (!_present[_i]) {
					continue;
				};
				var __tmp__ = _c.rgba(),
					_:GoUInt32 = __tmp__._0,
					_:GoUInt32 = __tmp__._1,
					_:GoUInt32 = __tmp__._2,
					_a:GoUInt32 = __tmp__._3;
				if (_a != ((65535 : GoUInt32))) {
					return false;
				};
			};
		};
		return true;
	}

	public function subImage(_r:Rectangle):Image {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_r = _r.intersect(_p.value.rect.__copy__()).__copy__();
		if (_r.empty()) {
			return Go.pointer((({
				palette: _p.value.palette.__copy__(),
				pix: new Slice<GoUInt8>().nil(),
				stride: 0,
				rect: new Rectangle()
			} : Paletted))).value;
		};
		var _i:GoInt = _p.value.pixOffset(_r.min.x, _r.min.y);
		return Go.pointer((({
			pix: _p.value.pix.__slice__(_i),
			stride: _p.value.stride,
			rect: _p.value.rect.intersect(_r.__copy__()).__copy__(),
			palette: _p.value.palette.__copy__()
		} : Paletted))).value;
	}

	public function setColorIndex(_x:GoInt, _y:GoInt, _index:GoUInt8):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		_p.value.pix[_i] = _index;
	}

	public function colorIndexAt(_x:GoInt, _y:GoInt):GoUInt8 {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return ((0 : GoUInt8));
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		return _p.value.pix[_i];
	}

	public function setRGBA64(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		_p.value.pix[_i] = ((_p.value.palette.index(_c.__copy__()) : GoUInt8));
	}

	public function set(_x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return;
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		_p.value.pix[_i] = ((_p.value.palette.index(_c) : GoUInt8));
	}

	public function pixOffset(_x:GoInt, _y:GoInt):GoInt {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (_y - _p.value.rect.min.y) * _p.value.stride + (_x - _p.value.rect.min.x) * ((1 : GoInt));
	}

	public function rgba64at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64 {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_p.value.palette.__t__.length == ((0 : GoInt))) {
			return new stdgo.image.color.Color.RGBA64().__copy__();
		};
		var _c:stdgo.image.color.Color.Color = ((((null : stdgo.image.color.Color.Color)) : stdgo.image.color.Color.Color));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			_c = _p.value.palette.__t__[((0 : GoInt))];
		} else {
			var _i:GoInt = _p.value.pixOffset(_x, _y);
			_c = _p.value.palette.__t__[_p.value.pix[_i]];
		};
		var __tmp__ = _c.rgba(),
			_r:GoUInt32 = __tmp__._0,
			_g:GoUInt32 = __tmp__._1,
			_b:GoUInt32 = __tmp__._2,
			_a:GoUInt32 = __tmp__._3;
		return new stdgo.image.color.Color.RGBA64(((_r : GoUInt16)), ((_g : GoUInt16)), ((_b : GoUInt16)), ((_a : GoUInt16))).__copy__();
	}

	public function at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Color {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_p.value.palette.__t__.length == ((0 : GoInt))) {
			return ((null : stdgo.image.color.Color.Color));
		};
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return _p.value.palette.__t__[((0 : GoInt))];
		};
		var _i:GoInt = _p.value.pixOffset(_x, _y);
		return _p.value.palette.__t__[_p.value.pix[_i]];
	}

	public function bounds():Rectangle {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.rect.__copy__();
	}

	public function colorModel():stdgo.image.color.Color.Model {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.palette.__copy__();
	}

	public var pix:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var stride:GoInt = ((0 : GoInt));
	public var rect:Rectangle = new Rectangle();
	public var palette:stdgo.image.color.Color.Palette = new stdgo.image.color.Color.Palette();

	public function new(?pix:Slice<GoUInt8>, ?stride:GoInt, ?rect:Rectangle, ?palette:stdgo.image.color.Color.Palette)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(pix) + " " + Go.string(stride) + " " + Go.string(rect) + " " + Go.string(palette) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Paletted(pix, stride, rect, palette);
	}

	public function __set__(__tmp__) {
		this.pix = __tmp__.pix;
		this.stride = __tmp__.stride;
		this.rect = __tmp__.rect;
		this.palette = __tmp__.palette;
		return this;
	}
}

@:structInit class Uniform {
	public function opaque():Bool {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _c.value.c.rgba(),
			_:GoUInt32 = __tmp__._0,
			_:GoUInt32 = __tmp__._1,
			_:GoUInt32 = __tmp__._2,
			_a:GoUInt32 = __tmp__._3;
		return _a == ((65535 : GoUInt32));
	}

	public function rgba64at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64 {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _c.value.c.rgba(),
			_r:GoUInt32 = __tmp__._0,
			_g:GoUInt32 = __tmp__._1,
			_b:GoUInt32 = __tmp__._2,
			_a:GoUInt32 = __tmp__._3;
		return new stdgo.image.color.Color.RGBA64(((_r : GoUInt16)), ((_g : GoUInt16)), ((_b : GoUInt16)), ((_a : GoUInt16))).__copy__();
	}

	public function at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Color {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _c.value.c;
	}

	public function bounds():Rectangle {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return new Rectangle(new Point(-((1e+09 : GoUnTypedFloat)), -((1e+09 : GoUnTypedFloat))).__copy__(),
			new Point(((1e+09 : GoInt)), ((1e+09 : GoInt))).__copy__()).__copy__();
	}

	public function convert(arg0:stdgo.image.color.Color.Color):stdgo.image.color.Color.Color {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _c.value.c;
	}

	public function colorModel():stdgo.image.color.Color.Model {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _c.value;
	}

	public function rgba():{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _r:GoUInt32 = ((0 : GoUInt32)),
			_g:GoUInt32 = ((0 : GoUInt32)),
			_b:GoUInt32 = ((0 : GoUInt32)),
			_a:GoUInt32 = ((0 : GoUInt32));
		return _c.value.c.rgba();
	}

	public var c:stdgo.image.color.Color.Color = ((null : stdgo.image.color.Color.Color));

	public function new(?c:stdgo.image.color.Color.Color)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(c) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Uniform(c);
	}

	public function __set__(__tmp__) {
		this.c = __tmp__.c;
		return this;
	}
}

@:named class YCbCrSubsampleRatio {
	public function toString():GoString {
		var _s = this.__copy__();
		if (_s.__t__ == ycbCrSubsampleRatio444.__t__) {
			return "YCbCrSubsampleRatio444";
		} else if (_s.__t__ == ycbCrSubsampleRatio422.__t__) {
			return "YCbCrSubsampleRatio422";
		} else if (_s.__t__ == ycbCrSubsampleRatio420.__t__) {
			return "YCbCrSubsampleRatio420";
		} else if (_s.__t__ == ycbCrSubsampleRatio440.__t__) {
			return "YCbCrSubsampleRatio440";
		} else if (_s.__t__ == ycbCrSubsampleRatio411.__t__) {
			return "YCbCrSubsampleRatio411";
		} else if (_s.__t__ == ycbCrSubsampleRatio410.__t__) {
			return "YCbCrSubsampleRatio410";
		};
		return "YCbCrSubsampleRatioUnknown";
	}

	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new YCbCrSubsampleRatio(__t__);
}

@:structInit class YCbCr {
	public function opaque():Bool {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return true;
	}

	public function subImage(_r:Rectangle):Image {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_r = _r.intersect(_p.value.rect.__copy__()).__copy__();
		if (_r.empty()) {
			return Go.pointer((({
				subsampleRatio: _p.value.subsampleRatio,
				y: new Slice<GoUInt8>().nil(),
				cb: new Slice<GoUInt8>().nil(),
				cr: new Slice<GoUInt8>().nil(),
				ystride: 0,
				cstride: 0,
				rect: new Rectangle()
			} : YCbCr))).value;
		};
		var _yi:GoInt = _p.value.yoffset(_r.min.x, _r.min.y);
		var _ci:GoInt = _p.value.coffset(_r.min.x, _r.min.y);
		return Go.pointer((({
			y: _p.value.y.__slice__(_yi),
			cb: _p.value.cb.__slice__(_ci),
			cr: _p.value.cr.__slice__(_ci),
			subsampleRatio: _p.value.subsampleRatio,
			ystride: _p.value.ystride,
			cstride: _p.value.cstride,
			rect: _r.__copy__()
		} : YCbCr))).value;
	}

	public function coffset(_x:GoInt, _y:GoInt):GoInt {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_p.value.subsampleRatio.__t__ == ycbCrSubsampleRatio422.__t__) {
			return (_y - _p.value.rect.min.y) * _p.value.cstride + (_x / ((2 : GoInt)) - _p.value.rect.min.x / ((2 : GoInt)));
		} else if (_p.value.subsampleRatio.__t__ == ycbCrSubsampleRatio420.__t__) {
			return (_y / ((2 : GoInt)) - _p.value.rect.min.y / ((2 : GoInt))) * _p.value.cstride + (_x / ((2 : GoInt)) - _p.value.rect.min.x / ((2 : GoInt)));
		} else if (_p.value.subsampleRatio.__t__ == ycbCrSubsampleRatio440.__t__) {
			return (_y / ((2 : GoInt)) - _p.value.rect.min.y / ((2 : GoInt))) * _p.value.cstride + (_x - _p.value.rect.min.x);
		} else if (_p.value.subsampleRatio.__t__ == ycbCrSubsampleRatio411.__t__) {
			return (_y - _p.value.rect.min.y) * _p.value.cstride + (_x / ((4 : GoInt)) - _p.value.rect.min.x / ((4 : GoInt)));
		} else if (_p.value.subsampleRatio.__t__ == ycbCrSubsampleRatio410.__t__) {
			return (_y / ((2 : GoInt)) - _p.value.rect.min.y / ((2 : GoInt))) * _p.value.cstride + (_x / ((4 : GoInt)) - _p.value.rect.min.x / ((4 : GoInt)));
		};
		return (_y - _p.value.rect.min.y) * _p.value.cstride + (_x - _p.value.rect.min.x);
	}

	public function yoffset(_x:GoInt, _y:GoInt):GoInt {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (_y - _p.value.rect.min.y) * _p.value.ystride + (_x - _p.value.rect.min.x);
	}

	public function ycbCrAt(_x:GoInt, _y:GoInt):stdgo.image.color.Color.YCbCr {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!(new Point(_x, _y).in_(_p.value.rect.__copy__()))) {
			return new stdgo.image.color.Color.YCbCr().__copy__();
		};
		var _yi:GoInt = _p.value.yoffset(_x, _y);
		var _ci:GoInt = _p.value.coffset(_x, _y);
		return new stdgo.image.color.Color.YCbCr(_p.value.y[_yi], _p.value.cb[_ci], _p.value.cr[_ci]).__copy__();
	}

	public function rgba64at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64 {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _p.value.ycbCrAt(_x, _y).rgba(),
			_r:GoUInt32 = __tmp__._0,
			_g:GoUInt32 = __tmp__._1,
			_b:GoUInt32 = __tmp__._2,
			_a:GoUInt32 = __tmp__._3;
		return new stdgo.image.color.Color.RGBA64(((_r : GoUInt16)), ((_g : GoUInt16)), ((_b : GoUInt16)), ((_a : GoUInt16))).__copy__();
	}

	public function at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Color {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.ycbCrAt(_x, _y).__copy__();
	}

	public function bounds():Rectangle {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.rect.__copy__();
	}

	public function colorModel():stdgo.image.color.Color.Model {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.image.color.Color.ycbCrModel;
	}

	public var y:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var cb:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var cr:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var ystride:GoInt = ((0 : GoInt));
	public var cstride:GoInt = ((0 : GoInt));
	public var subsampleRatio:YCbCrSubsampleRatio = new YCbCrSubsampleRatio();
	public var rect:Rectangle = new Rectangle();

	public function new(?y:Slice<GoUInt8>, ?cb:Slice<GoUInt8>, ?cr:Slice<GoUInt8>, ?ystride:GoInt, ?cstride:GoInt, ?subsampleRatio:YCbCrSubsampleRatio,
			?rect:Rectangle)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(y) + " " + Go.string(cb) + " " + Go.string(cr) + " " + Go.string(ystride) + " " + Go.string(cstride) + " "
			+ Go.string(subsampleRatio) + " " + Go.string(rect) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new YCbCr(y, cb, cr, ystride, cstride, subsampleRatio, rect);
	}

	public function __set__(__tmp__) {
		this.y = __tmp__.y;
		this.cb = __tmp__.cb;
		this.cr = __tmp__.cr;
		this.ystride = __tmp__.ystride;
		this.cstride = __tmp__.cstride;
		this.subsampleRatio = __tmp__.subsampleRatio;
		this.rect = __tmp__.rect;
		return this;
	}
}

@:structInit class NYCbCrA {
	public function opaque():Bool {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_p.value.ycbCr.rect.empty()) {
			return true;
		};
		var _i0:GoInt = ((0 : GoInt)), _i1:GoInt = _p.value.ycbCr.rect.dx();
		{
			var _y:GoInt = _p.value.ycbCr.rect.min.y;
			Go.cfor(_y < _p.value.ycbCr.rect.max.y, _y++, {
				for (_a in _p.value.a.__slice__(_i0, _i1)) {
					if (_a != ((255 : GoUInt8))) {
						return false;
					};
				};
				_i0 = _i0 + (_p.value.astride);
				_i1 = _i1 + (_p.value.astride);
			});
		};
		return true;
	}

	public function subImage(_r:Rectangle):Image {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_r = _r.intersect(_p.value.ycbCr.rect.__copy__()).__copy__();
		if (_r.empty()) {
			return Go.pointer((({ycbCr: (({
				subsampleRatio: _p.value.ycbCr.subsampleRatio,
				y: new Slice<GoUInt8>().nil(),
				cb: new Slice<GoUInt8>().nil(),
				cr: new Slice<GoUInt8>().nil(),
				ystride: 0,
				cstride: 0,
				rect: new Rectangle()
			} : YCbCr)).__copy__(), a: new Slice<GoUInt8>().nil(), astride: 0} : NYCbCrA))).value;
		};
		var _yi:GoInt = _p.value.yoffset(_r.min.x, _r.min.y);
		var _ci:GoInt = _p.value.coffset(_r.min.x, _r.min.y);
		var _ai:GoInt = _p.value.aoffset(_r.min.x, _r.min.y);
		return Go.pointer((({ycbCr: (({
			y: _p.value.ycbCr.y.__slice__(_yi),
			cb: _p.value.ycbCr.cb.__slice__(_ci),
			cr: _p.value.ycbCr.cr.__slice__(_ci),
			subsampleRatio: _p.value.ycbCr.subsampleRatio,
			ystride: _p.value.ycbCr.ystride,
			cstride: _p.value.ycbCr.cstride,
			rect: _r.__copy__()
		} : YCbCr)).__copy__(), a: _p.value.a.__slice__(_ai), astride: _p.value.astride} : NYCbCrA))).value;
	}

	public function aoffset(_x:GoInt, _y:GoInt):GoInt {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (_y - _p.value.ycbCr.rect.min.y) * _p.value.astride + (_x - _p.value.ycbCr.rect.min.x);
	}

	public function nycbCrAAt(_x:GoInt, _y:GoInt):stdgo.image.color.Color.NYCbCrA {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!((({x: _x, y: _y} : Point)).in_(_p.value.ycbCr.rect.__copy__()))) {
			return new stdgo.image.color.Color.NYCbCrA().__copy__();
		};
		var _yi:GoInt = _p.value.yoffset(_x, _y);
		var _ci:GoInt = _p.value.coffset(_x, _y);
		var _ai:GoInt = _p.value.aoffset(_x, _y);
		return new stdgo.image.color.Color.NYCbCrA((({y: _p.value.ycbCr.y[_yi], cb: _p.value.ycbCr.cb[_ci],
			cr: _p.value.ycbCr.cr[_ci]} : stdgo.image.color.Color.YCbCr)).__copy__(),
			_p.value.a[_ai]).__copy__();
	}

	public function rgba64at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64 {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _p.value.nycbCrAAt(_x, _y).rgba(),
			_r:GoUInt32 = __tmp__._0,
			_g:GoUInt32 = __tmp__._1,
			_b:GoUInt32 = __tmp__._2,
			_a:GoUInt32 = __tmp__._3;
		return new stdgo.image.color.Color.RGBA64(((_r : GoUInt16)), ((_g : GoUInt16)), ((_b : GoUInt16)), ((_a : GoUInt16))).__copy__();
	}

	public function at(_x:GoInt, _y:GoInt):stdgo.image.color.Color.Color {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.nycbCrAAt(_x, _y).__copy__();
	}

	public function colorModel():stdgo.image.color.Color.Model {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.image.color.Color.nycbCrAModel;
	}

	@:embedded
	public var ycbCr:YCbCr = new YCbCr();
	public var a:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var astride:GoInt = ((0 : GoInt));

	public function new(?ycbCr:YCbCr, ?a:Slice<GoUInt8>, ?astride:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(ycbCr) + " " + Go.string(a) + " " + Go.string(astride) + "}";
	}

	public function bounds():Rectangle
		return ycbCr.bounds();

	public function coffset(_x:GoInt, _y:GoInt):GoInt
		return ycbCr.coffset(_0, _1);

	public function ycbCrAt(_x:GoInt, _y:GoInt):stdgo.image.color.Color.YCbCr
		return ycbCr.ycbCrAt(_0, _1);

	public function yoffset(_x:GoInt, _y:GoInt):GoInt
		return ycbCr.yoffset(_0, _1);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new NYCbCrA(ycbCr, a, astride);
	}

	public function __set__(__tmp__) {
		this.ycbCr = __tmp__.ycbCr;
		this.a = __tmp__.a;
		this.astride = __tmp__.astride;
		return this;
	}
}

var opaque:Pointer<Uniform> = newUniform(stdgo.image.color.Color.opaque.__copy__());
var _atomicFormats:stdgo.sync.atomic.Atomic.Value = new stdgo.sync.atomic.Atomic.Value();
final ycbCrSubsampleRatio440:YCbCrSubsampleRatio = new YCbCrSubsampleRatio((3 : GoUnTypedInt));
final ycbCrSubsampleRatio420:YCbCrSubsampleRatio = new YCbCrSubsampleRatio((2 : GoUnTypedInt));
final ycbCrSubsampleRatio410:YCbCrSubsampleRatio = new YCbCrSubsampleRatio((5 : GoUnTypedInt));
var zp:Point = new Point();
final ycbCrSubsampleRatio411:YCbCrSubsampleRatio = new YCbCrSubsampleRatio((4 : GoUnTypedInt));
final ycbCrSubsampleRatio422:YCbCrSubsampleRatio = new YCbCrSubsampleRatio((1 : GoUnTypedInt));
final ycbCrSubsampleRatio444:YCbCrSubsampleRatio = new YCbCrSubsampleRatio((0 : GoUnTypedInt));
var transparent:Pointer<Uniform> = newUniform(stdgo.image.color.Color.transparent.__copy__());
var white:Pointer<Uniform> = newUniform(stdgo.image.color.Color.white.__copy__());
var black:Pointer<Uniform> = newUniform(stdgo.image.color.Color.black.__copy__());
var zr:Rectangle = new Rectangle();
var _formatsMu:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
var errFormat:stdgo.Error = stdgo.errors.Errors.new_("image: unknown format");

/**
	// RegisterFormat registers an image format for use by Decode.
	// Name is the name of the format, like "jpeg" or "png".
	// Magic is the magic prefix that identifies the format's encoding. The magic
	// string can contain "?" wildcards that each match any one byte.
	// Decode is the function that decodes the encoded image.
	// DecodeConfig is the function that decodes just its configuration.
**/
function registerFormat(_name:GoString, _magic:GoString, _decode:stdgo.io.Io.Reader -> {
	var _0:Image;
	var _1:Error;
}, _decodeConfig:stdgo.io.Io.Reader -> {
	var _0:Config;
	var _1:Error;
}):Void {
	_formatsMu.lock();
	var __tmp__ = try {
		{value: ((_atomicFormats.load().value : Slice<T_format>)), ok: true};
	} catch (_) {
		{value: new Slice<T_format>().nil(), ok: false};
	}, _formats = __tmp__.value, _ = __tmp__.ok;
	_atomicFormats.store(Go.toInterface(_formats.__append__(new T_format(_name, _magic, _decode, _decodeConfig).__copy__())));
	_formatsMu.unlock();
}

/**
	// asReader converts an io.Reader to a reader.
**/
function _asReader(_r:stdgo.io.Io.Reader):T_reader {
	{
		var __tmp__ = try {
			{value: ((_r.__underlying__().value : T_reader)), ok: true};
		} catch (_) {
			{value: ((null : T_reader)), ok: false};
		}, _rr = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _rr;
		};
	};
	return bufio.Bufio.newReader(_r).value;
}

/**
	// Match reports whether magic matches b. Magic may contain "?" wildcards.
**/
function _match(_magic:GoString, _b:Slice<GoByte>):Bool {
	if (_magic.length != _b.length) {
		return false;
	};
	{
		var _i;
		var _c;
		for (_obj in _b.keyValueIterator()) {
			_i = _obj.key;
			_c = _obj.value;
			if (_magic[_i] != _c && _magic[_i] != (("?".code : GoRune))) {
				return false;
			};
		};
	};
	return true;
}

/**
	// Sniff determines the format of r's data.
**/
function _sniff(_r:T_reader):T_format {
	var __tmp__ = try {
		{value: ((_atomicFormats.load().value : Slice<T_format>)), ok: true};
	} catch (_) {
		{value: new Slice<T_format>().nil(), ok: false};
	}, _formats = __tmp__.value, _ = __tmp__.ok;
	for (_f in _formats) {
		var __tmp__ = _r.peek(_f._magic.length),
			_b:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err == null && _match(_f._magic, _b)) {
			return _f.__copy__();
		};
	};
	return new T_format().__copy__();
}

/**
	// Decode decodes an image that has been encoded in a registered format.
	// The string returned is the format name used during format registration.
	// Format registration is typically done by an init function in the codec-
	// specific package.
**/
function decode(_r:stdgo.io.Io.Reader):{var _0:Image; var _1:GoString; var _2:Error;} {
	var _rr:T_reader = _asReader(_r);
	var _f:T_format = _sniff(_rr).__copy__();
	if (_f._decode == null) {
		return {_0: ((null : Image)), _1: "", _2: errFormat};
	};
	var __tmp__ = _f._decode(_rr),
		_m:Image = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return {_0: _m, _1: _f._name, _2: _err};
}

/**
	// DecodeConfig decodes the color model and dimensions of an image that has
	// been encoded in a registered format. The string returned is the format name
	// used during format registration. Format registration is typically done by
	// an init function in the codec-specific package.
**/
function decodeConfig(_r:stdgo.io.Io.Reader):{var _0:Config; var _1:GoString; var _2:Error;} {
	var _rr:T_reader = _asReader(_r);
	var _f:T_format = _sniff(_rr).__copy__();
	if (_f._decodeConfig == null) {
		return {_0: new Config().__copy__(), _1: "", _2: errFormat};
	};
	var __tmp__ = _f._decodeConfig(_rr),
		_c:Config = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return {_0: _c.__copy__(), _1: _f._name, _2: _err};
}

/**
	// Pt is shorthand for Point{X, Y}.
**/
function pt(x:GoInt, y:GoInt):Point {
	return new Point(x, y).__copy__();
}

/**
	// Rect is shorthand for Rectangle{Pt(x0, y0), Pt(x1, y1)}. The returned
	// rectangle has minimum and maximum coordinates swapped if necessary so that
	// it is well-formed.
**/
function rect(_x0:GoInt, _y0:GoInt, _x1:GoInt, _y1:GoInt):Rectangle {
	if (_x0 > _x1) {
		{
			final __tmp__0 = _x1;
			final __tmp__1 = _x0;
			_x0 = __tmp__0;
			_x1 = __tmp__1;
		};
	};
	if (_y0 > _y1) {
		{
			final __tmp__0 = _y1;
			final __tmp__1 = _y0;
			_y0 = __tmp__0;
			_y1 = __tmp__1;
		};
	};
	return new Rectangle(new Point(_x0, _y0).__copy__(), new Point(_x1, _y1).__copy__()).__copy__();
}

/**
	// mul3NonNeg returns (x * y * z), unless at least one argument is negative or
	// if the computation overflows the int type, in which case it returns -1.
**/
function _mul3NonNeg(_x:GoInt, _y:GoInt, _z:GoInt):GoInt {
	if ((_x < ((0 : GoInt))) || (_y < ((0 : GoInt))) || (_z < ((0 : GoInt)))) {
		return -((1 : GoUnTypedInt));
	};
	var __tmp__ = stdgo.math.bits.Bits.mul64(((_x : GoUInt64)), ((_y : GoUInt64))),
		_hi:GoUInt64 = __tmp__._0,
		_lo:GoUInt64 = __tmp__._1;
	if (_hi != ((0 : GoUInt64))) {
		return -((1 : GoUnTypedInt));
	};
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_lo, ((_z : GoUInt64)));
		_hi = __tmp__._0;
		_lo = __tmp__._1;
	};
	if (_hi != ((0 : GoUInt64))) {
		return -((1 : GoUnTypedInt));
	};
	var _a:GoInt = ((_lo : GoInt));
	if ((_a < ((0 : GoInt))) || (((_a : GoUInt64)) != _lo)) {
		return -((1 : GoUnTypedInt));
	};
	return _a;
}

/**
	// add2NonNeg returns (x + y), unless at least one argument is negative or if
	// the computation overflows the int type, in which case it returns -1.
**/
function _add2NonNeg(_x:GoInt, _y:GoInt):GoInt {
	if ((_x < ((0 : GoInt))) || (_y < ((0 : GoInt)))) {
		return -((1 : GoUnTypedInt));
	};
	var _a:GoInt = _x + _y;
	if (_a < ((0 : GoInt))) {
		return -((1 : GoUnTypedInt));
	};
	return _a;
}

/**
	// pixelBufferLength returns the length of the []uint8 typed Pix slice field
	// for the NewXxx functions. Conceptually, this is just (bpp * width * height),
	// but this function panics if at least one of those is negative or if the
	// computation would overflow the int type.
	//
	// This panics instead of returning an error because of backwards
	// compatibility. The NewXxx functions do not return an error.
**/
function _pixelBufferLength(_bytesPerPixel:GoInt, _r:Rectangle, _imageTypeName:GoString):GoInt {
	var _totalLength:GoInt = _mul3NonNeg(_bytesPerPixel, _r.dx(), _r.dy());
	if (_totalLength < ((0 : GoInt))) {
		throw(("image: New" : GoString)) + _imageTypeName + ((" Rectangle has huge or negative dimensions" : GoString));
	};
	return _totalLength;
}

/**
	// NewRGBA returns a new RGBA image with the given bounds.
**/
function newRGBA(_r:Rectangle):Pointer<RGBA> {
	return Go.pointer((({pix: new Slice<GoUInt8>(...[
		for (i in 0...((_pixelBufferLength(((4 : GoInt)), _r.__copy__(), "RGBA") : GoInt)).toBasic()) ((0 : GoUInt8))
	]), stride: ((4 : GoInt)) * _r.dx(), rect: _r.__copy__()} : RGBA)));
}

/**
	// NewRGBA64 returns a new RGBA64 image with the given bounds.
**/
function newRGBA64(_r:Rectangle):Pointer<RGBA64> {
	return Go.pointer((({pix: new Slice<GoUInt8>(...[
		for (i in 0...((_pixelBufferLength(((8 : GoInt)), _r.__copy__(), "RGBA64") : GoInt)).toBasic()) ((0 : GoUInt8))
	]), stride: ((8 : GoInt)) * _r.dx(), rect: _r.__copy__()} : RGBA64)));
}

/**
	// NewNRGBA returns a new NRGBA image with the given bounds.
**/
function newNRGBA(_r:Rectangle):Pointer<NRGBA> {
	return Go.pointer((({pix: new Slice<GoUInt8>(...[
		for (i in 0...((_pixelBufferLength(((4 : GoInt)), _r.__copy__(), "NRGBA") : GoInt)).toBasic()) ((0 : GoUInt8))
	]), stride: ((4 : GoInt)) * _r.dx(), rect: _r.__copy__()} : NRGBA)));
}

/**
	// NewNRGBA64 returns a new NRGBA64 image with the given bounds.
**/
function newNRGBA64(_r:Rectangle):Pointer<NRGBA64> {
	return Go.pointer((({pix: new Slice<GoUInt8>(...[
		for (i in 0...((_pixelBufferLength(((8 : GoInt)), _r.__copy__(), "NRGBA64") : GoInt)).toBasic()) ((0 : GoUInt8))
	]), stride: ((8 : GoInt)) * _r.dx(), rect: _r.__copy__()} : NRGBA64)));
}

/**
	// NewAlpha returns a new Alpha image with the given bounds.
**/
function newAlpha(_r:Rectangle):Pointer<Alpha> {
	return Go.pointer((({pix: new Slice<GoUInt8>(...[
		for (i in 0...((_pixelBufferLength(((1 : GoInt)), _r.__copy__(), "Alpha") : GoInt)).toBasic()) ((0 : GoUInt8))
	]), stride: ((1 : GoInt)) * _r.dx(), rect: _r.__copy__()} : Alpha)));
}

/**
	// NewAlpha16 returns a new Alpha16 image with the given bounds.
**/
function newAlpha16(_r:Rectangle):Pointer<Alpha16> {
	return Go.pointer((({pix: new Slice<GoUInt8>(...[
		for (i in 0...((_pixelBufferLength(((2 : GoInt)), _r.__copy__(), "Alpha16") : GoInt)).toBasic()) ((0 : GoUInt8))
	]), stride: ((2 : GoInt)) * _r.dx(), rect: _r.__copy__()} : Alpha16)));
}

/**
	// NewGray returns a new Gray image with the given bounds.
**/
function newGray(_r:Rectangle):Pointer<Gray> {
	return Go.pointer((({pix: new Slice<GoUInt8>(...[
		for (i in 0...((_pixelBufferLength(((1 : GoInt)), _r.__copy__(), "Gray") : GoInt)).toBasic()) ((0 : GoUInt8))
	]), stride: ((1 : GoInt)) * _r.dx(), rect: _r.__copy__()} : Gray)));
}

/**
	// NewGray16 returns a new Gray16 image with the given bounds.
**/
function newGray16(_r:Rectangle):Pointer<Gray16> {
	return Go.pointer((({pix: new Slice<GoUInt8>(...[
		for (i in 0...((_pixelBufferLength(((2 : GoInt)), _r.__copy__(), "Gray16") : GoInt)).toBasic()) ((0 : GoUInt8))
	]), stride: ((2 : GoInt)) * _r.dx(), rect: _r.__copy__()} : Gray16)));
}

/**
	// NewCMYK returns a new CMYK image with the given bounds.
**/
function newCMYK(_r:Rectangle):Pointer<CMYK> {
	return Go.pointer((({pix: new Slice<GoUInt8>(...[
		for (i in 0...((_pixelBufferLength(((4 : GoInt)), _r.__copy__(), "CMYK") : GoInt)).toBasic()) ((0 : GoUInt8))
	]), stride: ((4 : GoInt)) * _r.dx(), rect: _r.__copy__()} : CMYK)));
}

/**
	// NewPaletted returns a new Paletted image with the given width, height and
	// palette.
**/
function newPaletted(_r:Rectangle, _p:stdgo.image.color.Color.Palette):Pointer<Paletted> {
	return Go.pointer((({
		pix: new Slice<GoUInt8>(...[
			for (i in 0...((_pixelBufferLength(((1 : GoInt)), _r.__copy__(), "Paletted") : GoInt)).toBasic()) ((0 : GoUInt8))
		]),
		stride: ((1 : GoInt)) * _r.dx(),
		rect: _r.__copy__(),
		palette: _p.__copy__()
	} : Paletted)));
}

/**
	// NewUniform returns a new Uniform image of the given color.
**/
function newUniform(_c:stdgo.image.color.Color.Color):Pointer<Uniform> {
	return Go.pointer(new Uniform(_c));
}

function _yCbCrSize(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):{
	var _0:GoInt;
	var _1:GoInt;
	var _2:GoInt;
	var _3:GoInt;
} {
	var _w:GoInt = ((0 : GoInt)),
		_h:GoInt = ((0 : GoInt)),
		_cw:GoInt = ((0 : GoInt)),
		_ch:GoInt = ((0 : GoInt));
	{
		final __tmp__0 = _r.dx();
		final __tmp__1 = _r.dy();
		_w = __tmp__0;
		_h = __tmp__1;
	};
	if (_subsampleRatio.__t__ == ycbCrSubsampleRatio422.__t__) {
		_cw = (_r.max.x + ((1 : GoInt))) / ((2 : GoInt)) - _r.min.x / ((2 : GoInt));
		_ch = _h;
	} else if (_subsampleRatio.__t__ == ycbCrSubsampleRatio420.__t__) {
		_cw = (_r.max.x + ((1 : GoInt))) / ((2 : GoInt)) - _r.min.x / ((2 : GoInt));
		_ch = (_r.max.y + ((1 : GoInt))) / ((2 : GoInt)) - _r.min.y / ((2 : GoInt));
	} else if (_subsampleRatio.__t__ == ycbCrSubsampleRatio440.__t__) {
		_cw = _w;
		_ch = (_r.max.y + ((1 : GoInt))) / ((2 : GoInt)) - _r.min.y / ((2 : GoInt));
	} else if (_subsampleRatio.__t__ == ycbCrSubsampleRatio411.__t__) {
		_cw = (_r.max.x + ((3 : GoInt))) / ((4 : GoInt)) - _r.min.x / ((4 : GoInt));
		_ch = _h;
	} else if (_subsampleRatio.__t__ == ycbCrSubsampleRatio410.__t__) {
		_cw = (_r.max.x + ((3 : GoInt))) / ((4 : GoInt)) - _r.min.x / ((4 : GoInt));
		_ch = (_r.max.y + ((1 : GoInt))) / ((2 : GoInt)) - _r.min.y / ((2 : GoInt));
	} else {
		_cw = _w;
		_ch = _h;
	};
	return {
		_0: _w,
		_1: _h,
		_2: _cw,
		_3: _ch
	};
}

/**
	// NewYCbCr returns a new YCbCr image with the given bounds and subsample
	// ratio.
**/
function newYCbCr(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):Pointer<YCbCr> {
	var __tmp__ = _yCbCrSize(_r.__copy__(), _subsampleRatio),
		_w:GoInt = __tmp__._0,
		_h:GoInt = __tmp__._1,
		_cw:GoInt = __tmp__._2,
		_ch:GoInt = __tmp__._3;
	var _totalLength:GoInt = _add2NonNeg(_mul3NonNeg(((1 : GoInt)), _w, _h), _mul3NonNeg(((2 : GoInt)), _cw, _ch));
	if (_totalLength < ((0 : GoInt))) {
		throw "image: NewYCbCr Rectangle has huge or negative dimensions";
	};
	var _i0:GoInt = _w * _h + ((0 : GoInt)) * _cw * _ch;
	var _i1:GoInt = _w * _h + ((1 : GoInt)) * _cw * _ch;
	var _i2:GoInt = _w * _h + ((2 : GoInt)) * _cw * _ch;
	var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_i2 : GoInt)).toBasic()) ((0 : GoUInt8))]);
	return Go.pointer((({
		y: _b.__slice__(0, _i0).setCap(((_i0 : GoInt)) - ((1 : GoInt))),
		cb: _b.__slice__(_i0, _i1).setCap(((_i1 : GoInt)) - ((1 : GoInt))),
		cr: _b.__slice__(_i1, _i2).setCap(((_i2 : GoInt)) - ((1 : GoInt))),
		subsampleRatio: _subsampleRatio,
		ystride: _w,
		cstride: _cw,
		rect: _r.__copy__()
	} : YCbCr)));
}

/**
	// NewNYCbCrA returns a new NYCbCrA image with the given bounds and subsample
	// ratio.
**/
function newNYCbCrA(_r:Rectangle, _subsampleRatio:YCbCrSubsampleRatio):Pointer<NYCbCrA> {
	var __tmp__ = _yCbCrSize(_r.__copy__(), _subsampleRatio),
		_w:GoInt = __tmp__._0,
		_h:GoInt = __tmp__._1,
		_cw:GoInt = __tmp__._2,
		_ch:GoInt = __tmp__._3;
	var _totalLength:GoInt = _add2NonNeg(_mul3NonNeg(((2 : GoInt)), _w, _h), _mul3NonNeg(((2 : GoInt)), _cw, _ch));
	if (_totalLength < ((0 : GoInt))) {
		throw "image: NewNYCbCrA Rectangle has huge or negative dimension";
	};
	var _i0:GoInt = ((1 : GoInt)) * _w * _h + ((0 : GoInt)) * _cw * _ch;
	var _i1:GoInt = ((1 : GoInt)) * _w * _h + ((1 : GoInt)) * _cw * _ch;
	var _i2:GoInt = ((1 : GoInt)) * _w * _h + ((2 : GoInt)) * _cw * _ch;
	var _i3:GoInt = ((2 : GoInt)) * _w * _h + ((2 : GoInt)) * _cw * _ch;
	var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_i3 : GoInt)).toBasic()) ((0 : GoUInt8))]);
	return Go.pointer((({ycbCr: (({
		y: _b.__slice__(0, _i0).setCap(((_i0 : GoInt)) - ((1 : GoInt))),
		cb: _b.__slice__(_i0, _i1).setCap(((_i1 : GoInt)) - ((1 : GoInt))),
		cr: _b.__slice__(_i1, _i2).setCap(((_i2 : GoInt)) - ((1 : GoInt))),
		subsampleRatio: _subsampleRatio,
		ystride: _w,
		cstride: _cw,
		rect: _r.__copy__()
	} : YCbCr)).__copy__(), a: _b.__slice__(_i2), astride: _w} : NYCbCrA)));
}

class Point_extension_fields {
	public function toString(__tmp__):GoString
		return __tmp__.toString();

	public function add(__tmp__, _q:Point):Point
		return __tmp__.add(_q);

	public function sub(__tmp__, _q:Point):Point
		return __tmp__.sub(_q);

	public function mul(__tmp__, _k:GoInt):Point
		return __tmp__.mul(_k);

	public function div(__tmp__, _k:GoInt):Point
		return __tmp__.div(_k);

	public function in_(__tmp__, _r:Rectangle):Bool
		return __tmp__.in_(_r);

	public function mod(__tmp__, _r:Rectangle):Point
		return __tmp__.mod(_r);

	public function eq(__tmp__, _q:Point):Bool
		return __tmp__.eq(_q);
}

class Rectangle_extension_fields {
	public function toString(__tmp__):GoString
		return __tmp__.toString();

	public function dx(__tmp__):GoInt
		return __tmp__.dx();

	public function dy(__tmp__):GoInt
		return __tmp__.dy();

	public function size(__tmp__):Point
		return __tmp__.size();

	public function add(__tmp__, _p:Point):Rectangle
		return __tmp__.add(_p);

	public function sub(__tmp__, _p:Point):Rectangle
		return __tmp__.sub(_p);

	public function inset(__tmp__, _n:GoInt):Rectangle
		return __tmp__.inset(_n);

	public function intersect(__tmp__, _s:Rectangle):Rectangle
		return __tmp__.intersect(_s);

	public function union(__tmp__, _s:Rectangle):Rectangle
		return __tmp__.union(_s);

	public function empty(__tmp__):Bool
		return __tmp__.empty();

	public function eq(__tmp__, _s:Rectangle):Bool
		return __tmp__.eq(_s);

	public function overlaps(__tmp__, _s:Rectangle):Bool
		return __tmp__.overlaps(_s);

	public function in_(__tmp__, _s:Rectangle):Bool
		return __tmp__.in_(_s);

	public function canon(__tmp__):Rectangle
		return __tmp__.canon();

	public function at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.Color
		return __tmp__.at(_x, _y);

	public function rgba64at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64
		return __tmp__.rgba64at(_x, _y);

	public function bounds(__tmp__):Rectangle
		return __tmp__.bounds();

	public function colorModel(__tmp__):stdgo.image.color.Color.Model
		return __tmp__.colorModel();
}

class RGBA_extension_fields {
	public function colorModel(__tmp__):stdgo.image.color.Color.Model
		return __tmp__.colorModel();

	public function bounds(__tmp__):Rectangle
		return __tmp__.bounds();

	public function at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.Color
		return __tmp__.at(_x, _y);

	public function rgba64at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64
		return __tmp__.rgba64at(_x, _y);

	public function rgbaat(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA
		return __tmp__.rgbaat(_x, _y);

	public function pixOffset(__tmp__, _x:GoInt, _y:GoInt):GoInt
		return __tmp__.pixOffset(_x, _y);

	public function set(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void
		__tmp__.set(_x, _y, _c);

	public function setRGBA64(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void
		__tmp__.setRGBA64(_x, _y, _c);

	public function setRGBA(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA):Void
		__tmp__.setRGBA(_x, _y, _c);

	public function subImage(__tmp__, _r:Rectangle):Image
		return __tmp__.subImage(_r);

	public function opaque(__tmp__):Bool
		return __tmp__.opaque();
}

class RGBA64_extension_fields {
	public function colorModel(__tmp__):stdgo.image.color.Color.Model
		return __tmp__.colorModel();

	public function bounds(__tmp__):Rectangle
		return __tmp__.bounds();

	public function at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.Color
		return __tmp__.at(_x, _y);

	public function rgba64at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64
		return __tmp__.rgba64at(_x, _y);

	public function pixOffset(__tmp__, _x:GoInt, _y:GoInt):GoInt
		return __tmp__.pixOffset(_x, _y);

	public function set(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void
		__tmp__.set(_x, _y, _c);

	public function setRGBA64(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void
		__tmp__.setRGBA64(_x, _y, _c);

	public function subImage(__tmp__, _r:Rectangle):Image
		return __tmp__.subImage(_r);

	public function opaque(__tmp__):Bool
		return __tmp__.opaque();
}

class NRGBA_extension_fields {
	public function colorModel(__tmp__):stdgo.image.color.Color.Model
		return __tmp__.colorModel();

	public function bounds(__tmp__):Rectangle
		return __tmp__.bounds();

	public function at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.Color
		return __tmp__.at(_x, _y);

	public function rgba64at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64
		return __tmp__.rgba64at(_x, _y);

	public function nrgbaat(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.NRGBA
		return __tmp__.nrgbaat(_x, _y);

	public function pixOffset(__tmp__, _x:GoInt, _y:GoInt):GoInt
		return __tmp__.pixOffset(_x, _y);

	public function set(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void
		__tmp__.set(_x, _y, _c);

	public function setRGBA64(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void
		__tmp__.setRGBA64(_x, _y, _c);

	public function setNRGBA(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.NRGBA):Void
		__tmp__.setNRGBA(_x, _y, _c);

	public function subImage(__tmp__, _r:Rectangle):Image
		return __tmp__.subImage(_r);

	public function opaque(__tmp__):Bool
		return __tmp__.opaque();
}

class NRGBA64_extension_fields {
	public function colorModel(__tmp__):stdgo.image.color.Color.Model
		return __tmp__.colorModel();

	public function bounds(__tmp__):Rectangle
		return __tmp__.bounds();

	public function at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.Color
		return __tmp__.at(_x, _y);

	public function rgba64at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64
		return __tmp__.rgba64at(_x, _y);

	public function nrgba64at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.NRGBA64
		return __tmp__.nrgba64at(_x, _y);

	public function pixOffset(__tmp__, _x:GoInt, _y:GoInt):GoInt
		return __tmp__.pixOffset(_x, _y);

	public function set(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void
		__tmp__.set(_x, _y, _c);

	public function setRGBA64(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void
		__tmp__.setRGBA64(_x, _y, _c);

	public function setNRGBA64(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.NRGBA64):Void
		__tmp__.setNRGBA64(_x, _y, _c);

	public function subImage(__tmp__, _r:Rectangle):Image
		return __tmp__.subImage(_r);

	public function opaque(__tmp__):Bool
		return __tmp__.opaque();
}

class Alpha_extension_fields {
	public function colorModel(__tmp__):stdgo.image.color.Color.Model
		return __tmp__.colorModel();

	public function bounds(__tmp__):Rectangle
		return __tmp__.bounds();

	public function at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.Color
		return __tmp__.at(_x, _y);

	public function rgba64at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64
		return __tmp__.rgba64at(_x, _y);

	public function alphaAt(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.Alpha
		return __tmp__.alphaAt(_x, _y);

	public function pixOffset(__tmp__, _x:GoInt, _y:GoInt):GoInt
		return __tmp__.pixOffset(_x, _y);

	public function set(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void
		__tmp__.set(_x, _y, _c);

	public function setRGBA64(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void
		__tmp__.setRGBA64(_x, _y, _c);

	public function setAlpha(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Alpha):Void
		__tmp__.setAlpha(_x, _y, _c);

	public function subImage(__tmp__, _r:Rectangle):Image
		return __tmp__.subImage(_r);

	public function opaque(__tmp__):Bool
		return __tmp__.opaque();
}

class Alpha16_extension_fields {
	public function colorModel(__tmp__):stdgo.image.color.Color.Model
		return __tmp__.colorModel();

	public function bounds(__tmp__):Rectangle
		return __tmp__.bounds();

	public function at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.Color
		return __tmp__.at(_x, _y);

	public function rgba64at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64
		return __tmp__.rgba64at(_x, _y);

	public function alpha16At(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.Alpha16
		return __tmp__.alpha16At(_x, _y);

	public function pixOffset(__tmp__, _x:GoInt, _y:GoInt):GoInt
		return __tmp__.pixOffset(_x, _y);

	public function set(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void
		__tmp__.set(_x, _y, _c);

	public function setRGBA64(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void
		__tmp__.setRGBA64(_x, _y, _c);

	public function setAlpha16(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Alpha16):Void
		__tmp__.setAlpha16(_x, _y, _c);

	public function subImage(__tmp__, _r:Rectangle):Image
		return __tmp__.subImage(_r);

	public function opaque(__tmp__):Bool
		return __tmp__.opaque();
}

class Gray_extension_fields {
	public function colorModel(__tmp__):stdgo.image.color.Color.Model
		return __tmp__.colorModel();

	public function bounds(__tmp__):Rectangle
		return __tmp__.bounds();

	public function at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.Color
		return __tmp__.at(_x, _y);

	public function rgba64at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64
		return __tmp__.rgba64at(_x, _y);

	public function grayAt(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.Gray
		return __tmp__.grayAt(_x, _y);

	public function pixOffset(__tmp__, _x:GoInt, _y:GoInt):GoInt
		return __tmp__.pixOffset(_x, _y);

	public function set(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void
		__tmp__.set(_x, _y, _c);

	public function setRGBA64(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void
		__tmp__.setRGBA64(_x, _y, _c);

	public function setGray(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Gray):Void
		__tmp__.setGray(_x, _y, _c);

	public function subImage(__tmp__, _r:Rectangle):Image
		return __tmp__.subImage(_r);

	public function opaque(__tmp__):Bool
		return __tmp__.opaque();
}

class Gray16_extension_fields {
	public function colorModel(__tmp__):stdgo.image.color.Color.Model
		return __tmp__.colorModel();

	public function bounds(__tmp__):Rectangle
		return __tmp__.bounds();

	public function at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.Color
		return __tmp__.at(_x, _y);

	public function rgba64at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64
		return __tmp__.rgba64at(_x, _y);

	public function gray16At(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.Gray16
		return __tmp__.gray16At(_x, _y);

	public function pixOffset(__tmp__, _x:GoInt, _y:GoInt):GoInt
		return __tmp__.pixOffset(_x, _y);

	public function set(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void
		__tmp__.set(_x, _y, _c);

	public function setRGBA64(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void
		__tmp__.setRGBA64(_x, _y, _c);

	public function setGray16(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Gray16):Void
		__tmp__.setGray16(_x, _y, _c);

	public function subImage(__tmp__, _r:Rectangle):Image
		return __tmp__.subImage(_r);

	public function opaque(__tmp__):Bool
		return __tmp__.opaque();
}

class CMYK_extension_fields {
	public function colorModel(__tmp__):stdgo.image.color.Color.Model
		return __tmp__.colorModel();

	public function bounds(__tmp__):Rectangle
		return __tmp__.bounds();

	public function at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.Color
		return __tmp__.at(_x, _y);

	public function rgba64at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64
		return __tmp__.rgba64at(_x, _y);

	public function cmykat(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.CMYK
		return __tmp__.cmykat(_x, _y);

	public function pixOffset(__tmp__, _x:GoInt, _y:GoInt):GoInt
		return __tmp__.pixOffset(_x, _y);

	public function set(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void
		__tmp__.set(_x, _y, _c);

	public function setRGBA64(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void
		__tmp__.setRGBA64(_x, _y, _c);

	public function setCMYK(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.CMYK):Void
		__tmp__.setCMYK(_x, _y, _c);

	public function subImage(__tmp__, _r:Rectangle):Image
		return __tmp__.subImage(_r);

	public function opaque(__tmp__):Bool
		return __tmp__.opaque();
}

class Paletted_extension_fields {
	public function colorModel(__tmp__):stdgo.image.color.Color.Model
		return __tmp__.colorModel();

	public function bounds(__tmp__):Rectangle
		return __tmp__.bounds();

	public function at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.Color
		return __tmp__.at(_x, _y);

	public function rgba64at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64
		return __tmp__.rgba64at(_x, _y);

	public function pixOffset(__tmp__, _x:GoInt, _y:GoInt):GoInt
		return __tmp__.pixOffset(_x, _y);

	public function set(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.Color):Void
		__tmp__.set(_x, _y, _c);

	public function setRGBA64(__tmp__, _x:GoInt, _y:GoInt, _c:stdgo.image.color.Color.RGBA64):Void
		__tmp__.setRGBA64(_x, _y, _c);

	public function colorIndexAt(__tmp__, _x:GoInt, _y:GoInt):GoUInt8
		return __tmp__.colorIndexAt(_x, _y);

	public function setColorIndex(__tmp__, _x:GoInt, _y:GoInt, _index:GoUInt8):Void
		__tmp__.setColorIndex(_x, _y, _index);

	public function subImage(__tmp__, _r:Rectangle):Image
		return __tmp__.subImage(_r);

	public function opaque(__tmp__):Bool
		return __tmp__.opaque();
}

class Uniform_extension_fields {
	public function rgba(__tmp__):{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	}
		return __tmp__.rgba();

	public function colorModel(__tmp__):stdgo.image.color.Color.Model
		return __tmp__.colorModel();

	public function convert(__tmp__, arg0:stdgo.image.color.Color.Color):stdgo.image.color.Color.Color
		return __tmp__.convert(arg0);

	public function bounds(__tmp__):Rectangle
		return __tmp__.bounds();

	public function at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.Color
		return __tmp__.at(_x, _y);

	public function rgba64at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64
		return __tmp__.rgba64at(_x, _y);

	public function opaque(__tmp__):Bool
		return __tmp__.opaque();
}

class YCbCrSubsampleRatio_extension_fields {
	public function toString(__tmp__):GoString
		return __tmp__.toString();
}

class YCbCr_extension_fields {
	public function colorModel(__tmp__):stdgo.image.color.Color.Model
		return __tmp__.colorModel();

	public function bounds(__tmp__):Rectangle
		return __tmp__.bounds();

	public function at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.Color
		return __tmp__.at(_x, _y);

	public function rgba64at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64
		return __tmp__.rgba64at(_x, _y);

	public function ycbCrAt(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.YCbCr
		return __tmp__.ycbCrAt(_x, _y);

	public function yoffset(__tmp__, _x:GoInt, _y:GoInt):GoInt
		return __tmp__.yoffset(_x, _y);

	public function coffset(__tmp__, _x:GoInt, _y:GoInt):GoInt
		return __tmp__.coffset(_x, _y);

	public function subImage(__tmp__, _r:Rectangle):Image
		return __tmp__.subImage(_r);

	public function opaque(__tmp__):Bool
		return __tmp__.opaque();
}

class NYCbCrA_extension_fields {
	public function colorModel(__tmp__):stdgo.image.color.Color.Model
		return __tmp__.colorModel();

	public function at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.Color
		return __tmp__.at(_x, _y);

	public function rgba64at(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.RGBA64
		return __tmp__.rgba64at(_x, _y);

	public function nycbCrAAt(__tmp__, _x:GoInt, _y:GoInt):stdgo.image.color.Color.NYCbCrA
		return __tmp__.nycbCrAAt(_x, _y);

	public function aoffset(__tmp__, _x:GoInt, _y:GoInt):GoInt
		return __tmp__.aoffset(_x, _y);

	public function subImage(__tmp__, _r:Rectangle):Image
		return __tmp__.subImage(_r);

	public function opaque(__tmp__):Bool
		return __tmp__.opaque();
}
