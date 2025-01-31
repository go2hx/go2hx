package stdgo._internal.index.suffixarray;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.regexp.Regexp;
var _errTooBig : stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("suffixarray: data too large" : stdgo.GoString));
