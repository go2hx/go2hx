package stdgo._internal.crypto.rand;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.compress.flate.Flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.internal.randutil.Randutil;
function _getRandom(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        var _a = (stdgo._internal.crypto.rand.Rand__uint8Array._uint8Array.new_(stdgo.Go.toInterface((_b.length)))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
        stdgo._internal.crypto.rand.Rand__jsCrypto._jsCrypto.call(("getRandomValues" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)));
        stdgo._internal.syscall.js.Js_copyBytesToGo.copyBytesToGo(_b, _a?.__copy__());
        return (null : stdgo.Error);
    }
