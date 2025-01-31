package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
var appendFormatRFC3339 : (stdgo._internal.time.Time_Time.Time, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.Slice<stdgo.GoUInt8> = stdgo._internal.time.Time_Time_static_extension.Time_static_extension._appendFormatRFC3339;
