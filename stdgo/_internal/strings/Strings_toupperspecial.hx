package stdgo._internal.strings;
function toUpperSpecial(_c:stdgo._internal.unicode.Unicode_specialcase.SpecialCase, _s:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.strings.Strings_map_.map_(_c.toUpper, _s?.__copy__())?.__copy__();
    }
