package stdgo._internal.strings;
function containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Bool {
        return (stdgo._internal.strings.Strings_indexany.indexAny(_s?.__copy__(), _chars?.__copy__()) >= (0 : stdgo.GoInt) : Bool);
    }
