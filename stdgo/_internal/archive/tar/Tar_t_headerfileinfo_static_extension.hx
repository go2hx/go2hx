package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_headerFileInfo_asInterface) class T_headerFileInfo_static_extension {
    @:keep
    @:tdfield
    static public function string( _fi:stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo):stdgo.GoString {
        @:recv var _fi:stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo = _fi?.__copy__();
        return stdgo._internal.io.fs.Fs_formatfileinfo.formatFileInfo(stdgo.Go.asInterface(_fi))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function mode( _fi:stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo):stdgo._internal.io.fs.Fs_filemode.FileMode {
        @:recv var _fi:stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo = _fi?.__copy__();
        var _mode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
        _mode = ((@:checkr _fi._h ?? throw "null pointer dereference").mode : stdgo._internal.io.fs.Fs_filemode.FileMode).perm();
        if (((@:checkr _fi._h ?? throw "null pointer dereference").mode & (2048i64 : stdgo.GoInt64) : stdgo.GoInt64) != ((0i64 : stdgo.GoInt64))) {
            _mode = (_mode | ((8388608u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
        };
        if (((@:checkr _fi._h ?? throw "null pointer dereference").mode & (1024i64 : stdgo.GoInt64) : stdgo.GoInt64) != ((0i64 : stdgo.GoInt64))) {
            _mode = (_mode | ((4194304u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
        };
        if (((@:checkr _fi._h ?? throw "null pointer dereference").mode & (512i64 : stdgo.GoInt64) : stdgo.GoInt64) != ((0i64 : stdgo.GoInt64))) {
            _mode = (_mode | ((1048576u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
        };
        {
            var _m = (((@:checkr _fi._h ?? throw "null pointer dereference").mode : stdgo._internal.io.fs.Fs_filemode.FileMode) & (((4095u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) ^ (-1i32 : stdgo.GoInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
            {
                final __value__ = _m;
                if (__value__ == ((16384u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
                    _mode = (_mode | ((-2147483648u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
                } else if (__value__ == ((4096u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
                    _mode = (_mode | ((33554432u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
                } else if (__value__ == ((40960u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
                    _mode = (_mode | ((134217728u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
                } else if (__value__ == ((24576u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
                    _mode = (_mode | ((67108864u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
                } else if (__value__ == ((8192u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
                    _mode = (_mode | ((67108864u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
                    _mode = (_mode | ((2097152u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
                } else if (__value__ == ((49152u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
                    _mode = (_mode | ((16777216u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
                };
            };
        };
        {
            final __value__ = (@:checkr _fi._h ?? throw "null pointer dereference").typeflag;
            if (__value__ == ((50 : stdgo.GoUInt8))) {
                _mode = (_mode | ((134217728u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
            } else if (__value__ == ((51 : stdgo.GoUInt8))) {
                _mode = (_mode | ((67108864u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
                _mode = (_mode | ((2097152u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
            } else if (__value__ == ((52 : stdgo.GoUInt8))) {
                _mode = (_mode | ((67108864u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
            } else if (__value__ == ((53 : stdgo.GoUInt8))) {
                _mode = (_mode | ((-2147483648u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
            } else if (__value__ == ((54 : stdgo.GoUInt8))) {
                _mode = (_mode | ((33554432u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
            };
        };
        return _mode;
    }
    @:keep
    @:tdfield
    static public function name( _fi:stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo):stdgo.GoString {
        @:recv var _fi:stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo = _fi?.__copy__();
        if (_fi.isDir()) {
            return stdgo._internal.path.Path_base.base(stdgo._internal.path.Path_clean.clean((@:checkr _fi._h ?? throw "null pointer dereference").name?.__copy__())?.__copy__())?.__copy__();
        };
        return stdgo._internal.path.Path_base.base((@:checkr _fi._h ?? throw "null pointer dereference").name?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function sys( _fi:stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo):stdgo.AnyInterface {
        @:recv var _fi:stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo = _fi?.__copy__();
        return stdgo.Go.toInterface(stdgo.Go.asInterface(_fi._h));
    }
    @:keep
    @:tdfield
    static public function modTime( _fi:stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo):stdgo._internal.time.Time_time.Time {
        @:recv var _fi:stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo = _fi?.__copy__();
        return (@:checkr _fi._h ?? throw "null pointer dereference").modTime?.__copy__();
    }
    @:keep
    @:tdfield
    static public function isDir( _fi:stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo):Bool {
        @:recv var _fi:stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo = _fi?.__copy__();
        return _fi.mode().isDir();
    }
    @:keep
    @:tdfield
    static public function size( _fi:stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo):stdgo.GoInt64 {
        @:recv var _fi:stdgo._internal.archive.tar.Tar_t_headerfileinfo.T_headerFileInfo = _fi?.__copy__();
        return (@:checkr _fi._h ?? throw "null pointer dereference").size;
    }
}
