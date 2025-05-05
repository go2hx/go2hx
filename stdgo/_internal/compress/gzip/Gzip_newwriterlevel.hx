package stdgo._internal.compress.gzip;
function newWriterLevel(_w:stdgo._internal.io.Io_writer.Writer, _level:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L61"
        if (((_level < (-2 : stdgo.GoInt) : Bool) || (_level > (9 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L62"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("gzip: invalid compression level: %d" : stdgo.GoString), stdgo.Go.toInterface(_level)) };
        };
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.compress.gzip.Gzip_writer.Writer)) : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>);
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L65"
        _z._init(_w, _level);
        //"file:///home/runner/.go/go1.21.3/src/compress/gzip/gzip.go#L66"
        return { _0 : _z, _1 : (null : stdgo.Error) };
    }
