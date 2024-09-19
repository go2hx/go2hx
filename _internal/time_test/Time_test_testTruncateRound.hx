package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testTruncateRound(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __3:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __4:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __5:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __6:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
var _b1e9 = __6, _bq = __5, _br = __4, _bt = __3, _bd = __2, _bnsec = __1, _bsec = __0;
        _b1e9.setInt64((1000000000i64 : stdgo.GoInt64));
        var _testOne = (function(_ti:stdgo.GoInt64, _tns:stdgo.GoInt64, _di:stdgo.GoInt64):Bool {
            _t.helper();
            var _t0 = (stdgo._internal.time.Time_unix.unix(_ti, (_tns : stdgo.GoInt64)).utc()?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _d = (_di : stdgo._internal.time.Time_Duration.Duration);
            if ((_d < (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                _d = -_d;
            };
            if ((_d <= (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                _d = (1i64 : stdgo._internal.time.Time_Duration.Duration);
            };
            var __tmp__ = _internal.time_test.Time_test__abs._abs(_t0?.__copy__()), _sec:stdgo.GoInt64 = __tmp__._0, _nsec:stdgo.GoInt64 = __tmp__._1;
            _bsec.setInt64(_sec);
            _bnsec.setInt64(_nsec);
            _bt.mul(_bsec, _b1e9);
            _bt.add(_bt, _bnsec);
            _bd.setInt64((_d : stdgo.GoInt64));
            _bq.divMod(_bt, _bd, _br);
            var _r = (_br.int64() : stdgo.GoInt64);
            var _t1 = (_t0.add(-(_r : stdgo._internal.time.Time_Duration.Duration))?.__copy__() : stdgo._internal.time.Time_Time.Time);
            {
                var _trunc = (_t0.truncate(_d)?.__copy__() : stdgo._internal.time.Time_Time.Time);
                if (stdgo.Go.toInterface(_trunc) != stdgo.Go.toInterface(_t1)) {
                    _t.errorf(("Time.Truncate(%s, %s) = %s, want %s\n%v trunc %v =\n%v want\n%v" : stdgo.GoString), stdgo.Go.toInterface(_t0.format(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString))), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_trunc)), stdgo.Go.toInterface(_t1.format(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString))), stdgo.Go.toInterface(_internal.time_test.Time_test__absString._absString(_t0?.__copy__())), stdgo.Go.toInterface((_d : stdgo.GoInt64)), stdgo.Go.toInterface(_internal.time_test.Time_test__absString._absString(_trunc?.__copy__())), stdgo.Go.toInterface(_internal.time_test.Time_test__absString._absString(_t1?.__copy__())));
                    return false;
                };
            };
            if (((_r > ((_d : stdgo.GoInt64) / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : Bool) || ((_r + _r : stdgo.GoInt64) == (_d : stdgo.GoInt64)) : Bool)) {
                _t1 = _t1.add((_d : stdgo._internal.time.Time_Duration.Duration))?.__copy__();
            };
            {
                var _rnd = (_t0.round(_d)?.__copy__() : stdgo._internal.time.Time_Time.Time);
                if (stdgo.Go.toInterface(_rnd) != stdgo.Go.toInterface(_t1)) {
                    _t.errorf(("Time.Round(%s, %s) = %s, want %s\n%v round %v =\n%v want\n%v" : stdgo.GoString), stdgo.Go.toInterface(_t0.format(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString))), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_rnd)), stdgo.Go.toInterface(_t1.format(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString))), stdgo.Go.toInterface(_internal.time_test.Time_test__absString._absString(_t0?.__copy__())), stdgo.Go.toInterface((_d : stdgo.GoInt64)), stdgo.Go.toInterface(_internal.time_test.Time_test__absString._absString(_rnd?.__copy__())), stdgo.Go.toInterface(_internal.time_test.Time_test__absString._absString(_t1?.__copy__())));
                    return false;
                };
            };
            return true;
        } : (stdgo.GoInt64, stdgo.GoInt64, stdgo.GoInt64) -> Bool);
        for (__2 => _tt in _internal.time_test.Time_test__truncateRoundTests._truncateRoundTests) {
            _testOne(_tt._t.unix(), (_tt._t.nanosecond() : stdgo.GoInt64), (_tt._d : stdgo.GoInt64));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                {
                    var _j = (1 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (100 : stdgo.GoInt) : Bool), _j++, {
                        _testOne((62135596800i64 : stdgo.GoInt64), (_i : stdgo.GoInt64), (_j : stdgo.GoInt64));
                        _testOne((62135596800i64 : stdgo.GoInt64), -(_i : stdgo.GoInt64), (_j : stdgo.GoInt64));
                        if (_t.failed()) {
                            return;
                        };
                    });
                };
            });
        };
        if (_t.failed()) {
            return;
        };
        var _cfg = (stdgo.Go.setRef(({ maxCount : (100000 : stdgo.GoInt) } : stdgo._internal.testing.quick.Quick_Config.Config)) : stdgo.Ref<stdgo._internal.testing.quick.Quick_Config.Config>);
        if (stdgo._internal.testing.Testing_short.short()) {
            _cfg.maxCount = (1000 : stdgo.GoInt);
        };
        var _f1 = (function(_ti:stdgo.GoInt64, _tns:stdgo.GoInt32, _logdi:stdgo.GoInt32):Bool {
            var _d = ((1i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
            var __0 = ((_logdi % (9 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt), __1 = (((_logdi >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt32)) % (9 : stdgo.GoInt32) : stdgo.GoInt32);
var _b = __1, _a = __0;
            _d = (_d << (_a) : stdgo._internal.time.Time_Duration.Duration);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_b : stdgo.GoInt) : Bool), _i++, {
                    _d = (_d * ((5i64 : stdgo._internal.time.Time_Duration.Duration)) : stdgo._internal.time.Time_Duration.Duration);
                });
            };
            _ti = (_ti >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
            return _testOne(_ti, (_tns : stdgo.GoInt64), (_d : stdgo.GoInt64));
        } : (stdgo.GoInt64, stdgo.GoInt32, stdgo.GoInt32) -> Bool);
        stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(_f1), _cfg);
        var _f2 = (function(_ti:stdgo.GoInt64, _tns:stdgo.GoInt32, _di:stdgo.GoInt32):Bool {
            var _d = ((_di : stdgo._internal.time.Time_Duration.Duration) * (1000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
            if ((_d < (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                _d = -_d;
            };
            _ti = (_ti >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
            return _testOne(_ti, (_tns : stdgo.GoInt64), (_d : stdgo.GoInt64));
        } : (stdgo.GoInt64, stdgo.GoInt32, stdgo.GoInt32) -> Bool);
        stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(_f2), _cfg);
        var _f3 = (function(_tns:stdgo.GoInt64, _di:stdgo.GoInt64):Bool {
            _di = (_di & ((4294967294i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            if (_di == ((0i64 : stdgo.GoInt64))) {
                _di = (2i64 : stdgo.GoInt64);
            };
            _tns = (_tns - ((_tns % _di : stdgo.GoInt64)) : stdgo.GoInt64);
            if ((_tns < (0i64 : stdgo.GoInt64) : Bool)) {
                _tns = (_tns + ((_di / (2i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
            } else {
                _tns = (_tns - ((_di / (2i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
            };
            return _testOne((0i64 : stdgo.GoInt64), _tns, _di);
        } : (stdgo.GoInt64, stdgo.GoInt64) -> Bool);
        stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(_f3), _cfg);
        var _f4 = (function(_ti:stdgo.GoInt64, _tns:stdgo.GoInt32, _di:stdgo.GoInt64):Bool {
            _ti = (_ti >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
            return _testOne(_ti, (_tns : stdgo.GoInt64), _di);
        } : (stdgo.GoInt64, stdgo.GoInt32, stdgo.GoInt64) -> Bool);
        stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(_f4), _cfg);
    }
