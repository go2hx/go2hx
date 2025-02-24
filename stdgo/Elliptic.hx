package stdgo;
class Curve_static_extension {
    static public function scalarBaseMult(t:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve, _k:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _k = ([for (i in _k) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_curve_static_extension.Curve_static_extension.scalarBaseMult(t, _k);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scalarMult(t:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve, _x1:stdgo._internal.math.big.Big_int_.Int_, _y1:stdgo._internal.math.big.Big_int_.Int_, _k:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _x1 = (_x1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y1 = (_y1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _k = ([for (i in _k) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_curve_static_extension.Curve_static_extension.scalarMult(t, _x1, _y1, _k);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function double(t:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve, _x1:stdgo._internal.math.big.Big_int_.Int_, _y1:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _x1 = (_x1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y1 = (_y1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_curve_static_extension.Curve_static_extension.double(t, _x1, _y1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function add(t:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve, _x1:stdgo._internal.math.big.Big_int_.Int_, _y1:stdgo._internal.math.big.Big_int_.Int_, _x2:stdgo._internal.math.big.Big_int_.Int_, _y2:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _x1 = (_x1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y1 = (_y1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x2 = (_x2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y2 = (_y2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_curve_static_extension.Curve_static_extension.add(t, _x1, _y1, _x2, _y2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isOnCurve(t:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve, _x:stdgo._internal.math.big.Big_int_.Int_, _y:stdgo._internal.math.big.Big_int_.Int_):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.crypto.elliptic.Elliptic_curve_static_extension.Curve_static_extension.isOnCurve(t, _x, _y);
    }
    static public function params(t:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve):CurveParams {
        return stdgo._internal.crypto.elliptic.Elliptic_curve_static_extension.Curve_static_extension.params(t);
    }
}
@:forward abstract Curve(stdgo._internal.crypto.elliptic.Elliptic_curve.Curve) from stdgo._internal.crypto.elliptic.Elliptic_curve.Curve to stdgo._internal.crypto.elliptic.Elliptic_curve.Curve {
    @:from
    static function fromHaxeInterface(x:{ function params():CurveParams; function isOnCurve(_x:stdgo._internal.math.big.Big_int_.Int_, _y:stdgo._internal.math.big.Big_int_.Int_):Bool; function add(_x1:stdgo._internal.math.big.Big_int_.Int_, _y1:stdgo._internal.math.big.Big_int_.Int_, _x2:stdgo._internal.math.big.Big_int_.Int_, _y2:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_>; function double(_x1:stdgo._internal.math.big.Big_int_.Int_, _y1:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_>; function scalarMult(_x1:stdgo._internal.math.big.Big_int_.Int_, _y1:stdgo._internal.math.big.Big_int_.Int_, _k:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_>; function scalarBaseMult(_k:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_>; }):Curve {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Curve = { params : () -> x.params(), isOnCurve : (_0, _1) -> x.isOnCurve(_0, _1), add : (_0, _1, _2, _3) -> x.add(_0, _1, _2, _3), double : (_0, _1) -> x.double(_0, _1), scalarMult : (_0, _1, _2) -> x.scalarMult(_0, _1, [for (i in _2) i]), scalarBaseMult : _0 -> x.scalarBaseMult([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_unmarshaler_static_extension {
    static public function unmarshalCompressed(t:stdgo._internal.crypto.elliptic.Elliptic_t_unmarshaler.T_unmarshaler, _0:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_unmarshaler_static_extension.T_unmarshaler_static_extension.unmarshalCompressed(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unmarshal(t:stdgo._internal.crypto.elliptic.Elliptic_t_unmarshaler.T_unmarshaler, _0:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_unmarshaler_static_extension.T_unmarshaler_static_extension.unmarshal(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) @:forward abstract T_unmarshaler(stdgo._internal.crypto.elliptic.Elliptic_t_unmarshaler.T_unmarshaler) from stdgo._internal.crypto.elliptic.Elliptic_t_unmarshaler.T_unmarshaler to stdgo._internal.crypto.elliptic.Elliptic_t_unmarshaler.T_unmarshaler {
    @:from
    static function fromHaxeInterface(x:{ function unmarshal(_0:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_>; function unmarshalCompressed(_0:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_>; }):T_unmarshaler {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_unmarshaler = { unmarshal : _0 -> x.unmarshal([for (i in _0) i]), unmarshalCompressed : _0 -> x.unmarshalCompressed([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_nistPoint_static_extension {
    static public function scalarBaseMult(t:stdgo._internal.crypto.elliptic.Elliptic_t_nistpoint.T_nistPoint, _0:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_nistpoint_static_extension.T_nistPoint_static_extension.scalarBaseMult(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scalarMult(t:stdgo._internal.crypto.elliptic.Elliptic_t_nistpoint.T_nistPoint, _0:Dynamic, _1:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error> {
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_nistpoint_static_extension.T_nistPoint_static_extension.scalarMult(t, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function double(t:stdgo._internal.crypto.elliptic.Elliptic_t_nistpoint.T_nistPoint, _0:Dynamic):Dynamic {
        return stdgo._internal.crypto.elliptic.Elliptic_t_nistpoint_static_extension.T_nistPoint_static_extension.double(t, _0);
    }
    static public function add(t:stdgo._internal.crypto.elliptic.Elliptic_t_nistpoint.T_nistPoint, _0:Dynamic, _1:Dynamic):Dynamic {
        return stdgo._internal.crypto.elliptic.Elliptic_t_nistpoint_static_extension.T_nistPoint_static_extension.add(t, _0, _1);
    }
    static public function setBytes(t:stdgo._internal.crypto.elliptic.Elliptic_t_nistpoint.T_nistPoint, _0:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_nistpoint_static_extension.T_nistPoint_static_extension.setBytes(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function bytes(t:stdgo._internal.crypto.elliptic.Elliptic_t_nistpoint.T_nistPoint):Array<std.UInt> {
        return [for (i in stdgo._internal.crypto.elliptic.Elliptic_t_nistpoint_static_extension.T_nistPoint_static_extension.bytes(t)) i];
    }
}
@:dox(hide) @:forward abstract T_nistPoint(stdgo._internal.crypto.elliptic.Elliptic_t_nistpoint.T_nistPoint) from stdgo._internal.crypto.elliptic.Elliptic_t_nistpoint.T_nistPoint to stdgo._internal.crypto.elliptic.Elliptic_t_nistpoint.T_nistPoint {
    @:from
    static function fromHaxeInterface(x:{ function bytes():Array<std.UInt>; function setBytes(_0:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error>; function add(_0:Dynamic, _1:Dynamic):Dynamic; function double(_0:Dynamic):Dynamic; function scalarMult(_0:Dynamic, _1:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error>; function scalarBaseMult(_0:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error>; }):T_nistPoint {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_nistPoint = { bytes : () -> x.bytes(), setBytes : _0 -> x.setBytes([for (i in _0) i]), add : (_0, _1) -> x.add(_0, _1), double : _0 -> x.double(_0), scalarMult : (_0, _1) -> x.scalarMult(_0, [for (i in _1) i]), scalarBaseMult : _0 -> x.scalarBaseMult([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.crypto.elliptic.Elliptic.T_p256Curve_static_extension) @:dox(hide) abstract T_p256Curve(stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve) from stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve to stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve {
    public var _nistCurve(get, set) : T_nistCurve<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>;
    function get__nistCurve():T_nistCurve<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> return this._nistCurve;
    function set__nistCurve(v:T_nistCurve<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>):T_nistCurve<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> {
        this._nistCurve = v;
        return v;
    }
    public function new(?_nistCurve:T_nistCurve<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>) this = new stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve(_nistCurve);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.elliptic.Elliptic.T_nistCurve_static_extension) @:dox(hide) abstract T_nistCurve(stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve) from stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve to stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve {
    public var _newPoint(get, set) : () -> Dynamic;
    function get__newPoint():() -> Dynamic return () -> this._newPoint();
    function set__newPoint(v:() -> Dynamic):() -> Dynamic {
        this._newPoint = v;
        return v;
    }
    public var _params(get, set) : CurveParams;
    function get__params():CurveParams return this._params;
    function set__params(v:CurveParams):CurveParams {
        this._params = (v : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>);
        return v;
    }
    public function new(?_newPoint:() -> Dynamic, ?_params:CurveParams) this = new stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve(_newPoint, (_params : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.elliptic.Elliptic.CurveParams_static_extension) abstract CurveParams(stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams) from stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams to stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams {
    public var p(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_p():stdgo._internal.math.big.Big_int_.Int_ return this.p;
    function set_p(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.p = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var n(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_n():stdgo._internal.math.big.Big_int_.Int_ return this.n;
    function set_n(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.n = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var b(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_b():stdgo._internal.math.big.Big_int_.Int_ return this.b;
    function set_b(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.b = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var gx(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_gx():stdgo._internal.math.big.Big_int_.Int_ return this.gx;
    function set_gx(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.gx = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var gy(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_gy():stdgo._internal.math.big.Big_int_.Int_ return this.gy;
    function set_gy(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.gy = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var bitSize(get, set) : StdTypes.Int;
    function get_bitSize():StdTypes.Int return this.bitSize;
    function set_bitSize(v:StdTypes.Int):StdTypes.Int {
        this.bitSize = (v : stdgo.GoInt);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public function new(?p:stdgo._internal.math.big.Big_int_.Int_, ?n:stdgo._internal.math.big.Big_int_.Int_, ?b:stdgo._internal.math.big.Big_int_.Int_, ?gx:stdgo._internal.math.big.Big_int_.Int_, ?gy:stdgo._internal.math.big.Big_int_.Int_, ?bitSize:StdTypes.Int, ?name:String) this = new stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams((p : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (n : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (b : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (gx : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (gy : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (bitSize : stdgo.GoInt), (name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_p256CurvePointer = stdgo._internal.crypto.elliptic.Elliptic_t_p256curvepointer.T_p256CurvePointer;
@:dox(hide) class T_p256Curve_static_extension {
    public static function _pointToAffine(__self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_p256curve_static_extension.T_p256Curve_static_extension._pointToAffine(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _pointFromAffine(__self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:stdgo._internal.math.big.Big_int_.Int_, _1:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point, stdgo.Error> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_p256curve_static_extension.T_p256Curve_static_extension._pointFromAffine(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _normalizeScalar(__self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:Array<std.UInt>):Array<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.elliptic.Elliptic_t_p256curve_static_extension.T_p256Curve_static_extension._normalizeScalar(__self__, _0)) i];
    }
    public static function unmarshalCompressed(__self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_p256curve_static_extension.T_p256Curve_static_extension.unmarshalCompressed(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function unmarshal(__self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_p256curve_static_extension.T_p256Curve_static_extension.unmarshal(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function scalarMult(__self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:stdgo._internal.math.big.Big_int_.Int_, _1:stdgo._internal.math.big.Big_int_.Int_, _2:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _2 = ([for (i in _2) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_p256curve_static_extension.T_p256Curve_static_extension.scalarMult(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function scalarBaseMult(__self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_p256curve_static_extension.T_p256Curve_static_extension.scalarBaseMult(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function params(__self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve):CurveParams {
        return stdgo._internal.crypto.elliptic.Elliptic_t_p256curve_static_extension.T_p256Curve_static_extension.params(__self__);
    }
    public static function isOnCurve(__self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:stdgo._internal.math.big.Big_int_.Int_, _1:stdgo._internal.math.big.Big_int_.Int_):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.crypto.elliptic.Elliptic_t_p256curve_static_extension.T_p256Curve_static_extension.isOnCurve(__self__, _0, _1);
    }
    public static function double(__self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:stdgo._internal.math.big.Big_int_.Int_, _1:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_p256curve_static_extension.T_p256Curve_static_extension.double(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function combinedMult(__self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:stdgo._internal.math.big.Big_int_.Int_, _1:stdgo._internal.math.big.Big_int_.Int_, _2:Array<std.UInt>, _3:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _2 = ([for (i in _2) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _3 = ([for (i in _3) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_p256curve_static_extension.T_p256Curve_static_extension.combinedMult(__self__, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function add(__self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:stdgo._internal.math.big.Big_int_.Int_, _1:stdgo._internal.math.big.Big_int_.Int_, _2:stdgo._internal.math.big.Big_int_.Int_, _3:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_p256curve_static_extension.T_p256Curve_static_extension.add(__self__, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_nistCurvePointer = stdgo._internal.crypto.elliptic.Elliptic_t_nistcurvepointer.T_nistCurvePointer<Point>;
@:dox(hide) class T_nistCurve_static_extension {
    static public function unmarshalCompressed(_curve:T_nistCurve<Dynamic>, _data:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve_static_extension.T_nistCurve_static_extension.unmarshalCompressed(_curve, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unmarshal(_curve:T_nistCurve<Dynamic>, _data:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve_static_extension.T_nistCurve_static_extension.unmarshal(_curve, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function combinedMult(_curve:T_nistCurve<Dynamic>, px:stdgo._internal.math.big.Big_int_.Int_, py:stdgo._internal.math.big.Big_int_.Int_, _s1:Array<std.UInt>, _s2:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>);
        final px = (px : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final py = (py : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _s1 = ([for (i in _s1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _s2 = ([for (i in _s2) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve_static_extension.T_nistCurve_static_extension.combinedMult(_curve, px, py, _s1, _s2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scalarBaseMult(_curve:T_nistCurve<Dynamic>, _scalar:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>);
        final _scalar = ([for (i in _scalar) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve_static_extension.T_nistCurve_static_extension.scalarBaseMult(_curve, _scalar);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scalarMult(_curve:T_nistCurve<Dynamic>, bx:stdgo._internal.math.big.Big_int_.Int_, by:stdgo._internal.math.big.Big_int_.Int_, _scalar:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>);
        final bx = (bx : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final by = (by : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _scalar = ([for (i in _scalar) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve_static_extension.T_nistCurve_static_extension.scalarMult(_curve, bx, by, _scalar);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _normalizeScalar(_curve:T_nistCurve<Dynamic>, _scalar:Array<std.UInt>):Array<std.UInt> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>);
        final _scalar = ([for (i in _scalar) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve_static_extension.T_nistCurve_static_extension._normalizeScalar(_curve, _scalar)) i];
    }
    static public function double(_curve:T_nistCurve<Dynamic>, _x1:stdgo._internal.math.big.Big_int_.Int_, _y1:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>);
        final _x1 = (_x1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y1 = (_y1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve_static_extension.T_nistCurve_static_extension.double(_curve, _x1, _y1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function add(_curve:T_nistCurve<Dynamic>, _x1:stdgo._internal.math.big.Big_int_.Int_, _y1:stdgo._internal.math.big.Big_int_.Int_, _x2:stdgo._internal.math.big.Big_int_.Int_, _y2:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>);
        final _x1 = (_x1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y1 = (_y1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x2 = (_x2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y2 = (_y2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve_static_extension.T_nistCurve_static_extension.add(_curve, _x1, _y1, _x2, _y2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pointToAffine(_curve:T_nistCurve<Dynamic>, _p:Dynamic):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve_static_extension.T_nistCurve_static_extension._pointToAffine(_curve, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pointFromAffine(_curve:T_nistCurve<Dynamic>, _x:stdgo._internal.math.big.Big_int_.Int_, _y:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<Dynamic, stdgo.Error> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve_static_extension.T_nistCurve_static_extension._pointFromAffine(_curve, _x, _y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isOnCurve(_curve:T_nistCurve<Dynamic>, _x:stdgo._internal.math.big.Big_int_.Int_, _y:stdgo._internal.math.big.Big_int_.Int_):Bool {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve_static_extension.T_nistCurve_static_extension.isOnCurve(_curve, _x, _y);
    }
    static public function params(_curve:T_nistCurve<Dynamic>):CurveParams {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Dynamic>>);
        return stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve_static_extension.T_nistCurve_static_extension.params(_curve);
    }
}
typedef CurveParamsPointer = stdgo._internal.crypto.elliptic.Elliptic_curveparamspointer.CurveParamsPointer;
class CurveParams_static_extension {
    static public function scalarBaseMult(_curve:CurveParams, _k:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>);
        final _k = ([for (i in _k) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_curveparams_static_extension.CurveParams_static_extension.scalarBaseMult(_curve, _k);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scalarMult(_curve:CurveParams, bx:stdgo._internal.math.big.Big_int_.Int_, by:stdgo._internal.math.big.Big_int_.Int_, _k:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>);
        final bx = (bx : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final by = (by : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _k = ([for (i in _k) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_curveparams_static_extension.CurveParams_static_extension.scalarMult(_curve, bx, by, _k);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _doubleJacobian(_curve:CurveParams, _x:stdgo._internal.math.big.Big_int_.Int_, _y:stdgo._internal.math.big.Big_int_.Int_, _z:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple.Tuple3<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_curveparams_static_extension.CurveParams_static_extension._doubleJacobian(_curve, _x, _y, _z);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function double(_curve:CurveParams, _x1:stdgo._internal.math.big.Big_int_.Int_, _y1:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>);
        final _x1 = (_x1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y1 = (_y1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_curveparams_static_extension.CurveParams_static_extension.double(_curve, _x1, _y1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _addJacobian(_curve:CurveParams, _x1:stdgo._internal.math.big.Big_int_.Int_, _y1:stdgo._internal.math.big.Big_int_.Int_, _z1:stdgo._internal.math.big.Big_int_.Int_, _x2:stdgo._internal.math.big.Big_int_.Int_, _y2:stdgo._internal.math.big.Big_int_.Int_, _z2:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple.Tuple3<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>);
        final _x1 = (_x1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y1 = (_y1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _z1 = (_z1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x2 = (_x2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y2 = (_y2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _z2 = (_z2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_curveparams_static_extension.CurveParams_static_extension._addJacobian(_curve, _x1, _y1, _z1, _x2, _y2, _z2);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function add(_curve:CurveParams, _x1:stdgo._internal.math.big.Big_int_.Int_, _y1:stdgo._internal.math.big.Big_int_.Int_, _x2:stdgo._internal.math.big.Big_int_.Int_, _y2:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>);
        final _x1 = (_x1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y1 = (_y1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x2 = (_x2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y2 = (_y2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_curveparams_static_extension.CurveParams_static_extension.add(_curve, _x1, _y1, _x2, _y2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _affineFromJacobian(_curve:CurveParams, _x:stdgo._internal.math.big.Big_int_.Int_, _y:stdgo._internal.math.big.Big_int_.Int_, _z:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_curveparams_static_extension.CurveParams_static_extension._affineFromJacobian(_curve, _x, _y, _z);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isOnCurve(_curve:CurveParams, _x:stdgo._internal.math.big.Big_int_.Int_, _y:stdgo._internal.math.big.Big_int_.Int_):Bool {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.crypto.elliptic.Elliptic_curveparams_static_extension.CurveParams_static_extension.isOnCurve(_curve, _x, _y);
    }
    static public function _polynomial(_curve:CurveParams, _x:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.crypto.elliptic.Elliptic_curveparams_static_extension.CurveParams_static_extension._polynomial(_curve, _x);
    }
    static public function params(_curve:CurveParams):CurveParams {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>);
        return stdgo._internal.crypto.elliptic.Elliptic_curveparams_static_extension.CurveParams_static_extension.params(_curve);
    }
}
/**
    * Package elliptic implements the standard NIST P-224, P-256, P-384, and P-521
    * elliptic curves over prime fields.
    * 
    * Direct use of this package is deprecated, beyond the [P224], [P256], [P384],
    * and [P521] values necessary to use [crypto/ecdsa]. Most other uses
    * should migrate to the more efficient and safer [crypto/ecdh], or to
    * third-party modules for lower-level functionality.
**/
class Elliptic {
    /**
        * GenerateKey returns a public/private key pair. The private key is
        * generated using the given reader, which must return random data.
        * 
        * Deprecated: for ECDH, use the GenerateKey methods of the crypto/ecdh package;
        * for ECDSA, use the GenerateKey function of the crypto/ecdsa package.
    **/
    static public inline function generateKey(_curve:Curve, _rand:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple.Tuple4<Array<std.UInt>, stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_generatekey.generateKey(_curve, _rand);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    /**
        * Marshal converts a point on the curve into the uncompressed form specified in
        * SEC 1, Version 2.0, Section 2.3.3. If the point is not on the curve (or is
        * the conventional point at infinity), the behavior is undefined.
        * 
        * Deprecated: for ECDH, use the crypto/ecdh package. This function returns an
        * encoding equivalent to that of PublicKey.Bytes in crypto/ecdh.
    **/
    static public inline function marshal(_curve:Curve, _x:stdgo._internal.math.big.Big_int_.Int_, _y:stdgo._internal.math.big.Big_int_.Int_):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return [for (i in stdgo._internal.crypto.elliptic.Elliptic_marshal.marshal(_curve, _x, _y)) i];
    }
    /**
        * MarshalCompressed converts a point on the curve into the compressed form
        * specified in SEC 1, Version 2.0, Section 2.3.3. If the point is not on the
        * curve (or is the conventional point at infinity), the behavior is undefined.
    **/
    static public inline function marshalCompressed(_curve:Curve, _x:stdgo._internal.math.big.Big_int_.Int_, _y:stdgo._internal.math.big.Big_int_.Int_):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return [for (i in stdgo._internal.crypto.elliptic.Elliptic_marshalcompressed.marshalCompressed(_curve, _x, _y)) i];
    }
    /**
        * Unmarshal converts a point, serialized by Marshal, into an x, y pair. It is
        * an error if the point is not in uncompressed form, is not on the curve, or is
        * the point at infinity. On error, x = nil.
        * 
        * Deprecated: for ECDH, use the crypto/ecdh package. This function accepts an
        * encoding equivalent to that of the NewPublicKey methods in crypto/ecdh.
    **/
    static public inline function unmarshal(_curve:Curve, _data:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_unmarshal.unmarshal(_curve, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * UnmarshalCompressed converts a point, serialized by MarshalCompressed, into
        * an x, y pair. It is an error if the point is not in compressed form, is not
        * on the curve, or is the point at infinity. On error, x = nil.
    **/
    static public inline function unmarshalCompressed(_curve:Curve, _data:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_unmarshalcompressed.unmarshalCompressed(_curve, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * P224 returns a Curve which implements NIST P-224 (FIPS 186-3, section D.2.2),
        * also known as secp224r1. The CurveParams.Name of this Curve is "P-224".
        * 
        * Multiple invocations of this function will return the same value, so it can
        * be used for equality checks and switch statements.
        * 
        * The cryptographic operations are implemented using constant-time algorithms.
    **/
    static public inline function p224():Curve {
        return stdgo._internal.crypto.elliptic.Elliptic_p224.p224();
    }
    /**
        * P256 returns a Curve which implements NIST P-256 (FIPS 186-3, section D.2.3),
        * also known as secp256r1 or prime256v1. The CurveParams.Name of this Curve is
        * "P-256".
        * 
        * Multiple invocations of this function will return the same value, so it can
        * be used for equality checks and switch statements.
        * 
        * The cryptographic operations are implemented using constant-time algorithms.
    **/
    static public inline function p256():Curve {
        return stdgo._internal.crypto.elliptic.Elliptic_p256.p256();
    }
    /**
        * P384 returns a Curve which implements NIST P-384 (FIPS 186-3, section D.2.4),
        * also known as secp384r1. The CurveParams.Name of this Curve is "P-384".
        * 
        * Multiple invocations of this function will return the same value, so it can
        * be used for equality checks and switch statements.
        * 
        * The cryptographic operations are implemented using constant-time algorithms.
    **/
    static public inline function p384():Curve {
        return stdgo._internal.crypto.elliptic.Elliptic_p384.p384();
    }
    /**
        * P521 returns a Curve which implements NIST P-521 (FIPS 186-3, section D.2.5),
        * also known as secp521r1. The CurveParams.Name of this Curve is "P-521".
        * 
        * Multiple invocations of this function will return the same value, so it can
        * be used for equality checks and switch statements.
        * 
        * The cryptographic operations are implemented using constant-time algorithms.
    **/
    static public inline function p521():Curve {
        return stdgo._internal.crypto.elliptic.Elliptic_p521.p521();
    }
}
