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
function _cbPaletted(_cb:stdgo.GoInt):Bool {
        return (((7 : stdgo.GoInt) <= _cb : Bool) && (_cb <= (10 : stdgo.GoInt) : Bool) : Bool);
    }
