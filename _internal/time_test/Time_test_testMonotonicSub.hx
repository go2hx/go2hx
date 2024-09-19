package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testMonotonicSub(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _t1 = (stdgo._internal.time.Time_unix.unix((1483228799i64 : stdgo.GoInt64), (995000000i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        stdgo._internal.time.Time_setMono.setMono((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>), (123456789012345i64 : stdgo.GoInt64));
        var _t2 = (stdgo._internal.time.Time_unix.unix((1483228799i64 : stdgo.GoInt64), (5000000i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        stdgo._internal.time.Time_setMono.setMono((stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>), (123456799012345i64 : stdgo.GoInt64));
        var _t3 = (stdgo._internal.time.Time_unix.unix((1483228799i64 : stdgo.GoInt64), (995000000i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        stdgo._internal.time.Time_setMono.setMono((stdgo.Go.setRef(_t3) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>), (123457789012345i64 : stdgo.GoInt64));
        var _t1w = (_t1.addDate((0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        if (stdgo._internal.time.Time_getMono.getMono((stdgo.Go.setRef(_t1w) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>)) != ((0i64 : stdgo.GoInt64))) {
            _t.fatalf(("AddDate didn\'t strip monotonic clock reading" : stdgo.GoString));
        };
        var _t2w = (_t2.addDate((0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        if (stdgo._internal.time.Time_getMono.getMono((stdgo.Go.setRef(_t2w) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>)) != ((0i64 : stdgo.GoInt64))) {
            _t.fatalf(("AddDate didn\'t strip monotonic clock reading" : stdgo.GoString));
        };
        var _t3w = (_t3.addDate((0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        if (stdgo._internal.time.Time_getMono.getMono((stdgo.Go.setRef(_t3w) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>)) != ((0i64 : stdgo.GoInt64))) {
            _t.fatalf(("AddDate didn\'t strip monotonic clock reading" : stdgo.GoString));
        };
        var _sub = (function(_txs:stdgo.GoString, _tys:stdgo.GoString, _tx:stdgo._internal.time.Time_Time.Time, _txw:stdgo._internal.time.Time_Time.Time, _ty:stdgo._internal.time.Time_Time.Time, _tyw:stdgo._internal.time.Time_Time.Time, _d:stdgo._internal.time.Time_Duration.Duration, _dw:stdgo._internal.time.Time_Duration.Duration):Void {
            var _check = (function(_expr:stdgo.GoString, _d:stdgo._internal.time.Time_Duration.Duration, _want:stdgo._internal.time.Time_Duration.Duration):Void {
                if (_d != (_want)) {
                    _t.errorf(("%s = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_expr), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                };
            } : (stdgo.GoString, stdgo._internal.time.Time_Duration.Duration, stdgo._internal.time.Time_Duration.Duration) -> Void);
            _check((((_txs + (".Sub(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _tx.sub(_ty?.__copy__()), _d);
            _check((((_txs + ("w.Sub(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _txw.sub(_ty?.__copy__()), _dw);
            _check((((_txs + (".Sub(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _tx.sub(_tyw?.__copy__()), _dw);
            _check((((_txs + ("w.Sub(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _txw.sub(_tyw?.__copy__()), _dw);
        } : (stdgo.GoString, stdgo.GoString, stdgo._internal.time.Time_Time.Time, stdgo._internal.time.Time_Time.Time, stdgo._internal.time.Time_Time.Time, stdgo._internal.time.Time_Time.Time, stdgo._internal.time.Time_Duration.Duration, stdgo._internal.time.Time_Duration.Duration) -> Void);
        _sub(("t1" : stdgo.GoString), ("t1" : stdgo.GoString), _t1?.__copy__(), _t1w?.__copy__(), _t1?.__copy__(), _t1w?.__copy__(), (0i64 : stdgo._internal.time.Time_Duration.Duration), (0i64 : stdgo._internal.time.Time_Duration.Duration));
        _sub(("t1" : stdgo.GoString), ("t2" : stdgo.GoString), _t1?.__copy__(), _t1w?.__copy__(), _t2?.__copy__(), _t2w?.__copy__(), (-10000000i64 : stdgo._internal.time.Time_Duration.Duration), (990000000i64 : stdgo._internal.time.Time_Duration.Duration));
        _sub(("t1" : stdgo.GoString), ("t3" : stdgo.GoString), _t1?.__copy__(), _t1w?.__copy__(), _t3?.__copy__(), _t3w?.__copy__(), (-1000000000i64 : stdgo._internal.time.Time_Duration.Duration), (0i64 : stdgo._internal.time.Time_Duration.Duration));
        _sub(("t2" : stdgo.GoString), ("t1" : stdgo.GoString), _t2?.__copy__(), _t2w?.__copy__(), _t1?.__copy__(), _t1w?.__copy__(), (10000000i64 : stdgo._internal.time.Time_Duration.Duration), (-990000000i64 : stdgo._internal.time.Time_Duration.Duration));
        _sub(("t2" : stdgo.GoString), ("t2" : stdgo.GoString), _t2?.__copy__(), _t2w?.__copy__(), _t2?.__copy__(), _t2w?.__copy__(), (0i64 : stdgo._internal.time.Time_Duration.Duration), (0i64 : stdgo._internal.time.Time_Duration.Duration));
        _sub(("t2" : stdgo.GoString), ("t3" : stdgo.GoString), _t2?.__copy__(), _t2w?.__copy__(), _t3?.__copy__(), _t3w?.__copy__(), (-990000000i64 : stdgo._internal.time.Time_Duration.Duration), (-990000000i64 : stdgo._internal.time.Time_Duration.Duration));
        _sub(("t3" : stdgo.GoString), ("t1" : stdgo.GoString), _t3?.__copy__(), _t3w?.__copy__(), _t1?.__copy__(), _t1w?.__copy__(), (1000000000i64 : stdgo._internal.time.Time_Duration.Duration), (0i64 : stdgo._internal.time.Time_Duration.Duration));
        _sub(("t3" : stdgo.GoString), ("t2" : stdgo.GoString), _t3?.__copy__(), _t3w?.__copy__(), _t2?.__copy__(), _t2w?.__copy__(), (990000000i64 : stdgo._internal.time.Time_Duration.Duration), (990000000i64 : stdgo._internal.time.Time_Duration.Duration));
        _sub(("t3" : stdgo.GoString), ("t3" : stdgo.GoString), _t3?.__copy__(), _t3w?.__copy__(), _t3?.__copy__(), _t3w?.__copy__(), (0i64 : stdgo._internal.time.Time_Duration.Duration), (0i64 : stdgo._internal.time.Time_Duration.Duration));
        var _cmp = (function(_txs:stdgo.GoString, _tys:stdgo.GoString, _tx:stdgo._internal.time.Time_Time.Time, _txw:stdgo._internal.time.Time_Time.Time, _ty:stdgo._internal.time.Time_Time.Time, _tyw:stdgo._internal.time.Time_Time.Time, _c:stdgo.GoInt, _cw:stdgo.GoInt):Void {
            var _check = (function(_expr:stdgo.GoString, _b:stdgo.AnyInterface, _want:stdgo.AnyInterface):Void {
                if (_b != (_want)) {
                    _t.errorf(("%s = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_expr), _b, _want);
                };
            } : (stdgo.GoString, stdgo.AnyInterface, stdgo.AnyInterface) -> Void);
            _check((((_txs + (".After(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tx.after(_ty?.__copy__())), stdgo.Go.toInterface((_c > (0 : stdgo.GoInt) : Bool)));
            _check((((_txs + ("w.After(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_txw.after(_ty?.__copy__())), stdgo.Go.toInterface((_cw > (0 : stdgo.GoInt) : Bool)));
            _check((((_txs + (".After(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tx.after(_tyw?.__copy__())), stdgo.Go.toInterface((_cw > (0 : stdgo.GoInt) : Bool)));
            _check((((_txs + ("w.After(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_txw.after(_tyw?.__copy__())), stdgo.Go.toInterface((_cw > (0 : stdgo.GoInt) : Bool)));
            _check((((_txs + (".Before(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tx.before(_ty?.__copy__())), stdgo.Go.toInterface((_c < (0 : stdgo.GoInt) : Bool)));
            _check((((_txs + ("w.Before(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_txw.before(_ty?.__copy__())), stdgo.Go.toInterface((_cw < (0 : stdgo.GoInt) : Bool)));
            _check((((_txs + (".Before(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tx.before(_tyw?.__copy__())), stdgo.Go.toInterface((_cw < (0 : stdgo.GoInt) : Bool)));
            _check((((_txs + ("w.Before(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_txw.before(_tyw?.__copy__())), stdgo.Go.toInterface((_cw < (0 : stdgo.GoInt) : Bool)));
            _check((((_txs + (".Equal(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tx.equal(_ty?.__copy__())), stdgo.Go.toInterface(_c == ((0 : stdgo.GoInt))));
            _check((((_txs + ("w.Equal(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_txw.equal(_ty?.__copy__())), stdgo.Go.toInterface(_cw == ((0 : stdgo.GoInt))));
            _check((((_txs + (".Equal(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tx.equal(_tyw?.__copy__())), stdgo.Go.toInterface(_cw == ((0 : stdgo.GoInt))));
            _check((((_txs + ("w.Equal(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_txw.equal(_tyw?.__copy__())), stdgo.Go.toInterface(_cw == ((0 : stdgo.GoInt))));
            _check((((_txs + (".Compare(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tx.compare(_ty?.__copy__())), stdgo.Go.toInterface(_c));
            _check((((_txs + ("w.Compare(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_txw.compare(_ty?.__copy__())), stdgo.Go.toInterface(_cw));
            _check((((_txs + (".Compare(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tx.compare(_tyw?.__copy__())), stdgo.Go.toInterface(_cw));
            _check((((_txs + ("w.Compare(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_txw.compare(_tyw?.__copy__())), stdgo.Go.toInterface(_cw));
        } : (stdgo.GoString, stdgo.GoString, stdgo._internal.time.Time_Time.Time, stdgo._internal.time.Time_Time.Time, stdgo._internal.time.Time_Time.Time, stdgo._internal.time.Time_Time.Time, stdgo.GoInt, stdgo.GoInt) -> Void);
        _cmp(("t1" : stdgo.GoString), ("t1" : stdgo.GoString), _t1?.__copy__(), _t1w?.__copy__(), _t1?.__copy__(), _t1w?.__copy__(), (0 : stdgo.GoInt), (0 : stdgo.GoInt));
        _cmp(("t1" : stdgo.GoString), ("t2" : stdgo.GoString), _t1?.__copy__(), _t1w?.__copy__(), _t2?.__copy__(), _t2w?.__copy__(), (-1 : stdgo.GoInt), (1 : stdgo.GoInt));
        _cmp(("t1" : stdgo.GoString), ("t3" : stdgo.GoString), _t1?.__copy__(), _t1w?.__copy__(), _t3?.__copy__(), _t3w?.__copy__(), (-1 : stdgo.GoInt), (0 : stdgo.GoInt));
        _cmp(("t2" : stdgo.GoString), ("t1" : stdgo.GoString), _t2?.__copy__(), _t2w?.__copy__(), _t1?.__copy__(), _t1w?.__copy__(), (1 : stdgo.GoInt), (-1 : stdgo.GoInt));
        _cmp(("t2" : stdgo.GoString), ("t2" : stdgo.GoString), _t2?.__copy__(), _t2w?.__copy__(), _t2?.__copy__(), _t2w?.__copy__(), (0 : stdgo.GoInt), (0 : stdgo.GoInt));
        _cmp(("t2" : stdgo.GoString), ("t3" : stdgo.GoString), _t2?.__copy__(), _t2w?.__copy__(), _t3?.__copy__(), _t3w?.__copy__(), (-1 : stdgo.GoInt), (-1 : stdgo.GoInt));
        _cmp(("t3" : stdgo.GoString), ("t1" : stdgo.GoString), _t3?.__copy__(), _t3w?.__copy__(), _t1?.__copy__(), _t1w?.__copy__(), (1 : stdgo.GoInt), (0 : stdgo.GoInt));
        _cmp(("t3" : stdgo.GoString), ("t2" : stdgo.GoString), _t3?.__copy__(), _t3w?.__copy__(), _t2?.__copy__(), _t2w?.__copy__(), (1 : stdgo.GoInt), (1 : stdgo.GoInt));
        _cmp(("t3" : stdgo.GoString), ("t3" : stdgo.GoString), _t3?.__copy__(), _t3w?.__copy__(), _t3?.__copy__(), _t3w?.__copy__(), (0 : stdgo.GoInt), (0 : stdgo.GoInt));
    }
