package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_cookie_static_extension.Cookie_static_extension) class Cookie {
    public var name : stdgo.GoString = "";
    public var value : stdgo.GoString = "";
    public var path : stdgo.GoString = "";
    public var domain : stdgo.GoString = "";
    public var expires : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var rawExpires : stdgo.GoString = "";
    public var maxAge : stdgo.GoInt = 0;
    public var secure : Bool = false;
    public var httpOnly : Bool = false;
    public var sameSite : stdgo._internal.net.http.Http_samesite.SameSite = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_samesite.SameSite);
    public var raw : stdgo.GoString = "";
    public var unparsed : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?name:stdgo.GoString, ?value:stdgo.GoString, ?path:stdgo.GoString, ?domain:stdgo.GoString, ?expires:stdgo._internal.time.Time_time.Time, ?rawExpires:stdgo.GoString, ?maxAge:stdgo.GoInt, ?secure:Bool, ?httpOnly:Bool, ?sameSite:stdgo._internal.net.http.Http_samesite.SameSite, ?raw:stdgo.GoString, ?unparsed:stdgo.Slice<stdgo.GoString>) {
        if (name != null) this.name = name;
        if (value != null) this.value = value;
        if (path != null) this.path = path;
        if (domain != null) this.domain = domain;
        if (expires != null) this.expires = expires;
        if (rawExpires != null) this.rawExpires = rawExpires;
        if (maxAge != null) this.maxAge = maxAge;
        if (secure != null) this.secure = secure;
        if (httpOnly != null) this.httpOnly = httpOnly;
        if (sameSite != null) this.sameSite = sameSite;
        if (raw != null) this.raw = raw;
        if (unparsed != null) this.unparsed = unparsed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Cookie(
name,
value,
path,
domain,
expires,
rawExpires,
maxAge,
secure,
httpOnly,
sameSite,
raw,
unparsed);
    }
}
