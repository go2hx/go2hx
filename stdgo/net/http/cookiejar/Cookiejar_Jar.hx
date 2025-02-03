package stdgo.net.http.cookiejar;
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
        this._entries = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>>);
        return v;
    }
    public var _nextSeqNum(get, set) : haxe.UInt64;
    function get__nextSeqNum():haxe.UInt64 return this._nextSeqNum;
    function set__nextSeqNum(v:haxe.UInt64):haxe.UInt64 {
        this._nextSeqNum = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_psList:PublicSuffixList, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_entries:stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>>, ?_nextSeqNum:haxe.UInt64) this = new stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar(_psList, _mu, (_entries : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>>), (_nextSeqNum : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
