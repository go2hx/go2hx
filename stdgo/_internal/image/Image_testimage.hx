package stdgo._internal.image;
function testImage(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L47"
        for (__0 => _tc in stdgo._internal.image.Image__testimages._testImages) {
            var _m = (_tc._image() : stdgo._internal.image.Image_t_image.T_image);
            //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L49"
            if (!stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt)).eq(_m.bounds()?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L50"
                _t.errorf(("%T: want bounds %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt)))), stdgo.Go.toInterface(stdgo.Go.asInterface(_m.bounds())));
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L51"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L53"
            if (!stdgo._internal.image.Image__cmp._cmp(_m.colorModel(), stdgo.Go.asInterface(stdgo._internal.image.Image_transparent.transparent), _m.at((6 : stdgo.GoInt), (3 : stdgo.GoInt)))) {
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L54"
                _t.errorf(("%T: at (6, 3), want a zero color, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_m.at((6 : stdgo.GoInt), (3 : stdgo.GoInt))));
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L55"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L57"
            _m.set((6 : stdgo.GoInt), (3 : stdgo.GoInt), stdgo.Go.asInterface(stdgo._internal.image.Image_opaque.opaque));
            //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L58"
            if (!stdgo._internal.image.Image__cmp._cmp(_m.colorModel(), stdgo.Go.asInterface(stdgo._internal.image.Image_opaque.opaque), _m.at((6 : stdgo.GoInt), (3 : stdgo.GoInt)))) {
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L59"
                _t.errorf(("%T: at (6, 3), want a non-zero color, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_m.at((6 : stdgo.GoInt), (3 : stdgo.GoInt))));
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L60"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L62"
            if (!(stdgo.Go.typeAssert((stdgo.Go.toInterface(_m.subImage(stdgo._internal.image.Image_rect.rect((6 : stdgo.GoInt), (3 : stdgo.GoInt), (7 : stdgo.GoInt), (4 : stdgo.GoInt))?.__copy__())) : stdgo._internal.image.Image_t_image.T_image)) : stdgo._internal.image.Image_t_image.T_image).opaque()) {
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L63"
                _t.errorf(("%T: at (6, 3) was not opaque" : stdgo.GoString), stdgo.Go.toInterface(_m));
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L64"
                continue;
            };
            _m = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m.subImage(stdgo._internal.image.Image_rect.rect((3 : stdgo.GoInt), (2 : stdgo.GoInt), (9 : stdgo.GoInt), (8 : stdgo.GoInt))?.__copy__())) : stdgo._internal.image.Image_t_image.T_image)) : stdgo._internal.image.Image_t_image.T_image);
            //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L67"
            if (!stdgo._internal.image.Image_rect.rect((3 : stdgo.GoInt), (2 : stdgo.GoInt), (9 : stdgo.GoInt), (8 : stdgo.GoInt)).eq(_m.bounds()?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L68"
                _t.errorf(("%T: sub-image want bounds %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.image.Image_rect.rect((3 : stdgo.GoInt), (2 : stdgo.GoInt), (9 : stdgo.GoInt), (8 : stdgo.GoInt)))), stdgo.Go.toInterface(stdgo.Go.asInterface(_m.bounds())));
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L69"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L71"
            if (!stdgo._internal.image.Image__cmp._cmp(_m.colorModel(), stdgo.Go.asInterface(stdgo._internal.image.Image_opaque.opaque), _m.at((6 : stdgo.GoInt), (3 : stdgo.GoInt)))) {
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L72"
                _t.errorf(("%T: sub-image at (6, 3), want a non-zero color, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_m.at((6 : stdgo.GoInt), (3 : stdgo.GoInt))));
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L73"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L75"
            if (!stdgo._internal.image.Image__cmp._cmp(_m.colorModel(), stdgo.Go.asInterface(stdgo._internal.image.Image_transparent.transparent), _m.at((3 : stdgo.GoInt), (3 : stdgo.GoInt)))) {
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L76"
                _t.errorf(("%T: sub-image at (3, 3), want a zero color, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_m.at((3 : stdgo.GoInt), (3 : stdgo.GoInt))));
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L77"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L79"
            _m.set((3 : stdgo.GoInt), (3 : stdgo.GoInt), stdgo.Go.asInterface(stdgo._internal.image.Image_opaque.opaque));
            //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L80"
            if (!stdgo._internal.image.Image__cmp._cmp(_m.colorModel(), stdgo.Go.asInterface(stdgo._internal.image.Image_opaque.opaque), _m.at((3 : stdgo.GoInt), (3 : stdgo.GoInt)))) {
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L81"
                _t.errorf(("%T: sub-image at (3, 3), want a non-zero color, got %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_m.at((3 : stdgo.GoInt), (3 : stdgo.GoInt))));
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L82"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L85"
            _m.subImage(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L86"
            _m.subImage(stdgo._internal.image.Image_rect.rect((10 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L87"
            _m.subImage(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (10 : stdgo.GoInt), (0 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L88"
            _m.subImage(stdgo._internal.image.Image_rect.rect((10 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__());
        };
    }
