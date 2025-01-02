package stdgo._internal.io.fs;
@:keep @:allow(stdgo._internal.io.fs.Fs.T_dirInfo_asInterface) class T_dirInfo_static_extension {
    @:keep
    @:tdfield
    static public function string( _di:stdgo._internal.io.fs.Fs_T_dirInfo.T_dirInfo):stdgo.GoString {
        @:recv var _di:stdgo._internal.io.fs.Fs_T_dirInfo.T_dirInfo = _di?.__copy__();
        return stdgo._internal.io.fs.Fs_formatDirEntry.formatDirEntry(stdgo.Go.asInterface(_di))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function name( _di:stdgo._internal.io.fs.Fs_T_dirInfo.T_dirInfo):stdgo.GoString {
        @:recv var _di:stdgo._internal.io.fs.Fs_T_dirInfo.T_dirInfo = _di?.__copy__();
        return _di._fileInfo.name()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function info( _di:stdgo._internal.io.fs.Fs_T_dirInfo.T_dirInfo):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _di:stdgo._internal.io.fs.Fs_T_dirInfo.T_dirInfo = _di?.__copy__();
        return { _0 : _di._fileInfo, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function type( _di:stdgo._internal.io.fs.Fs_T_dirInfo.T_dirInfo):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        @:recv var _di:stdgo._internal.io.fs.Fs_T_dirInfo.T_dirInfo = _di?.__copy__();
        return _di._fileInfo.mode().type();
    }
    @:keep
    @:tdfield
    static public function isDir( _di:stdgo._internal.io.fs.Fs_T_dirInfo.T_dirInfo):Bool {
        @:recv var _di:stdgo._internal.io.fs.Fs_T_dirInfo.T_dirInfo = _di?.__copy__();
        return _di._fileInfo.isDir();
    }
}
