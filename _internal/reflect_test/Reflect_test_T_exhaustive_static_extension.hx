package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:keep @:allow(_internal.reflect_test.Reflect_test.T_exhaustive_asInterface) class T_exhaustive_static_extension {
    @:keep
    static public function maybe( _x:stdgo.Ref<_internal.reflect_test.Reflect_test_T_exhaustive.T_exhaustive>):Bool {
        @:recv var _x:stdgo.Ref<_internal.reflect_test.Reflect_test_T_exhaustive.T_exhaustive> = _x;
        return _x.choose((2 : stdgo.GoInt)) == ((1 : stdgo.GoInt));
    }
    @:keep
    static public function choose( _x:stdgo.Ref<_internal.reflect_test.Reflect_test_T_exhaustive.T_exhaustive>, _max:stdgo.GoInt):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<_internal.reflect_test.Reflect_test_T_exhaustive.T_exhaustive> = _x;
        if ((_x._pos >= (_x._last.length) : Bool)) {
            _x._last = (_x._last.__append__((new _internal.reflect_test.Reflect_test_T_choice.T_choice(_x._r.intn(_max), (0 : stdgo.GoInt), _max) : _internal.reflect_test.Reflect_test_T_choice.T_choice)));
        };
        var _c = (stdgo.Go.setRef(_x._last[(_x._pos : stdgo.GoInt)]) : stdgo.Ref<_internal.reflect_test.Reflect_test_T_choice.T_choice>);
        _x._pos++;
        if (_c._max != (_max)) {
            throw stdgo.Go.toInterface(("inconsistent use of exhaustive tester" : stdgo.GoString));
        };
        return (((_c._n + _c._off : stdgo.GoInt)) % _max : stdgo.GoInt);
    }
    @:keep
    static public function next( _x:stdgo.Ref<_internal.reflect_test.Reflect_test_T_exhaustive.T_exhaustive>):Bool {
        @:recv var _x:stdgo.Ref<_internal.reflect_test.Reflect_test_T_exhaustive.T_exhaustive> = _x;
        if (_x._r == null || (_x._r : Dynamic).__nil__) {
            _x._r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource(stdgo._internal.time.Time_now.now().unixNano()));
        };
        _x._pos = (0 : stdgo.GoInt);
        if (_x._last == null) {
            _x._last = (new stdgo.Slice<_internal.reflect_test.Reflect_test_T_choice.T_choice>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : _internal.reflect_test.Reflect_test_T_choice.T_choice)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_T_choice.T_choice>);
            return true;
        };
        {
            var _i = ((_x._last.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                var _c = (stdgo.Go.setRef(_x._last[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.reflect_test.Reflect_test_T_choice.T_choice>);
                if (((_c._n + (1 : stdgo.GoInt) : stdgo.GoInt) < _c._max : Bool)) {
                    _c._n++;
                    _x._last = (_x._last.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<_internal.reflect_test.Reflect_test_T_choice.T_choice>);
                    return true;
                };
            });
        };
        return false;
    }
}
