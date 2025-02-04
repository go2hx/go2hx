package stdgo._internal.crypto.hmac;
@:structInit @:using(stdgo._internal.crypto.hmac.Hmac_t_hmac_static_extension.T_hmac_static_extension) class T_hmac {
    public var _opad : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _ipad : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _outer : stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash);
    public var _inner : stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash);
    public var _marshaled : Bool = false;
    public function new(?_opad:stdgo.Slice<stdgo.GoUInt8>, ?_ipad:stdgo.Slice<stdgo.GoUInt8>, ?_outer:stdgo._internal.hash.Hash_hash.Hash, ?_inner:stdgo._internal.hash.Hash_hash.Hash, ?_marshaled:Bool) {
        if (_opad != null) this._opad = _opad;
        if (_ipad != null) this._ipad = _ipad;
        if (_outer != null) this._outer = _outer;
        if (_inner != null) this._inner = _inner;
        if (_marshaled != null) this._marshaled = _marshaled;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_hmac(_opad, _ipad, _outer, _inner, _marshaled);
    }
}
