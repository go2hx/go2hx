package stdgo._internal.strings;
function contains(_s:stdgo.GoString, _substr:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L61"
        return (stdgo._internal.strings.Strings_index.index(_s?.__copy__(), _substr?.__copy__()) >= (0 : stdgo.GoInt) : Bool);
    }
