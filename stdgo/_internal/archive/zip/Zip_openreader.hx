package stdgo._internal.archive.zip;
function openReader(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_readcloser.ReadCloser>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_open.open(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L79"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L80"
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = _f.stat(), _fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L83"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L84"
            _f.close();
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L85"
            return { _0 : null, _1 : _err };
        };
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.archive.zip.Zip_readcloser.ReadCloser)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_readcloser.ReadCloser>);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L88"
        {
            _err = _r._init(stdgo.Go.asInterface(_f), _fi.size());
            if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.archive.zip.Zip_errinsecurepath.errInsecurePath)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L89"
                _f.close();
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L90"
                return { _0 : null, _1 : _err };
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._f = _f;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L93"
        return { _0 : _r, _1 : _err };
    }
