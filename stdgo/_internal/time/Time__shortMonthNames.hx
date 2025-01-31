package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
var _shortMonthNames : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(12, 12, ...[
("Jan" : stdgo.GoString),
("Feb" : stdgo.GoString),
("Mar" : stdgo.GoString),
("Apr" : stdgo.GoString),
("May" : stdgo.GoString),
("Jun" : stdgo.GoString),
("Jul" : stdgo.GoString),
("Aug" : stdgo.GoString),
("Sep" : stdgo.GoString),
("Oct" : stdgo.GoString),
("Nov" : stdgo.GoString),
("Dec" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
