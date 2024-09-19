package stdgo._internal.image;
function testYCbCrSlicesDontOverlap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = stdgo._internal.image.Image_newYCbCr.newYCbCr(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (8 : stdgo.GoInt), (8 : stdgo.GoInt))?.__copy__(), (2 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio));
        var _names = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("Y" : stdgo.GoString), ("Cb" : stdgo.GoString), ("Cr" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _slices = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(3, 3, ...[(_m.y.__slice__(0, _m.y.capacity) : stdgo.Slice<stdgo.GoUInt8>), (_m.cb.__slice__(0, _m.cb.capacity) : stdgo.Slice<stdgo.GoUInt8>), (_m.cr.__slice__(0, _m.cr.capacity) : stdgo.Slice<stdgo.GoUInt8>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (_i => _slice in _slices) {
            var _want = (((10 : stdgo.GoInt) + _i : stdgo.GoInt) : stdgo.GoUInt8);
            for (_j => _ in _slice) {
                _slice[(_j : stdgo.GoInt)] = _want;
            };
        };
        for (_i => _slice in _slices) {
            var _want = (((10 : stdgo.GoInt) + _i : stdgo.GoInt) : stdgo.GoUInt8);
            for (_j => _got in _slice) {
                if (_got != (_want)) {
                    _t.fatalf(("m.%s[%d]: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_names[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
    }
