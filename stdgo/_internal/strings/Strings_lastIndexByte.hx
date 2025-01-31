package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function lastIndexByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt {
        {
            var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                if (_s[(_i : stdgo.GoInt)] == (_c)) {
                    return _i;
                };
                _i--;
            };
        };
        return (-1 : stdgo.GoInt);
    }
