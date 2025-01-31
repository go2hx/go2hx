package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
var _errUnreadByte : stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("bytes.Buffer: UnreadByte: previous operation was not a successful read" : stdgo.GoString));
