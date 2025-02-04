package stdgo._internal.image;
function newAlpha16(_r:stdgo._internal.image.Image_rectangle.Rectangle):stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16> {
        return (stdgo.Go.setRef(({ pix : (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.image.Image__pixelbufferlength._pixelBufferLength((2 : stdgo.GoInt), _r?.__copy__(), ("Alpha16" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stride : ((2 : stdgo.GoInt) * _r.dx() : stdgo.GoInt), rect : _r?.__copy__() } : stdgo._internal.image.Image_alpha16.Alpha16)) : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>);
    }
