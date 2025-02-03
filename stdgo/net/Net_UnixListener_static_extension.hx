package stdgo.net;
class UnixListener_static_extension {
    static public function setUnlinkOnClose(_l:UnixListener, _unlink:Bool):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_UnixListener.UnixListener>);
        stdgo._internal.net.Net_UnixListener_static_extension.UnixListener_static_extension.setUnlinkOnClose(_l, _unlink);
    }
    static public function file(_l:UnixListener):stdgo.Tuple<stdgo._internal.os.Os_File.File, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_UnixListener.UnixListener>);
        return {
            final obj = stdgo._internal.net.Net_UnixListener_static_extension.UnixListener_static_extension.file(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setDeadline(_l:UnixListener, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_UnixListener.UnixListener>);
        return stdgo._internal.net.Net_UnixListener_static_extension.UnixListener_static_extension.setDeadline(_l, _t);
    }
    static public function addr(_l:UnixListener):Addr {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_UnixListener.UnixListener>);
        return stdgo._internal.net.Net_UnixListener_static_extension.UnixListener_static_extension.addr(_l);
    }
    static public function close(_l:UnixListener):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_UnixListener.UnixListener>);
        return stdgo._internal.net.Net_UnixListener_static_extension.UnixListener_static_extension.close(_l);
    }
    static public function accept(_l:UnixListener):stdgo.Tuple<Conn, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_UnixListener.UnixListener>);
        return {
            final obj = stdgo._internal.net.Net_UnixListener_static_extension.UnixListener_static_extension.accept(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function acceptUnix(_l:UnixListener):stdgo.Tuple<UnixConn, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_UnixListener.UnixListener>);
        return {
            final obj = stdgo._internal.net.Net_UnixListener_static_extension.UnixListener_static_extension.acceptUnix(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function syscallConn(_l:UnixListener):stdgo.Tuple<stdgo._internal.syscall.Syscall_RawConn.RawConn, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_UnixListener.UnixListener>);
        return {
            final obj = stdgo._internal.net.Net_UnixListener_static_extension.UnixListener_static_extension.syscallConn(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
