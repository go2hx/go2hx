package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_maskedSig_static_extension.T_maskedSig_static_extension) class T_maskedSig {
    public var _mask : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _pat : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _skipWS : Bool = false;
    public var _ct : stdgo.GoString = "";
    public function new(?_mask:stdgo.Slice<stdgo.GoUInt8>, ?_pat:stdgo.Slice<stdgo.GoUInt8>, ?_skipWS:Bool, ?_ct:stdgo.GoString) {
        if (_mask != null) this._mask = _mask;
        if (_pat != null) this._pat = _pat;
        if (_skipWS != null) this._skipWS = _skipWS;
        if (_ct != null) this._ct = _ct;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_maskedSig(_mask, _pat, _skipWS, _ct);
    }
}
