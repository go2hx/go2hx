package stdgo._internal.strings;
@:keep @:allow(stdgo._internal.strings.Strings.T_stringFinder_asInterface) class T_stringFinder_static_extension {
    @:keep
    @:tdfield
    static public function _next( _f:stdgo.Ref<stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder>, _text:stdgo.GoString):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder> = _f;
        var _i = (((@:checkr _f ?? throw "null pointer dereference")._pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strings/search.go#L104"
        while ((_i < (_text.length) : Bool)) {
            var _j = (((@:checkr _f ?? throw "null pointer dereference")._pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/strings/search.go#L107"
            while (((_j >= (0 : stdgo.GoInt) : Bool) && (_text[(_i : stdgo.GoInt)] == (@:checkr _f ?? throw "null pointer dereference")._pattern[(_j : stdgo.GoInt)]) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/search.go#L108"
                _i--;
                //"file:///home/runner/.go/go1.21.3/src/strings/search.go#L109"
                _j--;
            };
            //"file:///home/runner/.go/go1.21.3/src/strings/search.go#L111"
            if ((_j < (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/search.go#L112"
                return (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
            _i = (_i + (stdgo._internal.strings.Strings__max._max((@:checkr _f ?? throw "null pointer dereference")._badCharSkip[(_text[(_i : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _f ?? throw "null pointer dereference")._goodSuffixSkip[(_j : stdgo.GoInt)])) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/search.go#L116"
        return (-1 : stdgo.GoInt);
    }
}
