package stdgo._internal.image.color;
function testNYCbCrAYCbCr(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                var _c0 = (new stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA((new stdgo._internal.image.color.Color_YCbCr.YCbCr((_i : stdgo.GoUInt8), (64 : stdgo.GoUInt8), (192 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_YCbCr.YCbCr), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_NYCbCrA.NYCbCrA);
                var _c1 = (new stdgo._internal.image.color.Color_YCbCr.YCbCr((_i : stdgo.GoUInt8), (64 : stdgo.GoUInt8), (192 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_YCbCr.YCbCr);
                {
                    var _err = (stdgo._internal.image.color.Color__eq._eq(stdgo.Go.asInterface(_c0), stdgo.Go.asInterface(_c1)) : stdgo.Error);
                    if (_err != null) {
                        _t.errorf(("i=0x%02x:\n%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
    }