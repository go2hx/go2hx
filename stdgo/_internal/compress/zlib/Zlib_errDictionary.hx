package stdgo._internal.compress.zlib;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.hash.adler32.Adler32;
import stdgo._internal.compress.flate.Flate;
var errDictionary : stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("zlib: invalid dictionary" : stdgo.GoString));
