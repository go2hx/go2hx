package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function dumper(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _w : _w } : stdgo._internal.encoding.hex.Hex_T_dumper.T_dumper)) : stdgo.Ref<stdgo._internal.encoding.hex.Hex_T_dumper.T_dumper>));
    }
