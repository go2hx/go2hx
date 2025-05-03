package stdgo._internal.strings;
function _trimLeftASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo._internal.strings.Strings_t_asciiset.T_asciiSet>):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L934"
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L935"
            if (!_as._contains(_s[(0 : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L936"
                break;
            };
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L940"
        return _s?.__copy__();
    }
