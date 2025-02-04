package stdgo._internal.mime.multipart;
function newWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer> {
        return (stdgo.Go.setRef(({ _w : _w, _boundary : stdgo._internal.mime.multipart.Multipart__randomboundary._randomBoundary()?.__copy__() } : stdgo._internal.mime.multipart.Multipart_writer.Writer)) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer>);
    }
