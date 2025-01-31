package stdgo._internal.compress.lzw;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
var _errOutOfCodes : stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("lzw: out of codes" : stdgo.GoString));
