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
function _readFull(_r:stdgo._internal.io.Io_Reader.Reader, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, _b), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
            _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
        };
        return _err;
    }
