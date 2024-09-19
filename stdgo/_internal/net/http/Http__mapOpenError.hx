package stdgo._internal.net.http;
function _mapOpenError(_originalErr:stdgo.Error, _name:stdgo.GoString, _sep:stdgo.GoInt32, _stat:stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; }):stdgo.Error {
        if ((stdgo._internal.errors.Errors_is_.is_(_originalErr, stdgo._internal.io.fs.Fs_errNotExist.errNotExist) || stdgo._internal.errors.Errors_is_.is_(_originalErr, stdgo._internal.io.fs.Fs_errPermission.errPermission) : Bool)) {
            return _originalErr;
        };
        var _parts = stdgo._internal.strings.Strings_split.split(_name?.__copy__(), (_sep : stdgo.GoString)?.__copy__());
        for (_i => _ in _parts) {
            if (_parts[(_i : stdgo.GoInt)] == (stdgo.Go.str())) {
                continue;
            };
            var __tmp__ = _stat(stdgo._internal.strings.Strings_join.join((_parts.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>), (_sep : stdgo.GoString)?.__copy__())?.__copy__()), _fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _originalErr;
            };
            if (!_fi.isDir()) {
                return stdgo._internal.io.fs.Fs_errNotExist.errNotExist;
            };
        };
        return _originalErr;
    }
