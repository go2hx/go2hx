package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function newDecoder(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : _r } : stdgo._internal.encoding.hex.Hex_T_decoder.T_decoder)) : stdgo.Ref<stdgo._internal.encoding.hex.Hex_T_decoder.T_decoder>));
    }
