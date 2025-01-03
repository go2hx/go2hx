package stdgo.net.http.cookiejar;
class PublicSuffixList_static_extension {
    static public function string(t:stdgo._internal.net.http.cookiejar.Cookiejar_PublicSuffixList.PublicSuffixList):String {
        return stdgo._internal.net.http.cookiejar.Cookiejar_PublicSuffixList_static_extension.PublicSuffixList_static_extension.string(t);
    }
    static public function publicSuffix(t:stdgo._internal.net.http.cookiejar.Cookiejar_PublicSuffixList.PublicSuffixList, _domain:String):String {
        return stdgo._internal.net.http.cookiejar.Cookiejar_PublicSuffixList_static_extension.PublicSuffixList_static_extension.publicSuffix(t, _domain);
    }
}
typedef PublicSuffixList = stdgo._internal.net.http.cookiejar.Cookiejar_PublicSuffixList.PublicSuffixList;
@:structInit abstract Options(stdgo._internal.net.http.cookiejar.Cookiejar_Options.Options) from stdgo._internal.net.http.cookiejar.Cookiejar_Options.Options to stdgo._internal.net.http.cookiejar.Cookiejar_Options.Options {
    public var publicSuffixList(get, set) : PublicSuffixList;
    function get_publicSuffixList():PublicSuffixList return this.publicSuffixList;
    function set_publicSuffixList(v:PublicSuffixList):PublicSuffixList {
        this.publicSuffixList = v;
        return v;
    }
    public function new(?publicSuffixList:PublicSuffixList) this = new stdgo._internal.net.http.cookiejar.Cookiejar_Options.Options(publicSuffixList);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.cookiejar.Cookiejar.Jar_static_extension) abstract Jar(stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar) from stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar to stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar {
    public var _psList(get, set) : PublicSuffixList;
    function get__psList():PublicSuffixList return this._psList;
    function set__psList(v:PublicSuffixList):PublicSuffixList {
        this._psList = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _entries(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>>;
    function get__entries():stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>> return this._entries;
    function set__entries(v:stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>>):stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>> {
        this._entries = v;
        return v;
    }
    public var _nextSeqNum(get, set) : haxe.UInt64;
    function get__nextSeqNum():haxe.UInt64 return this._nextSeqNum;
    function set__nextSeqNum(v:haxe.UInt64):haxe.UInt64 {
        this._nextSeqNum = v;
        return v;
    }
    public function new(?_psList:PublicSuffixList, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_entries:stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>>, ?_nextSeqNum:haxe.UInt64) this = new stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar(_psList, _mu, _entries, _nextSeqNum);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.cookiejar.Cookiejar.T_entry_static_extension) abstract T_entry(stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry) from stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry to stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var value(get, set) : String;
    function get_value():String return this.value;
    function set_value(v:String):String {
        this.value = v;
        return v;
    }
    public var domain(get, set) : String;
    function get_domain():String return this.domain;
    function set_domain(v:String):String {
        this.domain = v;
        return v;
    }
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = v;
        return v;
    }
    public var sameSite(get, set) : String;
    function get_sameSite():String return this.sameSite;
    function set_sameSite(v:String):String {
        this.sameSite = v;
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
        this._seqNum = v;
        return v;
    }
    public function new(?name:String, ?value:String, ?domain:String, ?path:String, ?sameSite:String, ?secure:Bool, ?httpOnly:Bool, ?persistent:Bool, ?hostOnly:Bool, ?expires:stdgo._internal.time.Time_Time.Time, ?creation:stdgo._internal.time.Time_Time.Time, ?lastAccess:stdgo._internal.time.Time_Time.Time, ?_seqNum:haxe.UInt64) this = new stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry(
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
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef JarPointer = stdgo._internal.net.http.cookiejar.Cookiejar_JarPointer.JarPointer;
class Jar_static_extension {
    static public function _domainAndType(_j:Jar, _host:String, _domain:String):stdgo.Tuple.Tuple3<String, Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.cookiejar.Cookiejar_Jar_static_extension.Jar_static_extension._domainAndType(_j, _host, _domain);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _newEntry(_j:Jar, _c:stdgo._internal.net.http.Http_Cookie.Cookie, _now:stdgo._internal.time.Time_Time.Time, _defPath:String, _host:String):stdgo.Tuple.Tuple3<T_entry, Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.cookiejar.Cookiejar_Jar_static_extension.Jar_static_extension._newEntry(_j, _c, _now, _defPath, _host);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _setCookies(_j:Jar, _u:stdgo._internal.net.url.Url_URL.URL, _cookies:Array<stdgo._internal.net.http.Http_Cookie.Cookie>, _now:stdgo._internal.time.Time_Time.Time):Void {
        final _cookies = ([for (i in _cookies) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>);
        stdgo._internal.net.http.cookiejar.Cookiejar_Jar_static_extension.Jar_static_extension._setCookies(_j, _u, _cookies, _now);
    }
    static public function setCookies(_j:Jar, _u:stdgo._internal.net.url.Url_URL.URL, _cookies:Array<stdgo._internal.net.http.Http_Cookie.Cookie>):Void {
        final _cookies = ([for (i in _cookies) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>);
        stdgo._internal.net.http.cookiejar.Cookiejar_Jar_static_extension.Jar_static_extension.setCookies(_j, _u, _cookies);
    }
    static public function _cookies(_j:Jar, _u:stdgo._internal.net.url.Url_URL.URL, _now:stdgo._internal.time.Time_Time.Time):Array<stdgo._internal.net.http.Http_Cookie.Cookie> {
        return [for (i in stdgo._internal.net.http.cookiejar.Cookiejar_Jar_static_extension.Jar_static_extension._cookies(_j, _u, _now)) i];
    }
    static public function cookies(_j:Jar, _u:stdgo._internal.net.url.Url_URL.URL):Array<stdgo._internal.net.http.Http_Cookie.Cookie> {
        return [for (i in stdgo._internal.net.http.cookiejar.Cookiejar_Jar_static_extension.Jar_static_extension.cookies(_j, _u)) i];
    }
}
typedef T_entryPointer = stdgo._internal.net.http.cookiejar.Cookiejar_T_entryPointer.T_entryPointer;
class T_entry_static_extension {
    static public function _pathMatch(_e:T_entry, _requestPath:String):Bool {
        return stdgo._internal.net.http.cookiejar.Cookiejar_T_entry_static_extension.T_entry_static_extension._pathMatch(_e, _requestPath);
    }
    static public function _domainMatch(_e:T_entry, _host:String):Bool {
        return stdgo._internal.net.http.cookiejar.Cookiejar_T_entry_static_extension.T_entry_static_extension._domainMatch(_e, _host);
    }
    static public function _shouldSend(_e:T_entry, _https:Bool, _host:String, _path:String):Bool {
        return stdgo._internal.net.http.cookiejar.Cookiejar_T_entry_static_extension.T_entry_static_extension._shouldSend(_e, _https, _host, _path);
    }
    static public function _id(_e:T_entry):String {
        return stdgo._internal.net.http.cookiejar.Cookiejar_T_entry_static_extension.T_entry_static_extension._id(_e);
    }
}
/**
    Package cookiejar implements an in-memory RFC 6265-compliant http.CookieJar.
**/
class Cookiejar {
    /**
        New returns a new cookie jar. A nil *Options is equivalent to a zero
        Options.
    **/
    static public function new_(_o:Options):stdgo.Tuple<Jar, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.cookiejar.Cookiejar_new_.new_(_o);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
