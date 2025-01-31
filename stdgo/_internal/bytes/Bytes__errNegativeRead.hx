package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
var _errNegativeRead : stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("bytes.Buffer: reader returned negative count from Read" : stdgo.GoString));
