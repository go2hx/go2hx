package stdgo._internal.net.smtp;
@:structInit class ServerInfo {
    public var name : stdgo.GoString = "";
    public var tls : Bool = false;
    public var auth : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?name:stdgo.GoString, ?tls:Bool, ?auth:stdgo.Slice<stdgo.GoString>) {
        if (name != null) this.name = name;
        if (tls != null) this.tls = tls;
        if (auth != null) this.auth = auth;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ServerInfo(name, tls, auth);
    }
}
