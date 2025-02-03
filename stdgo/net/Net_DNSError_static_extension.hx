package stdgo.net;
class DNSError_static_extension {
    static public function temporary(_e:DNSError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_DNSError.DNSError>);
        return stdgo._internal.net.Net_DNSError_static_extension.DNSError_static_extension.temporary(_e);
    }
    static public function timeout(_e:DNSError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_DNSError.DNSError>);
        return stdgo._internal.net.Net_DNSError_static_extension.DNSError_static_extension.timeout(_e);
    }
    static public function error(_e:DNSError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.Net_DNSError.DNSError>);
        return stdgo._internal.net.Net_DNSError_static_extension.DNSError_static_extension.error(_e);
    }
}
