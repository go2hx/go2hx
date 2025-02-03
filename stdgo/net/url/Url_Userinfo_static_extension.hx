package stdgo.net.url;
class Userinfo_static_extension {
    static public function string(_u:Userinfo):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_Userinfo.Userinfo>);
        return stdgo._internal.net.url.Url_Userinfo_static_extension.Userinfo_static_extension.string(_u);
    }
    static public function password(_u:Userinfo):stdgo.Tuple<String, Bool> {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_Userinfo.Userinfo>);
        return {
            final obj = stdgo._internal.net.url.Url_Userinfo_static_extension.Userinfo_static_extension.password(_u);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function username(_u:Userinfo):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_Userinfo.Userinfo>);
        return stdgo._internal.net.url.Url_Userinfo_static_extension.Userinfo_static_extension.username(_u);
    }
}
