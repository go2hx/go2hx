package stdgo._internal.image.color;
function benchmarkRGBToYCbCr(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/image/color/ycbcr_test.go#L203"
        _b.run(("0" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/image/color/ycbcr_test.go#L204"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.image.color.Color_rgbtoycbcr.rGBToYCbCr((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8));
                        stdgo._internal.image.color.Color__sink8._sink8 = @:tmpset0 __tmp__._0;
                        stdgo._internal.image.color.Color__sink8._sink8 = @:tmpset0 __tmp__._1;
                        stdgo._internal.image.color.Color__sink8._sink8 = @:tmpset0 __tmp__._2;
                    };
                    _i++;
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/image/color/ycbcr_test.go#L208"
        _b.run(("Cb" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/image/color/ycbcr_test.go#L209"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.image.color.Color_rgbtoycbcr.rGBToYCbCr((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8));
                        stdgo._internal.image.color.Color__sink8._sink8 = @:tmpset0 __tmp__._0;
                        stdgo._internal.image.color.Color__sink8._sink8 = @:tmpset0 __tmp__._1;
                        stdgo._internal.image.color.Color__sink8._sink8 = @:tmpset0 __tmp__._2;
                    };
                    _i++;
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/image/color/ycbcr_test.go#L213"
        _b.run(("Cr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/image/color/ycbcr_test.go#L214"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.image.color.Color_rgbtoycbcr.rGBToYCbCr((255 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8));
                        stdgo._internal.image.color.Color__sink8._sink8 = @:tmpset0 __tmp__._0;
                        stdgo._internal.image.color.Color__sink8._sink8 = @:tmpset0 __tmp__._1;
                        stdgo._internal.image.color.Color__sink8._sink8 = @:tmpset0 __tmp__._2;
                    };
                    _i++;
                };
            };
        });
    }
