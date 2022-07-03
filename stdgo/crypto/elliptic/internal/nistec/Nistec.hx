package stdgo.crypto.elliptic.internal.nistec;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _p224B = __tmp__6._0;
var _p224G = __tmp__8._0;
var _p384B = __tmp__10._0;
var _p384G = __tmp__12._0;
var _p521B = __tmp__14._0;
var _p521G = __tmp__16._0;
var __tmp__6 = new crypto.elliptic.internal.fiat.Fiat.P224Element().setBytes(((new Slice<GoByte>(
((180 : GoUInt8)),
((5 : GoUInt8)),
((10 : GoUInt8)),
((133 : GoUInt8)),
((12 : GoUInt8)),
((4 : GoUInt8)),
((179 : GoUInt8)),
((171 : GoUInt8)),
((245 : GoUInt8)),
((65 : GoUInt8)),
((50 : GoUInt8)),
((86 : GoUInt8)),
((80 : GoUInt8)),
((68 : GoUInt8)),
((176 : GoUInt8)),
((183 : GoUInt8)),
((215 : GoUInt8)),
((191 : GoUInt8)),
((216 : GoUInt8)),
((186 : GoUInt8)),
((39 : GoUInt8)),
((11 : GoUInt8)),
((57 : GoUInt8)),
((67 : GoUInt8)),
((35 : GoUInt8)),
((85 : GoUInt8)),
((255 : GoUInt8)),
((180 : GoUInt8))) : Slice<GoByte>)));
var _7 = __tmp__6._1;
var __tmp__8 = newP224Point().setBytes(((new Slice<GoByte>(
((4 : GoUInt8)),
((183 : GoUInt8)),
((14 : GoUInt8)),
((12 : GoUInt8)),
((189 : GoUInt8)),
((107 : GoUInt8)),
((180 : GoUInt8)),
((191 : GoUInt8)),
((127 : GoUInt8)),
((50 : GoUInt8)),
((19 : GoUInt8)),
((144 : GoUInt8)),
((185 : GoUInt8)),
((74 : GoUInt8)),
((3 : GoUInt8)),
((193 : GoUInt8)),
((211 : GoUInt8)),
((86 : GoUInt8)),
((194 : GoUInt8)),
((17 : GoUInt8)),
((34 : GoUInt8)),
((52 : GoUInt8)),
((50 : GoUInt8)),
((128 : GoUInt8)),
((214 : GoUInt8)),
((17 : GoUInt8)),
((92 : GoUInt8)),
((29 : GoUInt8)),
((33 : GoUInt8)),
((189 : GoUInt8)),
((55 : GoUInt8)),
((99 : GoUInt8)),
((136 : GoUInt8)),
((181 : GoUInt8)),
((247 : GoUInt8)),
((35 : GoUInt8)),
((251 : GoUInt8)),
((76 : GoUInt8)),
((34 : GoUInt8)),
((223 : GoUInt8)),
((230 : GoUInt8)),
((205 : GoUInt8)),
((67 : GoUInt8)),
((117 : GoUInt8)),
((160 : GoUInt8)),
((90 : GoUInt8)),
((7 : GoUInt8)),
((71 : GoUInt8)),
((100 : GoUInt8)),
((68 : GoUInt8)),
((213 : GoUInt8)),
((129 : GoUInt8)),
((153 : GoUInt8)),
((133 : GoUInt8)),
((0 : GoUInt8)),
((126 : GoUInt8)),
((52 : GoUInt8))) : Slice<GoByte>)));
var _9 = __tmp__8._1;
var __tmp__10 = new crypto.elliptic.internal.fiat.Fiat.P384Element().setBytes(((new Slice<GoByte>(
((179 : GoUInt8)),
((49 : GoUInt8)),
((47 : GoUInt8)),
((167 : GoUInt8)),
((226 : GoUInt8)),
((62 : GoUInt8)),
((231 : GoUInt8)),
((228 : GoUInt8)),
((152 : GoUInt8)),
((142 : GoUInt8)),
((5 : GoUInt8)),
((107 : GoUInt8)),
((227 : GoUInt8)),
((248 : GoUInt8)),
((45 : GoUInt8)),
((25 : GoUInt8)),
((24 : GoUInt8)),
((29 : GoUInt8)),
((156 : GoUInt8)),
((110 : GoUInt8)),
((254 : GoUInt8)),
((129 : GoUInt8)),
((65 : GoUInt8)),
((18 : GoUInt8)),
((3 : GoUInt8)),
((20 : GoUInt8)),
((8 : GoUInt8)),
((143 : GoUInt8)),
((80 : GoUInt8)),
((19 : GoUInt8)),
((135 : GoUInt8)),
((90 : GoUInt8)),
((198 : GoUInt8)),
((86 : GoUInt8)),
((57 : GoUInt8)),
((141 : GoUInt8)),
((138 : GoUInt8)),
((46 : GoUInt8)),
((209 : GoUInt8)),
((157 : GoUInt8)),
((42 : GoUInt8)),
((133 : GoUInt8)),
((200 : GoUInt8)),
((237 : GoUInt8)),
((211 : GoUInt8)),
((236 : GoUInt8)),
((42 : GoUInt8)),
((239 : GoUInt8))) : Slice<GoByte>)));
var _11 = __tmp__10._1;
var __tmp__12 = newP384Point().setBytes(((new Slice<GoByte>(
((4 : GoUInt8)),
((170 : GoUInt8)),
((135 : GoUInt8)),
((202 : GoUInt8)),
((34 : GoUInt8)),
((190 : GoUInt8)),
((139 : GoUInt8)),
((5 : GoUInt8)),
((55 : GoUInt8)),
((142 : GoUInt8)),
((177 : GoUInt8)),
((199 : GoUInt8)),
((30 : GoUInt8)),
((243 : GoUInt8)),
((32 : GoUInt8)),
((173 : GoUInt8)),
((116 : GoUInt8)),
((110 : GoUInt8)),
((29 : GoUInt8)),
((59 : GoUInt8)),
((98 : GoUInt8)),
((139 : GoUInt8)),
((167 : GoUInt8)),
((155 : GoUInt8)),
((152 : GoUInt8)),
((89 : GoUInt8)),
((247 : GoUInt8)),
((65 : GoUInt8)),
((224 : GoUInt8)),
((130 : GoUInt8)),
((84 : GoUInt8)),
((42 : GoUInt8)),
((56 : GoUInt8)),
((85 : GoUInt8)),
((2 : GoUInt8)),
((242 : GoUInt8)),
((93 : GoUInt8)),
((191 : GoUInt8)),
((85 : GoUInt8)),
((41 : GoUInt8)),
((108 : GoUInt8)),
((58 : GoUInt8)),
((84 : GoUInt8)),
((94 : GoUInt8)),
((56 : GoUInt8)),
((114 : GoUInt8)),
((118 : GoUInt8)),
((10 : GoUInt8)),
((183 : GoUInt8)),
((54 : GoUInt8)),
((23 : GoUInt8)),
((222 : GoUInt8)),
((74 : GoUInt8)),
((150 : GoUInt8)),
((38 : GoUInt8)),
((44 : GoUInt8)),
((111 : GoUInt8)),
((93 : GoUInt8)),
((158 : GoUInt8)),
((152 : GoUInt8)),
((191 : GoUInt8)),
((146 : GoUInt8)),
((146 : GoUInt8)),
((220 : GoUInt8)),
((41 : GoUInt8)),
((248 : GoUInt8)),
((244 : GoUInt8)),
((29 : GoUInt8)),
((189 : GoUInt8)),
((40 : GoUInt8)),
((154 : GoUInt8)),
((20 : GoUInt8)),
((124 : GoUInt8)),
((233 : GoUInt8)),
((218 : GoUInt8)),
((49 : GoUInt8)),
((19 : GoUInt8)),
((181 : GoUInt8)),
((240 : GoUInt8)),
((184 : GoUInt8)),
((192 : GoUInt8)),
((10 : GoUInt8)),
((96 : GoUInt8)),
((177 : GoUInt8)),
((206 : GoUInt8)),
((29 : GoUInt8)),
((126 : GoUInt8)),
((129 : GoUInt8)),
((157 : GoUInt8)),
((122 : GoUInt8)),
((67 : GoUInt8)),
((29 : GoUInt8)),
((124 : GoUInt8)),
((144 : GoUInt8)),
((234 : GoUInt8)),
((14 : GoUInt8)),
((95 : GoUInt8))) : Slice<GoByte>)));
var _13 = __tmp__12._1;
var __tmp__14 = new crypto.elliptic.internal.fiat.Fiat.P521Element().setBytes(((new Slice<GoByte>(
((0 : GoUInt8)),
((81 : GoUInt8)),
((149 : GoUInt8)),
((62 : GoUInt8)),
((185 : GoUInt8)),
((97 : GoUInt8)),
((142 : GoUInt8)),
((28 : GoUInt8)),
((154 : GoUInt8)),
((31 : GoUInt8)),
((146 : GoUInt8)),
((154 : GoUInt8)),
((33 : GoUInt8)),
((160 : GoUInt8)),
((182 : GoUInt8)),
((133 : GoUInt8)),
((64 : GoUInt8)),
((238 : GoUInt8)),
((162 : GoUInt8)),
((218 : GoUInt8)),
((114 : GoUInt8)),
((91 : GoUInt8)),
((153 : GoUInt8)),
((179 : GoUInt8)),
((21 : GoUInt8)),
((243 : GoUInt8)),
((184 : GoUInt8)),
((180 : GoUInt8)),
((137 : GoUInt8)),
((145 : GoUInt8)),
((142 : GoUInt8)),
((241 : GoUInt8)),
((9 : GoUInt8)),
((225 : GoUInt8)),
((86 : GoUInt8)),
((25 : GoUInt8)),
((57 : GoUInt8)),
((81 : GoUInt8)),
((236 : GoUInt8)),
((126 : GoUInt8)),
((147 : GoUInt8)),
((123 : GoUInt8)),
((22 : GoUInt8)),
((82 : GoUInt8)),
((192 : GoUInt8)),
((189 : GoUInt8)),
((59 : GoUInt8)),
((177 : GoUInt8)),
((191 : GoUInt8)),
((7 : GoUInt8)),
((53 : GoUInt8)),
((115 : GoUInt8)),
((223 : GoUInt8)),
((136 : GoUInt8)),
((61 : GoUInt8)),
((44 : GoUInt8)),
((52 : GoUInt8)),
((241 : GoUInt8)),
((239 : GoUInt8)),
((69 : GoUInt8)),
((31 : GoUInt8)),
((212 : GoUInt8)),
((107 : GoUInt8)),
((80 : GoUInt8)),
((63 : GoUInt8)),
((0 : GoUInt8))) : Slice<GoByte>)));
var _15 = __tmp__14._1;
var __tmp__16 = newP521Point().setBytes(((new Slice<GoByte>(
((4 : GoUInt8)),
((0 : GoUInt8)),
((198 : GoUInt8)),
((133 : GoUInt8)),
((142 : GoUInt8)),
((6 : GoUInt8)),
((183 : GoUInt8)),
((4 : GoUInt8)),
((4 : GoUInt8)),
((233 : GoUInt8)),
((205 : GoUInt8)),
((158 : GoUInt8)),
((62 : GoUInt8)),
((203 : GoUInt8)),
((102 : GoUInt8)),
((35 : GoUInt8)),
((149 : GoUInt8)),
((180 : GoUInt8)),
((66 : GoUInt8)),
((156 : GoUInt8)),
((100 : GoUInt8)),
((129 : GoUInt8)),
((57 : GoUInt8)),
((5 : GoUInt8)),
((63 : GoUInt8)),
((181 : GoUInt8)),
((33 : GoUInt8)),
((248 : GoUInt8)),
((40 : GoUInt8)),
((175 : GoUInt8)),
((96 : GoUInt8)),
((107 : GoUInt8)),
((77 : GoUInt8)),
((61 : GoUInt8)),
((186 : GoUInt8)),
((161 : GoUInt8)),
((75 : GoUInt8)),
((94 : GoUInt8)),
((119 : GoUInt8)),
((239 : GoUInt8)),
((231 : GoUInt8)),
((89 : GoUInt8)),
((40 : GoUInt8)),
((254 : GoUInt8)),
((29 : GoUInt8)),
((193 : GoUInt8)),
((39 : GoUInt8)),
((162 : GoUInt8)),
((255 : GoUInt8)),
((168 : GoUInt8)),
((222 : GoUInt8)),
((51 : GoUInt8)),
((72 : GoUInt8)),
((179 : GoUInt8)),
((193 : GoUInt8)),
((133 : GoUInt8)),
((106 : GoUInt8)),
((66 : GoUInt8)),
((155 : GoUInt8)),
((249 : GoUInt8)),
((126 : GoUInt8)),
((126 : GoUInt8)),
((49 : GoUInt8)),
((194 : GoUInt8)),
((229 : GoUInt8)),
((189 : GoUInt8)),
((102 : GoUInt8)),
((1 : GoUInt8)),
((24 : GoUInt8)),
((57 : GoUInt8)),
((41 : GoUInt8)),
((106 : GoUInt8)),
((120 : GoUInt8)),
((154 : GoUInt8)),
((59 : GoUInt8)),
((192 : GoUInt8)),
((4 : GoUInt8)),
((92 : GoUInt8)),
((138 : GoUInt8)),
((95 : GoUInt8)),
((180 : GoUInt8)),
((44 : GoUInt8)),
((125 : GoUInt8)),
((27 : GoUInt8)),
((217 : GoUInt8)),
((152 : GoUInt8)),
((245 : GoUInt8)),
((68 : GoUInt8)),
((73 : GoUInt8)),
((87 : GoUInt8)),
((155 : GoUInt8)),
((68 : GoUInt8)),
((104 : GoUInt8)),
((23 : GoUInt8)),
((175 : GoUInt8)),
((189 : GoUInt8)),
((23 : GoUInt8)),
((39 : GoUInt8)),
((62 : GoUInt8)),
((102 : GoUInt8)),
((44 : GoUInt8)),
((151 : GoUInt8)),
((238 : GoUInt8)),
((114 : GoUInt8)),
((153 : GoUInt8)),
((94 : GoUInt8)),
((244 : GoUInt8)),
((38 : GoUInt8)),
((64 : GoUInt8)),
((197 : GoUInt8)),
((80 : GoUInt8)),
((185 : GoUInt8)),
((1 : GoUInt8)),
((63 : GoUInt8)),
((173 : GoUInt8)),
((7 : GoUInt8)),
((97 : GoUInt8)),
((53 : GoUInt8)),
((60 : GoUInt8)),
((112 : GoUInt8)),
((134 : GoUInt8)),
((162 : GoUInt8)),
((114 : GoUInt8)),
((194 : GoUInt8)),
((64 : GoUInt8)),
((136 : GoUInt8)),
((190 : GoUInt8)),
((148 : GoUInt8)),
((118 : GoUInt8)),
((159 : GoUInt8)),
((209 : GoUInt8)),
((102 : GoUInt8)),
((80 : GoUInt8))) : Slice<GoByte>)));
var _17 = __tmp__16._1;
@:structInit @:using(crypto.elliptic.internal.nistec.Nistec.P224Point_static_extension) class P224Point {
    public var _x : Ref<crypto.elliptic.internal.fiat.Fiat.P224Element> = null;
    public var _y : Ref<crypto.elliptic.internal.fiat.Fiat.P224Element> = null;
    public var _z : Ref<crypto.elliptic.internal.fiat.Fiat.P224Element> = null;
    public function new(?_x:Ref<crypto.elliptic.internal.fiat.Fiat.P224Element>, ?_y:Ref<crypto.elliptic.internal.fiat.Fiat.P224Element>, ?_z:Ref<crypto.elliptic.internal.fiat.Fiat.P224Element>) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_z != null) this._z = _z;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new P224Point(_x, _y, _z);
    }
}
@:structInit @:using(crypto.elliptic.internal.nistec.Nistec.P384Point_static_extension) class P384Point {
    public var _x : Ref<crypto.elliptic.internal.fiat.Fiat.P384Element> = null;
    public var _y : Ref<crypto.elliptic.internal.fiat.Fiat.P384Element> = null;
    public var _z : Ref<crypto.elliptic.internal.fiat.Fiat.P384Element> = null;
    public function new(?_x:Ref<crypto.elliptic.internal.fiat.Fiat.P384Element>, ?_y:Ref<crypto.elliptic.internal.fiat.Fiat.P384Element>, ?_z:Ref<crypto.elliptic.internal.fiat.Fiat.P384Element>) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_z != null) this._z = _z;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new P384Point(_x, _y, _z);
    }
}
@:structInit @:using(crypto.elliptic.internal.nistec.Nistec.P521Point_static_extension) class P521Point {
    public var _x : Ref<crypto.elliptic.internal.fiat.Fiat.P521Element> = null;
    public var _y : Ref<crypto.elliptic.internal.fiat.Fiat.P521Element> = null;
    public var _z : Ref<crypto.elliptic.internal.fiat.Fiat.P521Element> = null;
    public function new(?_x:Ref<crypto.elliptic.internal.fiat.Fiat.P521Element>, ?_y:Ref<crypto.elliptic.internal.fiat.Fiat.P521Element>, ?_z:Ref<crypto.elliptic.internal.fiat.Fiat.P521Element>) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_z != null) this._z = _z;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new P521Point(_x, _y, _z);
    }
}
/**
    // NewP224Point returns a new P224Point representing the point at infinity point.
**/
function newP224Point():P224Point {
        return (({ _x : new crypto.elliptic.internal.fiat.Fiat.P224Element(), _y : new crypto.elliptic.internal.fiat.Fiat.P224Element().one(), _z : new crypto.elliptic.internal.fiat.Fiat.P224Element() } : P224Point));
    }
/**
    // NewP224Generator returns a new P224Point set to the canonical generator.
**/
function newP224Generator():P224Point {
        return ((({ _x : new crypto.elliptic.internal.fiat.Fiat.P224Element(), _y : new crypto.elliptic.internal.fiat.Fiat.P224Element(), _z : new crypto.elliptic.internal.fiat.Fiat.P224Element() } : P224Point))).set(_p224G);
    }
function _p224CheckOnCurve(_x:crypto.elliptic.internal.fiat.Fiat.P224Element, _y:crypto.elliptic.internal.fiat.Fiat.P224Element):Error {
        var _x3 = new crypto.elliptic.internal.fiat.Fiat.P224Element().square(_x);
        _x3.mul(_x3, _x);
        var _threeX = new crypto.elliptic.internal.fiat.Fiat.P224Element().add(_x, _x);
        _threeX.add(_threeX, _x);
        _x3.sub(_x3, _threeX);
        _x3.add(_x3, _p224B);
        var _y2 = new crypto.elliptic.internal.fiat.Fiat.P224Element().square(_y);
        if (_x3.equal(_y2) != ((1 : GoInt))) {
            return stdgo.errors.Errors.new_(((("P224 point not on curve" : GoString))));
        };
        return ((null : stdgo.Error));
    }
/**
    // NewP384Point returns a new P384Point representing the point at infinity point.
**/
function newP384Point():P384Point {
        return (({ _x : new crypto.elliptic.internal.fiat.Fiat.P384Element(), _y : new crypto.elliptic.internal.fiat.Fiat.P384Element().one(), _z : new crypto.elliptic.internal.fiat.Fiat.P384Element() } : P384Point));
    }
/**
    // NewP384Generator returns a new P384Point set to the canonical generator.
**/
function newP384Generator():P384Point {
        return ((({ _x : new crypto.elliptic.internal.fiat.Fiat.P384Element(), _y : new crypto.elliptic.internal.fiat.Fiat.P384Element(), _z : new crypto.elliptic.internal.fiat.Fiat.P384Element() } : P384Point))).set(_p384G);
    }
function _p384CheckOnCurve(_x:crypto.elliptic.internal.fiat.Fiat.P384Element, _y:crypto.elliptic.internal.fiat.Fiat.P384Element):Error {
        var _x3 = new crypto.elliptic.internal.fiat.Fiat.P384Element().square(_x);
        _x3.mul(_x3, _x);
        var _threeX = new crypto.elliptic.internal.fiat.Fiat.P384Element().add(_x, _x);
        _threeX.add(_threeX, _x);
        _x3.sub(_x3, _threeX);
        _x3.add(_x3, _p384B);
        var _y2 = new crypto.elliptic.internal.fiat.Fiat.P384Element().square(_y);
        if (_x3.equal(_y2) != ((1 : GoInt))) {
            return stdgo.errors.Errors.new_(((("P384 point not on curve" : GoString))));
        };
        return ((null : stdgo.Error));
    }
/**
    // NewP521Point returns a new P521Point representing the point at infinity point.
**/
function newP521Point():P521Point {
        return (({ _x : new crypto.elliptic.internal.fiat.Fiat.P521Element(), _y : new crypto.elliptic.internal.fiat.Fiat.P521Element().one(), _z : new crypto.elliptic.internal.fiat.Fiat.P521Element() } : P521Point));
    }
/**
    // NewP521Generator returns a new P521Point set to the canonical generator.
**/
function newP521Generator():P521Point {
        return ((({ _x : new crypto.elliptic.internal.fiat.Fiat.P521Element(), _y : new crypto.elliptic.internal.fiat.Fiat.P521Element(), _z : new crypto.elliptic.internal.fiat.Fiat.P521Element() } : P521Point))).set(_p521G);
    }
function _p521CheckOnCurve(_x:crypto.elliptic.internal.fiat.Fiat.P521Element, _y:crypto.elliptic.internal.fiat.Fiat.P521Element):Error {
        var _x3 = new crypto.elliptic.internal.fiat.Fiat.P521Element().square(_x);
        _x3.mul(_x3, _x);
        var _threeX = new crypto.elliptic.internal.fiat.Fiat.P521Element().add(_x, _x);
        _threeX.add(_threeX, _x);
        _x3.sub(_x3, _threeX);
        _x3.add(_x3, _p521B);
        var _y2 = new crypto.elliptic.internal.fiat.Fiat.P521Element().square(_y);
        if (_x3.equal(_y2) != ((1 : GoInt))) {
            return stdgo.errors.Errors.new_(((("P521 point not on curve" : GoString))));
        };
        return ((null : stdgo.Error));
    }
@:keep class P224Point_static_extension {
    /**
        // ScalarMult sets p = scalar * q, and returns p.
    **/
    @:keep
    public static function scalarMult( _p:P224Point, _q:P224Point, _scalar:Slice<GoByte>):P224Point {
        var _table:GoArray<Ref<P224Point>> = ((new GoArray<Ref<P224Point>>(
newP224Point(),
newP224Point(),
newP224Point(),
newP224Point(),
newP224Point(),
newP224Point(),
newP224Point(),
newP224Point(),
newP224Point(),
newP224Point(),
newP224Point(),
newP224Point(),
newP224Point(),
newP224Point(),
newP224Point(),
newP224Point()) : GoArray<P224Point>));
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i++, {
                (_table != null ? _table[_i] : null).add((_table != null ? _table[_i - ((1 : GoInt))] : null), _q);
            });
        };
        var _t = newP224Point();
        _p.set(newP224Point());
        for (_0 => _byte in _scalar) {
            _p.double(_p);
            _p.double(_p);
            _p.double(_p);
            _p.double(_p);
            {
                var _i:GoUInt8 = ((((0 : GoUInt8)) : GoUInt8));
                Go.cfor(_i < ((16 : GoUInt8)), _i++, {
                    var _cond:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq(_byte >> ((4 : GoUnTypedInt)), _i);
                    _t.select((_table != null ? _table[_i] : null), _t, _cond);
                });
            };
            _p.add(_p, _t);
            _p.double(_p);
            _p.double(_p);
            _p.double(_p);
            _p.double(_p);
            {
                var _i:GoUInt8 = ((((0 : GoUInt8)) : GoUInt8));
                Go.cfor(_i < ((16 : GoUInt8)), _i++, {
                    var _cond:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq(_byte & ((15 : GoUInt8)), _i);
                    _t.select((_table != null ? _table[_i] : null), _t, _cond);
                });
            };
            _p.add(_p, _t);
        };
        return _p;
    }
    /**
        // Select sets q to p1 if cond == 1, and to p2 if cond == 0.
    **/
    @:keep
    public static function select( _q:P224Point, _p1:P224Point, _p2:P224Point, _cond:GoInt):P224Point {
        _q._x.select(_p1._x, _p2._x, _cond);
        _q._y.select(_p1._y, _p2._y, _cond);
        _q._z.select(_p1._z, _p2._z, _cond);
        return _q;
    }
    /**
        // Double sets q = p + p, and returns q. The points may overlap.
    **/
    @:keep
    public static function double( _q:P224Point, _p:P224Point):P224Point {
        var _t0 = new crypto.elliptic.internal.fiat.Fiat.P224Element().square(_p._x);
        var _t1 = new crypto.elliptic.internal.fiat.Fiat.P224Element().square(_p._y);
        var _t2 = new crypto.elliptic.internal.fiat.Fiat.P224Element().square(_p._z);
        var _t3 = new crypto.elliptic.internal.fiat.Fiat.P224Element().mul(_p._x, _p._y);
        _t3.add(_t3, _t3);
        var _z3 = new crypto.elliptic.internal.fiat.Fiat.P224Element().mul(_p._x, _p._z);
        _z3.add(_z3, _z3);
        var _y3 = new crypto.elliptic.internal.fiat.Fiat.P224Element().mul(_p224B, _t2);
        _y3.sub(_y3, _z3);
        var _x3 = new crypto.elliptic.internal.fiat.Fiat.P224Element().add(_y3, _y3);
        _y3.add(_x3, _y3);
        _x3.sub(_t1, _y3);
        _y3.add(_t1, _y3);
        _y3.mul(_x3, _y3);
        _x3.mul(_x3, _t3);
        _t3.add(_t2, _t2);
        _t2.add(_t2, _t3);
        _z3.mul(_p224B, _z3);
        _z3.sub(_z3, _t2);
        _z3.sub(_z3, _t0);
        _t3.add(_z3, _z3);
        _z3.add(_z3, _t3);
        _t3.add(_t0, _t0);
        _t0.add(_t3, _t0);
        _t0.sub(_t0, _t2);
        _t0.mul(_t0, _z3);
        _y3.add(_y3, _t0);
        _t0.mul(_p._y, _p._z);
        _t0.add(_t0, _t0);
        _z3.mul(_t0, _z3);
        _x3.sub(_x3, _z3);
        _z3.mul(_t0, _t1);
        _z3.add(_z3, _z3);
        _z3.add(_z3, _z3);
        _q._x.set(_x3);
        _q._y.set(_y3);
        _q._z.set(_z3);
        return _q;
    }
    /**
        // Add sets q = p1 + p2, and returns q. The points may overlap.
    **/
    @:keep
    public static function add( _q:P224Point, _p1:P224Point, _p2:P224Point):P224Point {
        var _t0 = new crypto.elliptic.internal.fiat.Fiat.P224Element().mul(_p1._x, _p2._x);
        var _t1 = new crypto.elliptic.internal.fiat.Fiat.P224Element().mul(_p1._y, _p2._y);
        var _t2 = new crypto.elliptic.internal.fiat.Fiat.P224Element().mul(_p1._z, _p2._z);
        var _t3 = new crypto.elliptic.internal.fiat.Fiat.P224Element().add(_p1._x, _p1._y);
        var _t4 = new crypto.elliptic.internal.fiat.Fiat.P224Element().add(_p2._x, _p2._y);
        _t3.mul(_t3, _t4);
        _t4.add(_t0, _t1);
        _t3.sub(_t3, _t4);
        _t4.add(_p1._y, _p1._z);
        var _x3 = new crypto.elliptic.internal.fiat.Fiat.P224Element().add(_p2._y, _p2._z);
        _t4.mul(_t4, _x3);
        _x3.add(_t1, _t2);
        _t4.sub(_t4, _x3);
        _x3.add(_p1._x, _p1._z);
        var _y3 = new crypto.elliptic.internal.fiat.Fiat.P224Element().add(_p2._x, _p2._z);
        _x3.mul(_x3, _y3);
        _y3.add(_t0, _t2);
        _y3.sub(_x3, _y3);
        var _z3 = new crypto.elliptic.internal.fiat.Fiat.P224Element().mul(_p224B, _t2);
        _x3.sub(_y3, _z3);
        _z3.add(_x3, _x3);
        _x3.add(_x3, _z3);
        _z3.sub(_t1, _x3);
        _x3.add(_t1, _x3);
        _y3.mul(_p224B, _y3);
        _t1.add(_t2, _t2);
        _t2.add(_t1, _t2);
        _y3.sub(_y3, _t2);
        _y3.sub(_y3, _t0);
        _t1.add(_y3, _y3);
        _y3.add(_t1, _y3);
        _t1.add(_t0, _t0);
        _t0.add(_t1, _t0);
        _t0.sub(_t0, _t2);
        _t1.mul(_t4, _y3);
        _t2.mul(_t0, _y3);
        _y3.mul(_x3, _z3);
        _y3.add(_y3, _t2);
        _x3.mul(_t3, _x3);
        _x3.sub(_x3, _t1);
        _z3.mul(_t4, _z3);
        _t1.mul(_t3, _t0);
        _z3.add(_z3, _t1);
        _q._x.set(_x3);
        _q._y.set(_y3);
        _q._z.set(_z3);
        return _q;
    }
    @:keep
    public static function _bytes( _p:P224Point, _out:GoArray<GoByte>):Slice<GoByte> {
        if (_p._z.isZero() == ((1 : GoInt))) {
            return (((_out.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)) != null ? ((_out.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)).__append__(((0 : GoUInt8))) : new Slice<GoUInt8>(((0 : GoUInt8))));
        };
        var _zinv = new crypto.elliptic.internal.fiat.Fiat.P224Element().invert(_p._z);
        var _xx = new crypto.elliptic.internal.fiat.Fiat.P224Element().mul(_p._x, _zinv);
        var _yy = new crypto.elliptic.internal.fiat.Fiat.P224Element().mul(_p._y, _zinv);
        var _buf = (((_out.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)) != null ? ((_out.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)).__append__(((4 : GoUInt8))) : new Slice<GoUInt8>(((4 : GoUInt8))));
        _buf = (_buf != null ? _buf.__append__(..._xx.bytes().__toArray__()) : new Slice<GoUInt8>(..._xx.bytes().__toArray__()));
        _buf = (_buf != null ? _buf.__append__(..._yy.bytes().__toArray__()) : new Slice<GoUInt8>(..._yy.bytes().__toArray__()));
        return _buf;
    }
    /**
        // Bytes returns the uncompressed or infinity encoding of p, as specified in
        // SEC 1, Version 2.0, Section 2.3.3. Note that the encoding of the point at
        // infinity is shorter than all other encodings.
    **/
    @:keep
    public static function bytes( _p:P224Point):Slice<GoByte> {
        var _out:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 133) ((0 : GoUInt8))]);
        return _p._bytes(_out);
    }
    /**
        // SetBytes sets p to the compressed, uncompressed, or infinity value encoded in
        // b, as specified in SEC 1, Version 2.0, Section 2.3.4. If the point is not on
        // the curve, it returns nil and an error, and the receiver is unchanged.
        // Otherwise, it returns p.
    **/
    @:keep
    public static function setBytes( _p:P224Point, _b:Slice<GoByte>):{ var _0 : P224Point; var _1 : Error; } {
        if (((_b != null ? _b.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) == ((0 : GoUInt8)))) {
            return { _0 : _p.set(newP224Point()), _1 : ((null : stdgo.Error)) };
        } else if (((_b != null ? _b.length : ((0 : GoInt))) == ((57 : GoInt))) && ((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) == ((4 : GoUInt8)))) {
            var __tmp__ = new crypto.elliptic.internal.fiat.Fiat.P224Element().setBytes(((_b.__slice__(((1 : GoInt)), ((29 : GoInt))) : Slice<GoUInt8>))), _x:Ref<crypto.elliptic.internal.fiat.Fiat.P224Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            var __tmp__ = new crypto.elliptic.internal.fiat.Fiat.P224Element().setBytes(((_b.__slice__(((29 : GoInt))) : Slice<GoUInt8>))), _y:Ref<crypto.elliptic.internal.fiat.Fiat.P224Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            {
                var _err:stdgo.Error = _p224CheckOnCurve(_x, _y);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _p._x.set(_x);
            _p._y.set(_y);
            _p._z.one();
            return { _0 : _p, _1 : ((null : stdgo.Error)) };
        } else if (((_b != null ? _b.length : ((0 : GoInt))) == ((29 : GoInt))) && ((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) == ((0 : GoUInt8)))) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("unimplemented" : GoString)))) };
        } else {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("invalid P224 point encoding" : GoString)))) };
        };
    }
    /**
        // Set sets p = q and returns p.
    **/
    @:keep
    public static function set( _p:P224Point, _q:P224Point):P224Point {
        _p._x.set(_q._x);
        _p._y.set(_q._y);
        _p._z.set(_q._z);
        return _p;
    }
}
class P224Point_wrapper {
    /**
        // ScalarMult sets p = scalar * q, and returns p.
    **/
    @:keep
    public var scalarMult : (P224Point, Slice<GoByte>) -> P224Point = null;
    /**
        // Select sets q to p1 if cond == 1, and to p2 if cond == 0.
    **/
    @:keep
    public var select : (P224Point, P224Point, GoInt) -> P224Point = null;
    /**
        // Double sets q = p + p, and returns q. The points may overlap.
    **/
    @:keep
    public var double : P224Point -> P224Point = null;
    /**
        // Add sets q = p1 + p2, and returns q. The points may overlap.
    **/
    @:keep
    public var add : (P224Point, P224Point) -> P224Point = null;
    @:keep
    public var _bytes : GoArray<GoByte> -> Slice<GoByte> = null;
    /**
        // Bytes returns the uncompressed or infinity encoding of p, as specified in
        // SEC 1, Version 2.0, Section 2.3.3. Note that the encoding of the point at
        // infinity is shorter than all other encodings.
    **/
    @:keep
    public var bytes : () -> Slice<GoByte> = null;
    /**
        // SetBytes sets p to the compressed, uncompressed, or infinity value encoded in
        // b, as specified in SEC 1, Version 2.0, Section 2.3.4. If the point is not on
        // the curve, it returns nil and an error, and the receiver is unchanged.
        // Otherwise, it returns p.
    **/
    @:keep
    public var setBytes : Slice<GoByte> -> { var _0 : P224Point; var _1 : Error; } = null;
    /**
        // Set sets p = q and returns p.
    **/
    @:keep
    public var set : P224Point -> P224Point = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : P224Point;
}
@:keep class P384Point_static_extension {
    /**
        // ScalarMult sets p = scalar * q, and returns p.
    **/
    @:keep
    public static function scalarMult( _p:P384Point, _q:P384Point, _scalar:Slice<GoByte>):P384Point {
        var _table:GoArray<Ref<P384Point>> = ((new GoArray<Ref<P384Point>>(
newP384Point(),
newP384Point(),
newP384Point(),
newP384Point(),
newP384Point(),
newP384Point(),
newP384Point(),
newP384Point(),
newP384Point(),
newP384Point(),
newP384Point(),
newP384Point(),
newP384Point(),
newP384Point(),
newP384Point(),
newP384Point()) : GoArray<P384Point>));
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i++, {
                (_table != null ? _table[_i] : null).add((_table != null ? _table[_i - ((1 : GoInt))] : null), _q);
            });
        };
        var _t = newP384Point();
        _p.set(newP384Point());
        for (_0 => _byte in _scalar) {
            _p.double(_p);
            _p.double(_p);
            _p.double(_p);
            _p.double(_p);
            {
                var _i:GoUInt8 = ((((0 : GoUInt8)) : GoUInt8));
                Go.cfor(_i < ((16 : GoUInt8)), _i++, {
                    var _cond:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq(_byte >> ((4 : GoUnTypedInt)), _i);
                    _t.select((_table != null ? _table[_i] : null), _t, _cond);
                });
            };
            _p.add(_p, _t);
            _p.double(_p);
            _p.double(_p);
            _p.double(_p);
            _p.double(_p);
            {
                var _i:GoUInt8 = ((((0 : GoUInt8)) : GoUInt8));
                Go.cfor(_i < ((16 : GoUInt8)), _i++, {
                    var _cond:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq(_byte & ((15 : GoUInt8)), _i);
                    _t.select((_table != null ? _table[_i] : null), _t, _cond);
                });
            };
            _p.add(_p, _t);
        };
        return _p;
    }
    /**
        // Select sets q to p1 if cond == 1, and to p2 if cond == 0.
    **/
    @:keep
    public static function select( _q:P384Point, _p1:P384Point, _p2:P384Point, _cond:GoInt):P384Point {
        _q._x.select(_p1._x, _p2._x, _cond);
        _q._y.select(_p1._y, _p2._y, _cond);
        _q._z.select(_p1._z, _p2._z, _cond);
        return _q;
    }
    /**
        // Double sets q = p + p, and returns q. The points may overlap.
    **/
    @:keep
    public static function double( _q:P384Point, _p:P384Point):P384Point {
        var _t0 = new crypto.elliptic.internal.fiat.Fiat.P384Element().square(_p._x);
        var _t1 = new crypto.elliptic.internal.fiat.Fiat.P384Element().square(_p._y);
        var _t2 = new crypto.elliptic.internal.fiat.Fiat.P384Element().square(_p._z);
        var _t3 = new crypto.elliptic.internal.fiat.Fiat.P384Element().mul(_p._x, _p._y);
        _t3.add(_t3, _t3);
        var _z3 = new crypto.elliptic.internal.fiat.Fiat.P384Element().mul(_p._x, _p._z);
        _z3.add(_z3, _z3);
        var _y3 = new crypto.elliptic.internal.fiat.Fiat.P384Element().mul(_p384B, _t2);
        _y3.sub(_y3, _z3);
        var _x3 = new crypto.elliptic.internal.fiat.Fiat.P384Element().add(_y3, _y3);
        _y3.add(_x3, _y3);
        _x3.sub(_t1, _y3);
        _y3.add(_t1, _y3);
        _y3.mul(_x3, _y3);
        _x3.mul(_x3, _t3);
        _t3.add(_t2, _t2);
        _t2.add(_t2, _t3);
        _z3.mul(_p384B, _z3);
        _z3.sub(_z3, _t2);
        _z3.sub(_z3, _t0);
        _t3.add(_z3, _z3);
        _z3.add(_z3, _t3);
        _t3.add(_t0, _t0);
        _t0.add(_t3, _t0);
        _t0.sub(_t0, _t2);
        _t0.mul(_t0, _z3);
        _y3.add(_y3, _t0);
        _t0.mul(_p._y, _p._z);
        _t0.add(_t0, _t0);
        _z3.mul(_t0, _z3);
        _x3.sub(_x3, _z3);
        _z3.mul(_t0, _t1);
        _z3.add(_z3, _z3);
        _z3.add(_z3, _z3);
        _q._x.set(_x3);
        _q._y.set(_y3);
        _q._z.set(_z3);
        return _q;
    }
    /**
        // Add sets q = p1 + p2, and returns q. The points may overlap.
    **/
    @:keep
    public static function add( _q:P384Point, _p1:P384Point, _p2:P384Point):P384Point {
        var _t0 = new crypto.elliptic.internal.fiat.Fiat.P384Element().mul(_p1._x, _p2._x);
        var _t1 = new crypto.elliptic.internal.fiat.Fiat.P384Element().mul(_p1._y, _p2._y);
        var _t2 = new crypto.elliptic.internal.fiat.Fiat.P384Element().mul(_p1._z, _p2._z);
        var _t3 = new crypto.elliptic.internal.fiat.Fiat.P384Element().add(_p1._x, _p1._y);
        var _t4 = new crypto.elliptic.internal.fiat.Fiat.P384Element().add(_p2._x, _p2._y);
        _t3.mul(_t3, _t4);
        _t4.add(_t0, _t1);
        _t3.sub(_t3, _t4);
        _t4.add(_p1._y, _p1._z);
        var _x3 = new crypto.elliptic.internal.fiat.Fiat.P384Element().add(_p2._y, _p2._z);
        _t4.mul(_t4, _x3);
        _x3.add(_t1, _t2);
        _t4.sub(_t4, _x3);
        _x3.add(_p1._x, _p1._z);
        var _y3 = new crypto.elliptic.internal.fiat.Fiat.P384Element().add(_p2._x, _p2._z);
        _x3.mul(_x3, _y3);
        _y3.add(_t0, _t2);
        _y3.sub(_x3, _y3);
        var _z3 = new crypto.elliptic.internal.fiat.Fiat.P384Element().mul(_p384B, _t2);
        _x3.sub(_y3, _z3);
        _z3.add(_x3, _x3);
        _x3.add(_x3, _z3);
        _z3.sub(_t1, _x3);
        _x3.add(_t1, _x3);
        _y3.mul(_p384B, _y3);
        _t1.add(_t2, _t2);
        _t2.add(_t1, _t2);
        _y3.sub(_y3, _t2);
        _y3.sub(_y3, _t0);
        _t1.add(_y3, _y3);
        _y3.add(_t1, _y3);
        _t1.add(_t0, _t0);
        _t0.add(_t1, _t0);
        _t0.sub(_t0, _t2);
        _t1.mul(_t4, _y3);
        _t2.mul(_t0, _y3);
        _y3.mul(_x3, _z3);
        _y3.add(_y3, _t2);
        _x3.mul(_t3, _x3);
        _x3.sub(_x3, _t1);
        _z3.mul(_t4, _z3);
        _t1.mul(_t3, _t0);
        _z3.add(_z3, _t1);
        _q._x.set(_x3);
        _q._y.set(_y3);
        _q._z.set(_z3);
        return _q;
    }
    @:keep
    public static function _bytes( _p:P384Point, _out:GoArray<GoByte>):Slice<GoByte> {
        if (_p._z.isZero() == ((1 : GoInt))) {
            return (((_out.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)) != null ? ((_out.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)).__append__(((0 : GoUInt8))) : new Slice<GoUInt8>(((0 : GoUInt8))));
        };
        var _zinv = new crypto.elliptic.internal.fiat.Fiat.P384Element().invert(_p._z);
        var _xx = new crypto.elliptic.internal.fiat.Fiat.P384Element().mul(_p._x, _zinv);
        var _yy = new crypto.elliptic.internal.fiat.Fiat.P384Element().mul(_p._y, _zinv);
        var _buf = (((_out.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)) != null ? ((_out.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)).__append__(((4 : GoUInt8))) : new Slice<GoUInt8>(((4 : GoUInt8))));
        _buf = (_buf != null ? _buf.__append__(..._xx.bytes().__toArray__()) : new Slice<GoUInt8>(..._xx.bytes().__toArray__()));
        _buf = (_buf != null ? _buf.__append__(..._yy.bytes().__toArray__()) : new Slice<GoUInt8>(..._yy.bytes().__toArray__()));
        return _buf;
    }
    /**
        // Bytes returns the uncompressed or infinity encoding of p, as specified in
        // SEC 1, Version 2.0, Section 2.3.3. Note that the encoding of the point at
        // infinity is shorter than all other encodings.
    **/
    @:keep
    public static function bytes( _p:P384Point):Slice<GoByte> {
        var _out:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 133) ((0 : GoUInt8))]);
        return _p._bytes(_out);
    }
    /**
        // SetBytes sets p to the compressed, uncompressed, or infinity value encoded in
        // b, as specified in SEC 1, Version 2.0, Section 2.3.4. If the point is not on
        // the curve, it returns nil and an error, and the receiver is unchanged.
        // Otherwise, it returns p.
    **/
    @:keep
    public static function setBytes( _p:P384Point, _b:Slice<GoByte>):{ var _0 : P384Point; var _1 : Error; } {
        if (((_b != null ? _b.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) == ((0 : GoUInt8)))) {
            return { _0 : _p.set(newP384Point()), _1 : ((null : stdgo.Error)) };
        } else if (((_b != null ? _b.length : ((0 : GoInt))) == ((97 : GoInt))) && ((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) == ((4 : GoUInt8)))) {
            var __tmp__ = new crypto.elliptic.internal.fiat.Fiat.P384Element().setBytes(((_b.__slice__(((1 : GoInt)), ((49 : GoInt))) : Slice<GoUInt8>))), _x:Ref<crypto.elliptic.internal.fiat.Fiat.P384Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            var __tmp__ = new crypto.elliptic.internal.fiat.Fiat.P384Element().setBytes(((_b.__slice__(((49 : GoInt))) : Slice<GoUInt8>))), _y:Ref<crypto.elliptic.internal.fiat.Fiat.P384Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            {
                var _err:stdgo.Error = _p384CheckOnCurve(_x, _y);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _p._x.set(_x);
            _p._y.set(_y);
            _p._z.one();
            return { _0 : _p, _1 : ((null : stdgo.Error)) };
        } else if (((_b != null ? _b.length : ((0 : GoInt))) == ((49 : GoInt))) && ((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) == ((0 : GoUInt8)))) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("unimplemented" : GoString)))) };
        } else {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("invalid P384 point encoding" : GoString)))) };
        };
    }
    /**
        // Set sets p = q and returns p.
    **/
    @:keep
    public static function set( _p:P384Point, _q:P384Point):P384Point {
        _p._x.set(_q._x);
        _p._y.set(_q._y);
        _p._z.set(_q._z);
        return _p;
    }
}
class P384Point_wrapper {
    /**
        // ScalarMult sets p = scalar * q, and returns p.
    **/
    @:keep
    public var scalarMult : (P384Point, Slice<GoByte>) -> P384Point = null;
    /**
        // Select sets q to p1 if cond == 1, and to p2 if cond == 0.
    **/
    @:keep
    public var select : (P384Point, P384Point, GoInt) -> P384Point = null;
    /**
        // Double sets q = p + p, and returns q. The points may overlap.
    **/
    @:keep
    public var double : P384Point -> P384Point = null;
    /**
        // Add sets q = p1 + p2, and returns q. The points may overlap.
    **/
    @:keep
    public var add : (P384Point, P384Point) -> P384Point = null;
    @:keep
    public var _bytes : GoArray<GoByte> -> Slice<GoByte> = null;
    /**
        // Bytes returns the uncompressed or infinity encoding of p, as specified in
        // SEC 1, Version 2.0, Section 2.3.3. Note that the encoding of the point at
        // infinity is shorter than all other encodings.
    **/
    @:keep
    public var bytes : () -> Slice<GoByte> = null;
    /**
        // SetBytes sets p to the compressed, uncompressed, or infinity value encoded in
        // b, as specified in SEC 1, Version 2.0, Section 2.3.4. If the point is not on
        // the curve, it returns nil and an error, and the receiver is unchanged.
        // Otherwise, it returns p.
    **/
    @:keep
    public var setBytes : Slice<GoByte> -> { var _0 : P384Point; var _1 : Error; } = null;
    /**
        // Set sets p = q and returns p.
    **/
    @:keep
    public var set : P384Point -> P384Point = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : P384Point;
}
@:keep class P521Point_static_extension {
    /**
        // ScalarMult sets p = scalar * q, and returns p.
    **/
    @:keep
    public static function scalarMult( _p:P521Point, _q:P521Point, _scalar:Slice<GoByte>):P521Point {
        var _table:GoArray<Ref<P521Point>> = ((new GoArray<Ref<P521Point>>(
newP521Point(),
newP521Point(),
newP521Point(),
newP521Point(),
newP521Point(),
newP521Point(),
newP521Point(),
newP521Point(),
newP521Point(),
newP521Point(),
newP521Point(),
newP521Point(),
newP521Point(),
newP521Point(),
newP521Point(),
newP521Point()) : GoArray<P521Point>));
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i++, {
                (_table != null ? _table[_i] : null).add((_table != null ? _table[_i - ((1 : GoInt))] : null), _q);
            });
        };
        var _t = newP521Point();
        _p.set(newP521Point());
        for (_0 => _byte in _scalar) {
            _p.double(_p);
            _p.double(_p);
            _p.double(_p);
            _p.double(_p);
            {
                var _i:GoUInt8 = ((((0 : GoUInt8)) : GoUInt8));
                Go.cfor(_i < ((16 : GoUInt8)), _i++, {
                    var _cond:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq(_byte >> ((4 : GoUnTypedInt)), _i);
                    _t.select((_table != null ? _table[_i] : null), _t, _cond);
                });
            };
            _p.add(_p, _t);
            _p.double(_p);
            _p.double(_p);
            _p.double(_p);
            _p.double(_p);
            {
                var _i:GoUInt8 = ((((0 : GoUInt8)) : GoUInt8));
                Go.cfor(_i < ((16 : GoUInt8)), _i++, {
                    var _cond:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq(_byte & ((15 : GoUInt8)), _i);
                    _t.select((_table != null ? _table[_i] : null), _t, _cond);
                });
            };
            _p.add(_p, _t);
        };
        return _p;
    }
    /**
        // Select sets q to p1 if cond == 1, and to p2 if cond == 0.
    **/
    @:keep
    public static function select( _q:P521Point, _p1:P521Point, _p2:P521Point, _cond:GoInt):P521Point {
        _q._x.select(_p1._x, _p2._x, _cond);
        _q._y.select(_p1._y, _p2._y, _cond);
        _q._z.select(_p1._z, _p2._z, _cond);
        return _q;
    }
    /**
        // Double sets q = p + p, and returns q. The points may overlap.
    **/
    @:keep
    public static function double( _q:P521Point, _p:P521Point):P521Point {
        var _t0 = new crypto.elliptic.internal.fiat.Fiat.P521Element().square(_p._x);
        var _t1 = new crypto.elliptic.internal.fiat.Fiat.P521Element().square(_p._y);
        var _t2 = new crypto.elliptic.internal.fiat.Fiat.P521Element().square(_p._z);
        var _t3 = new crypto.elliptic.internal.fiat.Fiat.P521Element().mul(_p._x, _p._y);
        _t3.add(_t3, _t3);
        var _z3 = new crypto.elliptic.internal.fiat.Fiat.P521Element().mul(_p._x, _p._z);
        _z3.add(_z3, _z3);
        var _y3 = new crypto.elliptic.internal.fiat.Fiat.P521Element().mul(_p521B, _t2);
        _y3.sub(_y3, _z3);
        var _x3 = new crypto.elliptic.internal.fiat.Fiat.P521Element().add(_y3, _y3);
        _y3.add(_x3, _y3);
        _x3.sub(_t1, _y3);
        _y3.add(_t1, _y3);
        _y3.mul(_x3, _y3);
        _x3.mul(_x3, _t3);
        _t3.add(_t2, _t2);
        _t2.add(_t2, _t3);
        _z3.mul(_p521B, _z3);
        _z3.sub(_z3, _t2);
        _z3.sub(_z3, _t0);
        _t3.add(_z3, _z3);
        _z3.add(_z3, _t3);
        _t3.add(_t0, _t0);
        _t0.add(_t3, _t0);
        _t0.sub(_t0, _t2);
        _t0.mul(_t0, _z3);
        _y3.add(_y3, _t0);
        _t0.mul(_p._y, _p._z);
        _t0.add(_t0, _t0);
        _z3.mul(_t0, _z3);
        _x3.sub(_x3, _z3);
        _z3.mul(_t0, _t1);
        _z3.add(_z3, _z3);
        _z3.add(_z3, _z3);
        _q._x.set(_x3);
        _q._y.set(_y3);
        _q._z.set(_z3);
        return _q;
    }
    /**
        // Add sets q = p1 + p2, and returns q. The points may overlap.
    **/
    @:keep
    public static function add( _q:P521Point, _p1:P521Point, _p2:P521Point):P521Point {
        var _t0 = new crypto.elliptic.internal.fiat.Fiat.P521Element().mul(_p1._x, _p2._x);
        var _t1 = new crypto.elliptic.internal.fiat.Fiat.P521Element().mul(_p1._y, _p2._y);
        var _t2 = new crypto.elliptic.internal.fiat.Fiat.P521Element().mul(_p1._z, _p2._z);
        var _t3 = new crypto.elliptic.internal.fiat.Fiat.P521Element().add(_p1._x, _p1._y);
        var _t4 = new crypto.elliptic.internal.fiat.Fiat.P521Element().add(_p2._x, _p2._y);
        _t3.mul(_t3, _t4);
        _t4.add(_t0, _t1);
        _t3.sub(_t3, _t4);
        _t4.add(_p1._y, _p1._z);
        var _x3 = new crypto.elliptic.internal.fiat.Fiat.P521Element().add(_p2._y, _p2._z);
        _t4.mul(_t4, _x3);
        _x3.add(_t1, _t2);
        _t4.sub(_t4, _x3);
        _x3.add(_p1._x, _p1._z);
        var _y3 = new crypto.elliptic.internal.fiat.Fiat.P521Element().add(_p2._x, _p2._z);
        _x3.mul(_x3, _y3);
        _y3.add(_t0, _t2);
        _y3.sub(_x3, _y3);
        var _z3 = new crypto.elliptic.internal.fiat.Fiat.P521Element().mul(_p521B, _t2);
        _x3.sub(_y3, _z3);
        _z3.add(_x3, _x3);
        _x3.add(_x3, _z3);
        _z3.sub(_t1, _x3);
        _x3.add(_t1, _x3);
        _y3.mul(_p521B, _y3);
        _t1.add(_t2, _t2);
        _t2.add(_t1, _t2);
        _y3.sub(_y3, _t2);
        _y3.sub(_y3, _t0);
        _t1.add(_y3, _y3);
        _y3.add(_t1, _y3);
        _t1.add(_t0, _t0);
        _t0.add(_t1, _t0);
        _t0.sub(_t0, _t2);
        _t1.mul(_t4, _y3);
        _t2.mul(_t0, _y3);
        _y3.mul(_x3, _z3);
        _y3.add(_y3, _t2);
        _x3.mul(_t3, _x3);
        _x3.sub(_x3, _t1);
        _z3.mul(_t4, _z3);
        _t1.mul(_t3, _t0);
        _z3.add(_z3, _t1);
        _q._x.set(_x3);
        _q._y.set(_y3);
        _q._z.set(_z3);
        return _q;
    }
    @:keep
    public static function _bytes( _p:P521Point, _out:GoArray<GoByte>):Slice<GoByte> {
        if (_p._z.isZero() == ((1 : GoInt))) {
            return (((_out.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)) != null ? ((_out.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)).__append__(((0 : GoUInt8))) : new Slice<GoUInt8>(((0 : GoUInt8))));
        };
        var _zinv = new crypto.elliptic.internal.fiat.Fiat.P521Element().invert(_p._z);
        var _xx = new crypto.elliptic.internal.fiat.Fiat.P521Element().mul(_p._x, _zinv);
        var _yy = new crypto.elliptic.internal.fiat.Fiat.P521Element().mul(_p._y, _zinv);
        var _buf = (((_out.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)) != null ? ((_out.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)).__append__(((4 : GoUInt8))) : new Slice<GoUInt8>(((4 : GoUInt8))));
        _buf = (_buf != null ? _buf.__append__(..._xx.bytes().__toArray__()) : new Slice<GoUInt8>(..._xx.bytes().__toArray__()));
        _buf = (_buf != null ? _buf.__append__(..._yy.bytes().__toArray__()) : new Slice<GoUInt8>(..._yy.bytes().__toArray__()));
        return _buf;
    }
    /**
        // Bytes returns the uncompressed or infinity encoding of p, as specified in
        // SEC 1, Version 2.0, Section 2.3.3. Note that the encoding of the point at
        // infinity is shorter than all other encodings.
    **/
    @:keep
    public static function bytes( _p:P521Point):Slice<GoByte> {
        var _out:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 133) ((0 : GoUInt8))]);
        return _p._bytes(_out);
    }
    /**
        // SetBytes sets p to the compressed, uncompressed, or infinity value encoded in
        // b, as specified in SEC 1, Version 2.0, Section 2.3.4. If the point is not on
        // the curve, it returns nil and an error, and the receiver is unchanged.
        // Otherwise, it returns p.
    **/
    @:keep
    public static function setBytes( _p:P521Point, _b:Slice<GoByte>):{ var _0 : P521Point; var _1 : Error; } {
        if (((_b != null ? _b.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) == ((0 : GoUInt8)))) {
            return { _0 : _p.set(newP521Point()), _1 : ((null : stdgo.Error)) };
        } else if (((_b != null ? _b.length : ((0 : GoInt))) == ((133 : GoInt))) && ((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) == ((4 : GoUInt8)))) {
            var __tmp__ = new crypto.elliptic.internal.fiat.Fiat.P521Element().setBytes(((_b.__slice__(((1 : GoInt)), ((67 : GoInt))) : Slice<GoUInt8>))), _x:Ref<crypto.elliptic.internal.fiat.Fiat.P521Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            var __tmp__ = new crypto.elliptic.internal.fiat.Fiat.P521Element().setBytes(((_b.__slice__(((67 : GoInt))) : Slice<GoUInt8>))), _y:Ref<crypto.elliptic.internal.fiat.Fiat.P521Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            {
                var _err:stdgo.Error = _p521CheckOnCurve(_x, _y);
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
            _p._x.set(_x);
            _p._y.set(_y);
            _p._z.one();
            return { _0 : _p, _1 : ((null : stdgo.Error)) };
        } else if (((_b != null ? _b.length : ((0 : GoInt))) == ((67 : GoInt))) && ((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) == ((0 : GoUInt8)))) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("unimplemented" : GoString)))) };
        } else {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("invalid P521 point encoding" : GoString)))) };
        };
    }
    /**
        // Set sets p = q and returns p.
    **/
    @:keep
    public static function set( _p:P521Point, _q:P521Point):P521Point {
        _p._x.set(_q._x);
        _p._y.set(_q._y);
        _p._z.set(_q._z);
        return _p;
    }
}
class P521Point_wrapper {
    /**
        // ScalarMult sets p = scalar * q, and returns p.
    **/
    @:keep
    public var scalarMult : (P521Point, Slice<GoByte>) -> P521Point = null;
    /**
        // Select sets q to p1 if cond == 1, and to p2 if cond == 0.
    **/
    @:keep
    public var select : (P521Point, P521Point, GoInt) -> P521Point = null;
    /**
        // Double sets q = p + p, and returns q. The points may overlap.
    **/
    @:keep
    public var double : P521Point -> P521Point = null;
    /**
        // Add sets q = p1 + p2, and returns q. The points may overlap.
    **/
    @:keep
    public var add : (P521Point, P521Point) -> P521Point = null;
    @:keep
    public var _bytes : GoArray<GoByte> -> Slice<GoByte> = null;
    /**
        // Bytes returns the uncompressed or infinity encoding of p, as specified in
        // SEC 1, Version 2.0, Section 2.3.3. Note that the encoding of the point at
        // infinity is shorter than all other encodings.
    **/
    @:keep
    public var bytes : () -> Slice<GoByte> = null;
    /**
        // SetBytes sets p to the compressed, uncompressed, or infinity value encoded in
        // b, as specified in SEC 1, Version 2.0, Section 2.3.4. If the point is not on
        // the curve, it returns nil and an error, and the receiver is unchanged.
        // Otherwise, it returns p.
    **/
    @:keep
    public var setBytes : Slice<GoByte> -> { var _0 : P521Point; var _1 : Error; } = null;
    /**
        // Set sets p = q and returns p.
    **/
    @:keep
    public var set : P521Point -> P521Point = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : P521Point;
}
