package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
var errAdvanceTooFar : stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("bufio.Scanner: SplitFunc returns advance count beyond input" : stdgo.GoString));
