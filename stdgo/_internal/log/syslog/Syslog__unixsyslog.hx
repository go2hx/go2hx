package stdgo._internal.log.syslog;
function _unixSyslog():{ var _0 : stdgo._internal.log.syslog.Syslog_t_serverconn.T_serverConn; var _1 : stdgo.Error; } {
        var _conn = (null : stdgo._internal.log.syslog.Syslog_t_serverconn.T_serverConn), _err = (null : stdgo.Error);
        var _logTypes = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("unixgram" : stdgo.GoString), ("unix" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _logPaths = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("/dev/log" : stdgo.GoString), ("/var/run/syslog" : stdgo.GoString), ("/var/run/log" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog_unix.go#L20"
        for (__4 => _network in _logTypes) {
            //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog_unix.go#L21"
            for (__5 => _path in _logPaths) {
                var __tmp__ = stdgo._internal.net.Net_dial.dial(_network?.__copy__(), _path?.__copy__()), _conn:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog_unix.go#L23"
                if (_err == null) {
                    //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog_unix.go#L24"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.log.syslog.Syslog_t_serverconn.T_serverConn; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ _conn : _conn, _local : true } : stdgo._internal.log.syslog.Syslog_t_netconn.T_netConn)) : stdgo.Ref<stdgo._internal.log.syslog.Syslog_t_netconn.T_netConn>)), _1 : (null : stdgo.Error) };
                        _conn = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog_unix.go#L28"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.log.syslog.Syslog_t_serverconn.T_serverConn; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.log.syslog.Syslog_t_serverconn.T_serverConn), _1 : stdgo._internal.errors.Errors_new_.new_(("Unix syslog delivery error" : stdgo.GoString)) };
            _conn = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
