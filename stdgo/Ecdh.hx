package stdgo;
class Curve_static_extension {
    static public function _privateKeyToPublicKey(t:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve, _0:PrivateKey):PublicKey {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>);
        return stdgo._internal.crypto.ecdh.Ecdh_curve_static_extension.Curve_static_extension._privateKeyToPublicKey(t, _0);
    }
    static public function _ecdh(t:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve, _local:PrivateKey, _remote:PublicKey):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _local = (_local : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>);
        final _remote = (_remote : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_curve_static_extension.Curve_static_extension._ecdh(t, _local, _remote);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function newPublicKey(t:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve, _key:Array<std.UInt>):stdgo.Tuple<PublicKey, stdgo.Error> {
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_curve_static_extension.Curve_static_extension.newPublicKey(t, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function newPrivateKey(t:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve, _key:Array<std.UInt>):stdgo.Tuple<PrivateKey, stdgo.Error> {
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_curve_static_extension.Curve_static_extension.newPrivateKey(t, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function generateKey(t:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve, _rand:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<PrivateKey, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_curve_static_extension.Curve_static_extension.generateKey(t, _rand);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:forward abstract Curve(stdgo._internal.crypto.ecdh.Ecdh_curve.Curve) from stdgo._internal.crypto.ecdh.Ecdh_curve.Curve to stdgo._internal.crypto.ecdh.Ecdh_curve.Curve {
    @:from
    static function fromHaxeInterface(x:{ function generateKey(_rand:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<PrivateKey, stdgo.Error>; function newPrivateKey(_key:Array<std.UInt>):stdgo.Tuple<PrivateKey, stdgo.Error>; function newPublicKey(_key:Array<std.UInt>):stdgo.Tuple<PublicKey, stdgo.Error>; function _ecdh(_local:PrivateKey, _remote:PublicKey):stdgo.Tuple<Array<std.UInt>, stdgo.Error>; function _privateKeyToPublicKey(_0:PrivateKey):PublicKey; }):Curve {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Curve = { generateKey : _0 -> x.generateKey(_0), newPrivateKey : _0 -> x.newPrivateKey([for (i in _0) i]), newPublicKey : _0 -> x.newPublicKey([for (i in _0) i]), _ecdh : (_0, _1) -> x._ecdh(_0, _1), _privateKeyToPublicKey : _0 -> x._privateKeyToPublicKey(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_nistPoint_static_extension {
    static public function scalarBaseMult(t:stdgo._internal.crypto.ecdh.Ecdh_t_nistpoint.T_nistPoint, _0:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_t_nistpoint_static_extension.T_nistPoint_static_extension.scalarBaseMult(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scalarMult(t:stdgo._internal.crypto.ecdh.Ecdh_t_nistpoint.T_nistPoint, _0:Dynamic, _1:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error> {
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_t_nistpoint_static_extension.T_nistPoint_static_extension.scalarMult(t, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setBytes(t:stdgo._internal.crypto.ecdh.Ecdh_t_nistpoint.T_nistPoint, _0:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_t_nistpoint_static_extension.T_nistPoint_static_extension.setBytes(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function bytesX(t:stdgo._internal.crypto.ecdh.Ecdh_t_nistpoint.T_nistPoint):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_t_nistpoint_static_extension.T_nistPoint_static_extension.bytesX(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function bytes(t:stdgo._internal.crypto.ecdh.Ecdh_t_nistpoint.T_nistPoint):Array<std.UInt> {
        return [for (i in stdgo._internal.crypto.ecdh.Ecdh_t_nistpoint_static_extension.T_nistPoint_static_extension.bytes(t)) i];
    }
}
@:dox(hide) @:forward abstract T_nistPoint(stdgo._internal.crypto.ecdh.Ecdh_t_nistpoint.T_nistPoint) from stdgo._internal.crypto.ecdh.Ecdh_t_nistpoint.T_nistPoint to stdgo._internal.crypto.ecdh.Ecdh_t_nistpoint.T_nistPoint {
    @:from
    static function fromHaxeInterface(x:{ function bytes():Array<std.UInt>; function bytesX():stdgo.Tuple<Array<std.UInt>, stdgo.Error>; function setBytes(_0:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error>; function scalarMult(_0:Dynamic, _1:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error>; function scalarBaseMult(_0:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error>; }):T_nistPoint {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_nistPoint = { bytes : () -> x.bytes(), bytesX : () -> x.bytesX(), setBytes : _0 -> x.setBytes([for (i in _0) i]), scalarMult : (_0, _1) -> x.scalarMult(_0, [for (i in _1) i]), scalarBaseMult : _0 -> x.scalarBaseMult([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.crypto.ecdh.Ecdh.PublicKey_static_extension) abstract PublicKey(stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey) from stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey to stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey {
    public var _curve(get, set) : Curve;
    function get__curve():Curve return this._curve;
    function set__curve(v:Curve):Curve {
        this._curve = v;
        return v;
    }
    public var _publicKey(get, set) : Array<std.UInt>;
    function get__publicKey():Array<std.UInt> return [for (i in this._publicKey) i];
    function set__publicKey(v:Array<std.UInt>):Array<std.UInt> {
        this._publicKey = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _boring(get, set) : stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH;
    function get__boring():stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH return this._boring;
    function set__boring(v:stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH):stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH {
        this._boring = (v : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH>);
        return v;
    }
    public function new(?_curve:Curve, ?_publicKey:Array<std.UInt>, ?_boring:stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH) this = new stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey(_curve, ([for (i in _publicKey) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_boring : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.ecdh.Ecdh.PrivateKey_static_extension) abstract PrivateKey(stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey) from stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey to stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey {
    public var _curve(get, set) : Curve;
    function get__curve():Curve return this._curve;
    function set__curve(v:Curve):Curve {
        this._curve = v;
        return v;
    }
    public var _privateKey(get, set) : Array<std.UInt>;
    function get__privateKey():Array<std.UInt> return [for (i in this._privateKey) i];
    function set__privateKey(v:Array<std.UInt>):Array<std.UInt> {
        this._privateKey = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _boring(get, set) : stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH;
    function get__boring():stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH return this._boring;
    function set__boring(v:stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH):stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH {
        this._boring = (v : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH>);
        return v;
    }
    public var _publicKey(get, set) : PublicKey;
    function get__publicKey():PublicKey return this._publicKey;
    function set__publicKey(v:PublicKey):PublicKey {
        this._publicKey = (v : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>);
        return v;
    }
    public var _publicKeyOnce(get, set) : stdgo._internal.sync.Sync_once.Once;
    function get__publicKeyOnce():stdgo._internal.sync.Sync_once.Once return this._publicKeyOnce;
    function set__publicKeyOnce(v:stdgo._internal.sync.Sync_once.Once):stdgo._internal.sync.Sync_once.Once {
        this._publicKeyOnce = v;
        return v;
    }
    public function new(?_curve:Curve, ?_privateKey:Array<std.UInt>, ?_boring:stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH, ?_publicKey:PublicKey, ?_publicKeyOnce:stdgo._internal.sync.Sync_once.Once) this = new stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey(_curve, ([for (i in _privateKey) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_boring : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH>), (_publicKey : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>), _publicKeyOnce);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.ecdh.Ecdh.T_nistCurve_static_extension) @:dox(hide) abstract T_nistCurve(stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve) from stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve to stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _newPoint(get, set) : () -> Dynamic;
    function get__newPoint():() -> Dynamic return () -> this._newPoint();
    function set__newPoint(v:() -> Dynamic):() -> Dynamic {
        this._newPoint = v;
        return v;
    }
    public var _scalarOrder(get, set) : Array<std.UInt>;
    function get__scalarOrder():Array<std.UInt> return [for (i in this._scalarOrder) i];
    function set__scalarOrder(v:Array<std.UInt>):Array<std.UInt> {
        this._scalarOrder = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_name:String, ?_newPoint:() -> Dynamic, ?_scalarOrder:Array<std.UInt>) this = new stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve((_name : stdgo.GoString), _newPoint, ([for (i in _scalarOrder) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.ecdh.Ecdh.T_x25519Curve_static_extension) @:dox(hide) abstract T_x25519Curve(stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve) from stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve to stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve {
    public function new() this = new stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef PublicKeyPointer = stdgo._internal.crypto.ecdh.Ecdh_publickeypointer.PublicKeyPointer;
class PublicKey_static_extension {
    static public function curve(_k:PublicKey):Curve {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>);
        return stdgo._internal.crypto.ecdh.Ecdh_publickey_static_extension.PublicKey_static_extension.curve(_k);
    }
    static public function equal(_k:PublicKey, _x:stdgo._internal.crypto.Crypto_publickey.PublicKey):Bool {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>);
        return stdgo._internal.crypto.ecdh.Ecdh_publickey_static_extension.PublicKey_static_extension.equal(_k, _x);
    }
    static public function bytes(_k:PublicKey):Array<std.UInt> {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>);
        return [for (i in stdgo._internal.crypto.ecdh.Ecdh_publickey_static_extension.PublicKey_static_extension.bytes(_k)) i];
    }
}
typedef PrivateKeyPointer = stdgo._internal.crypto.ecdh.Ecdh_privatekeypointer.PrivateKeyPointer;
class PrivateKey_static_extension {
    static public function public_(_k:PrivateKey):stdgo._internal.crypto.Crypto_publickey.PublicKey {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>);
        return stdgo._internal.crypto.ecdh.Ecdh_privatekey_static_extension.PrivateKey_static_extension.public_(_k);
    }
    static public function publicKey(_k:PrivateKey):PublicKey {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>);
        return stdgo._internal.crypto.ecdh.Ecdh_privatekey_static_extension.PrivateKey_static_extension.publicKey(_k);
    }
    static public function curve(_k:PrivateKey):Curve {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>);
        return stdgo._internal.crypto.ecdh.Ecdh_privatekey_static_extension.PrivateKey_static_extension.curve(_k);
    }
    static public function equal(_k:PrivateKey, _x:stdgo._internal.crypto.Crypto_privatekey.PrivateKey):Bool {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>);
        return stdgo._internal.crypto.ecdh.Ecdh_privatekey_static_extension.PrivateKey_static_extension.equal(_k, _x);
    }
    static public function bytes(_k:PrivateKey):Array<std.UInt> {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>);
        return [for (i in stdgo._internal.crypto.ecdh.Ecdh_privatekey_static_extension.PrivateKey_static_extension.bytes(_k)) i];
    }
    static public function eCDH(_k:PrivateKey, _remote:PublicKey):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _k = (_k : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>);
        final _remote = (_remote : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_privatekey_static_extension.PrivateKey_static_extension.eCDH(_k, _remote);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_nistCurvePointer = stdgo._internal.crypto.ecdh.Ecdh_t_nistcurvepointer.T_nistCurvePointer<Point>;
@:dox(hide) class T_nistCurve_static_extension {
    static public function _ecdh(_c:T_nistCurve<Dynamic>, _local:PrivateKey, _remote:PublicKey):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>>);
        final _local = (_local : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>);
        final _remote = (_remote : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve_static_extension.T_nistCurve_static_extension._ecdh(_c, _local, _remote);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function newPublicKey(_c:T_nistCurve<Dynamic>, _key:Array<std.UInt>):stdgo.Tuple<PublicKey, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>>);
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve_static_extension.T_nistCurve_static_extension.newPublicKey(_c, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _privateKeyToPublicKey(_c:T_nistCurve<Dynamic>, _key:PrivateKey):PublicKey {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>>);
        final _key = (_key : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>);
        return stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve_static_extension.T_nistCurve_static_extension._privateKeyToPublicKey(_c, _key);
    }
    static public function newPrivateKey(_c:T_nistCurve<Dynamic>, _key:Array<std.UInt>):stdgo.Tuple<PrivateKey, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>>);
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve_static_extension.T_nistCurve_static_extension.newPrivateKey(_c, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function generateKey(_c:T_nistCurve<Dynamic>, _rand:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<PrivateKey, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve_static_extension.T_nistCurve_static_extension.generateKey(_c, _rand);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function string(_c:T_nistCurve<Dynamic>):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>>);
        return stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve_static_extension.T_nistCurve_static_extension.string(_c);
    }
}
@:dox(hide) typedef T_x25519CurvePointer = stdgo._internal.crypto.ecdh.Ecdh_t_x25519curvepointer.T_x25519CurvePointer;
@:dox(hide) class T_x25519Curve_static_extension {
    static public function _ecdh(_c:T_x25519Curve, _local:PrivateKey, _remote:PublicKey):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>);
        final _local = (_local : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>);
        final _remote = (_remote : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve_static_extension.T_x25519Curve_static_extension._ecdh(_c, _local, _remote);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function newPublicKey(_c:T_x25519Curve, _key:Array<std.UInt>):stdgo.Tuple<PublicKey, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>);
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve_static_extension.T_x25519Curve_static_extension.newPublicKey(_c, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _privateKeyToPublicKey(_c:T_x25519Curve, _key:PrivateKey):PublicKey {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>);
        final _key = (_key : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>);
        return stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve_static_extension.T_x25519Curve_static_extension._privateKeyToPublicKey(_c, _key);
    }
    static public function newPrivateKey(_c:T_x25519Curve, _key:Array<std.UInt>):stdgo.Tuple<PrivateKey, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>);
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve_static_extension.T_x25519Curve_static_extension.newPrivateKey(_c, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function generateKey(_c:T_x25519Curve, _rand:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<PrivateKey, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve_static_extension.T_x25519Curve_static_extension.generateKey(_c, _rand);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function string(_c:T_x25519Curve):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>);
        return stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve_static_extension.T_x25519Curve_static_extension.string(_c);
    }
}
/**
    * Package ecdh implements Elliptic Curve Diffie-Hellman over
    * NIST curves and Curve25519.
**/
class Ecdh {
    /**
        * P256 returns a Curve which implements NIST P-256 (FIPS 186-3, section D.2.3),
        * also known as secp256r1 or prime256v1.
        * 
        * Multiple invocations of this function will return the same value, which can
        * be used for equality checks and switch statements.
    **/
    static public inline function p256():Curve {
        return stdgo._internal.crypto.ecdh.Ecdh_p256.p256();
    }
    /**
        * P384 returns a Curve which implements NIST P-384 (FIPS 186-3, section D.2.4),
        * also known as secp384r1.
        * 
        * Multiple invocations of this function will return the same value, which can
        * be used for equality checks and switch statements.
    **/
    static public inline function p384():Curve {
        return stdgo._internal.crypto.ecdh.Ecdh_p384.p384();
    }
    /**
        * P521 returns a Curve which implements NIST P-521 (FIPS 186-3, section D.2.5),
        * also known as secp521r1.
        * 
        * Multiple invocations of this function will return the same value, which can
        * be used for equality checks and switch statements.
    **/
    static public inline function p521():Curve {
        return stdgo._internal.crypto.ecdh.Ecdh_p521.p521();
    }
    /**
        * X25519 returns a Curve which implements the X25519 function over Curve25519
        * (RFC 7748, Section 5).
        * 
        * Multiple invocations of this function will return the same value, so it can
        * be used for equality checks and switch statements.
    **/
    static public inline function x25519():Curve {
        return stdgo._internal.crypto.ecdh.Ecdh_x25519.x25519();
    }
}
