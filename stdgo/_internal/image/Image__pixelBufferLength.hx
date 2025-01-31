package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
function _pixelBufferLength(_bytesPerPixel:stdgo.GoInt, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _imageTypeName:stdgo.GoString):stdgo.GoInt {
        var _totalLength = (stdgo._internal.image.Image__mul3NonNeg._mul3NonNeg(_bytesPerPixel, _r.dx(), _r.dy()) : stdgo.GoInt);
        if ((_totalLength < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(((("image: New" : stdgo.GoString) + _imageTypeName?.__copy__() : stdgo.GoString) + (" Rectangle has huge or negative dimensions" : stdgo.GoString)?.__copy__() : stdgo.GoString));
        };
        return _totalLength;
    }
