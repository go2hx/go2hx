package stdgo._internal.compress.gzip;
function newReader(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>; var _1 : stdgo.Error; } {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.compress.gzip.Gzip_reader.Reader)) : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>);
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gunzip.go#L94"
        {
            var _err = (_z.reset(_r) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gunzip.go#L95"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gunzip.go#L97"
        return { _0 : _z, _1 : (null : stdgo.Error) };
    }
