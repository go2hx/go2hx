package stdgo._internal.log.syslog;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.log.Log;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
@:keep @:follow @:using(stdgo._internal.log.syslog.Syslog_Priority_static_extension.Priority_static_extension) typedef PriorityPointer = stdgo.Pointer<stdgo._internal.log.syslog.Syslog_Priority.Priority>;
