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
function testParseByteCount(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__6 => _test in (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test>(89, 89, ...[
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("1" : stdgo.GoString), (1i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("12345" : stdgo.GoString), (12345i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("012345" : stdgo.GoString), (12345i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("98765432100" : stdgo.GoString), (98765432100i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("9223372036854775807" : stdgo.GoString), (9223372036854775807i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("1B" : stdgo.GoString), (1i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("12345B" : stdgo.GoString), (12345i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("012345B" : stdgo.GoString), (12345i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("98765432100B" : stdgo.GoString), (98765432100i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("9223372036854775807B" : stdgo.GoString), (9223372036854775807i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("1KiB" : stdgo.GoString), (1024i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("05KiB" : stdgo.GoString), (5120i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("1MiB" : stdgo.GoString), (1048576i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("10MiB" : stdgo.GoString), (10485760i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("1GiB" : stdgo.GoString), (1073741824i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("100GiB" : stdgo.GoString), (107374182400i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("1TiB" : stdgo.GoString), (1099511627776i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("99TiB" : stdgo.GoString), (108851651149824i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("-0" : stdgo.GoString), (0i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("0" : stdgo.GoString), (0i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("0B" : stdgo.GoString), (0i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("0KiB" : stdgo.GoString), (0i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("0MiB" : stdgo.GoString), (0i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("0GiB" : stdgo.GoString), (0i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("0TiB" : stdgo.GoString), (0i64 : stdgo.GoInt64), true) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(stdgo.Go.str()?.__copy__(), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("-1" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("a12345" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("a12345B" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("12345x" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("0x12345" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("9223372036854775808" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("9223372036854775809" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("18446744073709551615" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("20496382327982653440" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("18446744073709551616" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("18446744073709551617" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("9999999999999999999999" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("9223372036854775808B" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("9223372036854775809B" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("18446744073709551615B" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("20496382327982653440B" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("18446744073709551616B" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("18446744073709551617B" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("9999999999999999999999B" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("1Ki" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("05Ki" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("10Mi" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("100Gi" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("99Ti" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("22iB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("B" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("iB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("KiB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("MiB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("GiB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("TiB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("-120KiB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("-891MiB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("-704GiB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("-42TiB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("99999999999999999999KiB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("99999999999999999MiB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("99999999999999GiB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("99999999999TiB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("555EiB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("0KB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("0MB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("0GB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("0TB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("1KB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("05KB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("1MB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("10MB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("1GB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("100GB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("1TB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("99TB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("1K" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("05K" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("10M" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("100G" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("99T" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("99999999999999999999KB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("99999999999999999MB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("99999999999999GB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("99999999999TB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("99999999999TiB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test),
(new _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test(("555EB" : stdgo.GoString), (0i64 : stdgo.GoInt64), false) : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test)].concat([for (i in 89 ... (89 > 89 ? 89 : 89 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test>)) {
            var __tmp__ = stdgo._internal.runtime.Runtime_parseByteCount.parseByteCount(_test._in?.__copy__()), _out:stdgo.GoInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
            if (((_test._out != _out) || (_test._ok != _ok) : Bool)) {
                _t.errorf(("parseByteCount(%q) = (%v, %v) want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._ok));
            };
        };
    }
