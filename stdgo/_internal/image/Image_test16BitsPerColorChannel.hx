package stdgo._internal.image;
function test16BitsPerColorChannel(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testColorModel = (new stdgo.Slice<stdgo._internal.image.color.Color_Model.Model>(4, 4, ...[stdgo._internal.image.color.Color_rgba64model.rgba64model, stdgo._internal.image.color.Color_nrgba64model.nrgba64model, stdgo._internal.image.color.Color_alpha16Model.alpha16Model, stdgo._internal.image.color.Color_gray16Model.gray16Model]) : stdgo.Slice<stdgo._internal.image.color.Color_Model.Model>);
        for (__0 => _cm in _testColorModel) {
            var _c = (_cm.convert(stdgo.Go.asInterface((new stdgo._internal.image.color.Color_RGBA64.RGBA64((4660 : stdgo.GoUInt16), (4660 : stdgo.GoUInt16), (4660 : stdgo.GoUInt16), (4660 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_RGBA64.RGBA64))) : stdgo._internal.image.color.Color_Color.Color);
            var __tmp__ = _c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, __1:stdgo.GoUInt32 = __tmp__._1, __2:stdgo.GoUInt32 = __tmp__._2, __3:stdgo.GoUInt32 = __tmp__._3;
            if (_r != ((4660u32 : stdgo.GoUInt32))) {
                _t.errorf(("%T: want red value 0x%04x got 0x%04x" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface((4660 : stdgo.GoInt)), stdgo.Go.toInterface(_r));
                continue;
            };
        };
        var _testImage = (new stdgo.Slice<stdgo._internal.image.Image_T_image.T_image>(4, 4, ...[stdgo.Go.asInterface(stdgo._internal.image.Image_newRGBA64.newRGBA64(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__())), stdgo.Go.asInterface(stdgo._internal.image.Image_newNRGBA64.newNRGBA64(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__())), stdgo.Go.asInterface(stdgo._internal.image.Image_newAlpha16.newAlpha16(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__())), stdgo.Go.asInterface(stdgo._internal.image.Image_newGray16.newGray16(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__()))]) : stdgo.Slice<stdgo._internal.image.Image_T_image.T_image>);
        for (__1 => _m in _testImage) {
            _m.set((1 : stdgo.GoInt), (2 : stdgo.GoInt), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_NRGBA64.NRGBA64((65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (65535 : stdgo.GoUInt16), (4951 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_NRGBA64.NRGBA64)));
            var __tmp__ = _m.at((1 : stdgo.GoInt), (2 : stdgo.GoInt)).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, __2:stdgo.GoUInt32 = __tmp__._1, __3:stdgo.GoUInt32 = __tmp__._2, __4:stdgo.GoUInt32 = __tmp__._3;
            if (_r != ((4951u32 : stdgo.GoUInt32))) {
                _t.errorf(("%T: want red value 0x%04x got 0x%04x" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface((4951 : stdgo.GoInt)), stdgo.Go.toInterface(_r));
                continue;
            };
        };
    }
