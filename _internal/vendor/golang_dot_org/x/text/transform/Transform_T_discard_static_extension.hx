package _internal.vendor.golang_dot_org.x.text.transform;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.transform.Transform.T_discard_asInterface) class T_discard_static_extension {
    @:keep
    static public function transform( _:_internal.vendor.golang_dot_org.x.text.transform.Transform_T_discard.T_discard, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _:_internal.vendor.golang_dot_org.x.text.transform.Transform_T_discard.T_discard = _?.__copy__();
        var _nDst = (0 : stdgo.GoInt), _nSrc = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return { _0 : (0 : stdgo.GoInt), _1 : (_src.length), _2 : (null : stdgo.Error) };
    }
    @:embedded
    public static function reset( __self__:_internal.vendor.golang_dot_org.x.text.transform.Transform_T_discard.T_discard) __self__.reset();
}
