package stdgo._internal.crypto.rand;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.compress.flate.Flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.internal.randutil.Randutil;
@:keep @:follow @:using(stdgo._internal.crypto.rand.Rand_T_reader_static_extension.T_reader_static_extension) typedef T_readerPointer = stdgo.Pointer<stdgo._internal.crypto.rand.Rand_T_reader.T_reader>;
