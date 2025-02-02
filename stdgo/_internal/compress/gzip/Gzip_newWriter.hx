package stdgo._internal.compress.gzip;
function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer> {
        var __tmp__ = stdgo._internal.compress.gzip.Gzip_newWriterLevel.newWriterLevel(_w, (-1 : stdgo.GoInt)), _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        return _z;
    }
