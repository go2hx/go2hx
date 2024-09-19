package stdgo._internal.mime.multipart;
import stdgo._internal.unsafe.Unsafe;
function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Writer.Writer> {
        return (stdgo.Go.setRef(({ _w : _w, _boundary : stdgo._internal.mime.multipart.Multipart__randomBoundary._randomBoundary()?.__copy__() } : stdgo._internal.mime.multipart.Multipart_Writer.Writer)) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Writer.Writer>);
    }
