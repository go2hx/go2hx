package stdgo._internal.image.color;
function benchmarkRGBToYCbCr(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.run(("0" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __tmp__ = stdgo._internal.image.color.Color_rgbtoYCbCr.rgbtoYCbCr((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8));
                        stdgo._internal.image.color.Color__sink8._sink8 = __tmp__._0;
                        stdgo._internal.image.color.Color__sink8._sink8 = __tmp__._1;
                        stdgo._internal.image.color.Color__sink8._sink8 = __tmp__._2;
                    };
                });
            };
        });
        _b.run(("Cb" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __tmp__ = stdgo._internal.image.color.Color_rgbtoYCbCr.rgbtoYCbCr((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8));
                        stdgo._internal.image.color.Color__sink8._sink8 = __tmp__._0;
                        stdgo._internal.image.color.Color__sink8._sink8 = __tmp__._1;
                        stdgo._internal.image.color.Color__sink8._sink8 = __tmp__._2;
                    };
                });
            };
        });
        _b.run(("Cr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __tmp__ = stdgo._internal.image.color.Color_rgbtoYCbCr.rgbtoYCbCr((255 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8));
                        stdgo._internal.image.color.Color__sink8._sink8 = __tmp__._0;
                        stdgo._internal.image.color.Color__sink8._sink8 = __tmp__._1;
                        stdgo._internal.image.color.Color__sink8._sink8 = __tmp__._2;
                    };
                });
            };
        });
    }
