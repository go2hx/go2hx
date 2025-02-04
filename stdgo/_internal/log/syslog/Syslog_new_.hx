package stdgo._internal.log.syslog;
function new_(_priority:stdgo._internal.log.syslog.Syslog_priority.Priority, _tag:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>; var _1 : stdgo.Error; } {
        return stdgo._internal.log.syslog.Syslog_dial.dial((stdgo.Go.str() : stdgo.GoString)?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _priority, _tag?.__copy__());
    }
