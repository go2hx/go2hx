package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function compare(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
        if (_a == (_b)) {
            return (0 : stdgo.GoInt);
        };
        if ((_a < _b : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        return (1 : stdgo.GoInt);
    }
