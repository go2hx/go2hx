package stdgo._internal.image;
function _pixelBufferLength(_bytesPerPixel:stdgo.GoInt, _r:stdgo._internal.image.Image_rectangle.Rectangle, _imageTypeName:stdgo.GoString):stdgo.GoInt {
        var _totalLength = (stdgo._internal.image.Image__mul3nonneg._mul3NonNeg(_bytesPerPixel, _r.dx(), _r.dy()) : stdgo.GoInt);
        if ((_totalLength < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(((("image: New" : stdgo.GoString) + _imageTypeName?.__copy__() : stdgo.GoString) + (" Rectangle has huge or negative dimensions" : stdgo.GoString)?.__copy__() : stdgo.GoString));
        };
        return _totalLength;
    }
