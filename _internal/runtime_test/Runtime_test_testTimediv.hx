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
function testTimediv(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__6 => _tc in (new stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_29.T__struct_29>(7, 7, ...[({ _num : (8i64 : stdgo.GoInt64), _div : (2 : stdgo.GoInt32), _ret : (4 : stdgo.GoInt32), _rem : (0 : stdgo.GoInt32) } : _internal.runtime_test.Runtime_test_T__struct_29.T__struct_29), ({ _num : (9i64 : stdgo.GoInt64), _div : (2 : stdgo.GoInt32), _ret : (4 : stdgo.GoInt32), _rem : (1 : stdgo.GoInt32) } : _internal.runtime_test.Runtime_test_T__struct_29.T__struct_29), ({ _num : (12345000054321i64 : stdgo.GoInt64), _div : (1000000000 : stdgo.GoInt32), _ret : (12345 : stdgo.GoInt32), _rem : (54321 : stdgo.GoInt32) } : _internal.runtime_test.Runtime_test_T__struct_29.T__struct_29), ({ _num : (4294967295i64 : stdgo.GoInt64), _div : (2 : stdgo.GoInt32), _ret : (2147483647 : stdgo.GoInt32), _rem : (1 : stdgo.GoInt32) } : _internal.runtime_test.Runtime_test_T__struct_29.T__struct_29), ({ _num : (4294967296i64 : stdgo.GoInt64), _div : (2 : stdgo.GoInt32), _ret : (2147483647 : stdgo.GoInt32), _rem : (0 : stdgo.GoInt32) } : _internal.runtime_test.Runtime_test_T__struct_29.T__struct_29), ({ _num : (1099511627776i64 : stdgo.GoInt64), _div : (2 : stdgo.GoInt32), _ret : (2147483647 : stdgo.GoInt32), _rem : (0 : stdgo.GoInt32) } : _internal.runtime_test.Runtime_test_T__struct_29.T__struct_29), ({ _num : (1099511627777i64 : stdgo.GoInt64), _div : (1024 : stdgo.GoInt32), _ret : (1073741824 : stdgo.GoInt32), _rem : (1 : stdgo.GoInt32) } : _internal.runtime_test.Runtime_test_T__struct_29.T__struct_29)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({ _num : (0 : stdgo.GoInt64), _div : (0 : stdgo.GoInt32), _ret : (0 : stdgo.GoInt32), _rem : (0 : stdgo.GoInt32) } : _internal.runtime_test.Runtime_test_T__struct_29.T__struct_29)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_29.T__struct_29>)) {
            var _name = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d div %d" : stdgo.GoString), stdgo.Go.toInterface(_tc._num), stdgo.Go.toInterface(_tc._div))?.__copy__() : stdgo.GoString);
            _t.run(_name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var _ret64 = (_tc._num / (_tc._div : stdgo.GoInt64) : stdgo.GoInt64);
                var _rem64 = (_tc._num % (_tc._div : stdgo.GoInt64) : stdgo.GoInt64);
                if (_ret64 != (((_ret64 : stdgo.GoInt32) : stdgo.GoInt64))) {
                    _ret64 = (2147483647i64 : stdgo.GoInt64);
                    _rem64 = (0i64 : stdgo.GoInt64);
                };
                if (_ret64 != ((_tc._ret : stdgo.GoInt64))) {
                    _t.errorf(("%d / %d got ret %d rem %d want ret %d rem %d" : stdgo.GoString), stdgo.Go.toInterface(_tc._num), stdgo.Go.toInterface(_tc._div), stdgo.Go.toInterface(_ret64), stdgo.Go.toInterface(_rem64), stdgo.Go.toInterface(_tc._ret), stdgo.Go.toInterface(_tc._rem));
                };
                var _rem:stdgo.GoInt32 = (0 : stdgo.GoInt32);
                var _ret = (stdgo._internal.runtime.Runtime_timediv.timediv(_tc._num, _tc._div, stdgo.Go.pointer(_rem)) : stdgo.GoInt32);
                if (((_ret != _tc._ret) || (_rem != _tc._rem) : Bool)) {
                    _t.errorf(("timediv %d / %d got ret %d rem %d want ret %d rem %d" : stdgo.GoString), stdgo.Go.toInterface(_tc._num), stdgo.Go.toInterface(_tc._div), stdgo.Go.toInterface(_ret), stdgo.Go.toInterface(_rem), stdgo.Go.toInterface(_tc._ret), stdgo.Go.toInterface(_tc._rem));
                };
            });
        };
    }
