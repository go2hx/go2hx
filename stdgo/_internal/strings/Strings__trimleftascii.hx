package stdgo._internal.strings;
function _trimLeftASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo._internal.strings.Strings_t_asciiset.T_asciiSet>):stdgo.GoString {
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            if (!@:check2r _as._contains(_s[(0 : stdgo.GoInt)])) {
                break;
            };
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
