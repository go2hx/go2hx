package stdgo._internal.strings;
function containsRune(_s:stdgo.GoString, _r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L71"
        return (stdgo._internal.strings.Strings_indexrune.indexRune(_s?.__copy__(), _r) >= (0 : stdgo.GoInt) : Bool);
    }
