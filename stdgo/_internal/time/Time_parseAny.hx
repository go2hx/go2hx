package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
var parseAny : (stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_Location.Location>, stdgo.Ref<stdgo._internal.time.Time_Location.Location>) -> { var _0 : stdgo._internal.time.Time_Time.Time; var _1 : stdgo.Error; } = stdgo._internal.time.Time__parse._parse;
