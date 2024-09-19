package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.sort_test.Sort_test.T_intPairs_asInterface) class T_intPairs_static_extension {
    @:keep
    static public function _inOrder( _d:_internal.sort_test.Sort_test_T_intPairs.T_intPairs):Bool {
        @:recv var _d:_internal.sort_test.Sort_test_T_intPairs.T_intPairs = _d;
        var __0 = (-1 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _lastB = __1, _lastA = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_d.length) : Bool), _i++, {
                if (_lastA != (_d[(_i : stdgo.GoInt)]._a)) {
                    _lastA = _d[(_i : stdgo.GoInt)]._a;
                    _lastB = _d[(_i : stdgo.GoInt)]._b;
                    continue;
                };
                if ((_d[(_i : stdgo.GoInt)]._b <= _lastB : Bool)) {
                    return false;
                };
                _lastB = _d[(_i : stdgo.GoInt)]._b;
            });
        };
        return true;
    }
    @:keep
    static public function _initB( _d:_internal.sort_test.Sort_test_T_intPairs.T_intPairs):Void {
        @:recv var _d:_internal.sort_test.Sort_test_T_intPairs.T_intPairs = _d;
        for (_i => _ in _d) {
            _d[(_i : stdgo.GoInt)]._b = _i;
        };
    }
    @:keep
    static public function swap( _d:_internal.sort_test.Sort_test_T_intPairs.T_intPairs, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _d:_internal.sort_test.Sort_test_T_intPairs.T_intPairs = _d;
        {
            final __tmp__0 = {
                final x = _d[(_j : stdgo.GoInt)];
                ({ _a : x._a, _b : x._b } : _internal.sort_test.Sort_test_T__struct_4.T__struct_4);
            };
            final __tmp__1 = {
                final x = _d[(_i : stdgo.GoInt)];
                ({ _a : x._a, _b : x._b } : _internal.sort_test.Sort_test_T__struct_4.T__struct_4);
            };
            final __tmp__2 = _d;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _d;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function less( _d:_internal.sort_test.Sort_test_T_intPairs.T_intPairs, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _d:_internal.sort_test.Sort_test_T_intPairs.T_intPairs = _d;
        return (_d[(_i : stdgo.GoInt)]._a < _d[(_j : stdgo.GoInt)]._a : Bool);
    }
    @:keep
    static public function len( _d:_internal.sort_test.Sort_test_T_intPairs.T_intPairs):stdgo.GoInt {
        @:recv var _d:_internal.sort_test.Sort_test_T_intPairs.T_intPairs = _d;
        return (_d.length);
    }
}
