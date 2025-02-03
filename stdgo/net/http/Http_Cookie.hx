package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.Cookie_static_extension) abstract Cookie(stdgo._internal.net.http.Http_Cookie.Cookie) from stdgo._internal.net.http.Http_Cookie.Cookie to stdgo._internal.net.http.Http_Cookie.Cookie {
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
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = (v : stdgo.GoString);
        return v;
    }
    public var domain(get, set) : String;
    function get_domain():String return this.domain;
    function set_domain(v:String):String {
        this.domain = (v : stdgo.GoString);
        return v;
    }
    public var expires(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_expires():stdgo._internal.time.Time_Time.Time return this.expires;
    function set_expires(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.expires = v;
        return v;
    }
    public var rawExpires(get, set) : String;
    function get_rawExpires():String return this.rawExpires;
    function set_rawExpires(v:String):String {
        this.rawExpires = (v : stdgo.GoString);
        return v;
    }
    public var maxAge(get, set) : StdTypes.Int;
    function get_maxAge():StdTypes.Int return this.maxAge;
    function set_maxAge(v:StdTypes.Int):StdTypes.Int {
        this.maxAge = (v : stdgo.GoInt);
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
    public var sameSite(get, set) : SameSite;
    function get_sameSite():SameSite return this.sameSite;
    function set_sameSite(v:SameSite):SameSite {
        this.sameSite = v;
        return v;
    }
    public var raw(get, set) : String;
    function get_raw():String return this.raw;
    function set_raw(v:String):String {
        this.raw = (v : stdgo.GoString);
        return v;
    }
    public var unparsed(get, set) : Array<String>;
    function get_unparsed():Array<String> return [for (i in this.unparsed) i];
    function set_unparsed(v:Array<String>):Array<String> {
        this.unparsed = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?name:String, ?value:String, ?path:String, ?domain:String, ?expires:stdgo._internal.time.Time_Time.Time, ?rawExpires:String, ?maxAge:StdTypes.Int, ?secure:Bool, ?httpOnly:Bool, ?sameSite:SameSite, ?raw:String, ?unparsed:Array<String>) this = new stdgo._internal.net.http.Http_Cookie.Cookie(
(name : stdgo.GoString),
(value : stdgo.GoString),
(path : stdgo.GoString),
(domain : stdgo.GoString),
expires,
(rawExpires : stdgo.GoString),
(maxAge : stdgo.GoInt),
secure,
httpOnly,
sameSite,
(raw : stdgo.GoString),
([for (i in unparsed) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
