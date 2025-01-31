package stdgo._internal.compress.lzw;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
var _errClosed : stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("lzw: reader/writer is closed" : stdgo.GoString));
