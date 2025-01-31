package stdgo._internal.net.smtp;
import stdgo._internal.net.Net;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.tls.Tls;
import stdgo._internal.encoding.base64.Base64;
@:structInit @:using(stdgo._internal.net.smtp.Smtp_ServerInfo_static_extension.ServerInfo_static_extension) class ServerInfo {
    public var name : stdgo.GoString = "";
    public var tLS : Bool = false;
    public var auth : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?name:stdgo.GoString, ?tLS:Bool, ?auth:stdgo.Slice<stdgo.GoString>) {
        if (name != null) this.name = name;
        if (tLS != null) this.tLS = tLS;
        if (auth != null) this.auth = auth;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ServerInfo(name, tLS, auth);
    }
}
