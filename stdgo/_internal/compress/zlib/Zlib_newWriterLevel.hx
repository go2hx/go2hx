package stdgo._internal.compress.zlib;
function newWriterLevel(_w:stdgo._internal.io.Io_Writer.Writer, _level:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer>; var _1 : stdgo.Error; } {
        return stdgo._internal.compress.zlib.Zlib_newWriterLevelDict.newWriterLevelDict(_w, _level, (null : stdgo.Slice<stdgo.GoUInt8>));
    }
