package stdgo.cookiejar;
class PublicSuffixList_static_extension {
    static public function string(t:stdgo._internal.net.http.cookiejar.Cookiejar_publicsuffixlist.PublicSuffixList):String {
        return stdgo._internal.net.http.cookiejar.Cookiejar_publicsuffixlist_static_extension.PublicSuffixList_static_extension.string(t);
    }
    static public function publicSuffix(t:stdgo._internal.net.http.cookiejar.Cookiejar_publicsuffixlist.PublicSuffixList, _domain:String):String {
        final _domain = (_domain : stdgo.GoString);
        return stdgo._internal.net.http.cookiejar.Cookiejar_publicsuffixlist_static_extension.PublicSuffixList_static_extension.publicSuffix(t, _domain);
    }
}
@:forward abstract PublicSuffixList(stdgo._internal.net.http.cookiejar.Cookiejar_publicsuffixlist.PublicSuffixList) from stdgo._internal.net.http.cookiejar.Cookiejar_publicsuffixlist.PublicSuffixList to stdgo._internal.net.http.cookiejar.Cookiejar_publicsuffixlist.PublicSuffixList {
    @:from
    static function fromHaxeInterface(x:{ function publicSuffix(_domain:String):String; function string():String; }):PublicSuffixList {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:PublicSuffixList = { publicSuffix : _0 -> x.publicSuffix(_0), string : () -> x.string(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.net.http.cookiejar.Cookiejar.Options_static_extension) abstract Options(stdgo._internal.net.http.cookiejar.Cookiejar_options.Options) from stdgo._internal.net.http.cookiejar.Cookiejar_options.Options to stdgo._internal.net.http.cookiejar.Cookiejar_options.Options {
    public var publicSuffixList(get, set) : PublicSuffixList;
    function get_publicSuffixList():PublicSuffixList return this.publicSuffixList;
    function set_publicSuffixList(v:PublicSuffixList):PublicSuffixList {
        this.publicSuffixList = v;
        return v;
    }
    public function new(?publicSuffixList:PublicSuffixList) this = new stdgo._internal.net.http.cookiejar.Cookiejar_options.Options(publicSuffixList);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.cookiejar.Cookiejar.Jar_static_extension) abstract Jar(stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar) from stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar to stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar {
    public var _psList(get, set) : PublicSuffixList;
    function get__psList():PublicSuffixList return this._psList;
    function set__psList(v:PublicSuffixList):PublicSuffixList {
        this._psList = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _entries(get, set) : Map<String, Map<String, T_entry>>;
    function get__entries():Map<String, Map<String, T_entry>> return {
        final __obj__:Map<String, Map<String, T_entry>> = [];
        for (key => value in this._entries) {
            __obj__[key] = {
                final __obj__:Map<String, T_entry> = [];
                for (key => value in value) {
                    __obj__[key] = value;
                };
                __obj__;
            };
        };
        __obj__;
    };
    function set__entries(v:Map<String, Map<String, T_entry>>):Map<String, Map<String, T_entry>> {
        this._entries = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = {
                    final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>();
                    for (key => value in value) {
                        __obj__[(key : stdgo.GoString)] = value;
                    };
                    __obj__;
                };
            };
            __obj__;
        };
        return v;
    }
    public var _nextSeqNum(get, set) : haxe.UInt64;
    function get__nextSeqNum():haxe.UInt64 return this._nextSeqNum;
    function set__nextSeqNum(v:haxe.UInt64):haxe.UInt64 {
        this._nextSeqNum = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_psList:PublicSuffixList, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_entries:Map<String, Map<String, T_entry>>, ?_nextSeqNum:haxe.UInt64) this = new stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar(_psList, _mu, {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>>();
        for (key => value in _entries) {
            __obj__[(key : stdgo.GoString)] = {
                final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>();
                for (key => value in value) {
                    __obj__[(key : stdgo.GoString)] = value;
                };
                __obj__;
            };
        };
        __obj__;
    }, (_nextSeqNum : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.cookiejar.Cookiejar.T_entry_static_extension) @:dox(hide) abstract T_entry(stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry) from stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry to stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry {
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
    public var expires(get, set) : stdgo._internal.time.Time_time.Time;
    function get_expires():stdgo._internal.time.Time_time.Time return this.expires;
    function set_expires(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.expires = v;
        return v;
    }
    public var creation(get, set) : stdgo._internal.time.Time_time.Time;
    function get_creation():stdgo._internal.time.Time_time.Time return this.creation;
    function set_creation(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.creation = v;
        return v;
    }
    public var lastAccess(get, set) : stdgo._internal.time.Time_time.Time;
    function get_lastAccess():stdgo._internal.time.Time_time.Time return this.lastAccess;
    function set_lastAccess(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.lastAccess = v;
        return v;
    }
    public var _seqNum(get, set) : haxe.UInt64;
    function get__seqNum():haxe.UInt64 return this._seqNum;
    function set__seqNum(v:haxe.UInt64):haxe.UInt64 {
        this._seqNum = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?name:String, ?value:String, ?domain:String, ?path:String, ?sameSite:String, ?secure:Bool, ?httpOnly:Bool, ?persistent:Bool, ?hostOnly:Bool, ?expires:stdgo._internal.time.Time_time.Time, ?creation:stdgo._internal.time.Time_time.Time, ?lastAccess:stdgo._internal.time.Time_time.Time, ?_seqNum:haxe.UInt64) this = new stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry(
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
typedef OptionsPointer = stdgo._internal.net.http.cookiejar.Cookiejar_optionspointer.OptionsPointer;
class Options_static_extension {

}
typedef JarPointer = stdgo._internal.net.http.cookiejar.Cookiejar_jarpointer.JarPointer;
class Jar_static_extension {
    static public function _domainAndType(_j:Jar, _host:String, _domain:String):stdgo.Tuple.Tuple3<String, Bool, stdgo.Error> {
        final _j = (_j : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar>);
        final _host = (_host : stdgo.GoString);
        final _domain = (_domain : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.cookiejar.Cookiejar_jar_static_extension.Jar_static_extension._domainAndType(_j, _host, _domain);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _newEntry(_j:Jar, _c:stdgo._internal.net.http.Http_cookie.Cookie, _now:stdgo._internal.time.Time_time.Time, _defPath:String, _host:String):stdgo.Tuple.Tuple3<T_entry, Bool, stdgo.Error> {
        final _j = (_j : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar>);
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>);
        final _defPath = (_defPath : stdgo.GoString);
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.cookiejar.Cookiejar_jar_static_extension.Jar_static_extension._newEntry(_j, _c, _now, _defPath, _host);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _setCookies(_j:Jar, _u:stdgo._internal.net.url.Url_url.URL, _cookies:Array<stdgo._internal.net.http.Http_cookie.Cookie>, _now:stdgo._internal.time.Time_time.Time):Void {
        final _j = (_j : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar>);
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        final _cookies = ([for (i in _cookies) (i : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>);
        stdgo._internal.net.http.cookiejar.Cookiejar_jar_static_extension.Jar_static_extension._setCookies(_j, _u, _cookies, _now);
    }
    static public function setCookies(_j:Jar, _u:stdgo._internal.net.url.Url_url.URL, _cookies:Array<stdgo._internal.net.http.Http_cookie.Cookie>):Void {
        final _j = (_j : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar>);
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        final _cookies = ([for (i in _cookies) (i : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>);
        stdgo._internal.net.http.cookiejar.Cookiejar_jar_static_extension.Jar_static_extension.setCookies(_j, _u, _cookies);
    }
    static public function _cookies(_j:Jar, _u:stdgo._internal.net.url.Url_url.URL, _now:stdgo._internal.time.Time_time.Time):Array<stdgo._internal.net.http.Http_cookie.Cookie> {
        final _j = (_j : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar>);
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        return [for (i in stdgo._internal.net.http.cookiejar.Cookiejar_jar_static_extension.Jar_static_extension._cookies(_j, _u, _now)) i];
    }
    static public function cookies(_j:Jar, _u:stdgo._internal.net.url.Url_url.URL):Array<stdgo._internal.net.http.Http_cookie.Cookie> {
        final _j = (_j : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar>);
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        return [for (i in stdgo._internal.net.http.cookiejar.Cookiejar_jar_static_extension.Jar_static_extension.cookies(_j, _u)) i];
    }
}
@:dox(hide) typedef T_entryPointer = stdgo._internal.net.http.cookiejar.Cookiejar_t_entrypointer.T_entryPointer;
@:dox(hide) class T_entry_static_extension {
    static public function _pathMatch(_e:T_entry, _requestPath:String):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>);
        final _requestPath = (_requestPath : stdgo.GoString);
        return stdgo._internal.net.http.cookiejar.Cookiejar_t_entry_static_extension.T_entry_static_extension._pathMatch(_e, _requestPath);
    }
    static public function _domainMatch(_e:T_entry, _host:String):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>);
        final _host = (_host : stdgo.GoString);
        return stdgo._internal.net.http.cookiejar.Cookiejar_t_entry_static_extension.T_entry_static_extension._domainMatch(_e, _host);
    }
    static public function _shouldSend(_e:T_entry, _https:Bool, _host:String, _path:String):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>);
        final _host = (_host : stdgo.GoString);
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.net.http.cookiejar.Cookiejar_t_entry_static_extension.T_entry_static_extension._shouldSend(_e, _https, _host, _path);
    }
    static public function _id(_e:T_entry):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>);
        return stdgo._internal.net.http.cookiejar.Cookiejar_t_entry_static_extension.T_entry_static_extension._id(_e);
    }
}
/**
    * Package cookiejar implements an in-memory RFC 6265-compliant http.CookieJar.
**/
class Cookiejar {
    /**
        * New returns a new cookie jar. A nil *Options is equivalent to a zero
        * Options.
    **/
    static public inline function new_(_o:Options):stdgo.Tuple<Jar, stdgo.Error> {
        final _o = (_o : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_options.Options>);
        return {
            final obj = stdgo._internal.net.http.cookiejar.Cookiejar_new_.new_(_o);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
