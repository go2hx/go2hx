package stdgo.crypto.ecdh;
@:structInit @:using(stdgo.crypto.ecdh.Ecdh.PublicKey_static_extension) abstract PublicKey(stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey) from stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey to stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey {
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
    public var _boring(get, set) : stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH;
    function get__boring():stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH return this._boring;
    function set__boring(v:stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH):stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH {
        this._boring = (v : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH>);
        return v;
    }
    public function new(?_curve:Curve, ?_publicKey:Array<std.UInt>, ?_boring:stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH) this = new stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey(_curve, ([for (i in _publicKey) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_boring : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
