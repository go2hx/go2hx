package stdgo._internal.image;
function testImage(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _tc in stdgo._internal.image.Image__testimages._testImages) {
            var _m = (_tc._image() : stdgo._internal.image.Image_t_image.T_image);
            if (!stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt)).eq(_m.bounds()?.__copy__())) {
                @:check2r _t.errorf(("%T: want bounds %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt)))), stdgo.Go.toInterface(stdgo.Go.asInterface(_m.bounds())));
                continue;
            };
            if (!stdgo._internal.image.Image__cmp._cmp(_m.colorModel(), stdgo.Go.asInterface(stdgo._internal.image.Image_transparent.transparent), _m.at((6 : stdgo.GoInt), (3 : stdgo.GoInt)))) {
                @:check2r _t.errorf(("%T: at (6, 3), want a zero color, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_m.at((6 : stdgo.GoInt), (3 : stdgo.GoInt))));
                continue;
            };
            _m.set((6 : stdgo.GoInt), (3 : stdgo.GoInt), stdgo.Go.asInterface(stdgo._internal.image.Image_opaque.opaque));
            if (!stdgo._internal.image.Image__cmp._cmp(_m.colorModel(), stdgo.Go.asInterface(stdgo._internal.image.Image_opaque.opaque), _m.at((6 : stdgo.GoInt), (3 : stdgo.GoInt)))) {
                @:check2r _t.errorf(("%T: at (6, 3), want a non-zero color, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_m.at((6 : stdgo.GoInt), (3 : stdgo.GoInt))));
                continue;
            };
            if (!(stdgo.Go.typeAssert((stdgo.Go.toInterface(_m.subImage(stdgo._internal.image.Image_rect.rect((6 : stdgo.GoInt), (3 : stdgo.GoInt), (7 : stdgo.GoInt), (4 : stdgo.GoInt))?.__copy__())) : stdgo._internal.image.Image_t_image.T_image)) : stdgo._internal.image.Image_t_image.T_image).opaque()) {
                @:check2r _t.errorf(("%T: at (6, 3) was not opaque" : stdgo.GoString), stdgo.Go.toInterface(_m));
                continue;
            };
            _m = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m.subImage(stdgo._internal.image.Image_rect.rect((3 : stdgo.GoInt), (2 : stdgo.GoInt), (9 : stdgo.GoInt), (8 : stdgo.GoInt))?.__copy__())) : stdgo._internal.image.Image_t_image.T_image)) : stdgo._internal.image.Image_t_image.T_image);
            if (!stdgo._internal.image.Image_rect.rect((3 : stdgo.GoInt), (2 : stdgo.GoInt), (9 : stdgo.GoInt), (8 : stdgo.GoInt)).eq(_m.bounds()?.__copy__())) {
                @:check2r _t.errorf(("%T: sub-image want bounds %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.image.Image_rect.rect((3 : stdgo.GoInt), (2 : stdgo.GoInt), (9 : stdgo.GoInt), (8 : stdgo.GoInt)))), stdgo.Go.toInterface(stdgo.Go.asInterface(_m.bounds())));
                continue;
            };
            if (!stdgo._internal.image.Image__cmp._cmp(_m.colorModel(), stdgo.Go.asInterface(stdgo._internal.image.Image_opaque.opaque), _m.at((6 : stdgo.GoInt), (3 : stdgo.GoInt)))) {
                @:check2r _t.errorf(("%T: sub-image at (6, 3), want a non-zero color, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_m.at((6 : stdgo.GoInt), (3 : stdgo.GoInt))));
                continue;
            };
            if (!stdgo._internal.image.Image__cmp._cmp(_m.colorModel(), stdgo.Go.asInterface(stdgo._internal.image.Image_transparent.transparent), _m.at((3 : stdgo.GoInt), (3 : stdgo.GoInt)))) {
                @:check2r _t.errorf(("%T: sub-image at (3, 3), want a zero color, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_m.at((3 : stdgo.GoInt), (3 : stdgo.GoInt))));
                continue;
            };
            _m.set((3 : stdgo.GoInt), (3 : stdgo.GoInt), stdgo.Go.asInterface(stdgo._internal.image.Image_opaque.opaque));
            if (!stdgo._internal.image.Image__cmp._cmp(_m.colorModel(), stdgo.Go.asInterface(stdgo._internal.image.Image_opaque.opaque), _m.at((3 : stdgo.GoInt), (3 : stdgo.GoInt)))) {
                @:check2r _t.errorf(("%T: sub-image at (3, 3), want a non-zero color, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_m.at((3 : stdgo.GoInt), (3 : stdgo.GoInt))));
                continue;
            };
            _m.subImage(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__());
            _m.subImage(stdgo._internal.image.Image_rect.rect((10 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__());
            _m.subImage(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (10 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
            _m.subImage(stdgo._internal.image.Image_rect.rect((10 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        };
    }
