package stdgo._internal.image.color;
function testNYCbCrAAlpha(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/image/color/ycbcr_test.go#L80"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                var _c0 = (new stdgo._internal.image.color.Color_nycbcra.NYCbCrA((new stdgo._internal.image.color.Color_ycbcr.YCbCr((255 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_ycbcr.YCbCr), (_i : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_nycbcra.NYCbCrA);
var _c1 = (new stdgo._internal.image.color.Color_alpha.Alpha((_i : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_alpha.Alpha);
//"file:///home/runner/.go/go1.21.3/src/image/color/ycbcr_test.go#L83"
                {
                    var _err = (stdgo._internal.image.color.Color__eq._eq(stdgo.Go.asInterface(_c0), stdgo.Go.asInterface(_c1)) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/image/color/ycbcr_test.go#L84"
                        _t.errorf(("i=0x%02x:\n%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    };
                };
                _i++;
            };
        };
    }
