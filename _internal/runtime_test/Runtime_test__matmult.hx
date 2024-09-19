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
function _matmult(_done:stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>, a:_internal.runtime_test.Runtime_test_Matrix.Matrix, b:_internal.runtime_test.Runtime_test_Matrix.Matrix, c:_internal.runtime_test.Runtime_test_Matrix.Matrix, _i0:stdgo.GoInt, _i1:stdgo.GoInt, _j0:stdgo.GoInt, _j1:stdgo.GoInt, _k0:stdgo.GoInt, _k1:stdgo.GoInt, _threshold:stdgo.GoInt):Void {
        var _di = (_i1 - _i0 : stdgo.GoInt);
        var _dj = (_j1 - _j0 : stdgo.GoInt);
        var _dk = (_k1 - _k0 : stdgo.GoInt);
        if ((((_di >= _dj : Bool) && (_di >= _dk : Bool) : Bool) && (_di >= _threshold : Bool) : Bool)) {
            var _mi = (_i0 + (_di / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            var _done1 = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>((1 : stdgo.GoInt).toBasic(), () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
            stdgo.Go.routine(() -> _internal.runtime_test.Runtime_test__matmult._matmult(_done1,
a,
b,
c,
_i0,
_mi,
_j0,
_j1,
_k0,
_k1,
_threshold));
            _internal.runtime_test.Runtime_test__matmult._matmult((null : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>),
a,
b,
c,
_mi,
_i1,
_j0,
_j1,
_k0,
_k1,
_threshold);
            _done1.__get__();
        } else if (((_dj >= _dk : Bool) && (_dj >= _threshold : Bool) : Bool)) {
            var _mj = (_j0 + (_dj / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            var _done1 = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>((1 : stdgo.GoInt).toBasic(), () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
            stdgo.Go.routine(() -> _internal.runtime_test.Runtime_test__matmult._matmult(_done1,
a,
b,
c,
_i0,
_i1,
_j0,
_mj,
_k0,
_k1,
_threshold));
            _internal.runtime_test.Runtime_test__matmult._matmult((null : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>),
a,
b,
c,
_i0,
_i1,
_mj,
_j1,
_k0,
_k1,
_threshold);
            _done1.__get__();
        } else if ((_dk >= _threshold : Bool)) {
            var _mk = (_k0 + (_dk / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            _internal.runtime_test.Runtime_test__matmult._matmult((null : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>),
a,
b,
c,
_i0,
_i1,
_j0,
_j1,
_k0,
_mk,
_threshold);
            _internal.runtime_test.Runtime_test__matmult._matmult((null : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>),
a,
b,
c,
_i0,
_i1,
_j0,
_j1,
_mk,
_k1,
_threshold);
        } else {
            {
                var _i = (_i0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _i1 : Bool), _i++, {
                    {
                        var _j = (_j0 : stdgo.GoInt);
                        stdgo.Go.cfor((_j < _j1 : Bool), _j++, {
                            {
                                var _k = (_k0 : stdgo.GoInt);
                                stdgo.Go.cfor((_k < _k1 : Bool), _k++, {
                                    c[(_i : stdgo.GoInt)][(_j : stdgo.GoInt)] = (c[(_i : stdgo.GoInt)][(_j : stdgo.GoInt)] + ((a[(_i : stdgo.GoInt)][(_k : stdgo.GoInt)] * b[(_k : stdgo.GoInt)][(_j : stdgo.GoInt)] : stdgo.GoFloat64)) : stdgo.GoFloat64);
                                });
                            };
                        });
                    };
                });
            };
        };
        if (_done != null) {
            _done.__send__((new _internal.runtime_test.Runtime_test_T_struct0.T_struct0() : _internal.runtime_test.Runtime_test_T_struct0.T_struct0));
        };
    }
