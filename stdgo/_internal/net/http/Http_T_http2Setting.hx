package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2Setting_static_extension.T_http2Setting_static_extension) class T_http2Setting {
    public var id : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID = ((0 : stdgo.GoUInt16) : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID);
    public var val : stdgo.GoUInt32 = 0;
    public function new(?id:stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID, ?val:stdgo.GoUInt32) {
        if (id != null) this.id = id;
        if (val != null) this.val = val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2Setting(id, val);
    }
}
