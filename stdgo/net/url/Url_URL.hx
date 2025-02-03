package stdgo.net.url;
@:structInit @:using(stdgo.net.url.Url.URL_static_extension) abstract URL(stdgo._internal.net.url.Url_URL.URL) from stdgo._internal.net.url.Url_URL.URL to stdgo._internal.net.url.Url_URL.URL {
    public var scheme(get, set) : String;
    function get_scheme():String return this.scheme;
    function set_scheme(v:String):String {
        this.scheme = (v : stdgo.GoString);
        return v;
    }
    public var opaque(get, set) : String;
    function get_opaque():String return this.opaque;
    function set_opaque(v:String):String {
        this.opaque = (v : stdgo.GoString);
        return v;
    }
    public var user(get, set) : Userinfo;
    function get_user():Userinfo return this.user;
    function set_user(v:Userinfo):Userinfo {
        this.user = (v : stdgo.Ref<stdgo._internal.net.url.Url_Userinfo.Userinfo>);
        return v;
    }
    public var host(get, set) : String;
    function get_host():String return this.host;
    function set_host(v:String):String {
        this.host = (v : stdgo.GoString);
        return v;
    }
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = (v : stdgo.GoString);
        return v;
    }
    public var rawPath(get, set) : String;
    function get_rawPath():String return this.rawPath;
    function set_rawPath(v:String):String {
        this.rawPath = (v : stdgo.GoString);
        return v;
    }
    public var omitHost(get, set) : Bool;
    function get_omitHost():Bool return this.omitHost;
    function set_omitHost(v:Bool):Bool {
        this.omitHost = v;
        return v;
    }
    public var forceQuery(get, set) : Bool;
    function get_forceQuery():Bool return this.forceQuery;
    function set_forceQuery(v:Bool):Bool {
        this.forceQuery = v;
        return v;
    }
    public var rawQuery(get, set) : String;
    function get_rawQuery():String return this.rawQuery;
    function set_rawQuery(v:String):String {
        this.rawQuery = (v : stdgo.GoString);
        return v;
    }
    public var fragment(get, set) : String;
    function get_fragment():String return this.fragment;
    function set_fragment(v:String):String {
        this.fragment = (v : stdgo.GoString);
        return v;
    }
    public var rawFragment(get, set) : String;
    function get_rawFragment():String return this.rawFragment;
    function set_rawFragment(v:String):String {
        this.rawFragment = (v : stdgo.GoString);
        return v;
    }
    public function new(?scheme:String, ?opaque:String, ?user:Userinfo, ?host:String, ?path:String, ?rawPath:String, ?omitHost:Bool, ?forceQuery:Bool, ?rawQuery:String, ?fragment:String, ?rawFragment:String) this = new stdgo._internal.net.url.Url_URL.URL(
(scheme : stdgo.GoString),
(opaque : stdgo.GoString),
(user : stdgo.Ref<stdgo._internal.net.url.Url_Userinfo.Userinfo>),
(host : stdgo.GoString),
(path : stdgo.GoString),
(rawPath : stdgo.GoString),
omitHost,
forceQuery,
(rawQuery : stdgo.GoString),
(fragment : stdgo.GoString),
(rawFragment : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
