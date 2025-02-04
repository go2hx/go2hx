package stdgo._internal.testing.quick;
function testNonZeroSliceAndMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _f = (function(_q:stdgo._internal.testing.quick.Quick_t_testnonzerosliceandmap___localname___q_8763.T_testNonZeroSliceAndMap___localname___Q_8763):Bool {
            return ((_q.m != null) && (_q.s != null) : Bool);
        } : stdgo._internal.testing.quick.Quick_t_testnonzerosliceandmap___localname___q_8763.T_testNonZeroSliceAndMap___localname___Q_8763 -> Bool);
        var _err = (stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(_f), null) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
