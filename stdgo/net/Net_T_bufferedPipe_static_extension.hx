package stdgo.net;
class T_bufferedPipe_static_extension {
    static public function setWriteDeadline(_p:T_bufferedPipe, _t:stdgo._internal.time.Time_Time.Time):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_T_bufferedPipe.T_bufferedPipe>);
        stdgo._internal.net.Net_T_bufferedPipe_static_extension.T_bufferedPipe_static_extension.setWriteDeadline(_p, _t);
    }
    static public function setReadDeadline(_p:T_bufferedPipe, _t:stdgo._internal.time.Time_Time.Time):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_T_bufferedPipe.T_bufferedPipe>);
        stdgo._internal.net.Net_T_bufferedPipe_static_extension.T_bufferedPipe_static_extension.setReadDeadline(_p, _t);
    }
    static public function close(_p:T_bufferedPipe):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_T_bufferedPipe.T_bufferedPipe>);
        stdgo._internal.net.Net_T_bufferedPipe_static_extension.T_bufferedPipe_static_extension.close(_p);
    }
    static public function write(_p:T_bufferedPipe, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_T_bufferedPipe.T_bufferedPipe>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_T_bufferedPipe_static_extension.T_bufferedPipe_static_extension.write(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_p:T_bufferedPipe, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.Net_T_bufferedPipe.T_bufferedPipe>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_T_bufferedPipe_static_extension.T_bufferedPipe_static_extension.read(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
