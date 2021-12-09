package stdgo.image.color;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

typedef Color = StructType & {
	public function rgba():{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	};
};

typedef Model = StructType & {
	public function convert(_c:Color):Color;
};

@:structInit class RGBA {
	public function rgba():{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	} {
		var _c = this.__copy__();
		var _r:GoUInt32 = ((0 : GoUInt32)),
			_g:GoUInt32 = ((0 : GoUInt32)),
			_b:GoUInt32 = ((0 : GoUInt32)),
			_a:GoUInt32 = ((0 : GoUInt32));
		_r = ((_c.r : GoUInt32));
		_r = _r | ((_r << ((8 : GoUnTypedInt))));
		_g = ((_c.g : GoUInt32));
		_g = _g | ((_g << ((8 : GoUnTypedInt))));
		_b = ((_c.b : GoUInt32));
		_b = _b | ((_b << ((8 : GoUnTypedInt))));
		_a = ((_c.a : GoUInt32));
		_a = _a | ((_a << ((8 : GoUnTypedInt))));
		return {
			_0: _r,
			_1: _g,
			_2: _b,
			_3: _a
		};
	}

	public var r:GoUInt8 = ((0 : GoUInt8));
	public var g:GoUInt8 = ((0 : GoUInt8));
	public var b:GoUInt8 = ((0 : GoUInt8));
	public var a:GoUInt8 = ((0 : GoUInt8));

	public function new(?r:GoUInt8, ?g:GoUInt8, ?b:GoUInt8, ?a:GoUInt8)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(r) + " " + Go.string(g) + " " + Go.string(b) + " " + Go.string(a) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new RGBA(r, g, b, a);
	}

	public function __set__(__tmp__) {
		this.r = __tmp__.r;
		this.g = __tmp__.g;
		this.b = __tmp__.b;
		this.a = __tmp__.a;
		return this;
	}
}

@:structInit class RGBA64 {
	public function rgba():{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	} {
		var _c = this.__copy__();
		var _r:GoUInt32 = ((0 : GoUInt32)),
			_g:GoUInt32 = ((0 : GoUInt32)),
			_b:GoUInt32 = ((0 : GoUInt32)),
			_a:GoUInt32 = ((0 : GoUInt32));
		return {
			_0: ((_c.r : GoUInt32)),
			_1: ((_c.g : GoUInt32)),
			_2: ((_c.b : GoUInt32)),
			_3: ((_c.a : GoUInt32))
		};
	}

	public var r:GoUInt16 = ((0 : GoUInt16));
	public var g:GoUInt16 = ((0 : GoUInt16));
	public var b:GoUInt16 = ((0 : GoUInt16));
	public var a:GoUInt16 = ((0 : GoUInt16));

	public function new(?r:GoUInt16, ?g:GoUInt16, ?b:GoUInt16, ?a:GoUInt16)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(r) + " " + Go.string(g) + " " + Go.string(b) + " " + Go.string(a) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new RGBA64(r, g, b, a);
	}

	public function __set__(__tmp__) {
		this.r = __tmp__.r;
		this.g = __tmp__.g;
		this.b = __tmp__.b;
		this.a = __tmp__.a;
		return this;
	}
}

@:structInit class NRGBA {
	public function rgba():{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	} {
		var _c = this.__copy__();
		var _r:GoUInt32 = ((0 : GoUInt32)),
			_g:GoUInt32 = ((0 : GoUInt32)),
			_b:GoUInt32 = ((0 : GoUInt32)),
			_a:GoUInt32 = ((0 : GoUInt32));
		_r = ((_c.r : GoUInt32));
		_r = _r | ((_r << ((8 : GoUnTypedInt))));
		_r = _r * (((_c.a : GoUInt32)));
		_r = _r / (((255 : GoUInt32)));
		_g = ((_c.g : GoUInt32));
		_g = _g | ((_g << ((8 : GoUnTypedInt))));
		_g = _g * (((_c.a : GoUInt32)));
		_g = _g / (((255 : GoUInt32)));
		_b = ((_c.b : GoUInt32));
		_b = _b | ((_b << ((8 : GoUnTypedInt))));
		_b = _b * (((_c.a : GoUInt32)));
		_b = _b / (((255 : GoUInt32)));
		_a = ((_c.a : GoUInt32));
		_a = _a | ((_a << ((8 : GoUnTypedInt))));
		return {
			_0: _r,
			_1: _g,
			_2: _b,
			_3: _a
		};
	}

	public var r:GoUInt8 = ((0 : GoUInt8));
	public var g:GoUInt8 = ((0 : GoUInt8));
	public var b:GoUInt8 = ((0 : GoUInt8));
	public var a:GoUInt8 = ((0 : GoUInt8));

	public function new(?r:GoUInt8, ?g:GoUInt8, ?b:GoUInt8, ?a:GoUInt8)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(r) + " " + Go.string(g) + " " + Go.string(b) + " " + Go.string(a) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new NRGBA(r, g, b, a);
	}

	public function __set__(__tmp__) {
		this.r = __tmp__.r;
		this.g = __tmp__.g;
		this.b = __tmp__.b;
		this.a = __tmp__.a;
		return this;
	}
}

@:structInit class NRGBA64 {
	public function rgba():{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	} {
		var _c = this.__copy__();
		var _r:GoUInt32 = ((0 : GoUInt32)),
			_g:GoUInt32 = ((0 : GoUInt32)),
			_b:GoUInt32 = ((0 : GoUInt32)),
			_a:GoUInt32 = ((0 : GoUInt32));
		_r = ((_c.r : GoUInt32));
		_r = _r * (((_c.a : GoUInt32)));
		_r = _r / (((65535 : GoUInt32)));
		_g = ((_c.g : GoUInt32));
		_g = _g * (((_c.a : GoUInt32)));
		_g = _g / (((65535 : GoUInt32)));
		_b = ((_c.b : GoUInt32));
		_b = _b * (((_c.a : GoUInt32)));
		_b = _b / (((65535 : GoUInt32)));
		_a = ((_c.a : GoUInt32));
		return {
			_0: _r,
			_1: _g,
			_2: _b,
			_3: _a
		};
	}

	public var r:GoUInt16 = ((0 : GoUInt16));
	public var g:GoUInt16 = ((0 : GoUInt16));
	public var b:GoUInt16 = ((0 : GoUInt16));
	public var a:GoUInt16 = ((0 : GoUInt16));

	public function new(?r:GoUInt16, ?g:GoUInt16, ?b:GoUInt16, ?a:GoUInt16)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(r) + " " + Go.string(g) + " " + Go.string(b) + " " + Go.string(a) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new NRGBA64(r, g, b, a);
	}

	public function __set__(__tmp__) {
		this.r = __tmp__.r;
		this.g = __tmp__.g;
		this.b = __tmp__.b;
		this.a = __tmp__.a;
		return this;
	}
}

@:structInit class Alpha {
	public function rgba():{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	} {
		var _c = this.__copy__();
		var _r:GoUInt32 = ((0 : GoUInt32)),
			_g:GoUInt32 = ((0 : GoUInt32)),
			_b:GoUInt32 = ((0 : GoUInt32)),
			_a:GoUInt32 = ((0 : GoUInt32));
		_a = ((_c.a : GoUInt32));
		_a = _a | ((_a << ((8 : GoUnTypedInt))));
		return {
			_0: _a,
			_1: _a,
			_2: _a,
			_3: _a
		};
	}

	public var a:GoUInt8 = ((0 : GoUInt8));

	public function new(?a:GoUInt8)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(a) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Alpha(a);
	}

	public function __set__(__tmp__) {
		this.a = __tmp__.a;
		return this;
	}
}

@:structInit class Alpha16 {
	public function rgba():{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	} {
		var _c = this.__copy__();
		var _r:GoUInt32 = ((0 : GoUInt32)),
			_g:GoUInt32 = ((0 : GoUInt32)),
			_b:GoUInt32 = ((0 : GoUInt32)),
			_a:GoUInt32 = ((0 : GoUInt32));
		_a = ((_c.a : GoUInt32));
		return {
			_0: _a,
			_1: _a,
			_2: _a,
			_3: _a
		};
	}

	public var a:GoUInt16 = ((0 : GoUInt16));

	public function new(?a:GoUInt16)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(a) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Alpha16(a);
	}

	public function __set__(__tmp__) {
		this.a = __tmp__.a;
		return this;
	}
}

@:structInit class Gray {
	public function rgba():{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	} {
		var _c = this.__copy__();
		var _r:GoUInt32 = ((0 : GoUInt32)),
			_g:GoUInt32 = ((0 : GoUInt32)),
			_b:GoUInt32 = ((0 : GoUInt32)),
			_a:GoUInt32 = ((0 : GoUInt32));
		var _y:GoUInt32 = ((_c.y : GoUInt32));
		_y = _y | ((_y << ((8 : GoUnTypedInt))));
		return {
			_0: _y,
			_1: _y,
			_2: _y,
			_3: ((65535 : GoUInt32))
		};
	}

	public var y:GoUInt8 = ((0 : GoUInt8));

	public function new(?y:GoUInt8)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(y) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Gray(y);
	}

	public function __set__(__tmp__) {
		this.y = __tmp__.y;
		return this;
	}
}

@:structInit class Gray16 {
	public function rgba():{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	} {
		var _c = this.__copy__();
		var _r:GoUInt32 = ((0 : GoUInt32)),
			_g:GoUInt32 = ((0 : GoUInt32)),
			_b:GoUInt32 = ((0 : GoUInt32)),
			_a:GoUInt32 = ((0 : GoUInt32));
		var _y:GoUInt32 = ((_c.y : GoUInt32));
		return {
			_0: _y,
			_1: _y,
			_2: _y,
			_3: ((65535 : GoUInt32))
		};
	}

	public var y:GoUInt16 = ((0 : GoUInt16));

	public function new(?y:GoUInt16)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(y) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Gray16(y);
	}

	public function __set__(__tmp__) {
		this.y = __tmp__.y;
		return this;
	}
}

@:structInit class T_modelFunc {
	public function convert(_c:Color):Color {
		var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _m.value._f(_c);
	}

	public var _f:Color->Color = null;

	public function new(?_f:Color->Color)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_f) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_modelFunc(_f);
	}

	public function __set__(__tmp__) {
		this._f = __tmp__._f;
		return this;
	}
}

@:named class Palette {
	public function index(_c:Color):GoInt {
		var _p = this.__copy__();
		var __tmp__ = _c.rgba(),
			_cr:GoUInt32 = __tmp__._0,
			_cg:GoUInt32 = __tmp__._1,
			_cb:GoUInt32 = __tmp__._2,
			_ca:GoUInt32 = __tmp__._3;
		var _ret:GoInt = ((0 : GoInt)),
			_bestSum:GoUInt32 = ((((((1 : GoUnTypedInt)) << ((32 : GoUnTypedInt))) - ((1 : GoUnTypedInt))) : GoUInt32));
		{
			var _i;
			var _v;
			for (_obj in _p.__t__.keyValueIterator()) {
				_i = _obj.key;
				_v = _obj.value;
				var __tmp__ = _v.rgba(),
					_vr:GoUInt32 = __tmp__._0,
					_vg:GoUInt32 = __tmp__._1,
					_vb:GoUInt32 = __tmp__._2,
					_va:GoUInt32 = __tmp__._3;
				var _sum:GoUInt32 = _sqDiff(_cr, _vr) + _sqDiff(_cg, _vg) + _sqDiff(_cb, _vb) + _sqDiff(_ca, _va);
				if (_sum < _bestSum) {
					if (_sum == ((0 : GoUInt32))) {
						return _i;
					};
					{
						final __tmp__0 = _i;
						final __tmp__1 = _sum;
						_ret = __tmp__0;
						_bestSum = __tmp__1;
					};
				};
			};
		};
		return _ret;
	}

	public function convert(_c:Color):Color {
		var _p = this.__copy__();
		if (_p.__t__.length == ((0 : GoInt))) {
			return ((null : Color));
		};
		return _p.__t__[_p.index(_c)];
	}

	public var __t__:Slice<Color>;

	public function new(?t:Slice<Color>) {
		__t__ = t == null ? new Slice<Color>().nil() : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new Palette(__t__);

	public function __append__(args:haxe.Rest<Color>)
		return new Palette(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new Palette(this.__t__.__slice__(low, high));
}

@:structInit class YCbCr {
	public function rgba():{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	} {
		var _c = this.__copy__();
		var _yy1:GoInt32 = ((_c.y : GoInt32)) * ((65793 : GoInt32));
		var _cb1:GoInt32 = ((_c.cb : GoInt32)) - ((128 : GoInt32));
		var _cr1:GoInt32 = ((_c.cr : GoInt32)) - ((128 : GoInt32));
		var _r:GoInt32 = _yy1 + ((91881 : GoInt32)) * _cr1;
		if (((_r : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
			_r = (_r >> (((8 : GoUnTypedInt))));
		} else {
			_r = -1 ^ ((_r >> ((31 : GoUnTypedInt)))) & ((65535 : GoInt32));
		};
		var _g:GoInt32 = _yy1 - ((22554 : GoInt32)) * _cb1 - ((46802 : GoInt32)) * _cr1;
		if (((_g : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
			_g = (_g >> (((8 : GoUnTypedInt))));
		} else {
			_g = -1 ^ ((_g >> ((31 : GoUnTypedInt)))) & ((65535 : GoInt32));
		};
		var _b:GoInt32 = _yy1 + ((116130 : GoInt32)) * _cb1;
		if (((_b : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
			_b = (_b >> (((8 : GoUnTypedInt))));
		} else {
			_b = -1 ^ ((_b >> ((31 : GoUnTypedInt)))) & ((65535 : GoInt32));
		};
		return {
			_0: ((_r : GoUInt32)),
			_1: ((_g : GoUInt32)),
			_2: ((_b : GoUInt32)),
			_3: ((65535 : GoUInt32))
		};
	}

	public var y:GoUInt8 = ((0 : GoUInt8));
	public var cb:GoUInt8 = ((0 : GoUInt8));
	public var cr:GoUInt8 = ((0 : GoUInt8));

	public function new(?y:GoUInt8, ?cb:GoUInt8, ?cr:GoUInt8)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(y) + " " + Go.string(cb) + " " + Go.string(cr) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new YCbCr(y, cb, cr);
	}

	public function __set__(__tmp__) {
		this.y = __tmp__.y;
		this.cb = __tmp__.cb;
		this.cr = __tmp__.cr;
		return this;
	}
}

@:structInit class NYCbCrA {
	public function rgba():{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	} {
		var _c = this.__copy__();
		var _yy1:GoInt32 = ((_c.ycbCr.y : GoInt32)) * ((65793 : GoInt32));
		var _cb1:GoInt32 = ((_c.ycbCr.cb : GoInt32)) - ((128 : GoInt32));
		var _cr1:GoInt32 = ((_c.ycbCr.cr : GoInt32)) - ((128 : GoInt32));
		var _r:GoInt32 = _yy1 + ((91881 : GoInt32)) * _cr1;
		if (((_r : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
			_r = (_r >> (((8 : GoUnTypedInt))));
		} else {
			_r = -1 ^ ((_r >> ((31 : GoUnTypedInt)))) & ((65535 : GoInt32));
		};
		var _g:GoInt32 = _yy1 - ((22554 : GoInt32)) * _cb1 - ((46802 : GoInt32)) * _cr1;
		if (((_g : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
			_g = (_g >> (((8 : GoUnTypedInt))));
		} else {
			_g = -1 ^ ((_g >> ((31 : GoUnTypedInt)))) & ((65535 : GoInt32));
		};
		var _b:GoInt32 = _yy1 + ((116130 : GoInt32)) * _cb1;
		if (((_b : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
			_b = (_b >> (((8 : GoUnTypedInt))));
		} else {
			_b = -1 ^ ((_b >> ((31 : GoUnTypedInt)))) & ((65535 : GoInt32));
		};
		var _a:GoUInt32 = ((_c.a : GoUInt32)) * ((257 : GoUInt32));
		return {
			_0: ((_r : GoUInt32)) * _a / ((65535 : GoUInt32)),
			_1: ((_g : GoUInt32)) * _a / ((65535 : GoUInt32)),
			_2: ((_b : GoUInt32)) * _a / ((65535 : GoUInt32)),
			_3: _a
		};
	}

	@:embedded
	public var ycbCr:YCbCr = new YCbCr();
	public var a:GoUInt8 = ((0 : GoUInt8));

	public function new(?ycbCr:YCbCr, ?a:GoUInt8)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(ycbCr) + " " + Go.string(a) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new NYCbCrA(ycbCr, a);
	}

	public function __set__(__tmp__) {
		this.ycbCr = __tmp__.ycbCr;
		this.a = __tmp__.a;
		return this;
	}
}

@:structInit class CMYK {
	public function rgba():{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	} {
		var _c = this.__copy__();
		var _w:GoUInt32 = ((65535 : GoUInt32)) - ((_c.k : GoUInt32)) * ((257 : GoUInt32));
		var _r:GoUInt32 = (((65535 : GoUInt32)) - ((_c.c : GoUInt32)) * ((257 : GoUInt32))) * _w / ((65535 : GoUInt32));
		var _g:GoUInt32 = (((65535 : GoUInt32)) - ((_c.m : GoUInt32)) * ((257 : GoUInt32))) * _w / ((65535 : GoUInt32));
		var _b:GoUInt32 = (((65535 : GoUInt32)) - ((_c.y : GoUInt32)) * ((257 : GoUInt32))) * _w / ((65535 : GoUInt32));
		return {
			_0: _r,
			_1: _g,
			_2: _b,
			_3: ((65535 : GoUInt32))
		};
	}

	public var c:GoUInt8 = ((0 : GoUInt8));
	public var m:GoUInt8 = ((0 : GoUInt8));
	public var y:GoUInt8 = ((0 : GoUInt8));
	public var k:GoUInt8 = ((0 : GoUInt8));

	public function new(?c:GoUInt8, ?m:GoUInt8, ?y:GoUInt8, ?k:GoUInt8)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(c) + " " + Go.string(m) + " " + Go.string(y) + " " + Go.string(k) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new CMYK(c, m, y, k);
	}

	public function __set__(__tmp__) {
		this.c = __tmp__.c;
		this.m = __tmp__.m;
		this.y = __tmp__.y;
		this.k = __tmp__.k;
		return this;
	}
}

var opaque:Alpha16 = new Alpha16(((65535 : GoUInt16))).__copy__();
var alpha16Model:Model = modelFunc(_alpha16Model);
var nycbCrAModel:Model = modelFunc(_nYCbCrAModel);
var ycbCrModel:Model = modelFunc(_yCbCrModel);
var nrgbamodel:Model = modelFunc(_nrgbaModel);
var grayModel:Model = modelFunc(_grayModel);
var alphaModel:Model = modelFunc(_alphaModel);
var rgba64model:Model = modelFunc(_rgba64Model);
var nrgba64model:Model = modelFunc(_nrgba64Model);
var cmykmodel:Model = modelFunc(_cmykModel);
var gray16Model:Model = modelFunc(_gray16Model);
var transparent:Alpha16 = new Alpha16(((0 : GoUInt16))).__copy__();
var white:Gray16 = new Gray16(((65535 : GoUInt16))).__copy__();
var black:Gray16 = new Gray16(((0 : GoUInt16))).__copy__();
var rgbamodel:Model = modelFunc(_rgbaModel);

/**
	// ModelFunc returns a Model that invokes f to implement the conversion.
**/
function modelFunc(_f:Color->Color):Model {
	return Go.pointer(new T_modelFunc(_f)).value;
}

function _rgbaModel(_c:Color):Color {
	{
		var __tmp__ = try {
			{value: ((_c.__underlying__().value : RGBA)), ok: true};
		} catch (_) {
			{value: new RGBA(), ok: false};
		}, _ = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _c;
		};
	};
	var __tmp__ = _c.rgba(),
		_r:GoUInt32 = __tmp__._0,
		_g:GoUInt32 = __tmp__._1,
		_b:GoUInt32 = __tmp__._2,
		_a:GoUInt32 = __tmp__._3;
	return new RGBA((((_r >> ((8 : GoUnTypedInt))) : GoUInt8)), (((_g >> ((8 : GoUnTypedInt))) : GoUInt8)), (((_b >> ((8 : GoUnTypedInt))) : GoUInt8)),
		(((_a >> ((8 : GoUnTypedInt))) : GoUInt8))).__copy__();
}

function _rgba64Model(_c:Color):Color {
	{
		var __tmp__ = try {
			{value: ((_c.__underlying__().value : RGBA64)), ok: true};
		} catch (_) {
			{value: new RGBA64(), ok: false};
		}, _ = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _c;
		};
	};
	var __tmp__ = _c.rgba(),
		_r:GoUInt32 = __tmp__._0,
		_g:GoUInt32 = __tmp__._1,
		_b:GoUInt32 = __tmp__._2,
		_a:GoUInt32 = __tmp__._3;
	return new RGBA64(((_r : GoUInt16)), ((_g : GoUInt16)), ((_b : GoUInt16)), ((_a : GoUInt16))).__copy__();
}

function _nrgbaModel(_c:Color):Color {
	{
		var __tmp__ = try {
			{value: ((_c.__underlying__().value : NRGBA)), ok: true};
		} catch (_) {
			{value: new NRGBA(), ok: false};
		}, _ = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _c;
		};
	};
	var __tmp__ = _c.rgba(),
		_r:GoUInt32 = __tmp__._0,
		_g:GoUInt32 = __tmp__._1,
		_b:GoUInt32 = __tmp__._2,
		_a:GoUInt32 = __tmp__._3;
	if (_a == ((65535 : GoUInt32))) {
		return new NRGBA((((_r >> ((8 : GoUnTypedInt))) : GoUInt8)), (((_g >> ((8 : GoUnTypedInt))) : GoUInt8)), (((_b >> ((8 : GoUnTypedInt))) : GoUInt8)),
			((255 : GoUInt8))).__copy__();
	};
	if (_a == ((0 : GoUInt32))) {
		return new NRGBA(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8))).__copy__();
	};
	_r = (_r * ((65535 : GoUInt32))) / _a;
	_g = (_g * ((65535 : GoUInt32))) / _a;
	_b = (_b * ((65535 : GoUInt32))) / _a;
	return new NRGBA((((_r >> ((8 : GoUnTypedInt))) : GoUInt8)), (((_g >> ((8 : GoUnTypedInt))) : GoUInt8)), (((_b >> ((8 : GoUnTypedInt))) : GoUInt8)),
		(((_a >> ((8 : GoUnTypedInt))) : GoUInt8))).__copy__();
}

function _nrgba64Model(_c:Color):Color {
	{
		var __tmp__ = try {
			{value: ((_c.__underlying__().value : NRGBA64)), ok: true};
		} catch (_) {
			{value: new NRGBA64(), ok: false};
		}, _ = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _c;
		};
	};
	var __tmp__ = _c.rgba(),
		_r:GoUInt32 = __tmp__._0,
		_g:GoUInt32 = __tmp__._1,
		_b:GoUInt32 = __tmp__._2,
		_a:GoUInt32 = __tmp__._3;
	if (_a == ((65535 : GoUInt32))) {
		return new NRGBA64(((_r : GoUInt16)), ((_g : GoUInt16)), ((_b : GoUInt16)), ((65535 : GoUInt16))).__copy__();
	};
	if (_a == ((0 : GoUInt32))) {
		return new NRGBA64(((0 : GoUInt16)), ((0 : GoUInt16)), ((0 : GoUInt16)), ((0 : GoUInt16))).__copy__();
	};
	_r = (_r * ((65535 : GoUInt32))) / _a;
	_g = (_g * ((65535 : GoUInt32))) / _a;
	_b = (_b * ((65535 : GoUInt32))) / _a;
	return new NRGBA64(((_r : GoUInt16)), ((_g : GoUInt16)), ((_b : GoUInt16)), ((_a : GoUInt16))).__copy__();
}

function _alphaModel(_c:Color):Color {
	{
		var __tmp__ = try {
			{value: ((_c.__underlying__().value : Alpha)), ok: true};
		} catch (_) {
			{value: new Alpha(), ok: false};
		}, _ = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _c;
		};
	};
	var __tmp__ = _c.rgba(),
		_:GoUInt32 = __tmp__._0,
		_:GoUInt32 = __tmp__._1,
		_:GoUInt32 = __tmp__._2,
		_a:GoUInt32 = __tmp__._3;
	return new Alpha((((_a >> ((8 : GoUnTypedInt))) : GoUInt8))).__copy__();
}

function _alpha16Model(_c:Color):Color {
	{
		var __tmp__ = try {
			{value: ((_c.__underlying__().value : Alpha16)), ok: true};
		} catch (_) {
			{value: new Alpha16(), ok: false};
		}, _ = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _c;
		};
	};
	var __tmp__ = _c.rgba(),
		_:GoUInt32 = __tmp__._0,
		_:GoUInt32 = __tmp__._1,
		_:GoUInt32 = __tmp__._2,
		_a:GoUInt32 = __tmp__._3;
	return new Alpha16(((_a : GoUInt16))).__copy__();
}

function _grayModel(_c:Color):Color {
	{
		var __tmp__ = try {
			{value: ((_c.__underlying__().value : Gray)), ok: true};
		} catch (_) {
			{value: new Gray(), ok: false};
		}, _ = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _c;
		};
	};
	var __tmp__ = _c.rgba(),
		_r:GoUInt32 = __tmp__._0,
		_g:GoUInt32 = __tmp__._1,
		_b:GoUInt32 = __tmp__._2,
		_:GoUInt32 = __tmp__._3;
	var _y:GoUInt32 = ((((19595 : GoUInt32)) * _r + ((38470 : GoUInt32)) * _g + ((7471 : GoUInt32)) * _b +
		(((1 : GoUnTypedInt)) << ((15 : GoUnTypedInt)))) >> ((24 : GoUnTypedInt)));
	return new Gray(((_y : GoUInt8))).__copy__();
}

function _gray16Model(_c:Color):Color {
	{
		var __tmp__ = try {
			{value: ((_c.__underlying__().value : Gray16)), ok: true};
		} catch (_) {
			{value: new Gray16(), ok: false};
		}, _ = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _c;
		};
	};
	var __tmp__ = _c.rgba(),
		_r:GoUInt32 = __tmp__._0,
		_g:GoUInt32 = __tmp__._1,
		_b:GoUInt32 = __tmp__._2,
		_:GoUInt32 = __tmp__._3;
	var _y:GoUInt32 = ((((19595 : GoUInt32)) * _r + ((38470 : GoUInt32)) * _g + ((7471 : GoUInt32)) * _b +
		(((1 : GoUnTypedInt)) << ((15 : GoUnTypedInt)))) >> ((16 : GoUnTypedInt)));
	return new Gray16(((_y : GoUInt16))).__copy__();
}

/**
	// sqDiff returns the squared-difference of x and y, shifted by 2 so that
	// adding four of those won't overflow a uint32.
	//
	// x and y are both assumed to be in the range [0, 0xffff].
**/
function _sqDiff(_x:GoUInt32, _y:GoUInt32):GoUInt32 {
	var _d:GoUInt32 = _x - _y;
	return ((_d * _d) >> ((2 : GoUnTypedInt)));
}

/**
	// RGBToYCbCr converts an RGB triple to a Y'CbCr triple.
**/
function rgbtoYCbCr(_r:GoUInt8, _g:GoUInt8, _b:GoUInt8):{var _0:GoUInt8; var _1:GoUInt8; var _2:GoUInt8;} {
	var _r1:GoInt32 = ((_r : GoInt32));
	var _g1:GoInt32 = ((_g : GoInt32));
	var _b1:GoInt32 = ((_b : GoInt32));
	var _yy:GoInt32 = ((((19595 : GoInt32)) * _r1 + ((38470 : GoInt32)) * _g1 + ((7471 : GoInt32)) * _b1 +
		(((1 : GoUnTypedInt)) << ((15 : GoUnTypedInt)))) >> ((16 : GoUnTypedInt)));
	var _cb:GoInt32 = -((11056 : GoUnTypedInt)) * _r1 - ((21712 : GoInt32)) * _g1 + ((32768 : GoInt32)) * _b1
		+ (((257 : GoUnTypedInt)) << ((15 : GoUnTypedInt)));
	if (((_cb : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
		_cb = (_cb >> (((16 : GoUnTypedInt))));
	} else {
		_cb = -1 ^ ((_cb >> ((31 : GoUnTypedInt))));
	};
	var _cr:GoInt32 = ((32768 : GoInt32)) * _r1
		- ((27440 : GoInt32)) * _g1
		- ((5328 : GoInt32)) * _b1
		+ (((257 : GoUnTypedInt)) << ((15 : GoUnTypedInt)));
	if (((_cr : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
		_cr = (_cr >> (((16 : GoUnTypedInt))));
	} else {
		_cr = -1 ^ ((_cr >> ((31 : GoUnTypedInt))));
	};
	return {_0: ((_yy : GoUInt8)), _1: ((_cb : GoUInt8)), _2: ((_cr : GoUInt8))};
}

/**
	// YCbCrToRGB converts a Y'CbCr triple to an RGB triple.
**/
function ycbCrToRGB(_y:GoUInt8, _cb:GoUInt8, _cr:GoUInt8):{var _0:GoUInt8; var _1:GoUInt8; var _2:GoUInt8;} {
	var _yy1:GoInt32 = ((_y : GoInt32)) * ((65793 : GoInt32));
	var _cb1:GoInt32 = ((_cb : GoInt32)) - ((128 : GoInt32));
	var _cr1:GoInt32 = ((_cr : GoInt32)) - ((128 : GoInt32));
	var _r:GoInt32 = _yy1 + ((91881 : GoInt32)) * _cr1;
	if (((_r : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
		_r = (_r >> (((16 : GoUnTypedInt))));
	} else {
		_r = -1 ^ ((_r >> ((31 : GoUnTypedInt))));
	};
	var _g:GoInt32 = _yy1 - ((22554 : GoInt32)) * _cb1 - ((46802 : GoInt32)) * _cr1;
	if (((_g : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
		_g = (_g >> (((16 : GoUnTypedInt))));
	} else {
		_g = -1 ^ ((_g >> ((31 : GoUnTypedInt))));
	};
	var _b:GoInt32 = _yy1 + ((116130 : GoInt32)) * _cb1;
	if (((_b : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
		_b = (_b >> (((16 : GoUnTypedInt))));
	} else {
		_b = -1 ^ ((_b >> ((31 : GoUnTypedInt))));
	};
	return {_0: ((_r : GoUInt8)), _1: ((_g : GoUInt8)), _2: ((_b : GoUInt8))};
}

function _yCbCrModel(_c:Color):Color {
	{
		var __tmp__ = try {
			{value: ((_c.__underlying__().value : YCbCr)), ok: true};
		} catch (_) {
			{value: new YCbCr(), ok: false};
		}, _ = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _c;
		};
	};
	var __tmp__ = _c.rgba(),
		_r:GoUInt32 = __tmp__._0,
		_g:GoUInt32 = __tmp__._1,
		_b:GoUInt32 = __tmp__._2,
		_:GoUInt32 = __tmp__._3;
	var __tmp__ = rgbtoYCbCr((((_r >> ((8 : GoUnTypedInt))) : GoUInt8)), (((_g >> ((8 : GoUnTypedInt))) : GoUInt8)),
		(((_b >> ((8 : GoUnTypedInt))) : GoUInt8))),
		_y:GoUInt8 = __tmp__._0,
		_u:GoUInt8 = __tmp__._1,
		_v:GoUInt8 = __tmp__._2;
	return new YCbCr(_y, _u, _v).__copy__();
}

function _nYCbCrAModel(_c:Color):Color {
	if (Go.assertable(((_c : NYCbCrA)))) {
		var _c:NYCbCrA = _c == null ? null : _c.__underlying__() == null ? null : _c == null ? null : _c.__underlying__().value;
		return _c.__copy__();
	} else if (Go.assertable(((_c : YCbCr)))) {
		var _c:YCbCr = _c == null ? null : _c.__underlying__() == null ? null : _c == null ? null : _c.__underlying__().value;
		return new NYCbCrA(_c.__copy__(), ((255 : GoUInt8))).__copy__();
	};
	var __tmp__ = _c.rgba(),
		_r:GoUInt32 = __tmp__._0,
		_g:GoUInt32 = __tmp__._1,
		_b:GoUInt32 = __tmp__._2,
		_a:GoUInt32 = __tmp__._3;
	if (_a != ((0 : GoUInt32))) {
		_r = (_r * ((65535 : GoUInt32))) / _a;
		_g = (_g * ((65535 : GoUInt32))) / _a;
		_b = (_b * ((65535 : GoUInt32))) / _a;
	};
	var __tmp__ = rgbtoYCbCr((((_r >> ((8 : GoUnTypedInt))) : GoUInt8)), (((_g >> ((8 : GoUnTypedInt))) : GoUInt8)),
		(((_b >> ((8 : GoUnTypedInt))) : GoUInt8))),
		_y:GoUInt8 = __tmp__._0,
		_u:GoUInt8 = __tmp__._1,
		_v:GoUInt8 = __tmp__._2;
	return new NYCbCrA((({y: _y, cb: _u, cr: _v} : YCbCr)).__copy__(), (((_a >> ((8 : GoUnTypedInt))) : GoUInt8))).__copy__();
}

/**
	// RGBToCMYK converts an RGB triple to a CMYK quadruple.
**/
function rgbtoCMYK(_r:GoUInt8, _g:GoUInt8, _b:GoUInt8):{
	var _0:GoUInt8;
	var _1:GoUInt8;
	var _2:GoUInt8;
	var _3:GoUInt8;
} {
	var _rr:GoUInt32 = ((_r : GoUInt32));
	var _gg:GoUInt32 = ((_g : GoUInt32));
	var _bb:GoUInt32 = ((_b : GoUInt32));
	var _w:GoUInt32 = _rr;
	if (_w < _gg) {
		_w = _gg;
	};
	if (_w < _bb) {
		_w = _bb;
	};
	if (_w == ((0 : GoUInt32))) {
		return {
			_0: ((0 : GoUInt8)),
			_1: ((0 : GoUInt8)),
			_2: ((0 : GoUInt8)),
			_3: ((255 : GoUInt8))
		};
	};
	var _c:GoUInt32 = (_w - _rr) * ((255 : GoUInt32)) / _w;
	var _m:GoUInt32 = (_w - _gg) * ((255 : GoUInt32)) / _w;
	var _y:GoUInt32 = (_w - _bb) * ((255 : GoUInt32)) / _w;
	return {
		_0: ((_c : GoUInt8)),
		_1: ((_m : GoUInt8)),
		_2: ((_y : GoUInt8)),
		_3: (((((255 : GoUInt32)) - _w) : GoUInt8))
	};
}

/**
	// CMYKToRGB converts a CMYK quadruple to an RGB triple.
**/
function cmyktoRGB(_c:GoUInt8, _m:GoUInt8, _y:GoUInt8, _k:GoUInt8):{var _0:GoUInt8; var _1:GoUInt8; var _2:GoUInt8;} {
	var _w:GoUInt32 = ((65535 : GoUInt32)) - ((_k : GoUInt32)) * ((257 : GoUInt32));
	var _r:GoUInt32 = (((65535 : GoUInt32)) - ((_c : GoUInt32)) * ((257 : GoUInt32))) * _w / ((65535 : GoUInt32));
	var _g:GoUInt32 = (((65535 : GoUInt32)) - ((_m : GoUInt32)) * ((257 : GoUInt32))) * _w / ((65535 : GoUInt32));
	var _b:GoUInt32 = (((65535 : GoUInt32)) - ((_y : GoUInt32)) * ((257 : GoUInt32))) * _w / ((65535 : GoUInt32));
	return {_0: (((_r >> ((8 : GoUnTypedInt))) : GoUInt8)), _1: (((_g >> ((8 : GoUnTypedInt))) : GoUInt8)), _2: (((_b >> ((8 : GoUnTypedInt))) : GoUInt8))};
}

function _cmykModel(_c:Color):Color {
	{
		var __tmp__ = try {
			{value: ((_c.__underlying__().value : CMYK)), ok: true};
		} catch (_) {
			{value: new CMYK(), ok: false};
		}, _ = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _c;
		};
	};
	var __tmp__ = _c.rgba(),
		_r:GoUInt32 = __tmp__._0,
		_g:GoUInt32 = __tmp__._1,
		_b:GoUInt32 = __tmp__._2,
		_:GoUInt32 = __tmp__._3;
	var __tmp__ = rgbtoCMYK((((_r >> ((8 : GoUnTypedInt))) : GoUInt8)), (((_g >> ((8 : GoUnTypedInt))) : GoUInt8)),
		(((_b >> ((8 : GoUnTypedInt))) : GoUInt8))),
		_cc:GoUInt8 = __tmp__._0,
		_mm:GoUInt8 = __tmp__._1,
		_yy:GoUInt8 = __tmp__._2,
		_kk:GoUInt8 = __tmp__._3;
	return new CMYK(_cc, _mm, _yy, _kk).__copy__();
}

class RGBA_extension_fields {
	public function rgba(__tmp__):{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	}
		return __tmp__.rgba();
}

class RGBA64_extension_fields {
	public function rgba(__tmp__):{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	}
		return __tmp__.rgba();
}

class NRGBA_extension_fields {
	public function rgba(__tmp__):{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	}
		return __tmp__.rgba();
}

class NRGBA64_extension_fields {
	public function rgba(__tmp__):{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	}
		return __tmp__.rgba();
}

class Alpha_extension_fields {
	public function rgba(__tmp__):{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	}
		return __tmp__.rgba();
}

class Alpha16_extension_fields {
	public function rgba(__tmp__):{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	}
		return __tmp__.rgba();
}

class Gray_extension_fields {
	public function rgba(__tmp__):{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	}
		return __tmp__.rgba();
}

class Gray16_extension_fields {
	public function rgba(__tmp__):{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	}
		return __tmp__.rgba();
}

class T_modelFunc_extension_fields {
	public function convert(__tmp__, _c:Color):Color
		return __tmp__.convert(_c);
}

class Palette_extension_fields {
	public function convert(__tmp__, _c:Color):Color
		return __tmp__.convert(_c);

	public function index(__tmp__, _c:Color):GoInt
		return __tmp__.index(_c);
}

class YCbCr_extension_fields {
	public function rgba(__tmp__):{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	}
		return __tmp__.rgba();
}

class NYCbCrA_extension_fields {
	public function rgba(__tmp__):{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	}
		return __tmp__.rgba();
}

class CMYK_extension_fields {
	public function rgba(__tmp__):{
		var _0:GoUInt32;
		var _1:GoUInt32;
		var _2:GoUInt32;
		var _3:GoUInt32;
	}
		return __tmp__.rgba();
}
