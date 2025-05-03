package stdgo._internal.strings;
function stringFind(_pattern:stdgo.GoString, _text:stdgo.GoString):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/strings/export_test.go#L41"
        return stdgo._internal.strings.Strings__makestringfinder._makeStringFinder(_pattern?.__copy__())._next(_text?.__copy__());
    }
