package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function _myatof64(_s:stdgo.GoString):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } {
        var _f = (0 : stdgo.GoFloat64), _ok = false;
        {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_s?.__copy__(), ("p" : stdgo.GoString)), _mant:stdgo.GoString = __tmp__._0, _exp:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_mant?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (0 : stdgo.GoFloat64), _1 : false };
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_exp?.__copy__()), _e:stdgo.GoInt = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                if (_err1 != null) {
                    stdgo.Go.println(("bad e" : stdgo.GoString), _exp);
                    return { _0 : (0 : stdgo.GoFloat64), _1 : false };
                };
                var _v = (_n : stdgo.GoFloat64);
                if ((_e <= (-1000 : stdgo.GoInt) : Bool)) {
                    _v = (_v * (_internal.strconv_test.Strconv_test__pow2._pow2((-1000 : stdgo.GoInt))) : stdgo.GoFloat64);
                    _e = (_e + ((1000 : stdgo.GoInt)) : stdgo.GoInt);
                    while ((_e < (0 : stdgo.GoInt) : Bool)) {
                        _v = (_v / (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                        _e++;
                    };
                    return { _0 : _v, _1 : true };
                };
                if ((_e >= (1000 : stdgo.GoInt) : Bool)) {
                    _v = (_v * (_internal.strconv_test.Strconv_test__pow2._pow2((1000 : stdgo.GoInt))) : stdgo.GoFloat64);
                    _e = (_e - ((1000 : stdgo.GoInt)) : stdgo.GoInt);
                    while ((_e > (0 : stdgo.GoInt) : Bool)) {
                        _v = (_v * (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                        _e--;
                    };
                    return { _0 : _v, _1 : true };
                };
                return { _0 : (_v * _internal.strconv_test.Strconv_test__pow2._pow2(_e) : stdgo.GoFloat64), _1 : true };
            };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_s?.__copy__(), (64 : stdgo.GoInt)), _f1:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (0 : stdgo.GoFloat64), _1 : false };
        };
        return { _0 : _f1, _1 : true };
    }
