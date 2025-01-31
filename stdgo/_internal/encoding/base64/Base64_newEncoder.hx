package stdgo._internal.encoding.base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strconv.Strconv;
function newEncoder(_enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>, _w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _enc : _enc, _w : _w } : stdgo._internal.encoding.base64.Base64_T_encoder.T_encoder)) : stdgo.Ref<stdgo._internal.encoding.base64.Base64_T_encoder.T_encoder>));
    }
