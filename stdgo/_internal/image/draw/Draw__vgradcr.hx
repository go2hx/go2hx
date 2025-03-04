package stdgo._internal.image.draw;
function _vgradCr():stdgo._internal.image.Image_image.Image {
        var _m = (stdgo.Go.setRef(({ y : (new stdgo.Slice<stdgo.GoUInt8>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), cb : (new stdgo.Slice<stdgo.GoUInt8>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), cr : (new stdgo.Slice<stdgo.GoUInt8>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), yStride : (16 : stdgo.GoInt), cStride : (16 : stdgo.GoInt), subsampleRatio : (0 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio), rect : stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__() } : stdgo._internal.image.Image_ycbcr.YCbCr)) : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>);
        {
            var _y = (0 : stdgo.GoInt);
            while ((_y < (16 : stdgo.GoInt) : Bool)) {
                {
                    var _x = (0 : stdgo.GoInt);
                    while ((_x < (16 : stdgo.GoInt) : Bool)) {
                        (@:checkr _m ?? throw "null pointer dereference").cr[((_y * (@:checkr _m ?? throw "null pointer dereference").cStride : stdgo.GoInt) + _x : stdgo.GoInt)] = ((_y * (17 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                        _x++;
                    };
                };
                _y++;
            };
        };
        return stdgo.Go.asInterface(_m);
    }
