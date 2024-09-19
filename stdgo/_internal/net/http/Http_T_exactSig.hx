package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_exactSig_static_extension.T_exactSig_static_extension) class T_exactSig {
    public var _sig : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _ct : stdgo.GoString = "";
    public function new(?_sig:stdgo.Slice<stdgo.GoUInt8>, ?_ct:stdgo.GoString) {
        if (_sig != null) this._sig = _sig;
        if (_ct != null) this._ct = _ct;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exactSig(_sig, _ct);
    }
}
