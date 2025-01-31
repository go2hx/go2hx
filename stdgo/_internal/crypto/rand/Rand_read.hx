package stdgo._internal.crypto.rand;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.compress.flate.Flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.internal.randutil.Randutil;
function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = stdgo._internal.io.Io_readFull.readFull(stdgo._internal.crypto.rand.Rand_reader.reader, _b);
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
