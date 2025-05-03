package stdgo._internal.strings;
function trimSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1053"
        if (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_s?.__copy__(), _suffix?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1054"
            return (_s.__slice__(0, ((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1056"
        return _s?.__copy__();
    }
