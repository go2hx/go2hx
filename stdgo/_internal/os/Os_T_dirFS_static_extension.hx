package stdgo._internal.os;
@:keep @:allow(stdgo._internal.os.Os.T_dirFS_asInterface) class T_dirFS_static_extension {
    @:keep
    @:tdfield
    static public function _join( _dir:stdgo._internal.os.Os_T_dirFS.T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw "T_dirFS:os._join is not yet implemented";
    @:keep
    @:tdfield
    static public function stat( _dir:stdgo._internal.os.Os_T_dirFS.T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } throw "T_dirFS:os.stat is not yet implemented";
    @:keep
    @:tdfield
    static public function readDir( _dir:stdgo._internal.os.Os_T_dirFS.T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } throw "T_dirFS:os.readDir is not yet implemented";
    @:keep
    @:tdfield
    static public function readFile( _dir:stdgo._internal.os.Os_T_dirFS.T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } throw "T_dirFS:os.readFile is not yet implemented";
    @:keep
    @:tdfield
    static public function open( _dir:stdgo._internal.os.Os_T_dirFS.T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } {
        @:recv var _dir:stdgo._internal.os.Os_T_dirFS.T_dirFS = _dir;
        final fullname = haxe.io.Path.join([_dir, _name]);
        final obj = stdgo._internal.os.Os_open.open(fullname);
        return { _0 : stdgo.Go.asInterface(obj._0), _1 : obj._1 };
    }
}
