package stdgo._internal.strings;
function toTitle(_s:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.strings.Strings_map_.map_(stdgo._internal.unicode.Unicode_totitle.toTitle, _s?.__copy__())?.__copy__();
    }
