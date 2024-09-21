package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi.Class__asInterface) class Class__static_extension {
    @:keep
    static public function _in( _c:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_, _set:haxe.Rest<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>):Bool {
        var _set = new stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>(_set.length, 0, ..._set);
        @:recv var _c:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_ = _c;
        for (__0 => _s in _set) {
            if (_c == (_s)) {
                return true;
            };
        };
        return false;
    }
}
