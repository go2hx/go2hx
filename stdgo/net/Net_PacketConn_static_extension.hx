package stdgo.net;
class PacketConn_static_extension {
    static public function setWriteDeadline(t:stdgo._internal.net.Net_PacketConn.PacketConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_PacketConn_static_extension.PacketConn_static_extension.setWriteDeadline(t, _t);
    }
    static public function setReadDeadline(t:stdgo._internal.net.Net_PacketConn.PacketConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_PacketConn_static_extension.PacketConn_static_extension.setReadDeadline(t, _t);
    }
    static public function setDeadline(t:stdgo._internal.net.Net_PacketConn.PacketConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_PacketConn_static_extension.PacketConn_static_extension.setDeadline(t, _t);
    }
    static public function localAddr(t:stdgo._internal.net.Net_PacketConn.PacketConn):Addr {
        return stdgo._internal.net.Net_PacketConn_static_extension.PacketConn_static_extension.localAddr(t);
    }
    static public function close(t:stdgo._internal.net.Net_PacketConn.PacketConn):stdgo.Error {
        return stdgo._internal.net.Net_PacketConn_static_extension.PacketConn_static_extension.close(t);
    }
    static public function writeTo(t:stdgo._internal.net.Net_PacketConn.PacketConn, _p:Array<std.UInt>, _addr:Addr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_PacketConn_static_extension.PacketConn_static_extension.writeTo(t, _p, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFrom(t:stdgo._internal.net.Net_PacketConn.PacketConn, _p:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Addr, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_PacketConn_static_extension.PacketConn_static_extension.readFrom(t, _p);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
