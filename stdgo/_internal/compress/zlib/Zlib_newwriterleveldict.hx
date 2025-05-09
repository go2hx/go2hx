package stdgo._internal.compress.zlib;
function newWriterLevelDict(_w:stdgo._internal.io.Io_writer.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L65"
        if (((_level < (-2 : stdgo.GoInt) : Bool) || (_level > (9 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L66"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("zlib: invalid compression level: %d" : stdgo.GoString), stdgo.Go.toInterface(_level)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L68"
        return { _0 : (stdgo.Go.setRef(({ _w : _w, _level : _level, _dict : _dict } : stdgo._internal.compress.zlib.Zlib_writer.Writer)) : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer>), _1 : (null : stdgo.Error) };
    }
