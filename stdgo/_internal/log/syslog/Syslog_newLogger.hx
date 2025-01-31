package stdgo._internal.log.syslog;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.log.Log;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
function newLogger(_p:stdgo._internal.log.syslog.Syslog_Priority.Priority, _logFlag:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.log.syslog.Syslog_new_.new_(_p, stdgo.Go.str()?.__copy__()), _s:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return { _0 : stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface(_s), stdgo.Go.str()?.__copy__(), _logFlag), _1 : (null : stdgo.Error) };
    }
