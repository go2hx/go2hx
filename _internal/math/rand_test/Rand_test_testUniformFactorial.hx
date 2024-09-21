package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function testUniformFactorial(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource(_internal.math.rand_test.Rand_test__testSeeds._testSeeds[(0 : stdgo.GoInt)]));
        var _top = (6 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            _top = (3 : stdgo.GoInt);
        };
        {
            var _n = (3 : stdgo.GoInt);
            stdgo.Go.cfor((_n <= _top : Bool), _n++, {
                _t.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("n=%d" : stdgo.GoString), stdgo.Go.toInterface(_n))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var _nfact = (1 : stdgo.GoInt);
                    {
                        var _i = (2 : stdgo.GoInt);
                        stdgo.Go.cfor((_i <= _n : Bool), _i++, {
                            _nfact = (_nfact * (_i) : stdgo.GoInt);
                        });
                    };
                    var _p = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    var _tests = (new stdgo.GoArray<_internal.math.rand_test.Rand_test_T__struct_0.T__struct_0>(4, 4, ...[({ _name : ("Int31n" : stdgo.GoString), _fn : function():stdgo.GoInt {
                        return (_r.int31n((_nfact : stdgo.GoInt32)) : stdgo.GoInt);
                    } } : _internal.math.rand_test.Rand_test_T__struct_0.T__struct_0), ({ _name : ("int31n" : stdgo.GoString), _fn : function():stdgo.GoInt {
                        return (stdgo._internal.math.rand.Rand_int31nForTest.int31nForTest(_r, (_nfact : stdgo.GoInt32)) : stdgo.GoInt);
                    } } : _internal.math.rand_test.Rand_test_T__struct_0.T__struct_0), ({ _name : ("Perm" : stdgo.GoString), _fn : function():stdgo.GoInt {
                        return _internal.math.rand_test.Rand_test__encodePerm._encodePerm(_r.perm(_n));
                    } } : _internal.math.rand_test.Rand_test_T__struct_0.T__struct_0), ({ _name : ("Shuffle" : stdgo.GoString), _fn : function():stdgo.GoInt {
                        for (_i => _ in _p) {
                            _p[(_i : stdgo.GoInt)] = _i;
                        };
                        _r.shuffle(_n, function(_i:stdgo.GoInt, _j:stdgo.GoInt):Void {
                            {
                                final __tmp__0 = _p[(_j : stdgo.GoInt)];
                                final __tmp__1 = _p[(_i : stdgo.GoInt)];
                                final __tmp__2 = _p;
                                final __tmp__3 = (_i : stdgo.GoInt);
                                final __tmp__4 = _p;
                                final __tmp__5 = (_j : stdgo.GoInt);
                                __tmp__2[__tmp__3] = __tmp__0;
                                __tmp__4[__tmp__5] = __tmp__1;
                            };
                        });
                        return _internal.math.rand_test.Rand_test__encodePerm._encodePerm(_p);
                    } } : _internal.math.rand_test.Rand_test_T__struct_0.T__struct_0)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _fn : null } : _internal.math.rand_test.Rand_test_T__struct_0.T__struct_0)])) : stdgo.GoArray<_internal.math.rand_test.Rand_test_T__struct_0.T__struct_0>);
                    for (__12 => _test in _tests) {
                        _t.run(_test._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                            var _nsamples = ((10 : stdgo.GoInt) * _nfact : stdgo.GoInt);
                            if ((_nsamples < (200 : stdgo.GoInt) : Bool)) {
                                _nsamples = (200 : stdgo.GoInt);
                            };
                            var _samples = (new stdgo.Slice<stdgo.GoFloat64>((_nsamples : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
                            for (_i => _ in _samples) {
                                {};
                                var _counts = (new stdgo.Slice<stdgo.GoInt>((_nfact : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                                        _counts[(_test._fn() : stdgo.GoInt)]++;
                                    });
                                };
                                var _want = ((1000 : stdgo.GoFloat64) / (_nfact : stdgo.GoFloat64) : stdgo.GoFloat64);
                                var __9672:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
                                for (__21 => _have in _counts) {
                                    var _err = ((_have : stdgo.GoFloat64) - _want : stdgo.GoFloat64);
                                    __9672 = (__9672 + ((_err * _err : stdgo.GoFloat64)) : stdgo.GoFloat64);
                                };
                                __9672 = (__9672 / (_want) : stdgo.GoFloat64);
                                _samples[(_i : stdgo.GoInt)] = __9672;
                            };
                            var _dof = ((_nfact - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoFloat64);
                            var _expected = (stdgo.Go.setRef(({ _mean : _dof, _stddev : stdgo._internal.math.Math_sqrt.sqrt(((2 : stdgo.GoFloat64) * _dof : stdgo.GoFloat64)) } : _internal.math.rand_test.Rand_test_T_statsResults.T_statsResults)) : stdgo.Ref<_internal.math.rand_test.Rand_test_T_statsResults.T_statsResults>);
                            var _errorScale = (_internal.math.rand_test.Rand_test__max._max((1 : stdgo.GoFloat64), _expected._stddev) : stdgo.GoFloat64);
                            _expected._closeEnough = ((0.1 : stdgo.GoFloat64) * _errorScale : stdgo.GoFloat64);
                            _expected._maxError = (0.08 : stdgo.GoFloat64);
                            _internal.math.rand_test.Rand_test__checkSampleDistribution._checkSampleDistribution(_t, _samples, _expected);
                        });
                    };
                });
            });
        };
    }
