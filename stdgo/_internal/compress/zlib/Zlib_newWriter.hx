package stdgo._internal.compress.zlib;
function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer> {
        var __tmp__ = stdgo._internal.compress.zlib.Zlib_newWriterLevelDict.newWriterLevelDict(_w, (-1 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoUInt8>)), _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        return _z;
    }
