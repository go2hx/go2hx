package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function stringFind(_pattern:stdgo.GoString, _text:stdgo.GoString):stdgo.GoInt {
        return @:check2r stdgo._internal.strings.Strings__makeStringFinder._makeStringFinder(_pattern?.__copy__())._next(_text?.__copy__());
    }
