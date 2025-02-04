package stdgo._internal.archive.zip;
function _unixModeToFileMode(_m:stdgo.GoUInt32):stdgo._internal.io.fs.Fs_filemode.FileMode {
        var _mode = ((_m & (511u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
        {
            final __value__ = (_m & (61440u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            if (__value__ == ((24576u32 : stdgo.GoUInt32))) {
                _mode = (_mode | ((67108864u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
            } else if (__value__ == ((8192u32 : stdgo.GoUInt32))) {
                _mode = (_mode | ((69206016u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
            } else if (__value__ == ((16384u32 : stdgo.GoUInt32))) {
                _mode = (_mode | ((-2147483648u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
            } else if (__value__ == ((4096u32 : stdgo.GoUInt32))) {
                _mode = (_mode | ((33554432u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
            } else if (__value__ == ((40960u32 : stdgo.GoUInt32))) {
                _mode = (_mode | ((134217728u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
            } else if (__value__ == ((32768u32 : stdgo.GoUInt32))) {} else if (__value__ == ((49152u32 : stdgo.GoUInt32))) {
                _mode = (_mode | ((16777216u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
            };
        };
        if ((_m & (1024u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
            _mode = (_mode | ((4194304u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
        };
        if ((_m & (2048u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
            _mode = (_mode | ((8388608u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
        };
        if ((_m & (512u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
            _mode = (_mode | ((1048576u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode);
        };
        return _mode;
    }
