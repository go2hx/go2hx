package stdgo._internal.math.big;
function testBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L401"
        {
            var _err = (stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(stdgo._internal.math.big.Big__checkbytes._checkBytes), null) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L402"
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
