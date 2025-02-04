package stdgo._internal.internal.xcoff;
@:keep @:allow(stdgo._internal.internal.xcoff.Xcoff.Section_asInterface) class Section_static_extension {
    @:keep
    @:tdfield
    static public function data( _s:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section> = _s;
        var _dat = (new stdgo.Slice<stdgo.GoUInt8>((@:check2r (@:checkr _s ?? throw "null pointer dereference")._sr.size() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = @:check2r (@:checkr _s ?? throw "null pointer dereference")._sr.readAt(_dat, (0i64 : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n == ((_dat.length))) {
            _err = (null : stdgo.Error);
        };
        return { _0 : (_dat.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function readAt( __self__:stdgo._internal.internal.xcoff.Xcoff_section.Section, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.readAt(_0, _1);
}
