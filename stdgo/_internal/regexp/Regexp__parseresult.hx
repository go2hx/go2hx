package stdgo._internal.regexp;
function _parseResult(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _file:stdgo.GoString, _lineno:stdgo.GoInt, _res:stdgo.GoString):stdgo.Slice<stdgo.GoInt> {
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L275"
        if (_res == (("-" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L276"
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        var _n = (1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L280"
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (_res.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L281"
                if (_res[(_j : stdgo.GoInt)] == ((32 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L282"
                    _n++;
                };
                _j++;
            };
        };
        var _out = (new stdgo.Slice<stdgo.GoInt>(((2 : stdgo.GoInt) * _n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i = (0 : stdgo.GoInt);
        _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L288"
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j <= (_res.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L289"
                if (((_j == (_res.length)) || (_res[(_j : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) : Bool)) {
                    var _pair = ((_res.__slice__(_i, _j) : stdgo.GoString).__copy__() : stdgo.GoString);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L292"
                    if (_pair == (("-" : stdgo.GoString))) {
                        _out[(_n : stdgo.GoInt)] = (-1 : stdgo.GoInt);
                        _out[(_n + (1 : stdgo.GoInt) : stdgo.GoInt)] = (-1 : stdgo.GoInt);
                    } else {
                        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_pair.__copy__(), ("-" : stdgo.GoString)), _loStr:stdgo.GoString = __tmp__._0, _hiStr:stdgo.GoString = __tmp__._1, __0:Bool = __tmp__._2;
                        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_loStr.__copy__()), _lo:stdgo.GoInt = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_hiStr.__copy__()), _hi:stdgo.GoInt = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L299"
                        if (((_err1 != null || _err2 != null : Bool) || (_lo > _hi : Bool) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L300"
                            _t.fatalf(("%s:%d: invalid pair %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface(_pair));
                        };
                        _out[(_n : stdgo.GoInt)] = _lo;
                        _out[(_n + (1 : stdgo.GoInt) : stdgo.GoInt)] = _hi;
                    };
                    _n = (_n + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _i = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
                };
                _j++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L309"
        return _out;
    }
