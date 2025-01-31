package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.path.filepath.Filepath.T_statDirEntry_asInterface) class T_statDirEntry_static_extension {
    @:keep
    @:tdfield
    static public function string( _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_statDirEntry.T_statDirEntry>):stdgo.GoString {
        @:recv var _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_statDirEntry.T_statDirEntry> = _d;
        return stdgo._internal.io.fs.Fs_formatDirEntry.formatDirEntry(stdgo.Go.asInterface(_d))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function info( _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_statDirEntry.T_statDirEntry>):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_statDirEntry.T_statDirEntry> = _d;
        return { _0 : (@:checkr _d ?? throw "null pointer dereference")._info, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function type( _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_statDirEntry.T_statDirEntry>):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        @:recv var _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_statDirEntry.T_statDirEntry> = _d;
        return (@:checkr _d ?? throw "null pointer dereference")._info.mode().type();
    }
    @:keep
    @:tdfield
    static public function isDir( _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_statDirEntry.T_statDirEntry>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_statDirEntry.T_statDirEntry> = _d;
        return (@:checkr _d ?? throw "null pointer dereference")._info.isDir();
    }
    @:keep
    @:tdfield
    static public function name( _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_statDirEntry.T_statDirEntry>):stdgo.GoString {
        @:recv var _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_T_statDirEntry.T_statDirEntry> = _d;
        return (@:checkr _d ?? throw "null pointer dereference")._info.name()?.__copy__();
    }
}
