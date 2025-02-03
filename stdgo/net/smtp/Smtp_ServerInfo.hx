package stdgo.net.smtp;
@:structInit @:using(stdgo.net.smtp.Smtp.ServerInfo_static_extension) abstract ServerInfo(stdgo._internal.net.smtp.Smtp_ServerInfo.ServerInfo) from stdgo._internal.net.smtp.Smtp_ServerInfo.ServerInfo to stdgo._internal.net.smtp.Smtp_ServerInfo.ServerInfo {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var tLS(get, set) : Bool;
    function get_tLS():Bool return this.tLS;
    function set_tLS(v:Bool):Bool {
        this.tLS = v;
        return v;
    }
    public var auth(get, set) : Array<String>;
    function get_auth():Array<String> return [for (i in this.auth) i];
    function set_auth(v:Array<String>):Array<String> {
        this.auth = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?name:String, ?tLS:Bool, ?auth:Array<String>) this = new stdgo._internal.net.smtp.Smtp_ServerInfo.ServerInfo((name : stdgo.GoString), tLS, ([for (i in auth) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
