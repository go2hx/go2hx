package stdgo._internal.log.syslog;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.log.Log;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
function new_(_priority:stdgo._internal.log.syslog.Syslog_Priority.Priority, _tag:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>; var _1 : stdgo.Error; } {
        return stdgo._internal.log.syslog.Syslog_dial.dial(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), _priority, _tag?.__copy__());
    }
