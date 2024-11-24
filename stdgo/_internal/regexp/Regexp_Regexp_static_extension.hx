package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.Regexp_asInterface) class Regexp_static_extension {
    @:keep
    static public function unmarshalText( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile((_text : stdgo.GoString)?.__copy__()), _newRE:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = (_newRE : stdgo._internal.regexp.Regexp_Regexp.Regexp)?.__copy__();
            (_re : stdgo._internal.regexp.Regexp_Regexp.Regexp)._expr = __tmp__._expr;
            (_re : stdgo._internal.regexp.Regexp_Regexp.Regexp)._prog = __tmp__._prog;
            (_re : stdgo._internal.regexp.Regexp_Regexp.Regexp)._onepass = __tmp__._onepass;
            (_re : stdgo._internal.regexp.Regexp_Regexp.Regexp)._numSubexp = __tmp__._numSubexp;
            (_re : stdgo._internal.regexp.Regexp_Regexp.Regexp)._maxBitStateLen = __tmp__._maxBitStateLen;
            (_re : stdgo._internal.regexp.Regexp_Regexp.Regexp)._subexpNames = __tmp__._subexpNames;
            (_re : stdgo._internal.regexp.Regexp_Regexp.Regexp)._prefix = __tmp__._prefix;
            (_re : stdgo._internal.regexp.Regexp_Regexp.Regexp)._prefixBytes = __tmp__._prefixBytes;
            (_re : stdgo._internal.regexp.Regexp_Regexp.Regexp)._prefixRune = __tmp__._prefixRune;
            (_re : stdgo._internal.regexp.Regexp_Regexp.Regexp)._prefixEnd = __tmp__._prefixEnd;
            (_re : stdgo._internal.regexp.Regexp_Regexp.Regexp)._mpool = __tmp__._mpool;
            (_re : stdgo._internal.regexp.Regexp_Regexp.Regexp)._matchcap = __tmp__._matchcap;
            (_re : stdgo._internal.regexp.Regexp_Regexp.Regexp)._prefixComplete = __tmp__._prefixComplete;
            (_re : stdgo._internal.regexp.Regexp_Regexp.Regexp)._cond = __tmp__._cond;
            (_re : stdgo._internal.regexp.Regexp_Regexp.Regexp)._minInputLen = __tmp__._minInputLen;
            (_re : stdgo._internal.regexp.Regexp_Regexp.Regexp)._longest = __tmp__._longest;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalText( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return { _0 : ((_re.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function split( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if (_n == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        if ((((_re._expr.length) > (0 : stdgo.GoInt) : Bool) && (_s.length == (0 : stdgo.GoInt)) : Bool)) {
            return (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        };
        var _matches = _re.findAllStringIndex(_s?.__copy__(), _n);
        var _strings = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_matches.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _beg = (0 : stdgo.GoInt);
        var _end = (0 : stdgo.GoInt);
        for (__0 => _match in _matches) {
            if (((_n > (0 : stdgo.GoInt) : Bool) && ((_strings.length) >= (_n - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                break;
            };
            _end = _match[(0 : stdgo.GoInt)];
            if (_match[(1 : stdgo.GoInt)] != ((0 : stdgo.GoInt))) {
                _strings = (_strings.__append__((_s.__slice__(_beg, _end) : stdgo.GoString)?.__copy__()));
            };
            _beg = _match[(1 : stdgo.GoInt)];
        };
        if (_end != ((_s.length))) {
            _strings = (_strings.__append__((_s.__slice__(_beg) : stdgo.GoString)?.__copy__()));
        };
        return _strings;
    }
    @:keep
    static public function findAllStringSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__(_match));
        });
        return _result;
    }
    @:keep
    static public function findAllStringSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoString>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
        _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoString>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
            };
            var _slice = (new stdgo.Slice<stdgo.GoString>(((_match.length) / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (_j => _ in _slice) {
                if ((_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool)) {
                    _slice[(_j : stdgo.GoInt)] = (_s.__slice__(_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
                };
            };
            _result = (_result.__append__(_slice));
        });
        return _result;
    }
    @:keep
    static public function findAllSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        _re._allMatches(stdgo.Go.str()?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__(_match));
        });
        return _result;
    }
    @:keep
    static public function findAllSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>);
        _re._allMatches(stdgo.Go.str()?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>);
            };
            var _slice = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(((_match.length) / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            for (_j => _ in _slice) {
                if ((_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool)) {
                    _slice[(_j : stdgo.GoInt)] = (_b.__slice__(_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                };
            };
            _result = (_result.__append__(_slice));
        });
        return _result;
    }
    @:keep
    static public function findAllStringIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__((_match.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
        });
        return _result;
    }
    @:keep
    static public function findAllString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
            };
            _result = (_result.__append__((_s.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__()));
        });
        return _result;
    }
    @:keep
    static public function findAllIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        _re._allMatches(stdgo.Go.str()?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__((_match.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
        });
        return _result;
    }
    @:keep
    static public function findAll( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        _re._allMatches(stdgo.Go.str()?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            };
            _result = (_result.__append__((_b.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>)));
        });
        return _result;
    }
    @:keep
    static public function findReaderSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _r:stdgo._internal.io.Io_RuneReader.RuneReader):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return _re._pad(_re._doExecute(_r, (null : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), _re._prog.numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    static public function findStringSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return _re._pad(_re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), _re._prog.numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    static public function findStringSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoInt)]);
        var _a = _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), _re._prog.numCap, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        var _ret = (new stdgo.Slice<stdgo.GoString>(((1 : stdgo.GoInt) + _re._numSubexp : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _ in _ret) {
            if (((((2 : stdgo.GoInt) * _i : stdgo.GoInt) < (_a.length) : Bool) && (_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                _ret[(_i : stdgo.GoInt)] = (_s.__slice__(_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
            };
        };
        return _ret;
    }
    @:keep
    static public function findSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return _re._pad(_re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), _b, stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), _re._prog.numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    static public function _expand( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.GoString, _bsrc:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        while (((_template.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_template?.__copy__(), ("$" : stdgo.GoString)), _before:stdgo.GoString = __tmp__._0, _after:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (!_ok) {
                break;
            };
            _dst = (_dst.__append__(...(_before : Array<stdgo.GoUInt8>)));
            _template = _after?.__copy__();
            if (((_template != stdgo.Go.str()) && (_template[(0 : stdgo.GoInt)] == (36 : stdgo.GoUInt8)) : Bool)) {
                _dst = (_dst.__append__((36 : stdgo.GoUInt8)));
                _template = (_template.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                continue;
            };
            var __tmp__ = stdgo._internal.regexp.Regexp__extract._extract(_template?.__copy__()), _name:stdgo.GoString = __tmp__._0, _num:stdgo.GoInt = __tmp__._1, _rest:stdgo.GoString = __tmp__._2, _ok:Bool = __tmp__._3;
            if (!_ok) {
                _dst = (_dst.__append__((36 : stdgo.GoUInt8)));
                continue;
            };
            _template = _rest?.__copy__();
            if ((_num >= (0 : stdgo.GoInt) : Bool)) {
                if ((((((2 : stdgo.GoInt) * _num : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) < (_match.length) : Bool) && (_match[((2 : stdgo.GoInt) * _num : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                    if (_bsrc != null) {
                        _dst = (_dst.__append__(...((_bsrc.__slice__(_match[((2 : stdgo.GoInt) * _num : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _num : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                    } else {
                        _dst = (_dst.__append__(...((_src.__slice__(_match[((2 : stdgo.GoInt) * _num : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _num : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                    };
                };
            } else {
                for (_i => _namei in _re._subexpNames) {
                    if (((_name == (_namei) && ((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) < (_match.length) : Bool) : Bool) && (_match[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                        if (_bsrc != null) {
                            _dst = (_dst.__append__(...((_bsrc.__slice__(_match[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                        } else {
                            _dst = (_dst.__append__(...((_src.__slice__(_match[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        };
                        break;
                    };
                };
            };
        };
        _dst = (_dst.__append__(...(_template : Array<stdgo.GoUInt8>)));
        return _dst;
    }
    @:keep
    static public function expandString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.GoString, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return _re._expand(_dst, _template?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _match);
    }
    @:keep
    static public function expand( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return _re._expand(_dst, (_template : stdgo.GoString)?.__copy__(), _src, stdgo.Go.str()?.__copy__(), _match);
    }
    @:keep
    static public function findSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoInt)]);
        var _a = _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), _b, stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), _re._prog.numCap, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        };
        var _ret = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(((1 : stdgo.GoInt) + _re._numSubexp : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (_i => _ in _ret) {
            if (((((2 : stdgo.GoInt) * _i : stdgo.GoInt) < (_a.length) : Bool) && (_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                _ret[(_i : stdgo.GoInt)] = (_b.__slice__(_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        return _ret;
    }
    @:keep
    static public function findReaderIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _r:stdgo._internal.io.Io_RuneReader.RuneReader):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = _re._doExecute(_r, (null : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        return (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    static public function findStringIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        return (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    static public function findString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoInt)]);
        var _a = _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return stdgo.Go.str()?.__copy__();
        };
        return (_s.__slice__(_a[(0 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function findIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), _b, stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        return (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    static public function find( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoInt)]);
        var _a = _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), _b, stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (_b.__slice__(_a[(0 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function _allMatches( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt, _deliver:stdgo.Slice<stdgo.GoInt> -> Void):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _end:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_b == null) {
            _end = (_s.length);
        } else {
            _end = (_b.length);
        };
        {
            var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt), __2 = (-1 : stdgo.GoInt);
var _prevMatchEnd = __2, _i = __1, _pos = __0;
            while (((_i < _n : Bool) && (_pos <= _end : Bool) : Bool)) {
                var _matches = _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), _b, _s?.__copy__(), _pos, _re._prog.numCap, (null : stdgo.Slice<stdgo.GoInt>));
                if ((_matches.length) == ((0 : stdgo.GoInt))) {
                    break;
                };
                var _accept = (true : Bool);
                if (_matches[(1 : stdgo.GoInt)] == (_pos)) {
                    if (_matches[(0 : stdgo.GoInt)] == (_prevMatchEnd)) {
                        _accept = false;
                    };
                    var _width:stdgo.GoInt = (0 : stdgo.GoInt);
                    if (_b == null) {
                        var _is = ({ _str : _s?.__copy__() } : stdgo._internal.regexp.Regexp_T_inputString.T_inputString);
                        {
                            var __tmp__ = _is._step(_pos);
                            _width = __tmp__._1;
                        };
                    } else {
                        var _ib = ({ _str : _b } : stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes);
                        {
                            var __tmp__ = _ib._step(_pos);
                            _width = __tmp__._1;
                        };
                    };
                    if ((_width > (0 : stdgo.GoInt) : Bool)) {
                        _pos = (_pos + (_width) : stdgo.GoInt);
                    } else {
                        _pos = (_end + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                } else {
                    _pos = _matches[(1 : stdgo.GoInt)];
                };
                _prevMatchEnd = _matches[(1 : stdgo.GoInt)];
                if (_accept) {
                    _deliver(_re._pad(_matches));
                    _i++;
                };
            };
        };
    }
    @:keep
    static public function _pad( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _a:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        var _n = ((((1 : stdgo.GoInt) + _re._numSubexp : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt);
        while (((_a.length) < _n : Bool)) {
            _a = (_a.__append__((-1 : stdgo.GoInt)));
        };
        return _a;
    }
    @:keep
    static public function replaceAllFunc( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return _re._replaceAll(_src, stdgo.Go.str()?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return (_dst.__append__(...(_repl((_src.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>)) : Array<stdgo.GoUInt8>)));
        });
    }
    @:keep
    static public function replaceAllLiteral( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return _re._replaceAll(_src, stdgo.Go.str()?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return (_dst.__append__(...(_repl : Array<stdgo.GoUInt8>)));
        });
    }
    @:keep
    static public function replaceAll( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _n = (2 : stdgo.GoInt);
        if ((stdgo._internal.bytes.Bytes_indexByte.indexByte(_repl, (36 : stdgo.GoUInt8)) >= (0 : stdgo.GoInt) : Bool)) {
            _n = ((2 : stdgo.GoInt) * ((_re._numSubexp + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _srepl = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        var _b = _re._replaceAll(_src, stdgo.Go.str()?.__copy__(), _n, function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            if ((_srepl.length) != ((_repl.length))) {
                _srepl = (_repl : stdgo.GoString)?.__copy__();
            };
            return _re._expand(_dst, _srepl?.__copy__(), _src, stdgo.Go.str()?.__copy__(), _match);
        });
        return _b;
    }
    @:keep
    static public function _replaceAll( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _bsrc:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.GoString, _nmatch:stdgo.GoInt, _repl:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoInt>) -> stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _lastMatchEnd = (0 : stdgo.GoInt);
        var _searchPos = (0 : stdgo.GoInt);
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _endPos:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_bsrc != null) {
            _endPos = (_bsrc.length);
        } else {
            _endPos = (_src.length);
        };
        if ((_nmatch > _re._prog.numCap : Bool)) {
            _nmatch = _re._prog.numCap;
        };
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoInt)]);
        while ((_searchPos <= _endPos : Bool)) {
            var _a = _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), _bsrc, _src?.__copy__(), _searchPos, _nmatch, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
            if ((_a.length) == ((0 : stdgo.GoInt))) {
                break;
            };
            if (_bsrc != null) {
                _buf = (_buf.__append__(...((_bsrc.__slice__(_lastMatchEnd, _a[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            } else {
                _buf = (_buf.__append__(...((_src.__slice__(_lastMatchEnd, _a[(0 : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            };
            if (((_a[(1 : stdgo.GoInt)] > _lastMatchEnd : Bool) || (_a[(0 : stdgo.GoInt)] == (0 : stdgo.GoInt)) : Bool)) {
                _buf = _repl(_buf, _a);
            };
            _lastMatchEnd = _a[(1 : stdgo.GoInt)];
            var _width:stdgo.GoInt = (0 : stdgo.GoInt);
            if (_bsrc != null) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune((_bsrc.__slice__(_searchPos) : stdgo.Slice<stdgo.GoUInt8>));
                    _width = __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_src.__slice__(_searchPos) : stdgo.GoString)?.__copy__());
                    _width = __tmp__._1;
                };
            };
            if (((_searchPos + _width : stdgo.GoInt) > _a[(1 : stdgo.GoInt)] : Bool)) {
                _searchPos = (_searchPos + (_width) : stdgo.GoInt);
            } else if (((_searchPos + (1 : stdgo.GoInt) : stdgo.GoInt) > _a[(1 : stdgo.GoInt)] : Bool)) {
                _searchPos++;
            } else {
                _searchPos = _a[(1 : stdgo.GoInt)];
            };
        };
        if (_bsrc != null) {
            _buf = (_buf.__append__(...((_bsrc.__slice__(_lastMatchEnd) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        } else {
            _buf = (_buf.__append__(...((_src.__slice__(_lastMatchEnd) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        return _buf;
    }
    @:keep
    static public function replaceAllStringFunc( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString -> stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _b = _re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return (_dst.__append__(...(_repl((_src.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__()) : Array<stdgo.GoUInt8>)));
        });
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function replaceAllLiteralString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return (_re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return (_dst.__append__(...(_repl : Array<stdgo.GoUInt8>)));
        }) : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function replaceAllString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _n = (2 : stdgo.GoInt);
        if (stdgo._internal.strings.Strings_contains.contains(_repl?.__copy__(), ("$" : stdgo.GoString))) {
            _n = ((2 : stdgo.GoInt) * ((_re._numSubexp + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _b = _re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _n, function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return _re._expand(_dst, _repl?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _match);
        });
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function match( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return _re._doMatch((null : stdgo._internal.io.Io_RuneReader.RuneReader), _b, stdgo.Go.str()?.__copy__());
    }
    @:keep
    static public function matchString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return _re._doMatch((null : stdgo._internal.io.Io_RuneReader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__());
    }
    @:keep
    static public function matchReader( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _r:stdgo._internal.io.Io_RuneReader.RuneReader):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return _re._doMatch(_r, (null : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__());
    }
    @:keep
    static public function literalPrefix( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _prefix = ("" : stdgo.GoString), _complete = false;
        return { _0 : _re._prefix?.__copy__(), _1 : _re._prefixComplete };
    }
    @:keep
    static public function subexpIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _name:stdgo.GoString):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if (_name != (stdgo.Go.str())) {
            for (_i => _s in _re._subexpNames) {
                if (_name == (_s)) {
                    return _i;
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
    @:keep
    static public function subexpNames( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return _re._subexpNames;
    }
    @:keep
    static public function numSubexp( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return _re._numSubexp;
    }
    @:keep
    static public function _put( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _m:stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        _m._re = null;
        _m._p = null;
        _m._inputs._clear();
        stdgo._internal.regexp.Regexp__matchPool._matchPool[(_re._mpool : stdgo.GoInt)].put(stdgo.Go.toInterface(stdgo.Go.asInterface(_m)));
    }
    @:keep
    static public function _get( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo._internal.regexp.Regexp__matchPool._matchPool[(_re._mpool : stdgo.GoInt)].get() : stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>)) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>), _1 : false };
        }, _m = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _m = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp_T_machine.T_machine)) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>);
        };
        _m._re = _re;
        _m._p = _re._prog;
        if ((_m._matchcap.capacity < _re._matchcap : Bool)) {
            _m._matchcap = (new stdgo.Slice<stdgo.GoInt>((_re._matchcap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            for (__0 => _t in _m._pool) {
                _t._cap = (new stdgo.Slice<stdgo.GoInt>((_re._matchcap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            };
        };
        var _n = (stdgo._internal.regexp.Regexp__matchSize._matchSize[(_re._mpool : stdgo.GoInt)] : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            _n = (_re._prog.inst.length);
        };
        if (((_m._q0._sparse.length) < _n : Bool)) {
            _m._q0 = (new stdgo._internal.regexp.Regexp_T_queue.T_queue((new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), (new stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_T_entry.T_entry)]) : stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>)) : stdgo._internal.regexp.Regexp_T_queue.T_queue);
            _m._q1 = (new stdgo._internal.regexp.Regexp_T_queue.T_queue((new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), (new stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_T_entry.T_entry)]) : stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>)) : stdgo._internal.regexp.Regexp_T_queue.T_queue);
        };
        return _m;
    }
    @:keep
    static public function longest( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        _re._longest = true;
    }
    @:keep
    static public function copy( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _re2 = ((_re : stdgo._internal.regexp.Regexp_Regexp.Regexp)?.__copy__() : stdgo._internal.regexp.Regexp_Regexp.Regexp);
        return (stdgo.Go.setRef(_re2) : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
    }
    @:keep
    static public function string( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return _re._expr?.__copy__();
    }
    @:keep
    static public function _doExecute( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _r:stdgo._internal.io.Io_RuneReader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if (_dstCap == null) {
            _dstCap = (stdgo._internal.regexp.Regexp__arrayNoInts._arrayNoInts.__slice__(0, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        };
        if (((_r == null) && (((_b.length) + (_s.length) : stdgo.GoInt) < _re._minInputLen : Bool) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        if ((_re._onepass != null && ((_re._onepass : Dynamic).__nil__ == null || !(_re._onepass : Dynamic).__nil__))) {
            return _re._doOnePass(_r, _b, _s?.__copy__(), _pos, _ncap, _dstCap);
        };
        if (((_r == null) && (((_b.length) + (_s.length) : stdgo.GoInt) < _re._maxBitStateLen : Bool) : Bool)) {
            return _re._backtrack(_b, _s?.__copy__(), _pos, _ncap, _dstCap);
        };
        var _m = _re._get();
        var __tmp__ = _m._inputs._init(_r, _b, _s?.__copy__()), _i:stdgo._internal.regexp.Regexp_T_input.T_input = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        _m._init(_ncap);
        if (!_m._match(_i, _pos)) {
            _re._put(_m);
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        _dstCap = (_dstCap.__append__(...(_m._matchcap : Array<stdgo.GoInt>)));
        _re._put(_m);
        return _dstCap;
    }
    @:keep
    static public function _doMatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _r:stdgo._internal.io.Io_RuneReader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return _re._doExecute(_r, _b, _s?.__copy__(), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>)) != null;
    }
    @:keep
    static public function _doOnePass( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _ir:stdgo._internal.io.Io_RuneReader.RuneReader, _ib:stdgo.Slice<stdgo.GoUInt8>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _matched_3705818:Bool = false;
        var _m_3705683:stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassMachine.T_onePassMachine> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassMachine.T_onePassMachine>);
        var _flag_3706067:stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag);
        var _width1_3705964:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_3705957:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3705890:stdgo._internal.regexp.Regexp_T_input.T_input = (null : stdgo._internal.regexp.Regexp_T_input.T_input);
        var _i_3705840:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3705926:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _startCond_3705592:stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        var _inst_3706186:stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>);
        var _pc_3706162:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r1_3705929:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _startCond_3705592 = _re._cond;
                    if (_startCond_3705592 == ((255 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                        _gotoNext = 3705649i32;
                    } else {
                        _gotoNext = 3705683i32;
                    };
                } else if (__value__ == (3705649i32)) {
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3705683i32;
                } else if (__value__ == (3705683i32)) {
                    _m_3705683 = stdgo._internal.regexp.Regexp__newOnePassMachine._newOnePassMachine();
                    if ((_m_3705683._matchcap.capacity < _ncap : Bool)) {
                        _gotoNext = 3705735i32;
                    } else {
                        _gotoNext = 3705778i32;
                    };
                } else if (__value__ == (3705735i32)) {
                    _m_3705683._matchcap = (new stdgo.Slice<stdgo.GoInt>((_ncap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3705818i32;
                } else if (__value__ == (3705778i32)) {
                    _gotoNext = 3705778i32;
                    _m_3705683._matchcap = (_m_3705683._matchcap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
                    var __blank__ = 0i32;
                    _gotoNext = 3705818i32;
                } else if (__value__ == (3705818i32)) {
                    _matched_3705818 = false;
                    if ((0i32 : stdgo.GoInt) < (_m_3705683._matchcap.length)) {
                        _gotoNext = 3705885i32;
                    } else {
                        _gotoNext = 3705890i32;
                    };
                } else if (__value__ == (3705862i32)) {
                    _m_3705683._matchcap[(_i_3705840 : stdgo.GoInt)] = (-1 : stdgo.GoInt);
                    _i_3705840++;
                    _gotoNext = 3705886i32;
                } else if (__value__ == (3705885i32)) {
                    _i_3705840 = 0i32;
                    _gotoNext = 3705886i32;
                } else if (__value__ == (3705886i32)) {
                    if (_i_3705840 < (_m_3705683._matchcap.length)) {
                        _gotoNext = 3705862i32;
                    } else {
                        _gotoNext = 3705890i32;
                    };
                } else if (__value__ == (3705890i32)) {
                    {
                        var __tmp__ = _m_3705683._inputs._init(_ir, _ib, _is?.__copy__());
                        _i_3705890 = __tmp__._0;
                    };
                    {
                        final __tmp__0 = (-1 : stdgo.GoInt32);
                        final __tmp__1 = (-1 : stdgo.GoInt32);
                        _r_3705926 = __tmp__0;
                        _r1_3705929 = __tmp__1;
                    };
                    {
                        final __tmp__0 = (0 : stdgo.GoInt);
                        final __tmp__1 = (0 : stdgo.GoInt);
                        _width_3705957 = __tmp__0;
                        _width1_3705964 = __tmp__1;
                    };
                    {
                        var __tmp__ = _i_3705890._step(_pos);
                        _r_3705926 = __tmp__._0;
                        _width_3705957 = __tmp__._1;
                    };
                    if (_r_3705926 != ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3706022i32;
                    } else {
                        _gotoNext = 3706063i32;
                    };
                } else if (__value__ == (3706022i32)) {
                    {
                        var __tmp__ = _i_3705890._step((_pos + _width_3705957 : stdgo.GoInt));
                        _r1_3705929 = __tmp__._0;
                        _width1_3705964 = __tmp__._1;
                    };
                    _gotoNext = 3706063i32;
                } else if (__value__ == (3706063i32)) {
                    if (_pos == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3706094i32;
                    } else {
                        _gotoNext = 3706132i32;
                    };
                } else if (__value__ == (3706094i32)) {
                    _flag_3706067 = stdgo._internal.regexp.Regexp__newLazyFlag._newLazyFlag((-1 : stdgo.GoInt32), _r_3705926);
                    _gotoNext = 3706162i32;
                } else if (__value__ == (3706132i32)) {
                    _gotoNext = 3706132i32;
                    _flag_3706067 = _i_3705890._context(_pos);
                    var __blank__ = 0i32;
                    _gotoNext = 3706162i32;
                } else if (__value__ == (3706162i32)) {
                    _pc_3706162 = _re._onepass.start;
                    _inst_3706186 = (stdgo.Go.setRef(_re._onepass.inst[(_pc_3706162 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>);
                    if ((((_pos == ((0 : stdgo.GoInt)) && _flag_3706067._match((_inst_3706186.inst.arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : Bool) && ((_re._prefix.length) > (0 : stdgo.GoInt) : Bool) : Bool) && _i_3705890._canCheckPrefix() : Bool)) {
                        _gotoNext = 3706369i32;
                    } else {
                        _gotoNext = 3706607i32;
                    };
                } else if (__value__ == (3706369i32)) {
                    if (!_i_3705890._hasPrefix(_re)) {
                        _gotoNext = 3706449i32;
                    } else {
                        _gotoNext = 3706472i32;
                    };
                } else if (__value__ == (3706449i32)) {
                    _gotoNext = 3707731i32;
                } else if (__value__ == (3706472i32)) {
                    _pos = (_pos + ((_re._prefix.length)) : stdgo.GoInt);
                    {
                        var __tmp__ = _i_3705890._step(_pos);
                        _r_3705926 = __tmp__._0;
                        _width_3705957 = __tmp__._1;
                    };
                    {
                        var __tmp__ = _i_3705890._step((_pos + _width_3705957 : stdgo.GoInt));
                        _r1_3705929 = __tmp__._0;
                        _width1_3705964 = __tmp__._1;
                    };
                    _flag_3706067 = _i_3705890._context(_pos);
                    _pc_3706162 = (_re._prefixEnd : stdgo.GoInt);
                    _gotoNext = 3706607i32;
                } else if (__value__ == (3706607i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3706607i32;
                    if (true) {
                        _gotoNext = 3706611i32;
                    } else {
                        _gotoNext = 3707731i32;
                    };
                } else if (__value__ == (3706611i32)) {
                    _inst_3706186 = (stdgo.Go.setRef(_re._onepass.inst[(_pc_3706162 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>);
                    _pc_3706162 = (_inst_3706186.inst.out : stdgo.GoInt);
                    _gotoNext = 3706666i32;
                } else if (__value__ == (3706666i32)) {
                    {
                        final __value__ = _inst_3706186.inst.op;
                        if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3706717i32;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3706854i32;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3706926i32;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3706998i32;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3707039i32;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3707177i32;
                        } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3707267i32;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3707306i32;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3707341i32;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3707450i32;
                        } else {
                            _gotoNext = 3706685i32;
                        };
                    };
                } else if (__value__ == (3706685i32)) {
                    throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    _gotoNext = 3707569i32;
                } else if (__value__ == (3706717i32)) {
                    _matched_3705818 = true;
                    if (((_m_3705683._matchcap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3706784i32;
                    } else {
                        _gotoNext = 3706840i32;
                    };
                } else if (__value__ == (3706784i32)) {
                    _m_3705683._matchcap[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt);
                    _m_3705683._matchcap[(1 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3706840i32;
                } else if (__value__ == (3706840i32)) {
                    _gotoNext = 3707731i32;
                } else if (__value__ == (3706854i32)) {
                    if (!_inst_3706186.matchRune(_r_3705926)) {
                        _gotoNext = 3706901i32;
                    } else {
                        _gotoNext = 3707569i32;
                    };
                } else if (__value__ == (3706901i32)) {
                    _gotoNext = 3707731i32;
                } else if (__value__ == (3706926i32)) {
                    if (_r_3705926 != (_inst_3706186.inst.rune[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                        _gotoNext = 3706973i32;
                    } else {
                        _gotoNext = 3707569i32;
                    };
                } else if (__value__ == (3706973i32)) {
                    _gotoNext = 3707731i32;
                } else if (__value__ == (3706998i32)) {
                    _gotoNext = 3707569i32;
                } else if (__value__ == (3707039i32)) {
                    if (_r_3705926 == ((10 : stdgo.GoInt32))) {
                        _gotoNext = 3707085i32;
                    } else {
                        _gotoNext = 3707569i32;
                    };
                } else if (__value__ == (3707085i32)) {
                    _gotoNext = 3707731i32;
                } else if (__value__ == (3707177i32)) {
                    _pc_3706162 = (stdgo._internal.regexp.Regexp__onePassNext._onePassNext(_inst_3706186, _r_3705926) : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3706607i32;
                } else if (__value__ == (3707267i32)) {
                    _gotoNext = 3707731i32;
                } else if (__value__ == (3707306i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3706607i32;
                } else if (__value__ == (3707341i32)) {
                    if (!_flag_3706067._match((_inst_3706186.inst.arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                        _gotoNext = 3707413i32;
                    } else {
                        _gotoNext = 3707439i32;
                    };
                } else if (__value__ == (3707413i32)) {
                    _gotoNext = 3707731i32;
                } else if (__value__ == (3707439i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3706607i32;
                } else if (__value__ == (3707450i32)) {
                    if (((_inst_3706186.inst.arg : stdgo.GoInt) < (_m_3705683._matchcap.length) : Bool)) {
                        _gotoNext = 3707513i32;
                    } else {
                        _gotoNext = 3707554i32;
                    };
                } else if (__value__ == (3707513i32)) {
                    _m_3705683._matchcap[(_inst_3706186.inst.arg : stdgo.GoInt)] = _pos;
                    _gotoNext = 3707554i32;
                } else if (__value__ == (3707554i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3706607i32;
                } else if (__value__ == (3707569i32)) {
                    if (_width_3705957 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3707583i32;
                    } else {
                        _gotoNext = 3707600i32;
                    };
                } else if (__value__ == (3707583i32)) {
                    _gotoNext = 3707731i32;
                } else if (__value__ == (3707600i32)) {
                    _flag_3706067 = stdgo._internal.regexp.Regexp__newLazyFlag._newLazyFlag(_r_3705926, _r1_3705929);
                    _pos = (_pos + (_width_3705957) : stdgo.GoInt);
                    {
                        final __tmp__0 = _r1_3705929;
                        final __tmp__1 = _width1_3705964;
                        _r_3705926 = __tmp__0;
                        _width_3705957 = __tmp__1;
                    };
                    if (_r_3705926 != ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3707685i32;
                    } else {
                        _gotoNext = 3707731i32;
                    };
                } else if (__value__ == (3707685i32)) {
                    {
                        var __tmp__ = _i_3705890._step((_pos + _width_3705957 : stdgo.GoInt));
                        _r1_3705929 = __tmp__._0;
                        _width1_3705964 = __tmp__._1;
                    };
                    _gotoNext = 3707731i32;
                } else if (__value__ == (3707731i32)) {
                    _gotoNext = 3707731i32;
                    if (!_matched_3705818) {
                        _gotoNext = 3707752i32;
                    } else {
                        _gotoNext = 3707796i32;
                    };
                } else if (__value__ == (3707752i32)) {
                    stdgo._internal.regexp.Regexp__freeOnePassMachine._freeOnePassMachine(_m_3705683);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3707796i32;
                } else if (__value__ == (3707796i32)) {
                    _dstCap = (_dstCap.__append__(...(_m_3705683._matchcap : Array<stdgo.GoInt>)));
                    stdgo._internal.regexp.Regexp__freeOnePassMachine._freeOnePassMachine(_m_3705683);
                    return _dstCap;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    static public function _backtrack( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _ib:stdgo.Slice<stdgo.GoUInt8>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _advance_3689089:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_3688939:stdgo.GoInt = (0 : stdgo.GoInt);
        var _end_3688231:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3688228:stdgo._internal.regexp.Regexp_T_input.T_input = (null : stdgo._internal.regexp.Regexp_T_input.T_input);
        var _b_3688208:stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>);
        var _startCond_3688001:stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _startCond_3688001 = _re._cond;
                    if (_startCond_3688001 == ((255 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                        _gotoNext = 3688058i32;
                    } else {
                        _gotoNext = 3688091i32;
                    };
                } else if (__value__ == (3688058i32)) {
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3688091i32;
                } else if (__value__ == (3688091i32)) {
                    if ((((_startCond_3688001 & (4 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) != (0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) && (_pos != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3688143i32;
                    } else {
                        _gotoNext = 3688208i32;
                    };
                } else if (__value__ == (3688143i32)) {
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3688208i32;
                } else if (__value__ == (3688208i32)) {
                    _b_3688208 = stdgo._internal.regexp.Regexp__newBitState._newBitState();
                    {
                        var __tmp__ = _b_3688208._inputs._init((null : stdgo._internal.io.Io_RuneReader.RuneReader), _ib, _is?.__copy__());
                        _i_3688228 = __tmp__._0;
                        _end_3688231 = __tmp__._1;
                    };
                    _b_3688208._reset(_re._prog, _end_3688231, _ncap);
                    if ((_startCond_3688001 & (4 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                        _gotoNext = 3688397i32;
                    } else {
                        _gotoNext = 3688546i32;
                    };
                } else if (__value__ == (3688397i32)) {
                    if (((_b_3688208._cap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3688419i32;
                    } else {
                        _gotoNext = 3688445i32;
                    };
                } else if (__value__ == (3688419i32)) {
                    _b_3688208._cap[(0 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3688445i32;
                } else if (__value__ == (3688445i32)) {
                    if (!_re._tryBacktrack(_b_3688208, _i_3688228, (_re._prog.start : stdgo.GoUInt32), _pos)) {
                        _gotoNext = 3688499i32;
                    } else {
                        _gotoNext = 3689433i32;
                    };
                } else if (__value__ == (3688499i32)) {
                    stdgo._internal.regexp.Regexp__freeBitState._freeBitState(_b_3688208);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3689433i32;
                } else if (__value__ == (3688546i32)) {
                    _gotoNext = 3688546i32;
                    _width_3688939 = (-1 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3688953i32;
                } else if (__value__ == (3688953i32)) {
                    if (((_pos <= _end_3688231 : Bool) && (_width_3688939 != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3688998i32;
                    } else {
                        _gotoNext = 3689400i32;
                    };
                } else if (__value__ == (3688998i32)) {
                    if (((_re._prefix.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3689025i32;
                    } else {
                        _gotoNext = 3689209i32;
                    };
                } else if (__value__ == (3689025i32)) {
                    _advance_3689089 = _i_3688228._index(_re, _pos);
                    if ((_advance_3689089 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3689136i32;
                    } else {
                        _gotoNext = 3689185i32;
                    };
                } else if (__value__ == (3689136i32)) {
                    stdgo._internal.regexp.Regexp__freeBitState._freeBitState(_b_3688208);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3689185i32;
                } else if (__value__ == (3689185i32)) {
                    _pos = (_pos + (_advance_3689089) : stdgo.GoInt);
                    _gotoNext = 3689209i32;
                } else if (__value__ == (3689209i32)) {
                    if (((_b_3688208._cap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3689227i32;
                    } else {
                        _gotoNext = 3689256i32;
                    };
                } else if (__value__ == (3689227i32)) {
                    _b_3688208._cap[(0 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3689256i32;
                } else if (__value__ == (3689256i32)) {
                    if (_re._tryBacktrack(_b_3688208, _i_3688228, (_re._prog.start : stdgo.GoUInt32), _pos)) {
                        _gotoNext = 3689309i32;
                    } else {
                        _gotoNext = 3689371i32;
                    };
                } else if (__value__ == (3689309i32)) {
                    _gotoNext = 3689433i32;
                } else if (__value__ == (3689371i32)) {
                    {
                        var __tmp__ = _i_3688228._step(_pos);
                        _width_3688939 = __tmp__._1;
                    };
                    _pos = (_pos + (_width_3688939) : stdgo.GoInt);
                    _gotoNext = 3688953i32;
                } else if (__value__ == (3689400i32)) {
                    stdgo._internal.regexp.Regexp__freeBitState._freeBitState(_b_3688208);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    var __blank__ = 0i32;
                    _gotoNext = 3689433i32;
                } else if (__value__ == (3689433i32)) {
                    _gotoNext = 3689433i32;
                    _dstCap = (_dstCap.__append__(...(_b_3688208._matchcap : Array<stdgo.GoInt>)));
                    stdgo._internal.regexp.Regexp__freeBitState._freeBitState(_b_3688208);
                    return _dstCap;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    static public function _tryBacktrack( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>, _i:stdgo._internal.regexp.Regexp_T_input.T_input, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _flag_3686845:stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag);
        var _width_3686149:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3686146:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _inst_3684655:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        var _arg_3684251:Bool = false;
        var _r_3685836:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _pos_3684228:stdgo.GoInt = (0 : stdgo.GoInt);
        var _l_3684156:stdgo.GoInt = (0 : stdgo.GoInt);
        var _longest_3684080:Bool = false;
        var _old_3687397:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3686309:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _width_3685991:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3685988:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _pc_3684207:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _width_3686312:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_3685839:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _longest_3684080 = _re._longest;
                    _b._push(_re, _pc, _pos, false);
                    var __blank__ = 0i32;
                    _gotoNext = 3684132i32;
                } else if (__value__ == (3684132i32)) {
                    if (((_b._jobs.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3684152i32;
                    } else {
                        _gotoNext = 3687768i32;
                    };
                } else if (__value__ == (3684152i32)) {
                    _l_3684156 = ((_b._jobs.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _pc_3684207 = _b._jobs[(_l_3684156 : stdgo.GoInt)]._pc;
                    _pos_3684228 = _b._jobs[(_l_3684156 : stdgo.GoInt)]._pos;
                    _arg_3684251 = _b._jobs[(_l_3684156 : stdgo.GoInt)]._arg;
                    _b._jobs = (_b._jobs.__slice__(0, _l_3684156) : stdgo.Slice<stdgo._internal.regexp.Regexp_T_job.T_job>);
                    _gotoNext = 3684646i32;
                } else if (__value__ == (3684584i32)) {
                    if (!_b._shouldVisit(_pc_3684207, _pos_3684228)) {
                        _gotoNext = 3684627i32;
                    } else {
                        _gotoNext = 3684646i32;
                    };
                } else if (__value__ == (3684627i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3684132i32;
                } else if (__value__ == (3684646i32)) {
                    _gotoNext = 3684646i32;
                    _inst_3684655 = (stdgo.Go.setRef(_re._prog.inst[(_pc_3684207 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
                    _gotoNext = 3684684i32;
                } else if (__value__ == (3684684i32)) {
                    {
                        final __value__ = _inst_3684655.op;
                        if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3684735i32;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3684791i32;
                        } else if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3685352i32;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3685811i32;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3685962i32;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3686113i32;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3686281i32;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3686431i32;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3686814i32;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3686973i32;
                        } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3687035i32;
                        } else {
                            _gotoNext = 3684703i32;
                        };
                    };
                } else if (__value__ == (3684703i32)) {
                    throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    _gotoNext = 3687768i32;
                } else if (__value__ == (3684735i32)) {
                    throw stdgo.Go.toInterface(("unexpected InstFail" : stdgo.GoString));
                    _gotoNext = 3687768i32;
                } else if (__value__ == (3684791i32)) {
                    if (_arg_3684251) {
                        _gotoNext = 3685164i32;
                    } else {
                        _gotoNext = 3685272i32;
                    };
                } else if (__value__ == (3685164i32)) {
                    _arg_3684251 = false;
                    _pc_3684207 = _inst_3684655.arg;
                    _gotoNext = 3684584i32;
                } else if (__value__ == (3685272i32)) {
                    _gotoNext = 3685272i32;
                    _b._push(_re, _pc_3684207, _pos_3684228, true);
                    _pc_3684207 = _inst_3684655.out;
                    _gotoNext = 3684584i32;
                } else if (__value__ == (3685352i32)) {
                    _gotoNext = 3685440i32;
                } else if (__value__ == (3685440i32)) {
                    {
                        final __value__ = _re._prog.inst[(_inst_3684655.out : stdgo.GoInt)].op;
                        if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3685478i32;
                        } else {
                            _gotoNext = 3685735i32;
                        };
                    };
                } else if (__value__ == (3685478i32)) {
                    _b._push(_re, _inst_3684655.arg, _pos_3684228, false);
                    _pc_3684207 = _inst_3684655.arg;
                    _pos_3684228 = _b._end;
                    _gotoNext = 3684584i32;
                } else if (__value__ == (3685735i32)) {
                    _b._push(_re, _inst_3684655.out, _b._end, false);
                    _pc_3684207 = _inst_3684655.out;
                    _gotoNext = 3684584i32;
                } else if (__value__ == (3685811i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3684228);
                        _r_3685836 = __tmp__._0;
                        _width_3685839 = __tmp__._1;
                    };
                    if (!_inst_3684655.matchRune(_r_3685836)) {
                        _gotoNext = 3685885i32;
                    } else {
                        _gotoNext = 3685908i32;
                    };
                } else if (__value__ == (3685885i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3684132i32;
                } else if (__value__ == (3685908i32)) {
                    _pos_3684228 = (_pos_3684228 + (_width_3685839) : stdgo.GoInt);
                    _pc_3684207 = _inst_3684655.out;
                    _gotoNext = 3684584i32;
                } else if (__value__ == (3685962i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3684228);
                        _r_3685988 = __tmp__._0;
                        _width_3685991 = __tmp__._1;
                    };
                    if (_r_3685988 != (_inst_3684655.rune[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                        _gotoNext = 3686036i32;
                    } else {
                        _gotoNext = 3686059i32;
                    };
                } else if (__value__ == (3686036i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3684132i32;
                } else if (__value__ == (3686059i32)) {
                    _pos_3684228 = (_pos_3684228 + (_width_3685991) : stdgo.GoInt);
                    _pc_3684207 = _inst_3684655.out;
                    _gotoNext = 3684584i32;
                } else if (__value__ == (3686113i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3684228);
                        _r_3686146 = __tmp__._0;
                        _width_3686149 = __tmp__._1;
                    };
                    if (((_r_3686146 == (10 : stdgo.GoInt32)) || (_r_3686146 == (-1 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3686204i32;
                    } else {
                        _gotoNext = 3686227i32;
                    };
                } else if (__value__ == (3686204i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3684132i32;
                } else if (__value__ == (3686227i32)) {
                    _pos_3684228 = (_pos_3684228 + (_width_3686149) : stdgo.GoInt);
                    _pc_3684207 = _inst_3684655.out;
                    _gotoNext = 3684584i32;
                } else if (__value__ == (3686281i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3684228);
                        _r_3686309 = __tmp__._0;
                        _width_3686312 = __tmp__._1;
                    };
                    if (_r_3686309 == ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3686354i32;
                    } else {
                        _gotoNext = 3686377i32;
                    };
                } else if (__value__ == (3686354i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3684132i32;
                } else if (__value__ == (3686377i32)) {
                    _pos_3684228 = (_pos_3684228 + (_width_3686312) : stdgo.GoInt);
                    _pc_3684207 = _inst_3684655.out;
                    _gotoNext = 3684584i32;
                } else if (__value__ == (3686431i32)) {
                    if (_arg_3684251) {
                        _gotoNext = 3686466i32;
                    } else {
                        _gotoNext = 3686566i32;
                    };
                } else if (__value__ == (3686466i32)) {
                    _b._cap[(_inst_3684655.arg : stdgo.GoInt)] = _pos_3684228;
                    var __blank__ = 0i32;
                    _gotoNext = 3684132i32;
                } else if (__value__ == (3686566i32)) {
                    _gotoNext = 3686566i32;
                    if ((_inst_3684655.arg < (_b._cap.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3686605i32;
                    } else {
                        _gotoNext = 3686770i32;
                    };
                } else if (__value__ == (3686605i32)) {
                    _b._push(_re, _pc_3684207, _b._cap[(_inst_3684655.arg : stdgo.GoInt)], true);
                    _b._cap[(_inst_3684655.arg : stdgo.GoInt)] = _pos_3684228;
                    _gotoNext = 3686770i32;
                } else if (__value__ == (3686770i32)) {
                    _pc_3684207 = _inst_3684655.out;
                    _gotoNext = 3684584i32;
                } else if (__value__ == (3686814i32)) {
                    _flag_3686845 = _i._context(_pos_3684228);
                    if (!_flag_3686845._match((_inst_3684655.arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                        _gotoNext = 3686912i32;
                    } else {
                        _gotoNext = 3686935i32;
                    };
                } else if (__value__ == (3686912i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3684132i32;
                } else if (__value__ == (3686935i32)) {
                    _pc_3684207 = _inst_3684655.out;
                    _gotoNext = 3684584i32;
                } else if (__value__ == (3686973i32)) {
                    _pc_3684207 = _inst_3684655.out;
                    _gotoNext = 3684584i32;
                } else if (__value__ == (3687035i32)) {
                    if ((_b._cap.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3687181i32;
                    } else {
                        _gotoNext = 3687347i32;
                    };
                } else if (__value__ == (3687181i32)) {
                    return true;
                    _gotoNext = 3687347i32;
                } else if (__value__ == (3687347i32)) {
                    if (((_b._cap.length) > (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3687365i32;
                    } else {
                        _gotoNext = 3687394i32;
                    };
                } else if (__value__ == (3687365i32)) {
                    _b._cap[(1 : stdgo.GoInt)] = _pos_3684228;
                    _gotoNext = 3687394i32;
                } else if (__value__ == (3687394i32)) {
                    {
                        _old_3687397 = _b._matchcap[(1 : stdgo.GoInt)];
                        if (((_old_3687397 == (-1 : stdgo.GoInt)) || (((_longest_3684080 && (_pos_3684228 > (0 : stdgo.GoInt) : Bool) : Bool) && (_pos_3684228 > _old_3687397 : Bool) : Bool)) : Bool)) {
                            _gotoNext = 3687466i32;
                        } else {
                            _gotoNext = 3687549i32;
                        };
                    };
                } else if (__value__ == (3687466i32)) {
                    stdgo.Go.copySlice(_b._matchcap, _b._cap);
                    _gotoNext = 3687549i32;
                } else if (__value__ == (3687549i32)) {
                    if (!_longest_3684080) {
                        _gotoNext = 3687561i32;
                    } else {
                        _gotoNext = 3687651i32;
                    };
                } else if (__value__ == (3687561i32)) {
                    return true;
                    _gotoNext = 3687651i32;
                } else if (__value__ == (3687651i32)) {
                    if (_pos_3684228 == (_b._end)) {
                        _gotoNext = 3687667i32;
                    } else {
                        _gotoNext = 3687750i32;
                    };
                } else if (__value__ == (3687667i32)) {
                    return true;
                    _gotoNext = 3687750i32;
                } else if (__value__ == (3687750i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3684132i32;
                } else if (__value__ == (3687768i32)) {
                    return ((_longest_3684080 && ((_b._matchcap.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (_b._matchcap[(1 : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
