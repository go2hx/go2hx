package stdgo._internal.image;
function _pixelBufferLength(_bytesPerPixel:stdgo.GoInt, _r:stdgo._internal.image.Image_rectangle.Rectangle, _imageTypeName:stdgo.GoString):stdgo.GoInt {
        var _totalLength = (stdgo._internal.image.Image__mul3nonneg._mul3NonNeg(_bytesPerPixel, _r.dx(), _r.dy()) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L81"
        if ((_totalLength < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/image.go#L82"
            throw stdgo.Go.toInterface(((("image: New" : stdgo.GoString) + _imageTypeName?.__copy__() : stdgo.GoString) + (" Rectangle has huge or negative dimensions" : stdgo.GoString)?.__copy__() : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/image/image.go#L84"
        return _totalLength;
    }
