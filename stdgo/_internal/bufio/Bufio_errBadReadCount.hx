package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
var errBadReadCount : stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("bufio.Scanner: Read returned impossible count" : stdgo.GoString));
