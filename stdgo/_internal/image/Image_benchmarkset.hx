package stdgo._internal.image;
function benchmarkSet(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _c = (new stdgo._internal.image.color.Color_gray.Gray((255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_gray.Gray);
        //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L296"
        for (__0 => _tc in stdgo._internal.image.Image__testimages._testImages) {
            //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L297"
            _b.run(_tc._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                var _m = (_tc._image() : stdgo._internal.image.Image_t_image.T_image);
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L299"
                _b.reportAllocs();
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L300"
                _b.resetTimer();
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L301"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L302"
                        _m.set((4 : stdgo.GoInt), (5 : stdgo.GoInt), stdgo.Go.asInterface(_c));
                        _i++;
                    };
                };
            });
        };
    }
