package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_headerFileInfo_asInterface) class T_headerFileInfo_static_extension {
    @:keep
    static public function string( _fi:stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo):stdgo.GoString {
        @:recv var _fi:stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return stdgo._internal.io.fs.Fs_formatFileInfo.formatFileInfo(stdgo.Go.asInterface(_fi))?.__copy__();
    }
    @:keep
    static public function mode( _fi:stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        @:recv var _fi:stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        var _mode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
        _mode = (_fi._h.mode : stdgo._internal.io.fs.Fs_FileMode.FileMode).perm();
        if ((_fi._h.mode & (2048i64 : stdgo.GoInt64) : stdgo.GoInt64) != ((0i64 : stdgo.GoInt64))) {
            _mode = (_mode | ((8388608u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
        };
        if ((_fi._h.mode & (1024i64 : stdgo.GoInt64) : stdgo.GoInt64) != ((0i64 : stdgo.GoInt64))) {
            _mode = (_mode | ((4194304u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
        };
        if ((_fi._h.mode & (512i64 : stdgo.GoInt64) : stdgo.GoInt64) != ((0i64 : stdgo.GoInt64))) {
            _mode = (_mode | ((1048576u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
        };
        {
            var _m = ((_fi._h.mode : stdgo._internal.io.fs.Fs_FileMode.FileMode) & (((4095u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
            {
                final __value__ = _m;
                if (__value__ == ((16384u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                    _mode = (_mode | ((-2147483648u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
                } else if (__value__ == ((4096u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                    _mode = (_mode | ((33554432u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
                } else if (__value__ == ((40960u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                    _mode = (_mode | ((134217728u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
                } else if (__value__ == ((24576u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                    _mode = (_mode | ((67108864u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
                } else if (__value__ == ((8192u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                    _mode = (_mode | ((67108864u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
                    _mode = (_mode | ((2097152u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
                } else if (__value__ == ((49152u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                    _mode = (_mode | ((16777216u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
                };
            };
        };
        {
            final __value__ = _fi._h.typeflag;
            if (__value__ == ((50 : stdgo.GoUInt8))) {
                _mode = (_mode | ((134217728u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
            } else if (__value__ == ((51 : stdgo.GoUInt8))) {
                _mode = (_mode | ((67108864u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
                _mode = (_mode | ((2097152u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
            } else if (__value__ == ((52 : stdgo.GoUInt8))) {
                _mode = (_mode | ((67108864u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
            } else if (__value__ == ((53 : stdgo.GoUInt8))) {
                _mode = (_mode | ((-2147483648u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
            } else if (__value__ == ((54 : stdgo.GoUInt8))) {
                _mode = (_mode | ((33554432u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
            };
        };
        return _mode;
    }
    @:keep
    static public function name( _fi:stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo):stdgo.GoString {
        @:recv var _fi:stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        if (_fi.isDir()) {
            return stdgo._internal.path.Path_base.base(stdgo._internal.path.Path_clean.clean(_fi._h.name?.__copy__())?.__copy__())?.__copy__();
        };
        return stdgo._internal.path.Path_base.base(_fi._h.name?.__copy__())?.__copy__();
    }
    @:keep
    static public function sys( _fi:stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo):stdgo.AnyInterface {
        @:recv var _fi:stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return stdgo.Go.toInterface(stdgo.Go.asInterface(_fi._h));
    }
    @:keep
    static public function modTime( _fi:stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo):stdgo._internal.time.Time_Time.Time {
        @:recv var _fi:stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return _fi._h.modTime?.__copy__();
    }
    @:keep
    static public function isDir( _fi:stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo):Bool {
        @:recv var _fi:stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return _fi._h.mode().isDir();
    }
    @:keep
    static public function size( _fi:stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo):stdgo.GoInt64 {
        @:recv var _fi:stdgo._internal.archive.tar.Tar_T_headerFileInfo.T_headerFileInfo = _fi?.__copy__();
        return _fi._h.size;
    }
}