package stdgo.net.http;
class T_httpError_static_extension {
    static public function temporary(_e:T_httpError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.http.Http_T_httpError.T_httpError>);
        return stdgo._internal.net.http.Http_T_httpError_static_extension.T_httpError_static_extension.temporary(_e);
    }
    static public function timeout(_e:T_httpError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.http.Http_T_httpError.T_httpError>);
        return stdgo._internal.net.http.Http_T_httpError_static_extension.T_httpError_static_extension.timeout(_e);
    }
    static public function error(_e:T_httpError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.http.Http_T_httpError.T_httpError>);
        return stdgo._internal.net.http.Http_T_httpError_static_extension.T_httpError_static_extension.error(_e);
    }
}
