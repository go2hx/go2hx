package stdgo._internal.embed;
@:keep @:allow(stdgo._internal.embed.Embed.T_file_asInterface) class T_file_static_extension {
    @:keep
    static public function string( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> = _f;
        return stdgo._internal.io.fs.Fs_formatFileInfo.formatFileInfo(stdgo.Go.asInterface(_f))?.__copy__();
    }
    @:keep
    static public function mode( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> = _f;
        if (_f.isDir()) {
            return (-2147483283u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode);
        };
        return (292u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode);
    }
    @:keep
    static public function info( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> = _f;
        return { _0 : stdgo.Go.asInterface(_f), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function type( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> = _f;
        return _f.mode().type();
    }
    @:keep
    static public function sys( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>):stdgo.AnyInterface {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> = _f;
        return (null : stdgo.AnyInterface);
    }
    @:keep
    static public function isDir( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> = _f;
        var __tmp__ = stdgo._internal.embed.Embed__split._split(_f._name?.__copy__()), __12:stdgo.GoString = __tmp__._0, __13:stdgo.GoString = __tmp__._1, _isDir:Bool = __tmp__._2;
        return _isDir;
    }
    @:keep
    static public function modTime( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>):stdgo._internal.time.Time_Time.Time {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> = _f;
        return (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time);
    }
    @:keep
    static public function size( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>):stdgo.GoInt64 {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> = _f;
        return (_f._data.length : stdgo.GoInt64);
    }
    @:keep
    static public function name( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> = _f;
        var __tmp__ = stdgo._internal.embed.Embed__split._split(_f._name?.__copy__()), __12:stdgo.GoString = __tmp__._0, _elem:stdgo.GoString = __tmp__._1, __13:Bool = __tmp__._2;
        return _elem?.__copy__();
    }
}
