package stdgo._internal.image;
function newPaletted(_r:stdgo._internal.image.Image_rectangle.Rectangle, _p:stdgo._internal.image.color.Color_palette.Palette):stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> {
        return (stdgo.Go.setRef(({ pix : (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.image.Image__pixelbufferlength._pixelBufferLength((1 : stdgo.GoInt), _r?.__copy__(), ("Paletted" : stdgo.GoString)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), stride : ((1 : stdgo.GoInt) * _r.dx() : stdgo.GoInt), rect : _r?.__copy__(), palette : _p } : stdgo._internal.image.Image_paletted.Paletted)) : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
    }
