package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2SettingsFrame_static_extension) abstract T_http2SettingsFrame(stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame) from stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame to stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame {
    public function new() this = new stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
