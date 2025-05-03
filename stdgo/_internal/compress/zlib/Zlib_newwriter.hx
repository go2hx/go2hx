package stdgo._internal.compress.zlib;
function newWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer> {
        var __tmp__ = stdgo._internal.compress.zlib.Zlib_newwriterleveldict.newWriterLevelDict(_w, (-1 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoUInt8>)), _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/writer.go#L46"
        return _z;
    }
