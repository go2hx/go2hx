package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_dirEntryDirs_asInterface) class T_dirEntryDirs_static_extension {
    @:keep
    @:tdfield
    static public function _name( _d:stdgo._internal.net.http.Http_T_dirEntryDirs.T_dirEntryDirs, _i:stdgo.GoInt):stdgo.GoString {
        @:recv var _d:stdgo._internal.net.http.Http_T_dirEntryDirs.T_dirEntryDirs = _d;
        return _d[(_i : stdgo.GoInt)].name()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _isDir( _d:stdgo._internal.net.http.Http_T_dirEntryDirs.T_dirEntryDirs, _i:stdgo.GoInt):Bool {
        @:recv var _d:stdgo._internal.net.http.Http_T_dirEntryDirs.T_dirEntryDirs = _d;
        return _d[(_i : stdgo.GoInt)].isDir();
    }
    @:keep
    @:tdfield
    static public function _len( _d:stdgo._internal.net.http.Http_T_dirEntryDirs.T_dirEntryDirs):stdgo.GoInt {
        @:recv var _d:stdgo._internal.net.http.Http_T_dirEntryDirs.T_dirEntryDirs = _d;
        return (_d.length);
    }
}
