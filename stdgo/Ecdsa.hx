package stdgo;
@:dox(hide) class T_nistPoint_static_extension {
    static public function scalarBaseMult(t:stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint, _0:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint_static_extension.T_nistPoint_static_extension.scalarBaseMult(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scalarMult(t:stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint, _0:Dynamic, _1:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error> {
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint_static_extension.T_nistPoint_static_extension.scalarMult(t, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function add(t:stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint, _0:Dynamic, _1:Dynamic):Dynamic {
        return stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint_static_extension.T_nistPoint_static_extension.add(t, _0, _1);
    }
    static public function setBytes(t:stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint, _0:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint_static_extension.T_nistPoint_static_extension.setBytes(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function bytesX(t:stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint_static_extension.T_nistPoint_static_extension.bytesX(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function bytes(t:stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint):Array<std.UInt> {
        return [for (i in stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint_static_extension.T_nistPoint_static_extension.bytes(t)) i];
    }
}
@:dox(hide) @:forward abstract T_nistPoint(stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint) from stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint to stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint {
    @:from
    static function fromHaxeInterface(x:{ function bytes():Array<std.UInt>; function bytesX():stdgo.Tuple<Array<std.UInt>, stdgo.Error>; function setBytes(_0:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error>; function add(_0:Dynamic, _1:Dynamic):Dynamic; function scalarMult(_0:Dynamic, _1:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error>; function scalarBaseMult(_0:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error>; }):T_nistPoint {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_nistPoint = { bytes : () -> x.bytes(), bytesX : () -> x.bytesX(), setBytes : _0 -> x.setBytes([for (i in _0) i]), add : (_0, _1) -> x.add(_0, _1), scalarMult : (_0, _1) -> x.scalarMult(_0, [for (i in _1) i]), scalarBaseMult : _0 -> x.scalarBaseMult([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.crypto.ecdsa.Ecdsa.PublicKey_static_extension) abstract PublicKey(stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey) from stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey to stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey {
    public var curve(get, set) : stdgo._internal.crypto.elliptic.Elliptic_curve.Curve;
    function get_curve():stdgo._internal.crypto.elliptic.Elliptic_curve.Curve return this.curve;
    function set_curve(v:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve):stdgo._internal.crypto.elliptic.Elliptic_curve.Curve {
        this.curve = v;
        return v;
    }
    public var x(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_x():stdgo._internal.math.big.Big_int_.Int_ return this.x;
    function set_x(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.x = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var y(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_y():stdgo._internal.math.big.Big_int_.Int_ return this.y;
    function set_y(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.y = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public function new(?curve:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve, ?x:stdgo._internal.math.big.Big_int_.Int_, ?y:stdgo._internal.math.big.Big_int_.Int_) this = new stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey(curve, (x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.ecdsa.Ecdsa.PrivateKey_static_extension) abstract PrivateKey(stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey) from stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey to stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey {
    public var publicKey(get, set) : PublicKey;
    function get_publicKey():PublicKey return this.publicKey;
    function set_publicKey(v:PublicKey):PublicKey {
        this.publicKey = v;
        return v;
    }
    public var d(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_d():stdgo._internal.math.big.Big_int_.Int_ return this.d;
    function set_d(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.d = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public function new(?publicKey:PublicKey, ?d:stdgo._internal.math.big.Big_int_.Int_) this = new stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey(publicKey, (d : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.ecdsa.Ecdsa.T_zr_static_extension) @:dox(hide) abstract T_zr(stdgo._internal.crypto.ecdsa.Ecdsa_t_zr.T_zr) from stdgo._internal.crypto.ecdsa.Ecdsa_t_zr.T_zr to stdgo._internal.crypto.ecdsa.Ecdsa_t_zr.T_zr {
    public function new() this = new stdgo._internal.crypto.ecdsa.Ecdsa_t_zr.T_zr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.ecdsa.Ecdsa.T_nistCurve_static_extension) @:dox(hide) abstract T_nistCurve(stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve) from stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve to stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve {
    public var _newPoint(get, set) : () -> Dynamic;
    function get__newPoint():() -> Dynamic return () -> this._newPoint();
    function set__newPoint(v:() -> Dynamic):() -> Dynamic {
        this._newPoint = v;
        return v;
    }
    public var _curve(get, set) : stdgo._internal.crypto.elliptic.Elliptic_curve.Curve;
    function get__curve():stdgo._internal.crypto.elliptic.Elliptic_curve.Curve return this._curve;
    function set__curve(v:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve):stdgo._internal.crypto.elliptic.Elliptic_curve.Curve {
        this._curve = v;
        return v;
    }
    public var n(get, set) : stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus;
    function get_n():stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus return this.n;
    function set_n(v:stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus):stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus {
        this.n = (v : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        return v;
    }
    public var _nMinus2(get, set) : Array<std.UInt>;
    function get__nMinus2():Array<std.UInt> return [for (i in this._nMinus2) i];
    function set__nMinus2(v:Array<std.UInt>):Array<std.UInt> {
        this._nMinus2 = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_newPoint:() -> Dynamic, ?_curve:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve, ?n:stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus, ?_nMinus2:Array<std.UInt>) this = new stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve(_newPoint, _curve, (n : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>), ([for (i in _nMinus2) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef PublicKeyPointer = stdgo._internal.crypto.ecdsa.Ecdsa_publickeypointer.PublicKeyPointer;
class PublicKey_static_extension {
    static public function equal(_pub:PublicKey, _x:stdgo._internal.crypto.Crypto_publickey.PublicKey):Bool {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>);
        return stdgo._internal.crypto.ecdsa.Ecdsa_publickey_static_extension.PublicKey_static_extension.equal(_pub, _x);
    }
    static public function eCDH(_k:PublicKey):stdgo.Tuple<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey, stdgo.Error> {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_publickey_static_extension.PublicKey_static_extension.eCDH(_k);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function scalarMult(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey, _0:stdgo._internal.math.big.Big_int_.Int_, _1:stdgo._internal.math.big.Big_int_.Int_, _2:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _2 = ([for (i in _2) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_publickey_static_extension.PublicKey_static_extension.scalarMult(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function scalarBaseMult(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey, _0:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_publickey_static_extension.PublicKey_static_extension.scalarBaseMult(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function params(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey):stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams {
        return stdgo._internal.crypto.ecdsa.Ecdsa_publickey_static_extension.PublicKey_static_extension.params(__self__);
    }
    public static function isOnCurve(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey, _0:stdgo._internal.math.big.Big_int_.Int_, _1:stdgo._internal.math.big.Big_int_.Int_):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.crypto.ecdsa.Ecdsa_publickey_static_extension.PublicKey_static_extension.isOnCurve(__self__, _0, _1);
    }
    public static function double(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey, _0:stdgo._internal.math.big.Big_int_.Int_, _1:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_publickey_static_extension.PublicKey_static_extension.double(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function add(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey, _0:stdgo._internal.math.big.Big_int_.Int_, _1:stdgo._internal.math.big.Big_int_.Int_, _2:stdgo._internal.math.big.Big_int_.Int_, _3:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_publickey_static_extension.PublicKey_static_extension.add(__self__, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef PrivateKeyPointer = stdgo._internal.crypto.ecdsa.Ecdsa_privatekeypointer.PrivateKeyPointer;
class PrivateKey_static_extension {
    static public function sign(_priv:PrivateKey, _rand:stdgo._internal.io.Io_reader.Reader, _digest:Array<std.UInt>, _opts:stdgo._internal.crypto.Crypto_signeropts.SignerOpts):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>);
        final _digest = ([for (i in _digest) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_privatekey_static_extension.PrivateKey_static_extension.sign(_priv, _rand, _digest, _opts);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function equal(_priv:PrivateKey, _x:stdgo._internal.crypto.Crypto_privatekey.PrivateKey):Bool {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>);
        return stdgo._internal.crypto.ecdsa.Ecdsa_privatekey_static_extension.PrivateKey_static_extension.equal(_priv, _x);
    }
    static public function public_(_priv:PrivateKey):stdgo._internal.crypto.Crypto_publickey.PublicKey {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>);
        return stdgo._internal.crypto.ecdsa.Ecdsa_privatekey_static_extension.PrivateKey_static_extension.public_(_priv);
    }
    static public function eCDH(_k:PrivateKey):stdgo.Tuple<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey, stdgo.Error> {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_privatekey_static_extension.PrivateKey_static_extension.eCDH(_k);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function scalarMult(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey, _0:stdgo._internal.math.big.Big_int_.Int_, _1:stdgo._internal.math.big.Big_int_.Int_, _2:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _2 = ([for (i in _2) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_privatekey_static_extension.PrivateKey_static_extension.scalarMult(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function scalarBaseMult(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey, _0:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_privatekey_static_extension.PrivateKey_static_extension.scalarBaseMult(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function params(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey):stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams {
        return stdgo._internal.crypto.ecdsa.Ecdsa_privatekey_static_extension.PrivateKey_static_extension.params(__self__);
    }
    public static function isOnCurve(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey, _0:stdgo._internal.math.big.Big_int_.Int_, _1:stdgo._internal.math.big.Big_int_.Int_):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.crypto.ecdsa.Ecdsa_privatekey_static_extension.PrivateKey_static_extension.isOnCurve(__self__, _0, _1);
    }
    public static function double(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey, _0:stdgo._internal.math.big.Big_int_.Int_, _1:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_privatekey_static_extension.PrivateKey_static_extension.double(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function add(__self__:stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey, _0:stdgo._internal.math.big.Big_int_.Int_, _1:stdgo._internal.math.big.Big_int_.Int_, _2:stdgo._internal.math.big.Big_int_.Int_, _3:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_privatekey_static_extension.PrivateKey_static_extension.add(__self__, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_zrPointer = stdgo._internal.crypto.ecdsa.Ecdsa_t_zrpointer.T_zrPointer;
@:dox(hide) class T_zr_static_extension {
    static public function read(_:T_zr, _dst:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_t_zr_static_extension.T_zr_static_extension.read(_, _dst);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_nistCurvePointer = stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurvepointer.T_nistCurvePointer<Point>;
@:dox(hide) class T_nistCurve_static_extension {
    static public function _pointToAffine(_curve:T_nistCurve<Dynamic>, _p:Dynamic):stdgo.Tuple.Tuple3<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_, stdgo.Error> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve<Dynamic>>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve_static_extension.T_nistCurve_static_extension._pointToAffine(_curve, _p);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _pointFromAffine(_curve:T_nistCurve<Dynamic>, _x:stdgo._internal.math.big.Big_int_.Int_, _y:stdgo._internal.math.big.Big_int_.Int_):stdgo.Tuple<Dynamic, stdgo.Error> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve<Dynamic>>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve_static_extension.T_nistCurve_static_extension._pointFromAffine(_curve, _x, _y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    * Package ecdsa implements the Elliptic Curve Digital Signature Algorithm, as
    * defined in FIPS 186-4 and SEC 1, Version 2.0.
    * 
    * Signatures generated by this package are not deterministic, but entropy is
    * mixed with the private key and the message, achieving the same level of
    * security in case of randomness source failure.
**/
class Ecdsa {
    /**
        * GenerateKey generates a new ECDSA private key for the specified curve.
        * 
        * Most applications should use [crypto/rand.Reader] as rand. Note that the
        * returned key does not depend deterministically on the bytes read from rand,
        * and may change between calls and/or between versions.
    **/
    static public inline function generateKey(_c:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve, _rand:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<PrivateKey, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_generatekey.generateKey(_c, _rand);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * SignASN1 signs a hash (which should be the result of hashing a larger message)
        * using the private key, priv. If the hash is longer than the bit-length of the
        * private key's curve order, the hash will be truncated to that length. It
        * returns the ASN.1 encoded signature.
        * 
        * The signature is randomized. Most applications should use [crypto/rand.Reader]
        * as rand. Note that the returned signature does not depend deterministically on
        * the bytes read from rand, and may change between calls and/or between versions.
    **/
    static public inline function signASN1(_rand:stdgo._internal.io.Io_reader.Reader, _priv:PrivateKey, _hash:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>);
        final _hash = ([for (i in _hash) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_signasn1.signASN1(_rand, _priv, _hash);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * VerifyASN1 verifies the ASN.1 encoded signature, sig, of hash using the
        * public key, pub. Its return value records whether the signature is valid.
    **/
    static public inline function verifyASN1(_pub:PublicKey, _hash:Array<std.UInt>, _sig:Array<std.UInt>):Bool {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>);
        final _hash = ([for (i in _hash) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sig = ([for (i in _sig) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.ecdsa.Ecdsa_verifyasn1.verifyASN1(_pub, _hash, _sig);
    }
    /**
        * Sign signs a hash (which should be the result of hashing a larger message)
        * using the private key, priv. If the hash is longer than the bit-length of the
        * private key's curve order, the hash will be truncated to that length. It
        * returns the signature as a pair of integers. Most applications should use
        * SignASN1 instead of dealing directly with r, s.
    **/
    static public inline function sign(_rand:stdgo._internal.io.Io_reader.Reader, _priv:PrivateKey, _hash:Array<std.UInt>):stdgo.Tuple.Tuple3<stdgo._internal.math.big.Big_int_.Int_, stdgo._internal.math.big.Big_int_.Int_, stdgo.Error> {
        final _priv = (_priv : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>);
        final _hash = ([for (i in _hash) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_sign.sign(_rand, _priv, _hash);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        * Verify verifies the signature in r, s of hash using the public key, pub. Its
        * return value records whether the signature is valid. Most applications should
        * use VerifyASN1 instead of dealing directly with r, s.
    **/
    static public inline function verify(_pub:PublicKey, _hash:Array<std.UInt>, _r:stdgo._internal.math.big.Big_int_.Int_, _s:stdgo._internal.math.big.Big_int_.Int_):Bool {
        final _pub = (_pub : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>);
        final _hash = ([for (i in _hash) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _r = (_r : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _s = (_s : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.crypto.ecdsa.Ecdsa_verify.verify(_pub, _hash, _r, _s);
    }
}
