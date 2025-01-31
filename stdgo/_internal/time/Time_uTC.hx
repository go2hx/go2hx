package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
var uTC : stdgo.Ref<stdgo._internal.time.Time_Location.Location> = (stdgo.Go.setRef(stdgo._internal.time.Time__utcLoc._utcLoc) : stdgo.Ref<stdgo._internal.time.Time_Location.Location>);
