package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
var _platformZoneSources : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("/usr/share/zoneinfo/" : stdgo.GoString), ("/usr/share/lib/zoneinfo/" : stdgo.GoString), ("/usr/lib/locale/TZ/" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
