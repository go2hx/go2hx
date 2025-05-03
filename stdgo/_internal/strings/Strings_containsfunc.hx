package stdgo._internal.strings;
function containsFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool):Bool {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L76"
        return (stdgo._internal.strings.Strings_indexfunc.indexFunc(_s?.__copy__(), _f) >= (0 : stdgo.GoInt) : Bool);
    }
