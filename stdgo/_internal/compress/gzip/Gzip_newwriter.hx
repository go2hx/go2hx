package stdgo._internal.compress.gzip;
function newWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> {
        var __tmp__ = stdgo._internal.compress.gzip.Gzip_newwriterlevel.newWriterLevel(_w, (-1 : stdgo.GoInt)), _z:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        return _z;
    }
