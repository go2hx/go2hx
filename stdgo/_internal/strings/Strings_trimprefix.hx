package stdgo._internal.strings;
function trimPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1044"
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_s?.__copy__(), _prefix?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1045"
            return (_s.__slice__((_prefix.length)) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1047"
        return _s?.__copy__();
    }
