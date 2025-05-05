package stdgo._internal.crypto.x509;
function _readUniqueDirectoryEntries(_dir:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_readdir.readDir(_dir?.__copy__()), _files:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/root_unix.go#L88"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/root_unix.go#L89"
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>), _1 : _err };
        };
        var _uniq = (_files.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/root_unix.go#L92"
        for (__1 => _f in _files) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/root_unix.go#L93"
            if (!stdgo._internal.crypto.x509.X509__issamedirsymlink._isSameDirSymlink(_f, _dir?.__copy__())) {
                _uniq = (_uniq.__append__(_f) : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/root_unix.go#L97"
        return { _0 : _uniq, _1 : (null : stdgo.Error) };
    }
