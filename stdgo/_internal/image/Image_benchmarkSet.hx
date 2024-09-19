package stdgo._internal.image;
function benchmarkSet(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _c = (new stdgo._internal.image.color.Color_Gray.Gray((255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_Gray.Gray);
        for (__0 => _tc in stdgo._internal.image.Image__testImages._testImages) {
            _b.run(_tc._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _m = (_tc._image() : stdgo._internal.image.Image_T_image.T_image);
                _b.reportAllocs();
                _b.resetTimer();
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _m.set((4 : stdgo.GoInt), (5 : stdgo.GoInt), stdgo.Go.asInterface(_c));
                    });
                };
            });
        };
    }
