package stdgo._internal.image.draw;
function _drawCopySrc(_dstPix:stdgo.Slice<stdgo.GoUInt8>, _dstStride:stdgo.GoInt, _r:stdgo._internal.image.Image_rectangle.Rectangle, _srcPix:stdgo.Slice<stdgo.GoUInt8>, _srcStride:stdgo.GoInt, _sp:stdgo._internal.image.Image_point.Point, _bytesPerRow:stdgo.GoInt):Void {
        var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt), __2 = (_dstStride : stdgo.GoInt), __3 = (_srcStride : stdgo.GoInt), __4 = (_r.dy() : stdgo.GoInt);
var _dy = __4, _sdelta = __3, _ddelta = __2, _s0 = __1, _d0 = __0;
        if ((_r.min.y > _sp.y : Bool)) {
            _d0 = (((_dy - (1 : stdgo.GoInt) : stdgo.GoInt)) * _dstStride : stdgo.GoInt);
            _s0 = (((_dy - (1 : stdgo.GoInt) : stdgo.GoInt)) * _srcStride : stdgo.GoInt);
            _ddelta = -_dstStride;
            _sdelta = -_srcStride;
        };
        while ((_dy > (0 : stdgo.GoInt) : Bool)) {
            (_dstPix.__slice__(_d0, (_d0 + _bytesPerRow : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_srcPix.__slice__(_s0, (_s0 + _bytesPerRow : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
_d0 = (_d0 + (_ddelta) : stdgo.GoInt);
_s0 = (_s0 + (_sdelta) : stdgo.GoInt);
            _dy--;
        };
    }
