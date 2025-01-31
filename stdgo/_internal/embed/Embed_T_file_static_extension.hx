package stdgo._internal.embed;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.embed.Embed.T_file_asInterface) class T_file_static_extension {
    @:keep
    @:tdfield
    static public function string( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> = _f;
        return stdgo._internal.io.fs.Fs_formatFileInfo.formatFileInfo(stdgo.Go.asInterface(_f))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function mode( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> = _f;
        if (@:check2r _f.isDir()) {
            return (-2147483283u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode);
        };
        return (292u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode);
    }
    @:keep
    @:tdfield
    static public function info( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> = _f;
        return { _0 : stdgo.Go.asInterface(_f), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function type( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> = _f;
        return @:check2r _f.mode().type();
    }
    @:keep
    @:tdfield
    static public function sys( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>):stdgo.AnyInterface {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> = _f;
        return (null : stdgo.AnyInterface);
    }
    @:keep
    @:tdfield
    static public function isDir( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> = _f;
        var __tmp__ = stdgo._internal.embed.Embed__split._split((@:checkr _f ?? throw "null pointer dereference")._name?.__copy__()), __6:stdgo.GoString = __tmp__._0, __7:stdgo.GoString = __tmp__._1, _isDir:Bool = __tmp__._2;
        return _isDir;
    }
    @:keep
    @:tdfield
    static public function modTime( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>):stdgo._internal.time.Time_Time.Time {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> = _f;
        return (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time);
    }
    @:keep
    @:tdfield
    static public function size( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>):stdgo.GoInt64 {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> = _f;
        return ((@:checkr _f ?? throw "null pointer dereference")._data.length : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function name( _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file> = _f;
        var __tmp__ = stdgo._internal.embed.Embed__split._split((@:checkr _f ?? throw "null pointer dereference")._name?.__copy__()), __6:stdgo.GoString = __tmp__._0, _elem:stdgo.GoString = __tmp__._1, __7:Bool = __tmp__._2;
        return _elem?.__copy__();
    }
}
