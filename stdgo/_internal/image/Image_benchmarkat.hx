package stdgo._internal.image;
function benchmarkAt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L282"
        for (__0 => _tc in stdgo._internal.image.Image__testimages._testImages) {
            //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L283"
            _b.run(_tc._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                var _m = (_tc._image() : stdgo._internal.image.Image_t_image.T_image);
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L285"
                _b.reportAllocs();
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L286"
                _b.resetTimer();
                //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L287"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/image_test.go#L288"
                        _m.at((4 : stdgo.GoInt), (5 : stdgo.GoInt));
                        _i++;
                    };
                };
            });
        };
    }
