package stdgo._internal.crypto.rand;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.compress.flate.Flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.internal.randutil.Randutil;
var _jsCrypto : stdgo._internal.syscall.js.Js_Value.Value = stdgo._internal.syscall.js.Js_global.global().get(("crypto" : stdgo.GoString));
