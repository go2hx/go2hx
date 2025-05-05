package stdgo._internal.crypto.x509;
function _isSameDirSymlink(_f:stdgo._internal.io.fs.Fs_direntry.DirEntry, _dir:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/root_unix.go#L103"
        if ((_f.type() & (134217728u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/root_unix.go#L104"
            return false;
        };
        var __tmp__ = stdgo._internal.os.Os_readlink.readlink(stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _f.name()?.__copy__())?.__copy__()), _target:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/root_unix.go#L107"
        return ((_err == null) && !stdgo._internal.strings.Strings_contains.contains(_target?.__copy__(), ("/" : stdgo.GoString)) : Bool);
    }
