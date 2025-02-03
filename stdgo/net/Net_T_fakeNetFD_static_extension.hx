package stdgo.net;
class T_fakeNetFD_static_extension {
    static public function setWriteDeadline(_fd:T_fakeNetFD, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.net.Net_T_fakeNetFD.T_fakeNetFD>);
        return stdgo._internal.net.Net_T_fakeNetFD_static_extension.T_fakeNetFD_static_extension.setWriteDeadline(_fd, _t);
    }
    static public function setReadDeadline(_fd:T_fakeNetFD, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.net.Net_T_fakeNetFD.T_fakeNetFD>);
        return stdgo._internal.net.Net_T_fakeNetFD_static_extension.T_fakeNetFD_static_extension.setReadDeadline(_fd, _t);
    }
    static public function setDeadline(_fd:T_fakeNetFD, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.net.Net_T_fakeNetFD.T_fakeNetFD>);
        return stdgo._internal.net.Net_T_fakeNetFD_static_extension.T_fakeNetFD_static_extension.setDeadline(_fd, _t);
    }
    static public function close(_fd:T_fakeNetFD):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.net.Net_T_fakeNetFD.T_fakeNetFD>);
        return stdgo._internal.net.Net_T_fakeNetFD_static_extension.T_fakeNetFD_static_extension.close(_fd);
    }
    static public function write(_fd:T_fakeNetFD, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.net.Net_T_fakeNetFD.T_fakeNetFD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_T_fakeNetFD_static_extension.T_fakeNetFD_static_extension.write(_fd, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_fd:T_fakeNetFD, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.net.Net_T_fakeNetFD.T_fakeNetFD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_T_fakeNetFD_static_extension.T_fakeNetFD_static_extension.read(_fd, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
