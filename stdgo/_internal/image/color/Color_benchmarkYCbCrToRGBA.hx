package stdgo._internal.image.color;
function benchmarkYCbCrToRGBA(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.run(("0" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _c = (new stdgo._internal.image.color.Color_YCbCr.YCbCr((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_YCbCr.YCbCr);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _b.n : Bool)) {
                    {
                        var __tmp__ = _c.rgba();
                        stdgo._internal.image.color.Color__sink32._sink32 = __tmp__._0;
                        stdgo._internal.image.color.Color__sink32._sink32 = __tmp__._1;
                        stdgo._internal.image.color.Color__sink32._sink32 = __tmp__._2;
                        stdgo._internal.image.color.Color__sink32._sink32 = __tmp__._3;
                    };
                    _i++;
                };
            };
        });
        _b.run(("128" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _c = (new stdgo._internal.image.color.Color_YCbCr.YCbCr((128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_YCbCr.YCbCr);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _b.n : Bool)) {
                    {
                        var __tmp__ = _c.rgba();
                        stdgo._internal.image.color.Color__sink32._sink32 = __tmp__._0;
                        stdgo._internal.image.color.Color__sink32._sink32 = __tmp__._1;
                        stdgo._internal.image.color.Color__sink32._sink32 = __tmp__._2;
                        stdgo._internal.image.color.Color__sink32._sink32 = __tmp__._3;
                    };
                    _i++;
                };
            };
        });
        _b.run(("255" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _c = (new stdgo._internal.image.color.Color_YCbCr.YCbCr((255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_YCbCr.YCbCr);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _b.n : Bool)) {
                    {
                        var __tmp__ = _c.rgba();
                        stdgo._internal.image.color.Color__sink32._sink32 = __tmp__._0;
                        stdgo._internal.image.color.Color__sink32._sink32 = __tmp__._1;
                        stdgo._internal.image.color.Color__sink32._sink32 = __tmp__._2;
                        stdgo._internal.image.color.Color__sink32._sink32 = __tmp__._3;
                    };
                    _i++;
                };
            };
        });
    }
