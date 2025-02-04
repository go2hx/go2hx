package stdgo._internal.archive.tar;
function _hasNUL(_s:stdgo.GoString):Bool {
        return stdgo._internal.strings.Strings_contains.contains(_s?.__copy__(), (stdgo.Go.str(0) : stdgo.GoString)?.__copy__());
    }
