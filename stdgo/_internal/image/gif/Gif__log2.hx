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
function _log2(_x:stdgo.GoInt):stdgo.GoInt {
        for (_i => _v in stdgo._internal.image.gif.Gif__log2Lookup._log2Lookup) {
            if ((_x <= _v : Bool)) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
