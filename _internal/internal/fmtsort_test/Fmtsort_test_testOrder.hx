package _internal.internal.fmtsort_test;
function testOrder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in _internal.internal.fmtsort_test.Fmtsort_test__sortTests._sortTests) {
            var _got = (_internal.internal.fmtsort_test.Fmtsort_test__sprint._sprint(_test._data)?.__copy__() : stdgo.GoString);
            if (_got != (_test._print)) {
                _t.errorf(("%s: got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.reflect.Reflect_typeOf.typeOf(_test._data)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._print));
            };
        };
    }
