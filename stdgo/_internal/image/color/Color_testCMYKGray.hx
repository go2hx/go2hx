package stdgo._internal.image.color;
function testCMYKGray(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                {
                    var _err = (stdgo._internal.image.color.Color__eq._eq(stdgo.Go.asInterface((new stdgo._internal.image.color.Color_CMYK.CMYK((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (((255 : stdgo.GoInt) - _i : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_CMYK.CMYK)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_Gray.Gray((_i : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_Gray.Gray))) : stdgo.Error);
                    if (_err != null) {
                        _t.errorf(("i=0x%02x:\n%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
    }
