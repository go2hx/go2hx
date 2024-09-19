package stdgo._internal.internal.xcoff;
@:keep @:allow(stdgo._internal.internal.xcoff.Xcoff.Section_asInterface) class Section_static_extension {
    @:keep
    static public function data( _s:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section> = _s;
        var _dat = (new stdgo.Slice<stdgo.GoUInt8>((_s._sr.size() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _s._sr.readAt(_dat, (0i64 : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n == ((_dat.length))) {
            _err = (null : stdgo.Error);
        };
        return { _0 : (_dat.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
    }
    @:embedded
    public static function readAt( __self__:stdgo._internal.internal.xcoff.Xcoff_Section.Section, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.readAt(_p, _off);
}
