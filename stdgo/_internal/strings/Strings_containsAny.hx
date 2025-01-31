package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Bool {
        return (stdgo._internal.strings.Strings_indexAny.indexAny(_s?.__copy__(), _chars?.__copy__()) >= (0 : stdgo.GoInt) : Bool);
    }
