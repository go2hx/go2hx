package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function newEncoder(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _w : _w } : stdgo._internal.encoding.hex.Hex_T_encoder.T_encoder)) : stdgo.Ref<stdgo._internal.encoding.hex.Hex_T_encoder.T_encoder>));
    }
