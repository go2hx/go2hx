package stdgo._internal.strings;
function contains(_s:stdgo.GoString, _substr:stdgo.GoString):Bool {
        return (stdgo._internal.strings.Strings_index.index(_s?.__copy__(), _substr?.__copy__()) >= (0 : stdgo.GoInt) : Bool);
    }
