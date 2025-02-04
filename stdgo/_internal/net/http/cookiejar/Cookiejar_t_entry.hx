package stdgo._internal.net.http.cookiejar;
@:structInit @:using(stdgo._internal.net.http.cookiejar.Cookiejar_t_entry_static_extension.T_entry_static_extension) class T_entry {
    public var name : stdgo.GoString = "";
    public var value : stdgo.GoString = "";
    public var domain : stdgo.GoString = "";
    public var path : stdgo.GoString = "";
    public var sameSite : stdgo.GoString = "";
    public var secure : Bool = false;
    public var httpOnly : Bool = false;
    public var persistent : Bool = false;
    public var hostOnly : Bool = false;
    public var expires : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var creation : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var lastAccess : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _seqNum : stdgo.GoUInt64 = 0;
    public function new(?name:stdgo.GoString, ?value:stdgo.GoString, ?domain:stdgo.GoString, ?path:stdgo.GoString, ?sameSite:stdgo.GoString, ?secure:Bool, ?httpOnly:Bool, ?persistent:Bool, ?hostOnly:Bool, ?expires:stdgo._internal.time.Time_time.Time, ?creation:stdgo._internal.time.Time_time.Time, ?lastAccess:stdgo._internal.time.Time_time.Time, ?_seqNum:stdgo.GoUInt64) {
        if (name != null) this.name = name;
        if (value != null) this.value = value;
        if (domain != null) this.domain = domain;
        if (path != null) this.path = path;
        if (sameSite != null) this.sameSite = sameSite;
        if (secure != null) this.secure = secure;
        if (httpOnly != null) this.httpOnly = httpOnly;
        if (persistent != null) this.persistent = persistent;
        if (hostOnly != null) this.hostOnly = hostOnly;
        if (expires != null) this.expires = expires;
        if (creation != null) this.creation = creation;
        if (lastAccess != null) this.lastAccess = lastAccess;
        if (_seqNum != null) this._seqNum = _seqNum;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_entry(
name,
value,
domain,
path,
sameSite,
secure,
httpOnly,
persistent,
hostOnly,
expires,
creation,
lastAccess,
_seqNum);
    }
}
