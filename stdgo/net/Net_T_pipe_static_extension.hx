package stdgo.net;
class T_pipe_static_extension {
    static public function close(_p:T_pipe):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_T_pipe.T_pipe>);
        return stdgo._internal.net.Net_T_pipe_static_extension.T_pipe_static_extension.close(_p);
    }
    static public function setWriteDeadline(_p:T_pipe, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_T_pipe.T_pipe>);
        return stdgo._internal.net.Net_T_pipe_static_extension.T_pipe_static_extension.setWriteDeadline(_p, _t);
    }
    static public function setReadDeadline(_p:T_pipe, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_T_pipe.T_pipe>);
        return stdgo._internal.net.Net_T_pipe_static_extension.T_pipe_static_extension.setReadDeadline(_p, _t);
    }
    static public function setDeadline(_p:T_pipe, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_T_pipe.T_pipe>);
        return stdgo._internal.net.Net_T_pipe_static_extension.T_pipe_static_extension.setDeadline(_p, _t);
    }
    static public function write(_p:T_pipe, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_T_pipe.T_pipe>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_T_pipe_static_extension.T_pipe_static_extension.write(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_p:T_pipe, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_T_pipe.T_pipe>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_T_pipe_static_extension.T_pipe_static_extension.read(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function remoteAddr(_:T_pipe):Addr {
        final _ = (_ : stdgo.Ref<stdgo._internal.net.Net_T_pipe.T_pipe>);
        return stdgo._internal.net.Net_T_pipe_static_extension.T_pipe_static_extension.remoteAddr(_);
    }
    static public function localAddr(_:T_pipe):Addr {
        final _ = (_ : stdgo.Ref<stdgo._internal.net.Net_T_pipe.T_pipe>);
        return stdgo._internal.net.Net_T_pipe_static_extension.T_pipe_static_extension.localAddr(_);
    }
}
