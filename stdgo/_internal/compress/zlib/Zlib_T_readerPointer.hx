package stdgo._internal.compress.zlib;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.hash.adler32.Adler32;
import stdgo._internal.compress.flate.Flate;
@:keep @:follow @:using(stdgo._internal.compress.zlib.Zlib_T_reader_static_extension.T_reader_static_extension) typedef T_readerPointer = stdgo.Pointer<stdgo._internal.compress.zlib.Zlib_T_reader.T_reader>;
