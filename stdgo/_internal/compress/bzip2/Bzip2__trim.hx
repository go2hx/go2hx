package stdgo._internal.compress.bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
function _trim(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        {};
        if (((_b.length) < (1024 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_b))?.__copy__();
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q..." : stdgo.GoString), stdgo.Go.toInterface((_b.__slice__(0, (1024 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))?.__copy__();
    }
