package stdgo._internal.crypto.aes;
function testPowx(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _p = (1 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.crypto.aes.Aes__powx._powx.length) : Bool)) {
                if (stdgo._internal.crypto.aes.Aes__powx._powx[(_i : stdgo.GoInt)] != ((_p : stdgo.GoUInt8))) {
                    @:check2r _t.errorf(("powx[%d] = %#x, want %#x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo._internal.crypto.aes.Aes__powx._powx[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_p));
                };
_p = (_p << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
if ((_p & (256 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _p = (_p ^ ((283 : stdgo.GoInt)) : stdgo.GoInt);
                };
                _i++;
            };
        };
    }
