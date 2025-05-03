package stdgo._internal.path;
function _matchChunk(_chunk:stdgo.GoString, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } {
        var _rest = ("" : stdgo.GoString), _ok = false, _err = (null : stdgo.Error);
        var _failed = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/path/match.go#L128"
        while (((_chunk.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/path/match.go#L129"
            if ((!_failed && (_s.length == (0 : stdgo.GoInt)) : Bool)) {
                _failed = true;
            };
            //"file:///home/runner/.go/go1.21.3/src/path/match.go#L132"
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _chunk[(0 : stdgo.GoInt)];
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (91 : stdgo.GoUInt8)))) {
                            var _r:stdgo.GoInt32 = (0 : stdgo.GoInt32);
                            //"file:///home/runner/.go/go1.21.3/src/path/match.go#L136"
                            if (!_failed) {
                                var _n:stdgo.GoInt = (0 : stdgo.GoInt);
                                {
                                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s?.__copy__());
                                    _r = @:tmpset0 __tmp__._0;
                                    _n = @:tmpset0 __tmp__._1;
                                };
                                _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
                            };
                            _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            var _negated = (false : Bool);
                            //"file:///home/runner/.go/go1.21.3/src/path/match.go#L144"
                            if ((((_chunk.length) > (0 : stdgo.GoInt) : Bool) && (_chunk[(0 : stdgo.GoInt)] == (94 : stdgo.GoUInt8)) : Bool)) {
                                _negated = true;
                                _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            };
                            var _match = (false : Bool);
                            var _nrange = (0 : stdgo.GoInt);
                            //"file:///home/runner/.go/go1.21.3/src/path/match.go#L151"
                            while (true) {
                                //"file:///home/runner/.go/go1.21.3/src/path/match.go#L152"
                                if (((((_chunk.length) > (0 : stdgo.GoInt) : Bool) && _chunk[(0 : stdgo.GoInt)] == ((93 : stdgo.GoUInt8)) : Bool) && (_nrange > (0 : stdgo.GoInt) : Bool) : Bool)) {
                                    _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L154"
                                    break;
                                };
                                var _lo:stdgo.GoInt32 = (0 : stdgo.GoInt32), _hi:stdgo.GoInt32 = (0 : stdgo.GoInt32);
                                //"file:///home/runner/.go/go1.21.3/src/path/match.go#L157"
                                {
                                    {
                                        var __tmp__ = stdgo._internal.path.Path__getesc._getEsc(_chunk?.__copy__());
                                        _lo = @:tmpset0 __tmp__._0;
                                        _chunk = @:tmpset0 __tmp__._1?.__copy__();
                                        _err = @:tmpset0 __tmp__._2;
                                    };
                                    if (_err != null) {
                                        //"file:///home/runner/.go/go1.21.3/src/path/match.go#L158"
                                        return {
                                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false, _2 : _err };
                                            _rest = __tmp__._0;
                                            _ok = __tmp__._1;
                                            _err = __tmp__._2;
                                            __tmp__;
                                        };
                                    };
                                };
                                _hi = _lo;
                                //"file:///home/runner/.go/go1.21.3/src/path/match.go#L161"
                                if (_chunk[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                                    //"file:///home/runner/.go/go1.21.3/src/path/match.go#L162"
                                    {
                                        {
                                            var __tmp__ = stdgo._internal.path.Path__getesc._getEsc((_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                                            _hi = @:tmpset0 __tmp__._0;
                                            _chunk = @:tmpset0 __tmp__._1?.__copy__();
                                            _err = @:tmpset0 __tmp__._2;
                                        };
                                        if (_err != null) {
                                            //"file:///home/runner/.go/go1.21.3/src/path/match.go#L163"
                                            return {
                                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false, _2 : _err };
                                                _rest = __tmp__._0;
                                                _ok = __tmp__._1;
                                                _err = __tmp__._2;
                                                __tmp__;
                                            };
                                        };
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/path/match.go#L166"
                                if (((_lo <= _r : Bool) && (_r <= _hi : Bool) : Bool)) {
                                    _match = true;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/path/match.go#L169"
                                _nrange++;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/path/match.go#L171"
                            if (_match == (_negated)) {
                                _failed = true;
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (63 : stdgo.GoUInt8)))) {
                            //"file:///home/runner/.go/go1.21.3/src/path/match.go#L176"
                            if (!_failed) {
                                //"file:///home/runner/.go/go1.21.3/src/path/match.go#L177"
                                if (_s[(0 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                                    _failed = true;
                                };
                                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s?.__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
                                _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
                            };
                            _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (92 : stdgo.GoUInt8)))) {
                            _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            //"file:///home/runner/.go/go1.21.3/src/path/match.go#L187"
                            if ((_chunk.length) == ((0 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/path/match.go#L188"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false, _2 : stdgo._internal.path.Path_errbadpattern.errBadPattern };
                                    _rest = __tmp__._0;
                                    _ok = __tmp__._1;
                                    _err = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/path/match.go#L190"
                            @:fallthrough {
                                __switchIndex__ = 3;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/path/match.go#L193"
                            if (!_failed) {
                                //"file:///home/runner/.go/go1.21.3/src/path/match.go#L194"
                                if (_chunk[(0 : stdgo.GoInt)] != (_s[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                                    _failed = true;
                                };
                                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            };
                            _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            break;
                        };
                    };
                    break;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/path/match.go#L202"
        if (_failed) {
            //"file:///home/runner/.go/go1.21.3/src/path/match.go#L203"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false, _2 : (null : stdgo.Error) };
                _rest = __tmp__._0;
                _ok = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/path/match.go#L205"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _s?.__copy__(), _1 : true, _2 : (null : stdgo.Error) };
            _rest = __tmp__._0;
            _ok = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
