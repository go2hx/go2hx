package stdgo.net;
class TCPListener_static_extension {
    static public function file(_l:TCPListener):stdgo.Tuple<stdgo._internal.os.Os_File.File, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_TCPListener.TCPListener>);
        return {
            final obj = stdgo._internal.net.Net_TCPListener_static_extension.TCPListener_static_extension.file(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setDeadline(_l:TCPListener, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_TCPListener.TCPListener>);
        return stdgo._internal.net.Net_TCPListener_static_extension.TCPListener_static_extension.setDeadline(_l, _t);
    }
    static public function addr(_l:TCPListener):Addr {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_TCPListener.TCPListener>);
        return stdgo._internal.net.Net_TCPListener_static_extension.TCPListener_static_extension.addr(_l);
    }
    static public function close(_l:TCPListener):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_TCPListener.TCPListener>);
        return stdgo._internal.net.Net_TCPListener_static_extension.TCPListener_static_extension.close(_l);
    }
    static public function accept(_l:TCPListener):stdgo.Tuple<Conn, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_TCPListener.TCPListener>);
        return {
            final obj = stdgo._internal.net.Net_TCPListener_static_extension.TCPListener_static_extension.accept(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function acceptTCP(_l:TCPListener):stdgo.Tuple<TCPConn, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_TCPListener.TCPListener>);
        return {
            final obj = stdgo._internal.net.Net_TCPListener_static_extension.TCPListener_static_extension.acceptTCP(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function syscallConn(_l:TCPListener):stdgo.Tuple<stdgo._internal.syscall.Syscall_RawConn.RawConn, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_TCPListener.TCPListener>);
        return {
            final obj = stdgo._internal.net.Net_TCPListener_static_extension.TCPListener_static_extension.syscallConn(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
