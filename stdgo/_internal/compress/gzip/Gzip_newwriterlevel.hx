package stdgo._internal.compress.gzip;
function newWriterLevel(_w:stdgo._internal.io.Io_writer.Writer, _level:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>; var _1 : stdgo.Error; } {
        if (((_level < (-2 : stdgo.GoInt) : Bool) || (_level > (9 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("gzip: invalid compression level: %d" : stdgo.GoString), stdgo.Go.toInterface(_level)) };
        };
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.compress.gzip.Gzip_writer.Writer)) : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>);
        @:check2r _z._init(_w, _level);
        return { _0 : _z, _1 : (null : stdgo.Error) };
    }
