package stdgo._internal.image;
function newGray(_r:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo.Ref<stdgo._internal.image.Image_Gray.Gray> {
        return (stdgo.Go.setRef(({ pix : (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.image.Image__pixelBufferLength._pixelBufferLength((1 : stdgo.GoInt), _r?.__copy__(), ("Gray" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stride : ((1 : stdgo.GoInt) * _r.dx() : stdgo.GoInt), rect : _r?.__copy__() } : stdgo._internal.image.Image_Gray.Gray)) : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>);
    }
