package stdgo._internal.strings;
function toTitleSpecial(_c:stdgo._internal.unicode.Unicode_specialcase.SpecialCase, _s:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L699"
        return stdgo._internal.strings.Strings_map_.map_(_c.toTitle, _s?.__copy__())?.__copy__();
    }
