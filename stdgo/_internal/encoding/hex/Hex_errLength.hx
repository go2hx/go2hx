package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
var errLength : stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("encoding/hex: odd length hex string" : stdgo.GoString));
