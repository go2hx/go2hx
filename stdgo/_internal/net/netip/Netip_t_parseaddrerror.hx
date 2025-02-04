package stdgo._internal.net.netip;
@:structInit @:using(stdgo._internal.net.netip.Netip_t_parseaddrerror_static_extension.T_parseAddrError_static_extension) class T_parseAddrError {
    public var _in : stdgo.GoString = "";
    public var _msg : stdgo.GoString = "";
    public var _at : stdgo.GoString = "";
    public function new(?_in:stdgo.GoString, ?_msg:stdgo.GoString, ?_at:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_msg != null) this._msg = _msg;
        if (_at != null) this._at = _at;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parseAddrError(_in, _msg, _at);
    }
}
