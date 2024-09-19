package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.sort_test.Sort_test.T_nonDeterministicTestingData_asInterface) class T_nonDeterministicTestingData_static_extension {
    @:keep
    static public function swap( _t:stdgo.Ref<_internal.sort_test.Sort_test_T_nonDeterministicTestingData.T_nonDeterministicTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _t:stdgo.Ref<_internal.sort_test.Sort_test_T_nonDeterministicTestingData.T_nonDeterministicTestingData> = _t;
        if (((((_i < (0 : stdgo.GoInt) : Bool) || (_j < (0 : stdgo.GoInt) : Bool) : Bool) || (_i >= _t.len() : Bool) : Bool) || (_j >= _t.len() : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("nondeterministic comparison out of bounds" : stdgo.GoString));
        };
    }
    @:keep
    static public function less( _t:stdgo.Ref<_internal.sort_test.Sort_test_T_nonDeterministicTestingData.T_nonDeterministicTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _t:stdgo.Ref<_internal.sort_test.Sort_test_T_nonDeterministicTestingData.T_nonDeterministicTestingData> = _t;
        if (((((_i < (0 : stdgo.GoInt) : Bool) || (_j < (0 : stdgo.GoInt) : Bool) : Bool) || (_i >= _t.len() : Bool) : Bool) || (_j >= _t.len() : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("nondeterministic comparison out of bounds" : stdgo.GoString));
        };
        return (_t._r.float32() < (0.5 : stdgo.GoFloat64) : Bool);
    }
    @:keep
    static public function len( _t:stdgo.Ref<_internal.sort_test.Sort_test_T_nonDeterministicTestingData.T_nonDeterministicTestingData>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<_internal.sort_test.Sort_test_T_nonDeterministicTestingData.T_nonDeterministicTestingData> = _t;
        return (500 : stdgo.GoInt);
    }
}
