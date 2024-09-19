package stdgo._internal.archive.zip;
function openReader(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_open.open(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = _f.stat(), _fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _f.close();
            return { _0 : null, _1 : _err };
        };
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser>);
        {
            _err = _r._init(stdgo.Go.asInterface(_f), _fi.size());
            if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.archive.zip.Zip_errInsecurePath.errInsecurePath)) : Bool)) {
                _f.close();
                return { _0 : null, _1 : _err };
            };
        };
        _r._f = _f;
        return { _0 : _r, _1 : _err };
    }
