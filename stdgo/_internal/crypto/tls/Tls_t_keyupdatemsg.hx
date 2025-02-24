package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_keyupdatemsg_static_extension.T_keyUpdateMsg_static_extension) class T_keyUpdateMsg {
    public var _raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _updateRequested : Bool = false;
    public function new(?_raw:stdgo.Slice<stdgo.GoUInt8>, ?_updateRequested:Bool) {
        if (_raw != null) this._raw = _raw;
        if (_updateRequested != null) this._updateRequested = _updateRequested;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_keyUpdateMsg(_raw, _updateRequested);
    }
}
