package stdgo._internal.io;
function teeReader(_r:stdgo._internal.io.Io_reader.Reader, _w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_reader.Reader {
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L611"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.Io_t_teereader.T_teeReader(_r, _w) : stdgo._internal.io.Io_t_teereader.T_teeReader)) : stdgo.Ref<stdgo._internal.io.Io_t_teereader.T_teeReader>));
    }
