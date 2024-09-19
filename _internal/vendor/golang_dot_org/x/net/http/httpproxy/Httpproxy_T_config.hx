package _internal.vendor.golang_dot_org.x.net.http.httpproxy;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_config_static_extension.T_config_static_extension) class T_config {
    @:embedded
    public var config : _internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_Config.Config = ({} : _internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_Config.Config);
    public var _httpsProxy : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = (null : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
    public var _httpProxy : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = (null : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
    public var _ipMatchers : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_matcher.T_matcher> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_matcher.T_matcher>);
    public var _domainMatchers : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_matcher.T_matcher> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_matcher.T_matcher>);
    public function new(?config:_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_Config.Config, ?_httpsProxy:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, ?_httpProxy:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, ?_ipMatchers:stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_matcher.T_matcher>, ?_domainMatchers:stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_matcher.T_matcher>) {
        if (config != null) this.config = config;
        if (_httpsProxy != null) this._httpsProxy = _httpsProxy;
        if (_httpProxy != null) this._httpProxy = _httpProxy;
        if (_ipMatchers != null) this._ipMatchers = _ipMatchers;
        if (_domainMatchers != null) this._domainMatchers = _domainMatchers;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function proxyFunc():stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; } return this.config.proxyFunc();
    public function __copy__() {
        return new T_config(config, _httpsProxy, _httpProxy, _ipMatchers, _domainMatchers);
    }
}
