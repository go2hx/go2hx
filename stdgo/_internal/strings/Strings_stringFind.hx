package stdgo._internal.strings;
function stringFind(_pattern:stdgo.GoString, _text:stdgo.GoString):stdgo.GoInt {
        return stdgo._internal.strings.Strings__makeStringFinder._makeStringFinder(_pattern?.__copy__())._next(_text?.__copy__());
    }
