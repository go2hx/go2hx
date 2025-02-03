package stdgo.net;
class OpError_static_extension {
    static public function temporary(_e:OpError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>);
        return stdgo._internal.net.Net_OpError_static_extension.OpError_static_extension.temporary(_e);
    }
    static public function timeout(_e:OpError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>);
        return stdgo._internal.net.Net_OpError_static_extension.OpError_static_extension.timeout(_e);
    }
    static public function error(_e:OpError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>);
        return stdgo._internal.net.Net_OpError_static_extension.OpError_static_extension.error(_e);
    }
    static public function unwrap(_e:OpError):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>);
        return stdgo._internal.net.Net_OpError_static_extension.OpError_static_extension.unwrap(_e);
    }
}
