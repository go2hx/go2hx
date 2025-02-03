package stdgo.net.http.cookiejar;
@:structInit @:using(stdgo.net.http.cookiejar.Cookiejar.T_entry_static_extension) abstract T_entry(stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry) from stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry to stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var value(get, set) : String;
    function get_value():String return this.value;
    function set_value(v:String):String {
        this.value = (v : stdgo.GoString);
        return v;
    }
    public var domain(get, set) : String;
    function get_domain():String return this.domain;
    function set_domain(v:String):String {
        this.domain = (v : stdgo.GoString);
        return v;
    }
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = (v : stdgo.GoString);
        return v;
    }
    public var sameSite(get, set) : String;
    function get_sameSite():String return this.sameSite;
    function set_sameSite(v:String):String {
        this.sameSite = (v : stdgo.GoString);
        return v;
    }
    public var secure(get, set) : Bool;
    function get_secure():Bool return this.secure;
    function set_secure(v:Bool):Bool {
        this.secure = v;
        return v;
    }
    public var httpOnly(get, set) : Bool;
    function get_httpOnly():Bool return this.httpOnly;
    function set_httpOnly(v:Bool):Bool {
        this.httpOnly = v;
        return v;
    }
    public var persistent(get, set) : Bool;
    function get_persistent():Bool return this.persistent;
    function set_persistent(v:Bool):Bool {
        this.persistent = v;
        return v;
    }
    public var hostOnly(get, set) : Bool;
    function get_hostOnly():Bool return this.hostOnly;
    function set_hostOnly(v:Bool):Bool {
        this.hostOnly = v;
        return v;
    }
    public var expires(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_expires():stdgo._internal.time.Time_Time.Time return this.expires;
    function set_expires(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.expires = v;
        return v;
    }
    public var creation(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_creation():stdgo._internal.time.Time_Time.Time return this.creation;
    function set_creation(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.creation = v;
        return v;
    }
    public var lastAccess(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_lastAccess():stdgo._internal.time.Time_Time.Time return this.lastAccess;
    function set_lastAccess(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.lastAccess = v;
        return v;
    }
    public var _seqNum(get, set) : haxe.UInt64;
    function get__seqNum():haxe.UInt64 return this._seqNum;
    function set__seqNum(v:haxe.UInt64):haxe.UInt64 {
        this._seqNum = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?name:String, ?value:String, ?domain:String, ?path:String, ?sameSite:String, ?secure:Bool, ?httpOnly:Bool, ?persistent:Bool, ?hostOnly:Bool, ?expires:stdgo._internal.time.Time_Time.Time, ?creation:stdgo._internal.time.Time_Time.Time, ?lastAccess:stdgo._internal.time.Time_Time.Time, ?_seqNum:haxe.UInt64) this = new stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry(
(name : stdgo.GoString),
(value : stdgo.GoString),
(domain : stdgo.GoString),
(path : stdgo.GoString),
(sameSite : stdgo.GoString),
secure,
httpOnly,
persistent,
hostOnly,
expires,
creation,
lastAccess,
(_seqNum : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
