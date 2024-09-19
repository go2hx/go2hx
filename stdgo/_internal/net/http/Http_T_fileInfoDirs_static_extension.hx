package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_fileInfoDirs_asInterface) class T_fileInfoDirs_static_extension {
    @:keep
    static public function _name( _d:stdgo._internal.net.http.Http_T_fileInfoDirs.T_fileInfoDirs, _i:stdgo.GoInt):stdgo.GoString {
        @:recv var _d:stdgo._internal.net.http.Http_T_fileInfoDirs.T_fileInfoDirs = _d;
        return _d[(_i : stdgo.GoInt)].name()?.__copy__();
    }
    @:keep
    static public function _isDir( _d:stdgo._internal.net.http.Http_T_fileInfoDirs.T_fileInfoDirs, _i:stdgo.GoInt):Bool {
        @:recv var _d:stdgo._internal.net.http.Http_T_fileInfoDirs.T_fileInfoDirs = _d;
        return _d[(_i : stdgo.GoInt)].isDir();
    }
    @:keep
    static public function _len( _d:stdgo._internal.net.http.Http_T_fileInfoDirs.T_fileInfoDirs):stdgo.GoInt {
        @:recv var _d:stdgo._internal.net.http.Http_T_fileInfoDirs.T_fileInfoDirs = _d;
        return (_d.length);
    }
}
