package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function _initNorm():{ var _0 : stdgo.Slice<stdgo.GoUInt32>; var _1 : stdgo.Slice<stdgo.GoFloat32>; var _2 : stdgo.Slice<stdgo.GoFloat32>; } {
        var _testKn = (null : stdgo.Slice<stdgo.GoUInt32>), _testWn = (null : stdgo.Slice<stdgo.GoFloat32>), _testFn = (null : stdgo.Slice<stdgo.GoFloat32>);
        {};
        var __0:stdgo.GoFloat64 = _internal.math.rand_test.Rand_test__rn._rn, __1:stdgo.GoFloat64 = _dn, __2:stdgo.GoFloat64 = (0.00991256303526217 : stdgo.GoFloat64);
var _vn = __2, _tn = __1, _dn = __0;
        _testKn = (new stdgo.Slice<stdgo.GoUInt32>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        _testWn = (new stdgo.Slice<stdgo.GoFloat32>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat32>);
        _testFn = (new stdgo.Slice<stdgo.GoFloat32>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat32>);
        var _q = (_vn / stdgo._internal.math.Math_exp.exp((((-0.5 : stdgo.GoFloat64) * _dn : stdgo.GoFloat64) * _dn : stdgo.GoFloat64)) : stdgo.GoFloat64);
        _testKn[(0 : stdgo.GoInt)] = ((((_dn / _q : stdgo.GoFloat64)) * (2.147483648e+09 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoUInt32);
        _testKn[(1 : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
        _testWn[(0 : stdgo.GoInt)] = ((_q / (2.147483648e+09 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat32);
        _testWn[(127 : stdgo.GoInt)] = ((_dn / (2.147483648e+09 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat32);
        _testFn[(0 : stdgo.GoInt)] = (1 : stdgo.GoFloat64);
        _testFn[(127 : stdgo.GoInt)] = (stdgo._internal.math.Math_exp.exp((((-0.5 : stdgo.GoFloat64) * _dn : stdgo.GoFloat64) * _dn : stdgo.GoFloat64)) : stdgo.GoFloat32);
        {
            var _i = (126 : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (1 : stdgo.GoInt) : Bool), _i--, {
                _dn = stdgo._internal.math.Math_sqrt.sqrt(((-2 : stdgo.GoFloat64) * stdgo._internal.math.Math_log.log(((_vn / _dn : stdgo.GoFloat64) + stdgo._internal.math.Math_exp.exp((((-0.5 : stdgo.GoFloat64) * _dn : stdgo.GoFloat64) * _dn : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64));
                _testKn[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = ((((_dn / _tn : stdgo.GoFloat64)) * (2.147483648e+09 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoUInt32);
                _tn = _dn;
                _testFn[(_i : stdgo.GoInt)] = (stdgo._internal.math.Math_exp.exp((((-0.5 : stdgo.GoFloat64) * _dn : stdgo.GoFloat64) * _dn : stdgo.GoFloat64)) : stdgo.GoFloat32);
                _testWn[(_i : stdgo.GoInt)] = ((_dn / (2.147483648e+09 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat32);
            });
        };
        return { _0 : _testKn, _1 : _testWn, _2 : _testFn };
    }
