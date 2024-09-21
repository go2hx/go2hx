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
var _atoi64tests : stdgo.Slice<_internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test> = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test>(21, 21, ...[
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(stdgo.Go.str()?.__copy__(), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("0" : stdgo.GoString), (0i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("-0" : stdgo.GoString), (0i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("1" : stdgo.GoString), (1i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("-1" : stdgo.GoString), (-1i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("12345" : stdgo.GoString), (12345i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("-12345" : stdgo.GoString), (-12345i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("012345" : stdgo.GoString), (12345i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("-012345" : stdgo.GoString), (-12345i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("12345x" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("-12345x" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("98765432100" : stdgo.GoString), (98765432100i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("-98765432100" : stdgo.GoString), (-98765432100i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("20496382327982653440" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("-20496382327982653440" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("9223372036854775807" : stdgo.GoString), (9223372036854775807i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("-9223372036854775807" : stdgo.GoString), (-9223372036854775807i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("9223372036854775808" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("-9223372036854775808" : stdgo.GoString), (-9223372036854775808i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("9223372036854775809" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("-9223372036854775809" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test)].concat([for (i in 21 ... (21 > 21 ? 21 : 21 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test>);
