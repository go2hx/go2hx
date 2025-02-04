package stdgo._internal.archive.zip;
function openReader(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_readcloser.ReadCloser>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_open.open(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = @:check2r _f.stat(), _fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _f.close();
            return { _0 : null, _1 : _err };
        };
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.archive.zip.Zip_readcloser.ReadCloser)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_readcloser.ReadCloser>);
        {
            _err = @:check2r _r._init(stdgo.Go.asInterface(_f), _fi.size());
            if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.archive.zip.Zip_errinsecurepath.errInsecurePath)) : Bool)) {
                @:check2r _f.close();
                return { _0 : null, _1 : _err };
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._f = _f;
        return { _0 : _r, _1 : _err };
    }
