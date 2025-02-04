package stdgo._internal.path.filepath;
function _matchChunk(_chunk:stdgo.GoString, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } {
        var _rest = ("" : stdgo.GoString), _ok = false, _err = (null : stdgo.Error);
        var _failed = (false : Bool);
        while (((_chunk.length) > (0 : stdgo.GoInt) : Bool)) {
            if ((!_failed && (_s.length == (0 : stdgo.GoInt)) : Bool)) {
                _failed = true;
            };
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _chunk[(0 : stdgo.GoInt)];
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (91 : stdgo.GoUInt8)))) {
                            var _r:stdgo.GoInt32 = (0 : stdgo.GoInt32);
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
                            if ((((_chunk.length) > (0 : stdgo.GoInt) : Bool) && (_chunk[(0 : stdgo.GoInt)] == (94 : stdgo.GoUInt8)) : Bool)) {
                                _negated = true;
                                _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            };
                            var _match = (false : Bool);
                            var _nrange = (0 : stdgo.GoInt);
                            while (true) {
                                if (((((_chunk.length) > (0 : stdgo.GoInt) : Bool) && _chunk[(0 : stdgo.GoInt)] == ((93 : stdgo.GoUInt8)) : Bool) && (_nrange > (0 : stdgo.GoInt) : Bool) : Bool)) {
                                    _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    break;
                                };
                                var __0:stdgo.GoInt32 = (0 : stdgo.GoInt32), __1:stdgo.GoInt32 = (0 : stdgo.GoInt32);
var _hi = __1, _lo = __0;
                                {
                                    {
                                        var __tmp__ = stdgo._internal.path.filepath.Filepath__getesc._getEsc(_chunk?.__copy__());
                                        _lo = @:tmpset0 __tmp__._0;
                                        _chunk = @:tmpset0 __tmp__._1?.__copy__();
                                        _err = @:tmpset0 __tmp__._2;
                                    };
                                    if (_err != null) {
                                        return {
                                            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false, _2 : _err };
                                            _rest = __tmp__._0;
                                            _ok = __tmp__._1;
                                            _err = __tmp__._2;
                                            __tmp__;
                                        };
                                    };
                                };
                                _hi = _lo;
                                if (_chunk[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                                    {
                                        {
                                            var __tmp__ = stdgo._internal.path.filepath.Filepath__getesc._getEsc((_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                                            _hi = @:tmpset0 __tmp__._0;
                                            _chunk = @:tmpset0 __tmp__._1?.__copy__();
                                            _err = @:tmpset0 __tmp__._2;
                                        };
                                        if (_err != null) {
                                            return {
                                                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false, _2 : _err };
                                                _rest = __tmp__._0;
                                                _ok = __tmp__._1;
                                                _err = __tmp__._2;
                                                __tmp__;
                                            };
                                        };
                                    };
                                };
                                if (((_lo <= _r : Bool) && (_r <= _hi : Bool) : Bool)) {
                                    _match = true;
                                };
                                _nrange++;
                            };
                            if (_match == (_negated)) {
                                _failed = true;
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (63 : stdgo.GoUInt8)))) {
                            if (!_failed) {
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
                            if (true) {
                                _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                if ((_chunk.length) == ((0 : stdgo.GoInt))) {
                                    return {
                                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false, _2 : stdgo._internal.path.filepath.Filepath_errbadpattern.errBadPattern };
                                        _rest = __tmp__._0;
                                        _ok = __tmp__._1;
                                        _err = __tmp__._2;
                                        __tmp__;
                                    };
                                };
                            };
                            @:fallthrough {
                                __switchIndex__ = 3;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else {
                            if (!_failed) {
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
        if (_failed) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false, _2 : (null : stdgo.Error) };
                _rest = __tmp__._0;
                _ok = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _s?.__copy__(), _1 : true, _2 : (null : stdgo.Error) };
            _rest = __tmp__._0;
            _ok = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
