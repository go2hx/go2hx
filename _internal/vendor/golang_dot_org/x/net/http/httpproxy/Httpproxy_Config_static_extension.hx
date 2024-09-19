package _internal.vendor.golang_dot_org.x.net.http.httpproxy;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy.Config_asInterface) class Config_static_extension {
    @:keep
    static public function proxyFunc( _cfg:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_Config.Config>):stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; } {
        @:recv var _cfg:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_Config.Config> = _cfg;
        var _cfg1 = (stdgo.Go.setRef(({ config : (_cfg : _internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_Config.Config)?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_config.T_config)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_config.T_config>);
        _cfg1._init();
        return _cfg1._proxyForURL;
    }
}
