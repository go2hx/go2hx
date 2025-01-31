package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
var _longMonthNames : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(12, 12, ...[
("January" : stdgo.GoString),
("February" : stdgo.GoString),
("March" : stdgo.GoString),
("April" : stdgo.GoString),
("May" : stdgo.GoString),
("June" : stdgo.GoString),
("July" : stdgo.GoString),
("August" : stdgo.GoString),
("September" : stdgo.GoString),
("October" : stdgo.GoString),
("November" : stdgo.GoString),
("December" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
