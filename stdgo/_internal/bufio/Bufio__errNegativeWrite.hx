package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
var _errNegativeWrite : stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("bufio: writer returned negative count from Write" : stdgo.GoString));
