package stdgo._internal.strings;
function trimPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoString {
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_s?.__copy__(), _prefix?.__copy__())) {
            return (_s.__slice__((_prefix.length)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
