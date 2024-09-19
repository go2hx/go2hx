package stdgo._internal.math.big;
function testBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _err = (stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(stdgo._internal.math.big.Big__checkBytes._checkBytes), null) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
