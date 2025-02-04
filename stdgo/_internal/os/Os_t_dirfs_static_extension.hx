package stdgo._internal.os;
@:keep @:allow(stdgo._internal.os.Os.T_dirFS_asInterface) class T_dirFS_static_extension {
    @:keep
    @:tdfield
    static public function _join( _dir:stdgo._internal.os.Os_t_dirfs.T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw "T_dirFS:os._join is not yet implemented";
    @:keep
    @:tdfield
    static public function stat( _dir:stdgo._internal.os.Os_t_dirfs.T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _dir:stdgo._internal.os.Os_t_dirfs.T_dirFS = _dir;
        #if (sys || hxnodejs) {
            if (!sys.FileSystem.exists(_dir)) return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_("readFile " + _dir + ": no such file or directory") };
        } #else null #end;
        return { _0 : stdgo.Go.asInterface(new stdgo._internal.os.Os_t_filestat.T_fileStat(_dir)), _1 : null };
    }
    @:keep
    @:tdfield
    static public function readDir( _dir:stdgo._internal.os.Os_t_dirfs.T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } {
        @:recv var _dir:stdgo._internal.os.Os_t_dirfs.T_dirFS = _dir;
        final fullname = haxe.io.Path.join([_dir, _name]);
        return stdgo._internal.os.Os_readdir.readDir(fullname);
    }
    @:keep
    @:tdfield
    static public function readFile( _dir:stdgo._internal.os.Os_t_dirfs.T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } throw "T_dirFS:os.readFile is not yet implemented";
    @:keep
    @:tdfield
    static public function open( _dir:stdgo._internal.os.Os_t_dirfs.T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } {
        @:recv var _dir:stdgo._internal.os.Os_t_dirfs.T_dirFS = _dir;
        final fullname = haxe.io.Path.join([_dir, _name]);
        final obj = stdgo._internal.os.Os_open.open(fullname);
        return { _0 : stdgo.Go.asInterface(obj._0), _1 : obj._1 };
    }
}
