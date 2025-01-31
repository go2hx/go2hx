package stdgo._internal.image.gif;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.image.Image;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.image.draw.Draw;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.compress.lzw.Lzw;
import stdgo._internal.bytes.Bytes;
function _writeUint16(_b:stdgo.Slice<stdgo.GoUInt8>, _u:stdgo.GoUInt16):Void {
        _b[(0 : stdgo.GoInt)] = (_u : stdgo.GoUInt8);
        _b[(1 : stdgo.GoInt)] = ((_u >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
    }
