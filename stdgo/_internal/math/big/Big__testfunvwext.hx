package stdgo._internal.math.big;
function _testFunVWext(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _msg:stdgo.GoString, _f:stdgo._internal.math.big.Big_t_funvw.T_funVW, _f_g:stdgo._internal.math.big.Big_t_funvw.T_funVW, _a:stdgo._internal.math.big.Big_t_argvw.T_argVW):Void {
        var _z_g = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((_a._z.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _c_g = (_f_g(_z_g, _a._x, _a._y) : stdgo._internal.math.big.Big_word.Word);
        var _c = (_f(_a._z, _a._x, _a._y) : stdgo._internal.math.big.Big_word.Word);
        for (_i => _zi in _a._z) {
            if (_zi != (_z_g[(_i : stdgo.GoInt)])) {
                @:check2r _t.errorf(("%s\n\tgot z[%d] = %#x; want %#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_zi), stdgo.Go.toInterface(_z_g[(_i : stdgo.GoInt)]));
                break;
            };
        };
        if (_c != (_c_g)) {
            @:check2r _t.errorf(("%s\n\tgot c = %#x; want %#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_c_g));
        };
    }
