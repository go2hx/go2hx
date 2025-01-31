package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
var _errNegativeRead : stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("bufio: reader returned negative count from Read" : stdgo.GoString));
