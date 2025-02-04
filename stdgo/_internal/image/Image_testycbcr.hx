package stdgo._internal.image;
function testYCbCr(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _rects = (new stdgo.Slice<stdgo._internal.image.Image_rectangle.Rectangle>(20, 20, ...[
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((1 : stdgo.GoInt), (0 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (1 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((1 : stdgo.GoInt), (1 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((1 : stdgo.GoInt), (1 : stdgo.GoInt), (15 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((1 : stdgo.GoInt), (1 : stdgo.GoInt), (16 : stdgo.GoInt), (15 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((1 : stdgo.GoInt), (1 : stdgo.GoInt), (15 : stdgo.GoInt), (15 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((2 : stdgo.GoInt), (3 : stdgo.GoInt), (14 : stdgo.GoInt), (15 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((7 : stdgo.GoInt), (0 : stdgo.GoInt), (7 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (8 : stdgo.GoInt), (16 : stdgo.GoInt), (8 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (11 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((5 : stdgo.GoInt), (6 : stdgo.GoInt), (16 : stdgo.GoInt), (16 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((7 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt), (8 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((7 : stdgo.GoInt), (8 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((8 : stdgo.GoInt), (7 : stdgo.GoInt), (9 : stdgo.GoInt), (8 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((8 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt), (9 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((7 : stdgo.GoInt), (7 : stdgo.GoInt), (17 : stdgo.GoInt), (17 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((8 : stdgo.GoInt), (8 : stdgo.GoInt), (17 : stdgo.GoInt), (17 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((9 : stdgo.GoInt), (9 : stdgo.GoInt), (17 : stdgo.GoInt), (17 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((10 : stdgo.GoInt), (10 : stdgo.GoInt), (17 : stdgo.GoInt), (17 : stdgo.GoInt))?.__copy__()].concat([for (i in 20 ... (20 > 20 ? 20 : 20 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.Image_rectangle.Rectangle)])) : stdgo.Slice<stdgo._internal.image.Image_rectangle.Rectangle>);
        var _subsampleRatios = (new stdgo.Slice<stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio>(6, 6, ...[(0 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio), (1 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio), (2 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio), (3 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio), (4 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio), (5 : stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio)]).__setNumber32__() : stdgo.Slice<stdgo._internal.image.Image_ycbcrsubsampleratio.YCbCrSubsampleRatio>);
        var _deltas = (new stdgo.Slice<stdgo._internal.image.Image_point.Point>(4, 4, ...[stdgo._internal.image.Image_pt.pt((0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_pt.pt((1000 : stdgo.GoInt), (1001 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_pt.pt((5001 : stdgo.GoInt), (-400 : stdgo.GoInt))?.__copy__(), stdgo._internal.image.Image_pt.pt((-701 : stdgo.GoInt), (-801 : stdgo.GoInt))?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.Image_point.Point)])) : stdgo.Slice<stdgo._internal.image.Image_point.Point>);
        for (__0 => _r in _rects) {
            for (__1 => _subsampleRatio in _subsampleRatios) {
                for (__2 => _delta in _deltas) {
                    stdgo._internal.image.Image__testycbcr._testYCbCr(_t, _r?.__copy__(), _subsampleRatio, _delta?.__copy__());
                };
            };
            if (stdgo._internal.testing.Testing_short.short()) {
                break;
            };
        };
    }
