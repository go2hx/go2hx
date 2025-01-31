package stdgo._internal.image.png;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.io.Io;
import stdgo._internal.image.color.Color;
import stdgo._internal.image.Image;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
function _abs8(_d:stdgo.GoUInt8):stdgo.GoInt {
        if ((_d < (128 : stdgo.GoUInt8) : Bool)) {
            return (_d : stdgo.GoInt);
        };
        return ((256 : stdgo.GoInt) - (_d : stdgo.GoInt) : stdgo.GoInt);
    }
