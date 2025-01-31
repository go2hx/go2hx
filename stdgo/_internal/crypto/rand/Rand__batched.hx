package stdgo._internal.crypto.rand;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.compress.flate.Flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.internal.randutil.Randutil;
function _batched(_f:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error, _readMax:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error {
        return function(_out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
            while (((_out.length) > (0 : stdgo.GoInt) : Bool)) {
                var _read = (_out.length : stdgo.GoInt);
                if ((_read > _readMax : Bool)) {
                    _read = _readMax;
                };
                {
                    var _err = (_f((_out.__slice__(0, _read) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                _out = (_out.__slice__(_read) : stdgo.Slice<stdgo.GoUInt8>);
            };
            return (null : stdgo.Error);
        };
    }
