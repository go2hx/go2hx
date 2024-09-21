package _internal.vendor.golang_dot_org.x.text.transform;
function chain(_t:haxe.Rest<_internal.vendor.golang_dot_org.x.text.transform.Transform_Transformer.Transformer>):_internal.vendor.golang_dot_org.x.text.transform.Transform_Transformer.Transformer {
        var _t = new stdgo.Slice<_internal.vendor.golang_dot_org.x.text.transform.Transform_Transformer.Transformer>(_t.length, 0, ..._t);
        if ((_t.length) == ((0 : stdgo.GoInt))) {
            return stdgo.Go.asInterface((new _internal.vendor.golang_dot_org.x.text.transform.Transform_T_nop.T_nop() : _internal.vendor.golang_dot_org.x.text.transform.Transform_T_nop.T_nop));
        };
        var _c = (stdgo.Go.setRef(({ _link : (new stdgo.Slice<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_link.T_link>(((_t.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((_t.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? ((_t.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.vendor.golang_dot_org.x.text.transform.Transform_T_link.T_link)]) : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_link.T_link>) } : _internal.vendor.golang_dot_org.x.text.transform.Transform_T_chain.T_chain)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_chain.T_chain>);
        for (_i => _tt in _t) {
            _c._link[(_i : stdgo.GoInt)]._t = _tt;
        };
        var _b = (new stdgo.Slice<stdgo.GoArray<stdgo.GoUInt8>>(((_t.length) - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((_t.length) - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? ((_t.length) - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUInt8>(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)])]) : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt8>>);
        for (_i => _ in _b) {
            _c._link[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]._b = (_b[(_i : stdgo.GoInt)].__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return stdgo.Go.asInterface(_c);
    }
