package stdgo._internal.strings;
function _trimRightASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo._internal.strings.Strings_t_asciiset.T_asciiSet>):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L982"
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L983"
            if (!_as._contains(_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L984"
                break;
            };
            _s = (_s.__slice__(0, ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L988"
        return _s?.__copy__();
    }
