package stdgo._internal.compress.bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
var _digits : stdgo.Slice<stdgo.GoUInt8> = stdgo._internal.compress.bzip2.Bzip2__mustLoadFile._mustLoadFile(("testdata/e.txt.bz2" : stdgo.GoString));
