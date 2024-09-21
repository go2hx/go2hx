package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function testOnesCount(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (64 : stdgo.GoInt) : Bool), _i++, {
                _internal.math.bits_test.Bits_test__testOnesCount._testOnesCount(_t, _x, _i);
                _x = ((_x << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            });
        };
        {
            var _i = (64 : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _internal.math.bits_test.Bits_test__testOnesCount._testOnesCount(_t, _x, _i);
                _x = (_x << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                {
                    var _k = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_k < (56 : stdgo.GoInt) : Bool), _k++, {
                        _internal.math.bits_test.Bits_test__testOnesCount._testOnesCount(_t, ((_i : stdgo.GoUInt64) << (_k : stdgo.GoUInt) : stdgo.GoUInt64), _internal.math.bits_test.Bits_test__tab._tab[(_i : stdgo.GoInt)]._pop);
                    });
                };
            });
        };
    }
