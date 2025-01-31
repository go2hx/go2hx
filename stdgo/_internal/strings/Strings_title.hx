package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function title(_s:stdgo.GoString):stdgo.GoString {
        var _prev = (32 : stdgo.GoInt32);
        return stdgo._internal.strings.Strings_map_.map_(function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            if (stdgo._internal.strings.Strings__isSeparator._isSeparator(_prev)) {
                _prev = _r;
                return stdgo._internal.unicode.Unicode_toTitle.toTitle(_r);
            };
            _prev = _r;
            return _r;
        }, _s?.__copy__())?.__copy__();
    }
