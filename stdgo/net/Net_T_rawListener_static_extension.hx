package stdgo.net;
class T_rawListener_static_extension {
    static public function write(_l:T_rawListener, _0:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_T_rawListener.T_rawListener>);
        final _0 = _0;
        return stdgo._internal.net.Net_T_rawListener_static_extension.T_rawListener_static_extension.write(_l, _0);
    }
    static public function read(_l:T_rawListener, _0:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.Net_T_rawListener.T_rawListener>);
        final _0 = _0;
        return stdgo._internal.net.Net_T_rawListener_static_extension.T_rawListener_static_extension.read(_l, _0);
    }
    public static function _ok(__self__:stdgo._internal.net.Net_T_rawListener.T_rawListener):Bool {
        return stdgo._internal.net.Net_T_rawListener_static_extension.T_rawListener_static_extension._ok(__self__);
    }
    public static function pollFD(__self__:stdgo._internal.net.Net_T_rawListener.T_rawListener):stdgo._internal.internal.poll.Poll_FD.FD {
        return stdgo._internal.net.Net_T_rawListener_static_extension.T_rawListener_static_extension.pollFD(__self__);
    }
    public static function control(__self__:stdgo._internal.net.Net_T_rawListener.T_rawListener, _0:stdgo.GoUIntptr -> Void):stdgo.Error {
        final _0 = _0;
        return stdgo._internal.net.Net_T_rawListener_static_extension.T_rawListener_static_extension.control(__self__, _0);
    }
}
