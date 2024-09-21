package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function testNumError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in _internal.strconv_test.Strconv_test__numErrorTests._numErrorTests) {
            var _err = (stdgo.Go.setRef(({ func : ("ParseFloat" : stdgo.GoString), num : _test._num?.__copy__(), err : stdgo._internal.errors.Errors_new_.new_(("failed" : stdgo.GoString)) } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>);
            {
                var _got = (_err.error()?.__copy__() : stdgo.GoString);
                if (_got != (_test._want)) {
                    _t.errorf(("(&NumError{\"ParseFloat\", %q, \"failed\"}).Error() = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._num), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
