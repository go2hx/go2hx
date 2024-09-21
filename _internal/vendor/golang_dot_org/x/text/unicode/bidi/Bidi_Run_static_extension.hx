package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi.Run_asInterface) class Run_static_extension {
    @:keep
    static public function pos( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Run.Run>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Run.Run> = _r;
        var _start = (0 : stdgo.GoInt), _end = (0 : stdgo.GoInt);
        return { _0 : _r._startpos, _1 : ((_r._startpos + (_r._runes.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) };
    }
    @:keep
    static public function direction( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Run.Run>):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Run.Run> = _r;
        return _r._direction;
    }
    @:keep
    static public function bytes( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Run.Run>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Run.Run> = _r;
        return ((_r.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function string( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Run.Run>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Run.Run> = _r;
        return (_r._runes : stdgo.GoString)?.__copy__();
    }
}
