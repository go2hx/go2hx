package stdgo._internal.log.syslog;
function newLogger(_p:stdgo._internal.log.syslog.Syslog_priority.Priority, _logFlag:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.log.syslog.Syslog_new_.new_(_p, (stdgo.Go.str() : stdgo.GoString)?.__copy__()), _s:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L314"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L315"
            return { _0 : null, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L317"
        return { _0 : stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface(_s), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _logFlag), _1 : (null : stdgo.Error) };
    }
