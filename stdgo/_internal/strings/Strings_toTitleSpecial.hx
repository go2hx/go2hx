package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function toTitleSpecial(_c:stdgo._internal.unicode.Unicode_SpecialCase.SpecialCase, _s:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.strings.Strings_map_.map_(_c.toTitle, _s?.__copy__())?.__copy__();
    }
