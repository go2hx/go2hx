package stdgo._internal.image;
function benchmarkAt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        for (__0 => _tc in stdgo._internal.image.Image__testimages._testImages) {
            @:check2r _b.run(_tc._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                var _m = (_tc._image() : stdgo._internal.image.Image_t_image.T_image);
                @:check2r _b.reportAllocs();
                @:check2r _b.resetTimer();
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        _m.at((4 : stdgo.GoInt), (5 : stdgo.GoInt));
                        _i++;
                    };
                };
            });
        };
    }
