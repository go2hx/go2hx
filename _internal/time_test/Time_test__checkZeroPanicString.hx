package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function _checkZeroPanicString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _e = ({
            final r = stdgo.Go.recover_exception;
            stdgo.Go.recover_exception = null;
            r;
        } : stdgo.AnyInterface);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_e : stdgo.GoString)) : stdgo.GoString), _1 : true };
        } catch(_) {
            { _0 : ("" : stdgo.GoString), _1 : false };
        }, _s = __tmp__._0, __2 = __tmp__._1;
        {
            var _want = ("called on uninitialized Timer" : stdgo.GoString);
            if (!stdgo._internal.strings.Strings_contains.contains(_s?.__copy__(), _want?.__copy__())) {
                _t.errorf(("panic = %v; want substring %q" : stdgo.GoString), _e, stdgo.Go.toInterface(_want));
            };
        };
    }
