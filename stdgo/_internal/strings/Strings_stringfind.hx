package stdgo._internal.strings;
function stringFind(_pattern:stdgo.GoString, _text:stdgo.GoString):stdgo.GoInt {
        return @:check2r stdgo._internal.strings.Strings__makestringfinder._makeStringFinder(_pattern?.__copy__())._next(_text?.__copy__());
    }
