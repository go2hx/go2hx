package stdgo._internal.strings;
function title(_s:stdgo.GoString):stdgo.GoString {
        var _prev = (32 : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L787"
        return stdgo._internal.strings.Strings_map_.map_(function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L789"
            if (stdgo._internal.strings.Strings__isseparator._isSeparator(_prev)) {
                _prev = _r;
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L791"
                return stdgo._internal.unicode.Unicode_totitle.toTitle(_r);
            };
            _prev = _r;
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L794"
            return _r;
        }, _s?.__copy__())?.__copy__();
    }
