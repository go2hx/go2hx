package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
function newRGBA64(_r:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo.Ref<stdgo._internal.image.Image_RGBA64.RGBA64> {
        return (stdgo.Go.setRef(({ pix : (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.image.Image__pixelBufferLength._pixelBufferLength((8 : stdgo.GoInt), _r?.__copy__(), ("RGBA64" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stride : ((8 : stdgo.GoInt) * _r.dx() : stdgo.GoInt), rect : _r?.__copy__() } : stdgo._internal.image.Image_RGBA64.RGBA64)) : stdgo.Ref<stdgo._internal.image.Image_RGBA64.RGBA64>);
    }
