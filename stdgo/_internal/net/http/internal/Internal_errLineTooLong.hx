package stdgo._internal.net.http.internal;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
var errLineTooLong : stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("header line too long" : stdgo.GoString));
