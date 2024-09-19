package _internal.vendor.golang_dot_org.x.text.transform;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.transform.Transform.T_link_asInterface) class T_link_static_extension {
    @:keep
    static public function _dst( _l:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_link.T_link>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _l:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_link.T_link> = _l;
        return (_l._b.__slice__(_l._n) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function _src( _l:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_link.T_link>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _l:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_link.T_link> = _l;
        return (_l._b.__slice__(_l._p, _l._n) : stdgo.Slice<stdgo.GoUInt8>);
    }
}
