package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
var _startNano : stdgo.GoInt64 = (stdgo._internal.time.Time__runtimeNano._runtimeNano() - (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
