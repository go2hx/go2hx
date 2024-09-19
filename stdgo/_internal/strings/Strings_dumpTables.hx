package stdgo._internal.strings;
function dumpTables(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.Slice<stdgo.GoInt>; } {
        var _finder = stdgo._internal.strings.Strings__makeStringFinder._makeStringFinder(_pattern?.__copy__());
        return { _0 : (_finder._badCharSkip.__slice__(0) : stdgo.Slice<stdgo.GoInt>), _1 : _finder._goodSuffixSkip };
    }
