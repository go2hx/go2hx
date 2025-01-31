package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _trimRightASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo._internal.strings.Strings_T_asciiSet.T_asciiSet>):stdgo.GoString {
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            if (!@:check2r _as._contains(_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)])) {
                break;
            };
            _s = (_s.__slice__(0, ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
