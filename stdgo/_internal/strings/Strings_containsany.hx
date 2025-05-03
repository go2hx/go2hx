package stdgo._internal.strings;
function containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L66"
        return (stdgo._internal.strings.Strings_indexany.indexAny(_s?.__copy__(), _chars?.__copy__()) >= (0 : stdgo.GoInt) : Bool);
    }
