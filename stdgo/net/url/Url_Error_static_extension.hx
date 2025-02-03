package stdgo.net.url;
class Error_static_extension {
    static public function temporary(_e:Error):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.url.Url_Error.Error>);
        return stdgo._internal.net.url.Url_Error_static_extension.Error_static_extension.temporary(_e);
    }
    static public function timeout(_e:Error):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.url.Url_Error.Error>);
        return stdgo._internal.net.url.Url_Error_static_extension.Error_static_extension.timeout(_e);
    }
    static public function error(_e:Error):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.url.Url_Error.Error>);
        return stdgo._internal.net.url.Url_Error_static_extension.Error_static_extension.error(_e);
    }
    static public function unwrap(_e:Error):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.url.Url_Error.Error>);
        return stdgo._internal.net.url.Url_Error_static_extension.Error_static_extension.unwrap(_e);
    }
}
