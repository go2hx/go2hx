package stdgo._internal.io;
function teeReader(_r:stdgo._internal.io.Io_Reader.Reader, _w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Reader.Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.Io_T_teeReader.T_teeReader(_r, _w) : stdgo._internal.io.Io_T_teeReader.T_teeReader)) : stdgo.Ref<stdgo._internal.io.Io_T_teeReader.T_teeReader>));
    }
