package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.Recur_asInterface) class Recur_static_extension {
    @:keep
    static public function string( _r:stdgo.Ref<_internal.fmt_test.Fmt_test_Recur.Recur>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.fmt_test.Fmt_test_Recur.Recur> = _r;
        {
            _internal.fmt_test.Fmt_test__recurCount._recurCount++;
            if ((_internal.fmt_test.Fmt_test__recurCount._recurCount > (10 : stdgo.GoInt) : Bool)) {
                _r._failed.value = true;
                return ("FAIL" : stdgo.GoString);
            };
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("recur@%p value: %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_r._i))?.__copy__();
    }
}
