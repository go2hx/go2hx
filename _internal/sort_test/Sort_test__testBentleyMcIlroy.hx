package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function _testBentleyMcIlroy(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _sort:stdgo._internal.sort.Sort_Interface.Interface -> Void, _maxswap:stdgo.GoInt -> stdgo.GoInt):Void {
        var _sizes = (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(100 : stdgo.GoInt), (1023 : stdgo.GoInt), (1024 : stdgo.GoInt), (1025 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        if (stdgo._internal.testing.Testing_short.short()) {
            _sizes = (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(100 : stdgo.GoInt), (127 : stdgo.GoInt), (128 : stdgo.GoInt), (129 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        };
        var _dists = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("sawtooth" : stdgo.GoString), ("rand" : stdgo.GoString), ("stagger" : stdgo.GoString), ("plateau" : stdgo.GoString), ("shuffle" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _modes = (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("copy" : stdgo.GoString), ("reverse" : stdgo.GoString), ("reverse1" : stdgo.GoString), ("reverse2" : stdgo.GoString), ("sort" : stdgo.GoString), ("dither" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var __0:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(1025, 1025, ...[for (i in 0 ... 1025) (0 : stdgo.GoInt)]), __1:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(1025, 1025, ...[for (i in 0 ... 1025) (0 : stdgo.GoInt)]);
var _tmp2 = __1, _tmp1 = __0;
        for (__0 => _n in _sizes) {
            {
                var _m = (1 : stdgo.GoInt);
                stdgo.Go.cfor((_m < ((2 : stdgo.GoInt) * _n : stdgo.GoInt) : Bool), _m = (_m * ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                    {
                        var _dist = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_dist < (5 : stdgo.GoInt) : Bool), _dist++, {
                            var _j = (0 : stdgo.GoInt);
                            var _k = (1 : stdgo.GoInt);
                            var _data = (_tmp1.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoInt>);
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                    {
                                        final __value__ = _dist;
                                        if (__value__ == ((0 : stdgo.GoInt))) {
                                            _data[(_i : stdgo.GoInt)] = (_i % _m : stdgo.GoInt);
                                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                                            _data[(_i : stdgo.GoInt)] = stdgo._internal.math.rand.Rand_intn.intn(_m);
                                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                                            _data[(_i : stdgo.GoInt)] = ((((_i * _m : stdgo.GoInt) + _i : stdgo.GoInt)) % _n : stdgo.GoInt);
                                        } else if (__value__ == ((3 : stdgo.GoInt))) {
                                            _data[(_i : stdgo.GoInt)] = _internal.sort_test.Sort_test__min._min(_i, _m);
                                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                                            if (stdgo._internal.math.rand.Rand_intn.intn(_m) != ((0 : stdgo.GoInt))) {
                                                _j = (_j + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                                _data[(_i : stdgo.GoInt)] = _j;
                                            } else {
                                                _k = (_k + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                                _data[(_i : stdgo.GoInt)] = _k;
                                            };
                                        };
                                    };
                                });
                            };
                            var _mdata = (_tmp2.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoInt>);
                            {
                                var _mode = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_mode < (6 : stdgo.GoInt) : Bool), _mode++, {
                                    {
                                        final __value__ = _mode;
                                        if (__value__ == ((0 : stdgo.GoInt))) {
                                            {
                                                var _i = (0 : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                                    _mdata[(_i : stdgo.GoInt)] = _data[(_i : stdgo.GoInt)];
                                                });
                                            };
                                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                                            {
                                                var _i = (0 : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                                    _mdata[(_i : stdgo.GoInt)] = _data[((_n - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                                });
                                            };
                                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                                            {
                                                var _i = (0 : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < (_n / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                                                    _mdata[(_i : stdgo.GoInt)] = _data[(((_n / (2 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                                });
                                            };
                                            {
                                                var _i = (_n / (2 : stdgo.GoInt) : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                                    _mdata[(_i : stdgo.GoInt)] = _data[(_i : stdgo.GoInt)];
                                                });
                                            };
                                        } else if (__value__ == ((3 : stdgo.GoInt))) {
                                            {
                                                var _i = (0 : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < (_n / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                                                    _mdata[(_i : stdgo.GoInt)] = _data[(_i : stdgo.GoInt)];
                                                });
                                            };
                                            {
                                                var _i = (_n / (2 : stdgo.GoInt) : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                                    _mdata[(_i : stdgo.GoInt)] = _data[((_n - ((_i - (_n / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                                                });
                                            };
                                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                                            {
                                                var _i = (0 : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                                    _mdata[(_i : stdgo.GoInt)] = _data[(_i : stdgo.GoInt)];
                                                });
                                            };
                                            stdgo._internal.sort.Sort_ints.ints(_mdata);
                                        } else if (__value__ == ((5 : stdgo.GoInt))) {
                                            {
                                                var _i = (0 : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                                    _mdata[(_i : stdgo.GoInt)] = (_data[(_i : stdgo.GoInt)] + (_i % (5 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                                                });
                                            };
                                        };
                                    };
                                    var _desc = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("n=%d m=%d dist=%s mode=%s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_dists[(_dist : stdgo.GoInt)]), stdgo.Go.toInterface(_modes[(_mode : stdgo.GoInt)]))?.__copy__() : stdgo.GoString);
                                    var _d = (stdgo.Go.setRef(({ _desc : _desc?.__copy__(), _t : _t, _data : (_mdata.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoInt>), _maxswap : _maxswap(_n) } : _internal.sort_test.Sort_test_T_testingData.T_testingData)) : stdgo.Ref<_internal.sort_test.Sort_test_T_testingData.T_testingData>);
                                    _sort(stdgo.Go.asInterface(_d));
                                    if (!stdgo._internal.sort.Sort_intsAreSorted.intsAreSorted(_mdata)) {
                                        _t.fatalf(("%s: ints not sorted\n\t%v" : stdgo.GoString), stdgo.Go.toInterface(_desc), stdgo.Go.toInterface(_mdata));
                                    };
                                });
                            };
                        });
                    };
                });
            };
        };
    }
