package stdgo._internal.image.color;
function testCMYKGray(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                {
                    var _err = (stdgo._internal.image.color.Color__eq._eq(stdgo.Go.asInterface((new stdgo._internal.image.color.Color_cmyk.CMYK((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (((255 : stdgo.GoInt) - _i : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_cmyk.CMYK)), stdgo.Go.asInterface((new stdgo._internal.image.color.Color_gray.Gray((_i : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_gray.Gray))) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _t.errorf(("i=0x%02x:\n%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    };
                };
                _i++;
            };
        };
    }
