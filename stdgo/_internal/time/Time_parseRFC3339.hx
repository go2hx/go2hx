package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
var parseRFC3339 : (stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_Location.Location>) -> { var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } = function(s:stdgo.GoString, local:stdgo.Ref<stdgo._internal.time.Time_Location.Location>):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return stdgo._internal.time.Time__parseRFC3339._parseRFC3339(s, local);
