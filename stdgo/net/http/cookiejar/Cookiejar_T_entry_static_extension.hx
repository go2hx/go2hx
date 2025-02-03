package stdgo.net.http.cookiejar;
class T_entry_static_extension {
    static public function _pathMatch(_e:T_entry, _requestPath:String):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>);
        final _requestPath = (_requestPath : stdgo.GoString);
        return stdgo._internal.net.http.cookiejar.Cookiejar_T_entry_static_extension.T_entry_static_extension._pathMatch(_e, _requestPath);
    }
    static public function _domainMatch(_e:T_entry, _host:String):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>);
        final _host = (_host : stdgo.GoString);
        return stdgo._internal.net.http.cookiejar.Cookiejar_T_entry_static_extension.T_entry_static_extension._domainMatch(_e, _host);
    }
    static public function _shouldSend(_e:T_entry, _https:Bool, _host:String, _path:String):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>);
        final _host = (_host : stdgo.GoString);
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.net.http.cookiejar.Cookiejar_T_entry_static_extension.T_entry_static_extension._shouldSend(_e, _https, _host, _path);
    }
    static public function _id(_e:T_entry):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>);
        return stdgo._internal.net.http.cookiejar.Cookiejar_T_entry_static_extension.T_entry_static_extension._id(_e);
    }
}
