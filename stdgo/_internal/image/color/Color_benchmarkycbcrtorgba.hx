package stdgo._internal.image.color;
function benchmarkYCbCrToRGBA(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        @:check2r _b.run(("0" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            var _c = (new stdgo._internal.image.color.Color_ycbcr.YCbCr((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_ycbcr.YCbCr);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    {
                        var __tmp__ = _c.rGBA();
                        stdgo._internal.image.color.Color__sink32._sink32 = @:tmpset0 __tmp__._0;
                        stdgo._internal.image.color.Color__sink32._sink32 = @:tmpset0 __tmp__._1;
                        stdgo._internal.image.color.Color__sink32._sink32 = @:tmpset0 __tmp__._2;
                        stdgo._internal.image.color.Color__sink32._sink32 = @:tmpset0 __tmp__._3;
                    };
                    _i++;
                };
            };
        });
        @:check2r _b.run(("128" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            var _c = (new stdgo._internal.image.color.Color_ycbcr.YCbCr((128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_ycbcr.YCbCr);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    {
                        var __tmp__ = _c.rGBA();
                        stdgo._internal.image.color.Color__sink32._sink32 = @:tmpset0 __tmp__._0;
                        stdgo._internal.image.color.Color__sink32._sink32 = @:tmpset0 __tmp__._1;
                        stdgo._internal.image.color.Color__sink32._sink32 = @:tmpset0 __tmp__._2;
                        stdgo._internal.image.color.Color__sink32._sink32 = @:tmpset0 __tmp__._3;
                    };
                    _i++;
                };
            };
        });
        @:check2r _b.run(("255" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            var _c = (new stdgo._internal.image.color.Color_ycbcr.YCbCr((255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_ycbcr.YCbCr);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    {
                        var __tmp__ = _c.rGBA();
                        stdgo._internal.image.color.Color__sink32._sink32 = @:tmpset0 __tmp__._0;
                        stdgo._internal.image.color.Color__sink32._sink32 = @:tmpset0 __tmp__._1;
                        stdgo._internal.image.color.Color__sink32._sink32 = @:tmpset0 __tmp__._2;
                        stdgo._internal.image.color.Color__sink32._sink32 = @:tmpset0 __tmp__._3;
                    };
                    _i++;
                };
            };
        });
    }
