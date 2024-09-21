package _internal.vendor.golang_dot_org.x.text.transform;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.transform.Transform.T_nop_asInterface) class T_nop_static_extension {
    @:keep
    static public function span( _:_internal.vendor.golang_dot_org.x.text.transform.Transform_T_nop.T_nop, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:_internal.vendor.golang_dot_org.x.text.transform.Transform_T_nop.T_nop = _?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return { _0 : (_src.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function transform( _:_internal.vendor.golang_dot_org.x.text.transform.Transform_T_nop.T_nop, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _:_internal.vendor.golang_dot_org.x.text.transform.Transform_T_nop.T_nop = _?.__copy__();
        var _nDst = (0 : stdgo.GoInt), _nSrc = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _n = (stdgo.Go.copySlice(_dst, _src) : stdgo.GoInt);
        if ((_n < (_src.length) : Bool)) {
            _err = _internal.vendor.golang_dot_org.x.text.transform.Transform_errShortDst.errShortDst;
        };
        return { _0 : _n, _1 : _n, _2 : _err };
    }
    @:embedded
    public static function reset( __self__:_internal.vendor.golang_dot_org.x.text.transform.Transform_T_nop.T_nop) __self__.reset();
}
