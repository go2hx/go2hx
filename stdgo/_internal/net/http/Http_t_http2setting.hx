package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2setting_static_extension.T_http2Setting_static_extension) class T_http2Setting {
    public var iD : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID = ((0 : stdgo.GoUInt16) : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID);
    public var val : stdgo.GoUInt32 = 0;
    public function new(?iD:stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID, ?val:stdgo.GoUInt32) {
        if (iD != null) this.iD = iD;
        if (val != null) this.val = val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2Setting(iD, val);
    }
}
