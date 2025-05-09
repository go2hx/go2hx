package stdgo._internal.path.filepath;
@:keep @:allow(stdgo._internal.path.filepath.Filepath.T_statDirEntry_asInterface) class T_statDirEntry_static_extension {
    @:keep
    @:tdfield
    static public function string( _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_statdirentry.T_statDirEntry>):stdgo.GoString {
        @:recv var _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_statdirentry.T_statDirEntry> = _d;
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L565"
        return stdgo._internal.io.fs.Fs_formatdirentry.formatDirEntry(stdgo.Go.asInterface(_d))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function info( _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_statdirentry.T_statDirEntry>):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_statdirentry.T_statDirEntry> = _d;
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L562"
        return { _0 : (@:checkr _d ?? throw "null pointer dereference")._info, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function type( _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_statdirentry.T_statDirEntry>):stdgo._internal.io.fs.Fs_filemode.FileMode {
        @:recv var _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_statdirentry.T_statDirEntry> = _d;
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L561"
        return (@:checkr _d ?? throw "null pointer dereference")._info.mode().type();
    }
    @:keep
    @:tdfield
    static public function isDir( _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_statdirentry.T_statDirEntry>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_statdirentry.T_statDirEntry> = _d;
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L560"
        return (@:checkr _d ?? throw "null pointer dereference")._info.isDir();
    }
    @:keep
    @:tdfield
    static public function name( _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_statdirentry.T_statDirEntry>):stdgo.GoString {
        @:recv var _d:stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_statdirentry.T_statDirEntry> = _d;
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L559"
        return (@:checkr _d ?? throw "null pointer dereference")._info.name()?.__copy__();
    }
}
