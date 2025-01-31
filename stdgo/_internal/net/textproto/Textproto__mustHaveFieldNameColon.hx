package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
function _mustHaveFieldNameColon(_line:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        if ((stdgo._internal.bytes.Bytes_indexByte.indexByte(_line, (58 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.asInterface((stdgo._internal.fmt.Fmt_sprintf.sprintf(("malformed MIME header: missing colon: %q" : stdgo.GoString), stdgo.Go.toInterface(_line)) : stdgo._internal.net.textproto.Textproto_ProtocolError.ProtocolError));
        };
        return (null : stdgo.Error);
    }
