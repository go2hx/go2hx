package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function replaceAll(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.strings.Strings_replace.replace(_s?.__copy__(), _old?.__copy__(), _new?.__copy__(), (-1 : stdgo.GoInt))?.__copy__();
    }
