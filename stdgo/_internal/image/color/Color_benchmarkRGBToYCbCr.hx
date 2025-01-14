package stdgo._internal.image.color;
function benchmarkRGBToYCbCr(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        @:check2r _b.run(("0" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.image.color.Color_rGBToYCbCr.rGBToYCbCr((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8));
                        stdgo._internal.image.color.Color__sink8._sink8 = @:tmpset0 __tmp__._0;
                        stdgo._internal.image.color.Color__sink8._sink8 = @:tmpset0 __tmp__._1;
                        stdgo._internal.image.color.Color__sink8._sink8 = @:tmpset0 __tmp__._2;
                    };
                    _i++;
                };
            };
        });
        @:check2r _b.run(("Cb" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.image.color.Color_rGBToYCbCr.rGBToYCbCr((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8));
                        stdgo._internal.image.color.Color__sink8._sink8 = @:tmpset0 __tmp__._0;
                        stdgo._internal.image.color.Color__sink8._sink8 = @:tmpset0 __tmp__._1;
                        stdgo._internal.image.color.Color__sink8._sink8 = @:tmpset0 __tmp__._2;
                    };
                    _i++;
                };
            };
        });
        @:check2r _b.run(("Cr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.image.color.Color_rGBToYCbCr.rGBToYCbCr((255 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8));
                        stdgo._internal.image.color.Color__sink8._sink8 = @:tmpset0 __tmp__._0;
                        stdgo._internal.image.color.Color__sink8._sink8 = @:tmpset0 __tmp__._1;
                        stdgo._internal.image.color.Color__sink8._sink8 = @:tmpset0 __tmp__._2;
                    };
                    _i++;
                };
            };
        });
    }
