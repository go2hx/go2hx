package stdgo._internal.strings;
function dumpTables(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.Slice<stdgo.GoInt>; } {
        var _finder = stdgo._internal.strings.Strings__makestringfinder._makeStringFinder(_pattern?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/strings/export_test.go#L46"
        return { _0 : ((@:checkr _finder ?? throw "null pointer dereference")._badCharSkip.__slice__(0) : stdgo.Slice<stdgo.GoInt>), _1 : (@:checkr _finder ?? throw "null pointer dereference")._goodSuffixSkip };
    }
