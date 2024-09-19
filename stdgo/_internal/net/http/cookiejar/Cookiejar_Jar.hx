package stdgo._internal.net.http.cookiejar;
@:structInit @:using(stdgo._internal.net.http.cookiejar.Cookiejar_Jar_static_extension.Jar_static_extension) class Jar {
    public var _psList : stdgo._internal.net.http.cookiejar.Cookiejar_PublicSuffixList.PublicSuffixList = (null : stdgo._internal.net.http.cookiejar.Cookiejar_PublicSuffixList.PublicSuffixList);
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _entries : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>>);
    public var _nextSeqNum : stdgo.GoUInt64 = 0;
    public function new(?_psList:stdgo._internal.net.http.cookiejar.Cookiejar_PublicSuffixList.PublicSuffixList, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_entries:stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>>, ?_nextSeqNum:stdgo.GoUInt64) {
        if (_psList != null) this._psList = _psList;
        if (_mu != null) this._mu = _mu;
        if (_entries != null) this._entries = _entries;
        if (_nextSeqNum != null) this._nextSeqNum = _nextSeqNum;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Jar(_psList, _mu, _entries, _nextSeqNum);
    }
}