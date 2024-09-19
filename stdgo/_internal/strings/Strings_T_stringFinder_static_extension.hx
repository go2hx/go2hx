package stdgo._internal.strings;
@:keep @:allow(stdgo._internal.strings.Strings.T_stringFinder_asInterface) class T_stringFinder_static_extension {
    @:keep
    static public function _next( _f:stdgo.Ref<stdgo._internal.strings.Strings_T_stringFinder.T_stringFinder>, _text:stdgo.GoString):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.strings.Strings_T_stringFinder.T_stringFinder> = _f;
        var _i = ((_f._pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        while ((_i < (_text.length) : Bool)) {
            var _j = ((_f._pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while (((_j >= (0 : stdgo.GoInt) : Bool) && (_text[(_i : stdgo.GoInt)] == _f._pattern[(_j : stdgo.GoInt)]) : Bool)) {
                _i--;
                _j--;
            };
            if ((_j < (0 : stdgo.GoInt) : Bool)) {
                return (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
            _i = (_i + (stdgo._internal.strings.Strings__max._max(_f._badCharSkip[(_text[(_i : stdgo.GoInt)] : stdgo.GoInt)], _f._goodSuffixSkip[(_j : stdgo.GoInt)])) : stdgo.GoInt);
        };
        return (-1 : stdgo.GoInt);
    }
}
