package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _readUniqueDirectoryEntries(_dir:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_readDir.readDir(_dir?.__copy__()), _files:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>), _1 : _err };
        };
        var _uniq = (_files.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>);
        for (__1 => _f in _files) {
            if (!stdgo._internal.crypto.x509.X509__isSameDirSymlink._isSameDirSymlink(_f, _dir?.__copy__())) {
                _uniq = (_uniq.__append__(_f));
            };
        };
        return { _0 : _uniq, _1 : (null : stdgo.Error) };
    }