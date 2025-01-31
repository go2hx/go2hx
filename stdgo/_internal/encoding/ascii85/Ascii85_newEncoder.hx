package stdgo._internal.encoding.ascii85;
import stdgo._internal.strconv.Strconv;
function newEncoder(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _w : _w } : stdgo._internal.encoding.ascii85.Ascii85_T_encoder.T_encoder)) : stdgo.Ref<stdgo._internal.encoding.ascii85.Ascii85_T_encoder.T_encoder>));
    }
