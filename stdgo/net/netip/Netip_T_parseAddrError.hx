package stdgo.net.netip;
@:structInit @:using(stdgo.net.netip.Netip.T_parseAddrError_static_extension) abstract T_parseAddrError(stdgo._internal.net.netip.Netip_T_parseAddrError.T_parseAddrError) from stdgo._internal.net.netip.Netip_T_parseAddrError.T_parseAddrError to stdgo._internal.net.netip.Netip_T_parseAddrError.T_parseAddrError {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = (v : stdgo.GoString);
        return v;
    }
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = (v : stdgo.GoString);
        return v;
    }
    public var _at(get, set) : String;
    function get__at():String return this._at;
    function set__at(v:String):String {
        this._at = (v : stdgo.GoString);
        return v;
    }
    public function new(?_in:String, ?_msg:String, ?_at:String) this = new stdgo._internal.net.netip.Netip_T_parseAddrError.T_parseAddrError((_in : stdgo.GoString), (_msg : stdgo.GoString), (_at : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
