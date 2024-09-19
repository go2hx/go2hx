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
function testZeroConvT2x(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_11.T__struct_11>(14, 14, ...[
({ _name : ("E8" : stdgo.GoString), _fn : function():Void {
            _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__eight8._eight8);
        } } : _internal.runtime_test.Runtime_test_T__struct_11.T__struct_11),
({ _name : ("E16" : stdgo.GoString), _fn : function():Void {
            _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__zero16._zero16);
        } } : _internal.runtime_test.Runtime_test_T__struct_11.T__struct_11),
({ _name : ("E32" : stdgo.GoString), _fn : function():Void {
            _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__zero32._zero32);
        } } : _internal.runtime_test.Runtime_test_T__struct_11.T__struct_11),
({ _name : ("E64" : stdgo.GoString), _fn : function():Void {
            _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__zero64._zero64);
        } } : _internal.runtime_test.Runtime_test_T__struct_11.T__struct_11),
({ _name : ("Estr" : stdgo.GoString), _fn : function():Void {
            _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__zerostr._zerostr);
        } } : _internal.runtime_test.Runtime_test_T__struct_11.T__struct_11),
({ _name : ("Eslice" : stdgo.GoString), _fn : function():Void {
            _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__zeroslice._zeroslice);
        } } : _internal.runtime_test.Runtime_test_T__struct_11.T__struct_11),
({ _name : ("Econstflt" : stdgo.GoString), _fn : function():Void {
            _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface((99 : stdgo.GoFloat64));
        } } : _internal.runtime_test.Runtime_test_T__struct_11.T__struct_11),
({ _name : ("Econststr" : stdgo.GoString), _fn : function():Void {
            _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(("change" : stdgo.GoString));
        } } : _internal.runtime_test.Runtime_test_T__struct_11.T__struct_11),
({ _name : ("I8" : stdgo.GoString), _fn : function():Void {
            _internal.runtime_test.Runtime_test__i1._i1 = stdgo.Go.asInterface(_internal.runtime_test.Runtime_test__eight8I._eight8I);
        } } : _internal.runtime_test.Runtime_test_T__struct_11.T__struct_11),
({ _name : ("I16" : stdgo.GoString), _fn : function():Void {
            _internal.runtime_test.Runtime_test__i1._i1 = stdgo.Go.asInterface(_internal.runtime_test.Runtime_test__zero16I._zero16I);
        } } : _internal.runtime_test.Runtime_test_T__struct_11.T__struct_11),
({ _name : ("I32" : stdgo.GoString), _fn : function():Void {
            _internal.runtime_test.Runtime_test__i1._i1 = stdgo.Go.asInterface(_internal.runtime_test.Runtime_test__zero32I._zero32I);
        } } : _internal.runtime_test.Runtime_test_T__struct_11.T__struct_11),
({ _name : ("I64" : stdgo.GoString), _fn : function():Void {
            _internal.runtime_test.Runtime_test__i1._i1 = stdgo.Go.asInterface(_internal.runtime_test.Runtime_test__zero64I._zero64I);
        } } : _internal.runtime_test.Runtime_test_T__struct_11.T__struct_11),
({ _name : ("Istr" : stdgo.GoString), _fn : function():Void {
            _internal.runtime_test.Runtime_test__i1._i1 = stdgo.Go.asInterface(_internal.runtime_test.Runtime_test__zerostrI._zerostrI);
        } } : _internal.runtime_test.Runtime_test_T__struct_11.T__struct_11),
({ _name : ("Islice" : stdgo.GoString), _fn : function():Void {
            _internal.runtime_test.Runtime_test__i1._i1 = stdgo.Go.asInterface(_internal.runtime_test.Runtime_test__zerosliceI._zerosliceI);
        } } : _internal.runtime_test.Runtime_test_T__struct_11.T__struct_11)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _fn : null } : _internal.runtime_test.Runtime_test_T__struct_11.T__struct_11)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_11.T__struct_11>);
        for (__6 => _test in _tests) {
            _t.run(_test._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var _n = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1000 : stdgo.GoInt), _test._fn) : stdgo.GoFloat64);
                if (_n != (0 : stdgo.GoFloat64)) {
                    _t.errorf(("want zero allocs, got %v" : stdgo.GoString), stdgo.Go.toInterface(_n));
                };
            });
        };
    }
