package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_finishedmsg_static_extension.T_finishedMsg_static_extension) class T_finishedMsg {
    public var _raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _verifyData : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_raw:stdgo.Slice<stdgo.GoUInt8>, ?_verifyData:stdgo.Slice<stdgo.GoUInt8>) {
        if (_raw != null) this._raw = _raw;
        if (_verifyData != null) this._verifyData = _verifyData;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_finishedMsg(_raw, _verifyData);
    }
}
