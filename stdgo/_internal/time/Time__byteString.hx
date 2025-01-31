package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _byteString(_p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_p.length) : Bool)) {
                if (_p[(_i : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                    return ((_p.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString).__copy__();
                };
                _i++;
            };
        };
        return (_p : stdgo.GoString)?.__copy__();
    }
