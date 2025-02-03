package stdgo.crypto.hmac;
@:structInit @:using(stdgo.crypto.hmac.Hmac.T_hmac_static_extension) abstract T_hmac(stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac) from stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac to stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac {
    public var _opad(get, set) : Array<std.UInt>;
    function get__opad():Array<std.UInt> return [for (i in this._opad) i];
    function set__opad(v:Array<std.UInt>):Array<std.UInt> {
        this._opad = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _ipad(get, set) : Array<std.UInt>;
    function get__ipad():Array<std.UInt> return [for (i in this._ipad) i];
    function set__ipad(v:Array<std.UInt>):Array<std.UInt> {
        this._ipad = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _outer(get, set) : stdgo._internal.hash.Hash_Hash.Hash;
    function get__outer():stdgo._internal.hash.Hash_Hash.Hash return this._outer;
    function set__outer(v:stdgo._internal.hash.Hash_Hash.Hash):stdgo._internal.hash.Hash_Hash.Hash {
        this._outer = v;
        return v;
    }
    public var _inner(get, set) : stdgo._internal.hash.Hash_Hash.Hash;
    function get__inner():stdgo._internal.hash.Hash_Hash.Hash return this._inner;
    function set__inner(v:stdgo._internal.hash.Hash_Hash.Hash):stdgo._internal.hash.Hash_Hash.Hash {
        this._inner = v;
        return v;
    }
    public var _marshaled(get, set) : Bool;
    function get__marshaled():Bool return this._marshaled;
    function set__marshaled(v:Bool):Bool {
        this._marshaled = v;
        return v;
    }
    public function new(?_opad:Array<std.UInt>, ?_ipad:Array<std.UInt>, ?_outer:stdgo._internal.hash.Hash_Hash.Hash, ?_inner:stdgo._internal.hash.Hash_Hash.Hash, ?_marshaled:Bool) this = new stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac(([for (i in _opad) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _ipad) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _outer, _inner, _marshaled);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
