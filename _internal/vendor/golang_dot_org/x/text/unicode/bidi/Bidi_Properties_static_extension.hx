package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi.Properties_asInterface) class Properties_static_extension {
    @:keep
    static public function _reverseBracket( _p:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties, _r:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties = _p?.__copy__();
        return (_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__xorMasks._xorMasks[((_p._entry >> (5i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] ^ _r : stdgo.GoInt32);
    }
    @:keep
    static public function isOpeningBracket( _p:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties):Bool {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties = _p?.__copy__();
        return (_p._entry & (16 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
    }
    @:keep
    static public function isBracket( _p:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties):Bool {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties = _p?.__copy__();
        return (_p._entry & (240 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
    }
    @:keep
    static public function class_( _p:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_ {
        @:recv var _p:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties = _p?.__copy__();
        var _c = ((_p._entry & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
        if (_c == ((14u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
            _c = _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__controlByteToClass._controlByteToClass[((_p._last & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
        };
        return _c;
    }
}
