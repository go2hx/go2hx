package stdgo._internal.archive.zip;
function _msdosModeToFileMode(_m:stdgo.GoUInt32):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        var _mode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
        if ((_m & (16u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
            _mode = (-2147483137u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode);
        } else {
            _mode = (438u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode);
        };
        if ((_m & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
            _mode = (_mode & ((((146u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) ^ (-1i32 : stdgo.GoInt32) : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
        };
        return _mode;
    }
