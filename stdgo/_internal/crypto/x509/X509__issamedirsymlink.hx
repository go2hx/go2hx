package stdgo._internal.crypto.x509;
function _isSameDirSymlink(_f:stdgo._internal.io.fs.Fs_direntry.DirEntry, _dir:stdgo.GoString):Bool {
        if ((_f.type() & (134217728u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
            return false;
        };
        var __tmp__ = stdgo._internal.os.Os_readlink.readlink(stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _f.name()?.__copy__())?.__copy__()), _target:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return ((_err == null) && !stdgo._internal.strings.Strings_contains.contains(_target?.__copy__(), ("/" : stdgo.GoString)) : Bool);
    }
