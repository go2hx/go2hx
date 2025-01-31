package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _indexFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool, _truth:Bool):stdgo.GoInt {
        for (_i => _r in _s) {
            if (_f(_r) == (_truth)) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
