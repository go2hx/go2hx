package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testTypeFieldOutOfRangePanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _typ = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_S6.S6((10 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_S6.S6))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _testIndices = {
            var s:stdgo.GoArray<_internal.reflect_test.Reflect_test_T__struct_89.T__struct_89> = new stdgo.GoArray<_internal.reflect_test.Reflect_test_T__struct_89.T__struct_89>(4, 4, ...[for (i in 0 ... 4) ({ _i : (0 : stdgo.GoInt), _mustPanic : false } : _internal.reflect_test.Reflect_test_T__struct_89.T__struct_89)]);
            s[0] = ({ _i : (-2 : stdgo.GoInt), _mustPanic : true } : _internal.reflect_test.Reflect_test_T__struct_89.T__struct_89);
            s[1] = ({ _i : (0 : stdgo.GoInt), _mustPanic : false } : _internal.reflect_test.Reflect_test_T__struct_89.T__struct_89);
            s[2] = ({ _i : (1 : stdgo.GoInt), _mustPanic : true } : _internal.reflect_test.Reflect_test_T__struct_89.T__struct_89);
            s[3] = ({ _i : (1024 : stdgo.GoInt), _mustPanic : true } : _internal.reflect_test.Reflect_test_T__struct_89.T__struct_89);
            s;
        };
        for (_i => _tt in _testIndices) {
            var _recoveredErr = (_internal.reflect_test.Reflect_test__fieldIndexRecover._fieldIndexRecover(_typ, _tt._i) : stdgo.AnyInterface);
            if (_tt._mustPanic) {
                if (_recoveredErr == null) {
                    _t.errorf(("#%d: fieldIndex %d expected to panic" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._i));
                };
            } else {
                if (_recoveredErr != null) {
                    _t.errorf(("#%d: got err=%v, expected no panic" : stdgo.GoString), stdgo.Go.toInterface(_i), _recoveredErr);
                };
            };
        };
    }
