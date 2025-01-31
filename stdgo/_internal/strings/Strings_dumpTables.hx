package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function dumpTables(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.Slice<stdgo.GoInt>; } {
        var _finder = stdgo._internal.strings.Strings__makeStringFinder._makeStringFinder(_pattern?.__copy__());
        return { _0 : ((@:checkr _finder ?? throw "null pointer dereference")._badCharSkip.__slice__(0) : stdgo.Slice<stdgo.GoInt>), _1 : (@:checkr _finder ?? throw "null pointer dereference")._goodSuffixSkip };
    }
