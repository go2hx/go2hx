package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2Setting_static_extension) abstract T_http2Setting(stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting) from stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting to stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting {
    public var iD(get, set) : T_http2SettingID;
    function get_iD():T_http2SettingID return this.iD;
    function set_iD(v:T_http2SettingID):T_http2SettingID {
        this.iD = v;
        return v;
    }
    public var val(get, set) : std.UInt;
    function get_val():std.UInt return this.val;
    function set_val(v:std.UInt):std.UInt {
        this.val = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?iD:T_http2SettingID, ?val:std.UInt) this = new stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting(iD, (val : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
