package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testStackWrapperCaller(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _d:_internal.runtime_test.Runtime_test_T_structWithMethod.T_structWithMethod = ({} : _internal.runtime_test.Runtime_test_T_structWithMethod.T_structWithMethod);
        var _wrapper = _internal.runtime_test.Runtime_test_T_structWithMethod_static_extension.T_structWithMethod_static_extension._caller;
        {
            var __0 = (_d._caller()?.__copy__() : stdgo.GoString), __1 = (_wrapper((stdgo.Go.setRef(_d) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_structWithMethod.T_structWithMethod>))?.__copy__() : stdgo.GoString);
var _ic = __1, _dc = __0;
            if (_dc != (_ic)) {
                _t.fatalf(("direct caller %q != indirect caller %q" : stdgo.GoString), stdgo.Go.toInterface(_dc), stdgo.Go.toInterface(_ic));
            };
        };
    }
