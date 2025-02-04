package stdgo._internal.image;
function newNRGBA64(_r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64> {
        return (stdgo.Go.setRef(({ pix : (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.image.Image__pixelbufferlength._pixelBufferLength((8 : stdgo.GoInt), _r?.__copy__(), ("NRGBA64" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stride : ((8 : stdgo.GoInt) * _r.dx() : stdgo.GoInt), rect : _r?.__copy__() } : stdgo._internal.image.Image_nrgba64.NRGBA64)) : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>);
    }
