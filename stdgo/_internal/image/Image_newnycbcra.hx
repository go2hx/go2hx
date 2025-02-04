package stdgo._internal.image;
function newNYCbCrA(_r:stdgo._internal.image.Image_rectangle.Rectangle, _subsampleRatio:stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio):stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA> {
        var __tmp__ = stdgo._internal.image.Image__ycbcrsize._yCbCrSize(_r?.__copy__(), _subsampleRatio), _w:stdgo.GoInt = __tmp__._0, _h:stdgo.GoInt = __tmp__._1, _cw:stdgo.GoInt = __tmp__._2, _ch:stdgo.GoInt = __tmp__._3;
        var _totalLength = (stdgo._internal.image.Image__add2nonneg._add2NonNeg(stdgo._internal.image.Image__mul3nonneg._mul3NonNeg((2 : stdgo.GoInt), _w, _h), stdgo._internal.image.Image__mul3nonneg._mul3NonNeg((2 : stdgo.GoInt), _cw, _ch)) : stdgo.GoInt);
        if ((_totalLength < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("image: NewNYCbCrA Rectangle has huge or negative dimension" : stdgo.GoString));
        };
        var _i0 = ((((1 : stdgo.GoInt) * _w : stdgo.GoInt) * _h : stdgo.GoInt) + (((0 : stdgo.GoInt) * _cw : stdgo.GoInt) * _ch : stdgo.GoInt) : stdgo.GoInt);
        var _i1 = ((((1 : stdgo.GoInt) * _w : stdgo.GoInt) * _h : stdgo.GoInt) + (((1 : stdgo.GoInt) * _cw : stdgo.GoInt) * _ch : stdgo.GoInt) : stdgo.GoInt);
        var _i2 = ((((1 : stdgo.GoInt) * _w : stdgo.GoInt) * _h : stdgo.GoInt) + (((2 : stdgo.GoInt) * _cw : stdgo.GoInt) * _ch : stdgo.GoInt) : stdgo.GoInt);
        var _i3 = ((((2 : stdgo.GoInt) * _w : stdgo.GoInt) * _h : stdgo.GoInt) + (((2 : stdgo.GoInt) * _cw : stdgo.GoInt) * _ch : stdgo.GoInt) : stdgo.GoInt);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_i3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        return (stdgo.Go.setRef(({ yCbCr : ({ y : (_b.__slice__(0, _i0, _i0) : stdgo.Slice<stdgo.GoUInt8>), cb : (_b.__slice__(_i0, _i1, _i1) : stdgo.Slice<stdgo.GoUInt8>), cr : (_b.__slice__(_i1, _i2, _i2) : stdgo.Slice<stdgo.GoUInt8>), subsampleRatio : _subsampleRatio, yStride : _w, cStride : _cw, rect : _r?.__copy__() } : stdgo._internal.image.Image_ycbcr.YCbCr), a : (_b.__slice__(_i2) : stdgo.Slice<stdgo.GoUInt8>), aStride : _w } : stdgo._internal.image.Image_nycbcra.NYCbCrA)) : stdgo.Ref<stdgo._internal.image.Image_nycbcra.NYCbCrA>);
    }
