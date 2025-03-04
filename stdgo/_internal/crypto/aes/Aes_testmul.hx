package stdgo._internal.crypto.aes;
function testMul(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {
            var _i = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            while ((_i < (256u32 : stdgo.GoUInt32) : Bool)) {
                {
                    var _j = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    while ((_j < (256u32 : stdgo.GoUInt32) : Bool)) {
                        var _s = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
{
                            var _k = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                            while ((_k < (8u32 : stdgo.GoUInt) : Bool)) {
                                {
                                    var _l = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                                    while ((_l < (8u32 : stdgo.GoUInt) : Bool)) {
                                        if ((((_i & (((1u32 : stdgo.GoUInt32) << _k : stdgo.GoUInt32)) : stdgo.GoUInt32) != (0u32 : stdgo.GoUInt32)) && ((_j & (((1u32 : stdgo.GoUInt32) << _l : stdgo.GoUInt32)) : stdgo.GoUInt32) != (0u32 : stdgo.GoUInt32)) : Bool)) {
                                            _s = (_s ^ (stdgo._internal.crypto.aes.Aes__powx._powx[((_k + _l : stdgo.GoUInt) : stdgo.GoInt)]) : stdgo.GoUInt8);
                                        };
                                        _l++;
                                    };
                                };
                                _k++;
                            };
                        };
{
                            var _x = (stdgo._internal.crypto.aes.Aes__mul._mul(_i, _j) : stdgo.GoUInt32);
                            if (_x != ((_s : stdgo.GoUInt32))) {
                                @:check2r _t.fatalf(("mul(%#x, %#x) = %#x, want %#x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_s));
                            };
                        };
                        _j++;
                    };
                };
                _i++;
            };
        };
    }
