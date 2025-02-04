package stdgo._internal.strconv;
function _unquote(_in:stdgo.GoString, _unescape:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _out = ("" : stdgo.GoString), _rem = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        if (((_in.length) < (2 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _in?.__copy__(), _2 : stdgo._internal.strconv.Strconv_errsyntax.errSyntax };
                _out = __tmp__._0;
                _rem = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _quote = (_in[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        var _end = (stdgo._internal.strconv.Strconv__index._index((_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _quote) : stdgo.GoInt);
        if ((_end < (0 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _in?.__copy__(), _2 : stdgo._internal.strconv.Strconv_errsyntax.errSyntax };
                _out = __tmp__._0;
                _rem = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        _end = (_end + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _quote;
                    if (__value__ == ((96 : stdgo.GoUInt8))) {
                        if (!_unescape) {
                            _out = (_in.__slice__(0, _end) : stdgo.GoString)?.__copy__();
                        } else if (!stdgo._internal.strconv.Strconv__contains._contains((_in.__slice__(0, _end) : stdgo.GoString)?.__copy__(), (13 : stdgo.GoUInt8))) {
                            _out = (_in.__slice__(((("`" : stdgo.GoString) : stdgo.GoString).length), (_end - ((("`" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        } else {
                            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (((_end - ((("`" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt) - ((("\r" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt) - ((("`" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                            {
                                var _i = (("`" : stdgo.GoString).length : stdgo.GoInt);
                                while ((_i < (_end - ((("`" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt) : Bool)) {
                                    if (_in[(_i : stdgo.GoInt)] != ((13 : stdgo.GoUInt8))) {
                                        _buf = (_buf.__append__(_in[(_i : stdgo.GoInt)]));
                                    };
                                    _i++;
                                };
                            };
                            _out = (_buf : stdgo.GoString)?.__copy__();
                        };
                        return {
                            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _out?.__copy__(), _1 : (_in.__slice__(_end) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
                            _out = __tmp__._0;
                            _rem = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                        break;
                    } else if (__value__ == ((34 : stdgo.GoUInt8)) || __value__ == ((39 : stdgo.GoUInt8))) {
                        if ((!stdgo._internal.strconv.Strconv__contains._contains((_in.__slice__(0, _end) : stdgo.GoString)?.__copy__(), (92 : stdgo.GoUInt8)) && !stdgo._internal.strconv.Strconv__contains._contains((_in.__slice__(0, _end) : stdgo.GoString)?.__copy__(), (10 : stdgo.GoUInt8)) : Bool)) {
                            var _valid:Bool = false;
                            {
                                final __value__ = _quote;
                                if (__value__ == ((34 : stdgo.GoUInt8))) {
                                    _valid = stdgo._internal.unicode.utf8.Utf8_validstring.validString((_in.__slice__(((("\"" : stdgo.GoString) : stdgo.GoString).length), (_end - ((("\"" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                                } else if (__value__ == ((39 : stdgo.GoUInt8))) {
                                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_in.__slice__(((("\'" : stdgo.GoString) : stdgo.GoString).length), (_end - ((("\'" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
                                    _valid = ((((((("\'" : stdgo.GoString) : stdgo.GoString).length) + _n : stdgo.GoInt) + ((("\'" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt) == _end) && (((_r != (65533 : stdgo.GoInt32)) || (_n != (1 : stdgo.GoInt)) : Bool)) : Bool);
                                };
                            };
                            if (_valid) {
                                _out = (_in.__slice__(0, _end) : stdgo.GoString)?.__copy__();
                                if (_unescape) {
                                    _out = (_out.__slice__((1 : stdgo.GoInt), (_end - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                };
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _out?.__copy__(), _1 : (_in.__slice__(_end) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
                                    _out = __tmp__._0;
                                    _rem = __tmp__._1;
                                    _err = __tmp__._2;
                                    __tmp__;
                                };
                            };
                        };
                        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        var _in0 = (_in?.__copy__() : stdgo.GoString);
                        _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_unescape) {
                            _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (((3 : stdgo.GoInt) * _end : stdgo.GoInt) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                        };
                        while ((((_in.length) > (0 : stdgo.GoInt) : Bool) && (_in[(0 : stdgo.GoInt)] != _quote) : Bool)) {
                            var __tmp__ = stdgo._internal.strconv.Strconv_unquotechar.unquoteChar(_in?.__copy__(), _quote), _r:stdgo.GoInt32 = __tmp__._0, _multibyte:Bool = __tmp__._1, _rem:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                            if (((_in[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) || (_err != null) : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _in0?.__copy__(), _2 : stdgo._internal.strconv.Strconv_errsyntax.errSyntax };
                                    _out = __tmp__._0;
                                    _rem = __tmp__._1;
                                    _err = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            _in = _rem?.__copy__();
                            if (_unescape) {
                                if (((_r < (128 : stdgo.GoInt32) : Bool) || !_multibyte : Bool)) {
                                    _buf = (_buf.__append__((_r : stdgo.GoUInt8)));
                                } else {
                                    var _arr:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
                                    var _n = (stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_arr.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _r) : stdgo.GoInt);
                                    _buf = (_buf.__append__(...((_arr.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                                };
                            };
                            if (_quote == ((39 : stdgo.GoUInt8))) {
                                break;
                            };
                        };
                        if (!((((_in.length) > (0 : stdgo.GoInt) : Bool) && (_in[(0 : stdgo.GoInt)] == _quote) : Bool))) {
                            return {
                                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _in0?.__copy__(), _2 : stdgo._internal.strconv.Strconv_errsyntax.errSyntax };
                                _out = __tmp__._0;
                                _rem = __tmp__._1;
                                _err = __tmp__._2;
                                __tmp__;
                            };
                        };
                        _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        if (_unescape) {
                            return {
                                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (_buf : stdgo.GoString)?.__copy__(), _1 : _in?.__copy__(), _2 : (null : stdgo.Error) };
                                _out = __tmp__._0;
                                _rem = __tmp__._1;
                                _err = __tmp__._2;
                                __tmp__;
                            };
                        };
                        return {
                            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (_in0.__slice__(0, ((_in0.length) - (_in.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : _in?.__copy__(), _2 : (null : stdgo.Error) };
                            _out = __tmp__._0;
                            _rem = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                        break;
                    } else {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _in?.__copy__(), _2 : stdgo._internal.strconv.Strconv_errsyntax.errSyntax };
                            _out = __tmp__._0;
                            _rem = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                };
                break;
            };
            return { _0 : _out, _1 : _rem, _2 : _err };
        };
    }
