package stdgo._internal.crypto.des;
function testInitialPermute(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/des/des_test.go#L1508"
        {
            var _i = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
            while ((_i < (64u32 : stdgo.GoUInt) : Bool)) {
                var _bit = ((1i64 : stdgo.GoUInt64) << _i : stdgo.GoUInt64);
var _got = (stdgo._internal.crypto.des.Des__permuteinitialblock._permuteInitialBlock(_bit) : stdgo.GoUInt64);
var _want = ((1i64 : stdgo.GoUInt64) << stdgo._internal.crypto.des.Des__finalpermutation._finalPermutation[(((63u32 : stdgo.GoUInt) - _i : stdgo.GoUInt) : stdgo.GoInt)] : stdgo.GoUInt64);
//"file:///home/runner/.go/go1.21.3/src/crypto/des/des_test.go#L1512"
                if (_got != (_want)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/des/des_test.go#L1513"
                    _t.errorf(("permute(%x) = %x, want %x" : stdgo.GoString), stdgo.Go.toInterface(_bit), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
                _i++;
            };
        };
    }
