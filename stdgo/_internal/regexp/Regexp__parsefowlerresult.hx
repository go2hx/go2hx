package stdgo._internal.regexp;
function _parseFowlerResult(_s:stdgo.GoString):{ var _0 : Bool; var _1 : Bool; var _2 : Bool; var _3 : stdgo.Slice<stdgo.GoInt>; } {
        var _ok = false, _compiled = false, _matched = false, _pos = (null : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L572"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            _ok = true;
            _compiled = true;
            _matched = true;
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L578"
            return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
        } else if (_s == (("NOMATCH" : stdgo.GoString))) {
            _ok = true;
            _compiled = true;
            _matched = false;
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L584"
            return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
        } else if ((((65 : stdgo.GoUInt8) <= _s[(0 : stdgo.GoInt)] : Bool) && (_s[(0 : stdgo.GoInt)] <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
            _ok = true;
            _compiled = false;
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L589"
            return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
        };
        _compiled = true;
        var _x:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L594"
        while (_s != ((stdgo.Go.str() : stdgo.GoString))) {
            var _end:stdgo.GoUInt8 = (41 : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L596"
            if (((_x.length) % (2 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L597"
                if (_s[(0 : stdgo.GoInt)] != ((40 : stdgo.GoUInt8))) {
                    _ok = false;
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L599"
                    return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
                };
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _end = (44 : stdgo.GoUInt8);
            };
            var _i = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L605"
            while (((_i < (_s.length) : Bool) && (_s[(_i : stdgo.GoInt)] != _end) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L606"
                _i++;
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L608"
            if (((_i == (0 : stdgo.GoInt)) || (_i == (_s.length)) : Bool)) {
                _ok = false;
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L610"
                return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
            };
            var _v = (-1 : stdgo.GoInt);
            var _err:stdgo.Error = (null : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L614"
            if ((_s.__slice__(0, _i) : stdgo.GoString) != (("?" : stdgo.GoString))) {
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__());
                    _v = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L616"
                if (_err != null) {
                    _ok = false;
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L618"
                    return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
                };
            };
            _x = (_x.__append__(_v) : stdgo.Slice<stdgo.GoInt>);
            _s = (_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L624"
        if (((_x.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            _ok = false;
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L626"
            return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
        };
        _ok = true;
        _matched = true;
        _pos = _x;
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L631"
        return { _0 : _ok, _1 : _compiled, _2 : _matched, _3 : _pos };
    }
