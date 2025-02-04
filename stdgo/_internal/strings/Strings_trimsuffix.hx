package stdgo._internal.strings;
function trimSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):stdgo.GoString {
        if (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_s?.__copy__(), _suffix?.__copy__())) {
            return (_s.__slice__(0, ((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
