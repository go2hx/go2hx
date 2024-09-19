package _internal.vendor.golang_dot_org.x.text.transform;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.transform.Transform_T_link_static_extension.T_link_static_extension) class T_link {
    public var _t : _internal.vendor.golang_dot_org.x.text.transform.Transform_Transformer.Transformer = (null : _internal.vendor.golang_dot_org.x.text.transform.Transform_Transformer.Transformer);
    public var _b : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _p : stdgo.GoInt = 0;
    public var _n : stdgo.GoInt = 0;
    public function new(?_t:_internal.vendor.golang_dot_org.x.text.transform.Transform_Transformer.Transformer, ?_b:stdgo.Slice<stdgo.GoUInt8>, ?_p:stdgo.GoInt, ?_n:stdgo.GoInt) {
        if (_t != null) this._t = _t;
        if (_b != null) this._b = _b;
        if (_p != null) this._p = _p;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_link(_t, _b, _p, _n);
    }
}
