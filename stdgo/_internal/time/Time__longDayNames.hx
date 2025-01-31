package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
var _longDayNames : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(7, 7, ...[("Sunday" : stdgo.GoString), ("Monday" : stdgo.GoString), ("Tuesday" : stdgo.GoString), ("Wednesday" : stdgo.GoString), ("Thursday" : stdgo.GoString), ("Friday" : stdgo.GoString), ("Saturday" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
