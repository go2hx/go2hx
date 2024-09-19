package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function _runtimeDecodeRune(_s:stdgo.GoString):stdgo.GoInt32 {
        for (__0 => _r in _s) {
            return _r;
        };
        return (-1 : stdgo.GoInt32);
    }
