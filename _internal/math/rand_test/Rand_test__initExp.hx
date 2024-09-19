package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function _initExp():{ var _0 : stdgo.Slice<stdgo.GoUInt32>; var _1 : stdgo.Slice<stdgo.GoFloat32>; var _2 : stdgo.Slice<stdgo.GoFloat32>; } {
        var _testKe = (null : stdgo.Slice<stdgo.GoUInt32>), _testWe = (null : stdgo.Slice<stdgo.GoFloat32>), _testFe = (null : stdgo.Slice<stdgo.GoFloat32>);
        {};
        var __0:stdgo.GoFloat64 = _internal.math.rand_test.Rand_test__re._re, __1:stdgo.GoFloat64 = _de, __2:stdgo.GoFloat64 = (0.003949659822581557 : stdgo.GoFloat64);
var _ve = __2, _te = __1, _de = __0;
        _testKe = (new stdgo.Slice<stdgo.GoUInt32>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        _testWe = (new stdgo.Slice<stdgo.GoFloat32>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat32>);
        _testFe = (new stdgo.Slice<stdgo.GoFloat32>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat32>);
        var _q = (_ve / stdgo._internal.math.Math_exp.exp(-_de) : stdgo.GoFloat64);
        _testKe[(0 : stdgo.GoInt)] = ((((_de / _q : stdgo.GoFloat64)) * (4.294967296e+09 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoUInt32);
        _testKe[(1 : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
        _testWe[(0 : stdgo.GoInt)] = ((_q / (4.294967296e+09 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat32);
        _testWe[(255 : stdgo.GoInt)] = ((_de / (4.294967296e+09 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat32);
        _testFe[(0 : stdgo.GoInt)] = (1 : stdgo.GoFloat64);
        _testFe[(255 : stdgo.GoInt)] = (stdgo._internal.math.Math_exp.exp(-_de) : stdgo.GoFloat32);
        {
            var _i = (254 : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (1 : stdgo.GoInt) : Bool), _i--, {
                _de = -stdgo._internal.math.Math_log.log(((_ve / _de : stdgo.GoFloat64) + stdgo._internal.math.Math_exp.exp(-_de) : stdgo.GoFloat64));
                _testKe[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = ((((_de / _te : stdgo.GoFloat64)) * (4.294967296e+09 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoUInt32);
                _te = _de;
                _testFe[(_i : stdgo.GoInt)] = (stdgo._internal.math.Math_exp.exp(-_de) : stdgo.GoFloat32);
                _testWe[(_i : stdgo.GoInt)] = ((_de / (4.294967296e+09 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat32);
            });
        };
        return { _0 : _testKe, _1 : _testWe, _2 : _testFe };
    }
