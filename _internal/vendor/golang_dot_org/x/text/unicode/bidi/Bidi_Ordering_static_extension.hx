package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi.Ordering_asInterface) class Ordering_static_extension {
    @:keep
    static public function run( _o:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering>, _i:stdgo.GoInt):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Run.Run {
        @:recv var _o:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering> = _o;
        var _r = ({ _runes : _o._runes[(_i : stdgo.GoInt)], _direction : _o._directions[(_i : stdgo.GoInt)], _startpos : _o._startpos[(_i : stdgo.GoInt)] } : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Run.Run);
        return _r?.__copy__();
    }
    @:keep
    static public function numRuns( _o:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering>):stdgo.GoInt {
        @:recv var _o:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering> = _o;
        return (_o._runes.length);
    }
    @:keep
    static public function direction( _o:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering>):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction {
        @:recv var _o:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering> = _o;
        return _o._directions[(0 : stdgo.GoInt)];
    }
}
