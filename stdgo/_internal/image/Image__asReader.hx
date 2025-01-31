package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
function _asReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.image.Image_T_reader.T_reader {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.image.Image_T_reader.T_reader)) : stdgo._internal.image.Image_T_reader.T_reader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.image.Image_T_reader.T_reader), _1 : false };
            }, _rr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _rr;
            };
        };
        return stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newReader.newReader(_r));
    }
