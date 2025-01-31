package stdgo._internal.text.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.unicode.Unicode;
function _countNewlines(_s:stdgo.GoString):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        for (__0 => _ch in _s) {
            if (_ch == ((10 : stdgo.GoInt32))) {
                _n++;
            };
        };
        return _n;
    }
