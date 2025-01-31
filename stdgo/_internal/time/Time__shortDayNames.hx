package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
var _shortDayNames : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(7, 7, ...[("Sun" : stdgo.GoString), ("Mon" : stdgo.GoString), ("Tue" : stdgo.GoString), ("Wed" : stdgo.GoString), ("Thu" : stdgo.GoString), ("Fri" : stdgo.GoString), ("Sat" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
