package stdgo._internal.image.color;
function testPalette(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _p = (new stdgo.Slice<stdgo._internal.image.color.Color_Color.Color>(6, 6, ...[stdgo.Go.asInterface((new stdgo._internal.image.color.Color_RGBA.RGBA((255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_RGBA.RGBA)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_RGBA.RGBA((128 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_RGBA.RGBA)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_RGBA.RGBA((127 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (127 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_RGBA.RGBA)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_RGBA.RGBA((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (127 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_RGBA.RGBA)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_RGBA.RGBA((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_RGBA.RGBA)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_RGBA.RGBA((64 : stdgo.GoUInt8), (64 : stdgo.GoUInt8), (64 : stdgo.GoUInt8), (64 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_RGBA.RGBA))]) : stdgo._internal.image.color.Color_Palette.Palette);
        for (_i => _c in _p) {
            var _j = (_p.index(_c) : stdgo.GoInt);
            if (_i != (_j)) {
                @:check2r _t.errorf(("Index(%v): got %d (color = %v), want %d" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_p[(_j : stdgo.GoInt)]), stdgo.Go.toInterface(_i));
            };
        };
        var _got = (_p.convert(stdgo.Go.asInterface((new stdgo._internal.image.color.Color_RGBA.RGBA((128 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (128 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_RGBA.RGBA))) : stdgo._internal.image.color.Color_Color.Color);
        var _want = (new stdgo._internal.image.color.Color_RGBA.RGBA((127 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (127 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_RGBA.RGBA);
        if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))) {
            @:check2r _t.errorf(("got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
        };
    }
