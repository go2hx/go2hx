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
@:keep @:allow(_internal.runtime_test.Runtime_test.HashSet_asInterface) class HashSet_static_extension {
    @:keep
    static public function _check( _s:stdgo.Ref<_internal.runtime_test.Runtime_test_HashSet.HashSet>, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        @:recv var _s:stdgo.Ref<_internal.runtime_test.Runtime_test_HashSet.HashSet> = _s;
        {};
        var _collisions = (_s._n - (_s._m.length) : stdgo.GoInt);
        var _pairs = (((_s._n : stdgo.GoInt64) * ((_s._n - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) : stdgo.GoInt64) / (2i64 : stdgo.GoInt64) : stdgo.GoInt64);
        var _expected = ((_pairs : stdgo.GoFloat64) / stdgo._internal.math.Math_pow.pow((2 : stdgo.GoFloat64), ((32 : stdgo.GoInt) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _stddev = (stdgo._internal.math.Math_sqrt.sqrt(_expected) : stdgo.GoFloat64);
        if (((_collisions : stdgo.GoFloat64) > (_expected + ((50 : stdgo.GoFloat64) * ((((3 : stdgo.GoFloat64) * _stddev : stdgo.GoFloat64) + (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64) : Bool)) {
            _t.errorf(("unexpected number of collisions: got=%d mean=%f stddev=%f threshold=%f" : stdgo.GoString), stdgo.Go.toInterface(_collisions), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_stddev), stdgo.Go.toInterface((_expected + ((50 : stdgo.GoFloat64) * ((((3 : stdgo.GoFloat64) * _stddev : stdgo.GoFloat64) + (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoFloat64)));
        };
    }
    @:keep
    static public function _addS_seed( _s:stdgo.Ref<_internal.runtime_test.Runtime_test_HashSet.HashSet>, _x:stdgo.GoString, _seed:stdgo.GoUIntptr):Void {
        @:recv var _s:stdgo.Ref<_internal.runtime_test.Runtime_test_HashSet.HashSet> = _s;
        _s._add(stdgo._internal.runtime.Runtime_stringHash.stringHash(_x?.__copy__(), _seed));
    }
    @:keep
    static public function _addB( _s:stdgo.Ref<_internal.runtime_test.Runtime_test_HashSet.HashSet>, _x:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _s:stdgo.Ref<_internal.runtime_test.Runtime_test_HashSet.HashSet> = _s;
        _s._add(stdgo._internal.runtime.Runtime_bytesHash.bytesHash(_x, (0 : stdgo.GoUIntptr)));
    }
    @:keep
    static public function _addS( _s:stdgo.Ref<_internal.runtime_test.Runtime_test_HashSet.HashSet>, _x:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<_internal.runtime_test.Runtime_test_HashSet.HashSet> = _s;
        _s._add(stdgo._internal.runtime.Runtime_stringHash.stringHash(_x?.__copy__(), (0 : stdgo.GoUIntptr)));
    }
    @:keep
    static public function _add( _s:stdgo.Ref<_internal.runtime_test.Runtime_test_HashSet.HashSet>, _h:stdgo.GoUIntptr):Void {
        @:recv var _s:stdgo.Ref<_internal.runtime_test.Runtime_test_HashSet.HashSet> = _s;
        _s._m[_h] = (new _internal.runtime_test.Runtime_test_T_struct0.T_struct0() : _internal.runtime_test.Runtime_test_T_struct0.T_struct0);
        _s._n++;
    }
}
