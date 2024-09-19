package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError_static_extension.T_nestedError_static_extension) class T_nestedError {
    public var _s : stdgo.GoString = "";
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_s:stdgo.GoString, ?_err:stdgo.Error) {
        if (_s != null) this._s = _s;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_nestedError(_s, _err);
    }
}
