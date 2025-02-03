package stdgo.crypto.ecdh;
@:structInit @:using(stdgo.crypto.ecdh.Ecdh.PrivateKey_static_extension) abstract PrivateKey(stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey) from stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey to stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey {
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
    public var _boring(get, set) : stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH;
    function get__boring():stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH return this._boring;
    function set__boring(v:stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH):stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH {
        this._boring = (v : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH>);
        return v;
    }
    public var _publicKey(get, set) : PublicKey;
    function get__publicKey():PublicKey return this._publicKey;
    function set__publicKey(v:PublicKey):PublicKey {
        this._publicKey = (v : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>);
        return v;
    }
    public var _publicKeyOnce(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__publicKeyOnce():stdgo._internal.sync.Sync_Once.Once return this._publicKeyOnce;
    function set__publicKeyOnce(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._publicKeyOnce = v;
        return v;
    }
    public function new(?_curve:Curve, ?_privateKey:Array<std.UInt>, ?_boring:stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH, ?_publicKey:PublicKey, ?_publicKeyOnce:stdgo._internal.sync.Sync_Once.Once) this = new stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey(_curve, ([for (i in _privateKey) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_boring : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH>), (_publicKey : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>), _publicKeyOnce);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
