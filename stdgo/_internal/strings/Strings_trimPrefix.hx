package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function trimPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoString {
        if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_s?.__copy__(), _prefix?.__copy__())) {
            return (_s.__slice__((_prefix.length)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
