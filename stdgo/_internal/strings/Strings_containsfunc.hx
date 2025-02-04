package stdgo._internal.strings;
function containsFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool):Bool {
        return (stdgo._internal.strings.Strings_indexfunc.indexFunc(_s?.__copy__(), _f) >= (0 : stdgo.GoInt) : Bool);
    }
