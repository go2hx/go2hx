package stdgo._internal.log.syslog;
function new_(_priority:stdgo._internal.log.syslog.Syslog_Priority.Priority, _tag:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>; var _1 : stdgo.Error; } {
        return stdgo._internal.log.syslog.Syslog_dial.dial(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), _priority, _tag?.__copy__());
    }
