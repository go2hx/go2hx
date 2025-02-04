package stdgo._internal.log.syslog;
@:keep @:allow(stdgo._internal.log.syslog.Syslog.T_netConn_asInterface) class T_netConn_static_extension {
    @:keep
    @:tdfield
    static public function _close( _n:stdgo.Ref<stdgo._internal.log.syslog.Syslog_t_netconn.T_netConn>):stdgo.Error {
        @:recv var _n:stdgo.Ref<stdgo._internal.log.syslog.Syslog_t_netconn.T_netConn> = _n;
        return (@:checkr _n ?? throw "null pointer dereference")._conn.close();
    }
    @:keep
    @:tdfield
    static public function _writeString( _n:stdgo.Ref<stdgo._internal.log.syslog.Syslog_t_netconn.T_netConn>, _p:stdgo._internal.log.syslog.Syslog_priority.Priority, _hostname:stdgo.GoString, _tag:stdgo.GoString, _msg:stdgo.GoString, _nl:stdgo.GoString):stdgo.Error {
        @:recv var _n:stdgo.Ref<stdgo._internal.log.syslog.Syslog_t_netconn.T_netConn> = _n;
        if ((@:checkr _n ?? throw "null pointer dereference")._local) {
            var _timestamp = (stdgo._internal.time.Time_now.now().format(("Jan _2 15:04:05" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _n ?? throw "null pointer dereference")._conn, ("<%d>%s %s[%d]: %s%s" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_timestamp), stdgo.Go.toInterface(_tag), stdgo.Go.toInterface(stdgo._internal.os.Os_getpid.getpid()), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_nl)), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            return _err;
        };
        var _timestamp = (stdgo._internal.time.Time_now.now().format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _n ?? throw "null pointer dereference")._conn, ("<%d>%s %s %s[%d]: %s%s" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_timestamp), stdgo.Go.toInterface(_hostname), stdgo.Go.toInterface(_tag), stdgo.Go.toInterface(stdgo._internal.os.Os_getpid.getpid()), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_nl)), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
}
