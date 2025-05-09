package stdgo._internal.image.color;
function testPalette(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _p = (new stdgo.Slice<stdgo._internal.image.color.Color_color.Color>(6, 6, ...[stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((128 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((127 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (127 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (127 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((64 : stdgo.GoUInt8), (64 : stdgo.GoUInt8), (64 : stdgo.GoUInt8), (64 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA))]) : stdgo._internal.image.color.Color_palette.Palette);
        //"file:///home/runner/.go/go1.21.3/src/image/color/ycbcr_test.go#L160"
        for (_i => _c in _p) {
            var _j = (_p.index(_c) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/image/color/ycbcr_test.go#L162"
            if (_i != (_j)) {
                //"file:///home/runner/.go/go1.21.3/src/image/color/ycbcr_test.go#L163"
                _t.errorf(("Index(%v): got %d (color = %v), want %d" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_p[(_j : stdgo.GoInt)]), stdgo.Go.toInterface(_i));
            };
        };
        var _got = (_p.convert(stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((128 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (128 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA))) : stdgo._internal.image.color.Color_color.Color);
        var _want = (new stdgo._internal.image.color.Color_rgba.RGBA((127 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (127 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA);
        //"file:///home/runner/.go/go1.21.3/src/image/color/ycbcr_test.go#L170"
        if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))) {
            //"file:///home/runner/.go/go1.21.3/src/image/color/ycbcr_test.go#L171"
            _t.errorf(("got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
        };
    }
