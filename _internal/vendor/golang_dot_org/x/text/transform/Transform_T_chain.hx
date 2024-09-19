package _internal.vendor.golang_dot_org.x.text.transform;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.transform.Transform_T_chain_static_extension.T_chain_static_extension) class T_chain {
    public var _link : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_link.T_link> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_link.T_link>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _errStart : stdgo.GoInt = 0;
    public function new(?_link:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_link.T_link>, ?_err:stdgo.Error, ?_errStart:stdgo.GoInt) {
        if (_link != null) this._link = _link;
        if (_err != null) this._err = _err;
        if (_errStart != null) this._errStart = _errStart;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_chain(_link, _err, _errStart);
    }
}
