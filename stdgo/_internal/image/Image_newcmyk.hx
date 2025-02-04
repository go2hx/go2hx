package stdgo._internal.image;
function newCMYK(_r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK> {
        return (stdgo.Go.setRef(({ pix : (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.image.Image__pixelbufferlength._pixelBufferLength((4 : stdgo.GoInt), _r?.__copy__(), ("CMYK" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stride : ((4 : stdgo.GoInt) * _r.dx() : stdgo.GoInt), rect : _r?.__copy__() } : stdgo._internal.image.Image_cmyk.CMYK)) : stdgo.Ref<stdgo._internal.image.Image_cmyk.CMYK>);
    }
