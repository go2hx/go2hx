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
            var x = (_re : stdgo._internal.regexp.Regexp_Regexp.Regexp);
            x._expr = __tmp__._expr;
            x._prog = __tmp__._prog;
            x._onepass = __tmp__._onepass;
            x._numSubexp = __tmp__._numSubexp;
            x._maxBitStateLen = __tmp__._maxBitStateLen;
            x._subexpNames = __tmp__._subexpNames;
            x._prefix = __tmp__._prefix;
            x._prefixBytes = __tmp__._prefixBytes;
            x._prefixRune = __tmp__._prefixRune;
            x._prefixEnd = __tmp__._prefixEnd;
            x._mpool = __tmp__._mpool;
            x._matchcap = __tmp__._matchcap;
            x._prefixComplete = __tmp__._prefixComplete;
            x._cond = __tmp__._cond;
            x._minInputLen = __tmp__._minInputLen;
            x._longest = __tmp__._longest;
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
            return _loc = (null : stdgo.Slice<stdgo.GoInt>);
        };
        return _loc = (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    static public function findStringIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return _loc = (null : stdgo.Slice<stdgo.GoInt>);
        };
        return _loc = (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
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
            return _loc = (null : stdgo.Slice<stdgo.GoInt>);
        };
        return _loc = (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
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
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : _re._prefix?.__copy__(), _1 : _re._prefixComplete };
            _prefix = __tmp__._0;
            _complete = __tmp__._1;
            __tmp__;
        };
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
        var _pc_3900766:stdgo.GoInt = (0 : stdgo.GoInt);
        var _flag_3900671:stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag);
        var _width_3900561:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r1_3900533:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3900530:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _matched_3900422:Bool = false;
        var _inst_3900790:stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>);
        var _width1_3900568:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3900494:stdgo._internal.regexp.Regexp_T_input.T_input = (null : stdgo._internal.regexp.Regexp_T_input.T_input);
        var _i_3900444:stdgo.GoInt = (0 : stdgo.GoInt);
        var _m_3900287:stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassMachine.T_onePassMachine> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassMachine.T_onePassMachine>);
        var _startCond_3900196:stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _startCond_3900196 = _re._cond;
                    if (_startCond_3900196 == ((255 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                        _gotoNext = 3900253i32;
                    } else {
                        _gotoNext = 3900287i32;
                    };
                } else if (__value__ == (3900253i32)) {
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3900287i32;
                } else if (__value__ == (3900287i32)) {
                    _m_3900287 = stdgo._internal.regexp.Regexp__newOnePassMachine._newOnePassMachine();
                    if ((_m_3900287._matchcap.capacity < _ncap : Bool)) {
                        _gotoNext = 3900339i32;
                    } else {
                        _gotoNext = 3900382i32;
                    };
                } else if (__value__ == (3900339i32)) {
                    _m_3900287._matchcap = (new stdgo.Slice<stdgo.GoInt>((_ncap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3900422i32;
                } else if (__value__ == (3900382i32)) {
                    _gotoNext = 3900382i32;
                    _m_3900287._matchcap = (_m_3900287._matchcap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
                    var __blank__ = 0i32;
                    _gotoNext = 3900422i32;
                } else if (__value__ == (3900422i32)) {
                    _matched_3900422 = false;
                    if ((0i32 : stdgo.GoInt) < (_m_3900287._matchcap.length)) {
                        _gotoNext = 3900489i32;
                    } else {
                        _gotoNext = 3900494i32;
                    };
                } else if (__value__ == (3900466i32)) {
                    _m_3900287._matchcap[(_i_3900444 : stdgo.GoInt)] = (-1 : stdgo.GoInt);
                    _i_3900444++;
                    _gotoNext = 3900490i32;
                } else if (__value__ == (3900489i32)) {
                    _i_3900444 = 0i32;
                    _gotoNext = 3900490i32;
                } else if (__value__ == (3900490i32)) {
                    if (_i_3900444 < (_m_3900287._matchcap.length)) {
                        _gotoNext = 3900466i32;
                    } else {
                        _gotoNext = 3900494i32;
                    };
                } else if (__value__ == (3900494i32)) {
                    {
                        var __tmp__ = _m_3900287._inputs._init(_ir, _ib, _is?.__copy__());
                        _i_3900494 = __tmp__._0;
                    };
                    {
                        final __tmp__0 = (-1 : stdgo.GoInt32);
                        final __tmp__1 = (-1 : stdgo.GoInt32);
                        _r_3900530 = __tmp__0;
                        _r1_3900533 = __tmp__1;
                    };
                    {
                        final __tmp__0 = (0 : stdgo.GoInt);
                        final __tmp__1 = (0 : stdgo.GoInt);
                        _width_3900561 = __tmp__0;
                        _width1_3900568 = __tmp__1;
                    };
                    {
                        var __tmp__ = _i_3900494._step(_pos);
                        _r_3900530 = __tmp__._0;
                        _width_3900561 = __tmp__._1;
                    };
                    if (_r_3900530 != ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3900626i32;
                    } else {
                        _gotoNext = 3900667i32;
                    };
                } else if (__value__ == (3900626i32)) {
                    {
                        var __tmp__ = _i_3900494._step((_pos + _width_3900561 : stdgo.GoInt));
                        _r1_3900533 = __tmp__._0;
                        _width1_3900568 = __tmp__._1;
                    };
                    _gotoNext = 3900667i32;
                } else if (__value__ == (3900667i32)) {
                    if (_pos == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3900698i32;
                    } else {
                        _gotoNext = 3900736i32;
                    };
                } else if (__value__ == (3900698i32)) {
                    _flag_3900671 = stdgo._internal.regexp.Regexp__newLazyFlag._newLazyFlag((-1 : stdgo.GoInt32), _r_3900530);
                    _gotoNext = 3900766i32;
                } else if (__value__ == (3900736i32)) {
                    _gotoNext = 3900736i32;
                    _flag_3900671 = _i_3900494._context(_pos);
                    var __blank__ = 0i32;
                    _gotoNext = 3900766i32;
                } else if (__value__ == (3900766i32)) {
                    _pc_3900766 = _re._onepass.start;
                    _inst_3900790 = (stdgo.Go.setRef(_re._onepass.inst[(_pc_3900766 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>);
                    if ((((_pos == ((0 : stdgo.GoInt)) && _flag_3900671._match((_inst_3900790.inst.arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : Bool) && ((_re._prefix.length) > (0 : stdgo.GoInt) : Bool) : Bool) && _i_3900494._canCheckPrefix() : Bool)) {
                        _gotoNext = 3900973i32;
                    } else {
                        _gotoNext = 3901211i32;
                    };
                } else if (__value__ == (3900973i32)) {
                    if (!_i_3900494._hasPrefix(_re)) {
                        _gotoNext = 3901053i32;
                    } else {
                        _gotoNext = 3901076i32;
                    };
                } else if (__value__ == (3901053i32)) {
                    _gotoNext = 3902335i32;
                } else if (__value__ == (3901076i32)) {
                    _pos = (_pos + ((_re._prefix.length)) : stdgo.GoInt);
                    {
                        var __tmp__ = _i_3900494._step(_pos);
                        _r_3900530 = __tmp__._0;
                        _width_3900561 = __tmp__._1;
                    };
                    {
                        var __tmp__ = _i_3900494._step((_pos + _width_3900561 : stdgo.GoInt));
                        _r1_3900533 = __tmp__._0;
                        _width1_3900568 = __tmp__._1;
                    };
                    _flag_3900671 = _i_3900494._context(_pos);
                    _pc_3900766 = (_re._prefixEnd : stdgo.GoInt);
                    _gotoNext = 3901211i32;
                } else if (__value__ == (3901211i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3901211i32;
                    if (true) {
                        _gotoNext = 3901215i32;
                    } else {
                        _gotoNext = 3902335i32;
                    };
                } else if (__value__ == (3901215i32)) {
                    _inst_3900790 = (stdgo.Go.setRef(_re._onepass.inst[(_pc_3900766 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>);
                    _pc_3900766 = (_inst_3900790.inst.out : stdgo.GoInt);
                    _gotoNext = 3901270i32;
                } else if (__value__ == (3901270i32)) {
                    {
                        final __value__ = _inst_3900790.inst.op;
                        if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3901321i32;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3901458i32;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3901530i32;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3901602i32;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3901643i32;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3901781i32;
                        } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3901871i32;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3901910i32;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3901945i32;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3902054i32;
                        } else {
                            _gotoNext = 3901289i32;
                        };
                    };
                } else if (__value__ == (3901289i32)) {
                    throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    _gotoNext = 3902173i32;
                } else if (__value__ == (3901321i32)) {
                    _matched_3900422 = true;
                    if (((_m_3900287._matchcap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3901388i32;
                    } else {
                        _gotoNext = 3901444i32;
                    };
                } else if (__value__ == (3901388i32)) {
                    _m_3900287._matchcap[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt);
                    _m_3900287._matchcap[(1 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3901444i32;
                } else if (__value__ == (3901444i32)) {
                    _gotoNext = 3902335i32;
                } else if (__value__ == (3901458i32)) {
                    if (!_inst_3900790.matchRune(_r_3900530)) {
                        _gotoNext = 3901505i32;
                    } else {
                        _gotoNext = 3902173i32;
                    };
                } else if (__value__ == (3901505i32)) {
                    _gotoNext = 3902335i32;
                } else if (__value__ == (3901530i32)) {
                    if (_r_3900530 != (_inst_3900790.inst.rune[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                        _gotoNext = 3901577i32;
                    } else {
                        _gotoNext = 3902173i32;
                    };
                } else if (__value__ == (3901577i32)) {
                    _gotoNext = 3902335i32;
                } else if (__value__ == (3901602i32)) {
                    _gotoNext = 3902173i32;
                } else if (__value__ == (3901643i32)) {
                    if (_r_3900530 == ((10 : stdgo.GoInt32))) {
                        _gotoNext = 3901689i32;
                    } else {
                        _gotoNext = 3902173i32;
                    };
                } else if (__value__ == (3901689i32)) {
                    _gotoNext = 3902335i32;
                } else if (__value__ == (3901781i32)) {
                    _pc_3900766 = (stdgo._internal.regexp.Regexp__onePassNext._onePassNext(_inst_3900790, _r_3900530) : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3901211i32;
                } else if (__value__ == (3901871i32)) {
                    _gotoNext = 3902335i32;
                } else if (__value__ == (3901910i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3901211i32;
                } else if (__value__ == (3901945i32)) {
                    if (!_flag_3900671._match((_inst_3900790.inst.arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                        _gotoNext = 3902017i32;
                    } else {
                        _gotoNext = 3902043i32;
                    };
                } else if (__value__ == (3902017i32)) {
                    _gotoNext = 3902335i32;
                } else if (__value__ == (3902043i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3901211i32;
                } else if (__value__ == (3902054i32)) {
                    if (((_inst_3900790.inst.arg : stdgo.GoInt) < (_m_3900287._matchcap.length) : Bool)) {
                        _gotoNext = 3902117i32;
                    } else {
                        _gotoNext = 3902158i32;
                    };
                } else if (__value__ == (3902117i32)) {
                    _m_3900287._matchcap[(_inst_3900790.inst.arg : stdgo.GoInt)] = _pos;
                    _gotoNext = 3902158i32;
                } else if (__value__ == (3902158i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3901211i32;
                } else if (__value__ == (3902173i32)) {
                    if (_width_3900561 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3902187i32;
                    } else {
                        _gotoNext = 3902204i32;
                    };
                } else if (__value__ == (3902187i32)) {
                    _gotoNext = 3902335i32;
                } else if (__value__ == (3902204i32)) {
                    _flag_3900671 = stdgo._internal.regexp.Regexp__newLazyFlag._newLazyFlag(_r_3900530, _r1_3900533);
                    _pos = (_pos + (_width_3900561) : stdgo.GoInt);
                    {
                        final __tmp__0 = _r1_3900533;
                        final __tmp__1 = _width1_3900568;
                        _r_3900530 = __tmp__0;
                        _width_3900561 = __tmp__1;
                    };
                    if (_r_3900530 != ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3902289i32;
                    } else {
                        _gotoNext = 3902335i32;
                    };
                } else if (__value__ == (3902289i32)) {
                    {
                        var __tmp__ = _i_3900494._step((_pos + _width_3900561 : stdgo.GoInt));
                        _r1_3900533 = __tmp__._0;
                        _width1_3900568 = __tmp__._1;
                    };
                    _gotoNext = 3902335i32;
                } else if (__value__ == (3902335i32)) {
                    _gotoNext = 3902335i32;
                    if (!_matched_3900422) {
                        _gotoNext = 3902356i32;
                    } else {
                        _gotoNext = 3902400i32;
                    };
                } else if (__value__ == (3902356i32)) {
                    stdgo._internal.regexp.Regexp__freeOnePassMachine._freeOnePassMachine(_m_3900287);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3902400i32;
                } else if (__value__ == (3902400i32)) {
                    _dstCap = (_dstCap.__append__(...(_m_3900287._matchcap : Array<stdgo.GoInt>)));
                    stdgo._internal.regexp.Regexp__freeOnePassMachine._freeOnePassMachine(_m_3900287);
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
        var _advance_3881553:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_3881403:stdgo.GoInt = (0 : stdgo.GoInt);
        var _end_3880695:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3880692:stdgo._internal.regexp.Regexp_T_input.T_input = (null : stdgo._internal.regexp.Regexp_T_input.T_input);
        var _b_3880672:stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>);
        var _startCond_3880465:stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _startCond_3880465 = _re._cond;
                    if (_startCond_3880465 == ((255 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                        _gotoNext = 3880522i32;
                    } else {
                        _gotoNext = 3880555i32;
                    };
                } else if (__value__ == (3880522i32)) {
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3880555i32;
                } else if (__value__ == (3880555i32)) {
                    if ((((_startCond_3880465 & (4 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) != (0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) && (_pos != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3880607i32;
                    } else {
                        _gotoNext = 3880672i32;
                    };
                } else if (__value__ == (3880607i32)) {
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3880672i32;
                } else if (__value__ == (3880672i32)) {
                    _b_3880672 = stdgo._internal.regexp.Regexp__newBitState._newBitState();
                    {
                        var __tmp__ = _b_3880672._inputs._init((null : stdgo._internal.io.Io_RuneReader.RuneReader), _ib, _is?.__copy__());
                        _i_3880692 = __tmp__._0;
                        _end_3880695 = __tmp__._1;
                    };
                    _b_3880672._reset(_re._prog, _end_3880695, _ncap);
                    if ((_startCond_3880465 & (4 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                        _gotoNext = 3880861i32;
                    } else {
                        _gotoNext = 3881010i32;
                    };
                } else if (__value__ == (3880861i32)) {
                    if (((_b_3880672._cap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3880883i32;
                    } else {
                        _gotoNext = 3880909i32;
                    };
                } else if (__value__ == (3880883i32)) {
                    _b_3880672._cap[(0 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3880909i32;
                } else if (__value__ == (3880909i32)) {
                    if (!_re._tryBacktrack(_b_3880672, _i_3880692, (_re._prog.start : stdgo.GoUInt32), _pos)) {
                        _gotoNext = 3880963i32;
                    } else {
                        _gotoNext = 3881897i32;
                    };
                } else if (__value__ == (3880963i32)) {
                    stdgo._internal.regexp.Regexp__freeBitState._freeBitState(_b_3880672);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3881897i32;
                } else if (__value__ == (3881010i32)) {
                    _gotoNext = 3881010i32;
                    _width_3881403 = (-1 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3881417i32;
                } else if (__value__ == (3881417i32)) {
                    if (((_pos <= _end_3880695 : Bool) && (_width_3881403 != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3881462i32;
                    } else {
                        _gotoNext = 3881864i32;
                    };
                } else if (__value__ == (3881462i32)) {
                    if (((_re._prefix.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3881489i32;
                    } else {
                        _gotoNext = 3881673i32;
                    };
                } else if (__value__ == (3881489i32)) {
                    _advance_3881553 = _i_3880692._index(_re, _pos);
                    if ((_advance_3881553 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3881600i32;
                    } else {
                        _gotoNext = 3881649i32;
                    };
                } else if (__value__ == (3881600i32)) {
                    stdgo._internal.regexp.Regexp__freeBitState._freeBitState(_b_3880672);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3881649i32;
                } else if (__value__ == (3881649i32)) {
                    _pos = (_pos + (_advance_3881553) : stdgo.GoInt);
                    _gotoNext = 3881673i32;
                } else if (__value__ == (3881673i32)) {
                    if (((_b_3880672._cap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3881691i32;
                    } else {
                        _gotoNext = 3881720i32;
                    };
                } else if (__value__ == (3881691i32)) {
                    _b_3880672._cap[(0 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3881720i32;
                } else if (__value__ == (3881720i32)) {
                    if (_re._tryBacktrack(_b_3880672, _i_3880692, (_re._prog.start : stdgo.GoUInt32), _pos)) {
                        _gotoNext = 3881773i32;
                    } else {
                        _gotoNext = 3881835i32;
                    };
                } else if (__value__ == (3881773i32)) {
                    _gotoNext = 3881897i32;
                } else if (__value__ == (3881835i32)) {
                    {
                        var __tmp__ = _i_3880692._step(_pos);
                        _width_3881403 = __tmp__._1;
                    };
                    _pos = (_pos + (_width_3881403) : stdgo.GoInt);
                    _gotoNext = 3881417i32;
                } else if (__value__ == (3881864i32)) {
                    stdgo._internal.regexp.Regexp__freeBitState._freeBitState(_b_3880672);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    var __blank__ = 0i32;
                    _gotoNext = 3881897i32;
                } else if (__value__ == (3881897i32)) {
                    _gotoNext = 3881897i32;
                    _dstCap = (_dstCap.__append__(...(_b_3880672._matchcap : Array<stdgo.GoInt>)));
                    stdgo._internal.regexp.Regexp__freeBitState._freeBitState(_b_3880672);
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
        var _r_3878610:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3878300:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _width_3878776:stdgo.GoInt = (0 : stdgo.GoInt);
        var _l_3876620:stdgo.GoInt = (0 : stdgo.GoInt);
        var _longest_3876544:Bool = false;
        var _r_3878452:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _width_3878303:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inst_3877119:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        var _pc_3876671:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _old_3879861:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3878773:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _arg_3876715:Bool = false;
        var _pos_3876692:stdgo.GoInt = (0 : stdgo.GoInt);
        var _flag_3879309:stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag);
        var _width_3878613:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_3878455:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _longest_3876544 = _re._longest;
                    _b._push(_re, _pc, _pos, false);
                    var __blank__ = 0i32;
                    _gotoNext = 3876596i32;
                } else if (__value__ == (3876596i32)) {
                    if (((_b._jobs.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3876616i32;
                    } else {
                        _gotoNext = 3880232i32;
                    };
                } else if (__value__ == (3876616i32)) {
                    _l_3876620 = ((_b._jobs.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _pc_3876671 = _b._jobs[(_l_3876620 : stdgo.GoInt)]._pc;
                    _pos_3876692 = _b._jobs[(_l_3876620 : stdgo.GoInt)]._pos;
                    _arg_3876715 = _b._jobs[(_l_3876620 : stdgo.GoInt)]._arg;
                    _b._jobs = (_b._jobs.__slice__(0, _l_3876620) : stdgo.Slice<stdgo._internal.regexp.Regexp_T_job.T_job>);
                    _gotoNext = 3877110i32;
                } else if (__value__ == (3877048i32)) {
                    if (!_b._shouldVisit(_pc_3876671, _pos_3876692)) {
                        _gotoNext = 3877091i32;
                    } else {
                        _gotoNext = 3877110i32;
                    };
                } else if (__value__ == (3877091i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3876596i32;
                } else if (__value__ == (3877110i32)) {
                    _gotoNext = 3877110i32;
                    _inst_3877119 = (stdgo.Go.setRef(_re._prog.inst[(_pc_3876671 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
                    _gotoNext = 3877148i32;
                } else if (__value__ == (3877148i32)) {
                    {
                        final __value__ = _inst_3877119.op;
                        if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3877199i32;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3877255i32;
                        } else if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3877816i32;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3878275i32;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3878426i32;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3878577i32;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3878745i32;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3878895i32;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3879278i32;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3879437i32;
                        } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3879499i32;
                        } else {
                            _gotoNext = 3877167i32;
                        };
                    };
                } else if (__value__ == (3877167i32)) {
                    throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    _gotoNext = 3880232i32;
                } else if (__value__ == (3877199i32)) {
                    throw stdgo.Go.toInterface(("unexpected InstFail" : stdgo.GoString));
                    _gotoNext = 3880232i32;
                } else if (__value__ == (3877255i32)) {
                    if (_arg_3876715) {
                        _gotoNext = 3877628i32;
                    } else {
                        _gotoNext = 3877736i32;
                    };
                } else if (__value__ == (3877628i32)) {
                    _arg_3876715 = false;
                    _pc_3876671 = _inst_3877119.arg;
                    _gotoNext = 3877048i32;
                } else if (__value__ == (3877736i32)) {
                    _gotoNext = 3877736i32;
                    _b._push(_re, _pc_3876671, _pos_3876692, true);
                    _pc_3876671 = _inst_3877119.out;
                    _gotoNext = 3877048i32;
                } else if (__value__ == (3877816i32)) {
                    _gotoNext = 3877904i32;
                } else if (__value__ == (3877904i32)) {
                    {
                        final __value__ = _re._prog.inst[(_inst_3877119.out : stdgo.GoInt)].op;
                        if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3877942i32;
                        } else {
                            _gotoNext = 3878199i32;
                        };
                    };
                } else if (__value__ == (3877942i32)) {
                    _b._push(_re, _inst_3877119.arg, _pos_3876692, false);
                    _pc_3876671 = _inst_3877119.arg;
                    _pos_3876692 = _b._end;
                    _gotoNext = 3877048i32;
                } else if (__value__ == (3878199i32)) {
                    _b._push(_re, _inst_3877119.out, _b._end, false);
                    _pc_3876671 = _inst_3877119.out;
                    _gotoNext = 3877048i32;
                } else if (__value__ == (3878275i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3876692);
                        _r_3878300 = __tmp__._0;
                        _width_3878303 = __tmp__._1;
                    };
                    if (!_inst_3877119.matchRune(_r_3878300)) {
                        _gotoNext = 3878349i32;
                    } else {
                        _gotoNext = 3878372i32;
                    };
                } else if (__value__ == (3878349i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3876596i32;
                } else if (__value__ == (3878372i32)) {
                    _pos_3876692 = (_pos_3876692 + (_width_3878303) : stdgo.GoInt);
                    _pc_3876671 = _inst_3877119.out;
                    _gotoNext = 3877048i32;
                } else if (__value__ == (3878426i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3876692);
                        _r_3878452 = __tmp__._0;
                        _width_3878455 = __tmp__._1;
                    };
                    if (_r_3878452 != (_inst_3877119.rune[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                        _gotoNext = 3878500i32;
                    } else {
                        _gotoNext = 3878523i32;
                    };
                } else if (__value__ == (3878500i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3876596i32;
                } else if (__value__ == (3878523i32)) {
                    _pos_3876692 = (_pos_3876692 + (_width_3878455) : stdgo.GoInt);
                    _pc_3876671 = _inst_3877119.out;
                    _gotoNext = 3877048i32;
                } else if (__value__ == (3878577i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3876692);
                        _r_3878610 = __tmp__._0;
                        _width_3878613 = __tmp__._1;
                    };
                    if (((_r_3878610 == (10 : stdgo.GoInt32)) || (_r_3878610 == (-1 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3878668i32;
                    } else {
                        _gotoNext = 3878691i32;
                    };
                } else if (__value__ == (3878668i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3876596i32;
                } else if (__value__ == (3878691i32)) {
                    _pos_3876692 = (_pos_3876692 + (_width_3878613) : stdgo.GoInt);
                    _pc_3876671 = _inst_3877119.out;
                    _gotoNext = 3877048i32;
                } else if (__value__ == (3878745i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3876692);
                        _r_3878773 = __tmp__._0;
                        _width_3878776 = __tmp__._1;
                    };
                    if (_r_3878773 == ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3878818i32;
                    } else {
                        _gotoNext = 3878841i32;
                    };
                } else if (__value__ == (3878818i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3876596i32;
                } else if (__value__ == (3878841i32)) {
                    _pos_3876692 = (_pos_3876692 + (_width_3878776) : stdgo.GoInt);
                    _pc_3876671 = _inst_3877119.out;
                    _gotoNext = 3877048i32;
                } else if (__value__ == (3878895i32)) {
                    if (_arg_3876715) {
                        _gotoNext = 3878930i32;
                    } else {
                        _gotoNext = 3879030i32;
                    };
                } else if (__value__ == (3878930i32)) {
                    _b._cap[(_inst_3877119.arg : stdgo.GoInt)] = _pos_3876692;
                    var __blank__ = 0i32;
                    _gotoNext = 3876596i32;
                } else if (__value__ == (3879030i32)) {
                    _gotoNext = 3879030i32;
                    if ((_inst_3877119.arg < (_b._cap.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3879069i32;
                    } else {
                        _gotoNext = 3879234i32;
                    };
                } else if (__value__ == (3879069i32)) {
                    _b._push(_re, _pc_3876671, _b._cap[(_inst_3877119.arg : stdgo.GoInt)], true);
                    _b._cap[(_inst_3877119.arg : stdgo.GoInt)] = _pos_3876692;
                    _gotoNext = 3879234i32;
                } else if (__value__ == (3879234i32)) {
                    _pc_3876671 = _inst_3877119.out;
                    _gotoNext = 3877048i32;
                } else if (__value__ == (3879278i32)) {
                    _flag_3879309 = _i._context(_pos_3876692);
                    if (!_flag_3879309._match((_inst_3877119.arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                        _gotoNext = 3879376i32;
                    } else {
                        _gotoNext = 3879399i32;
                    };
                } else if (__value__ == (3879376i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3876596i32;
                } else if (__value__ == (3879399i32)) {
                    _pc_3876671 = _inst_3877119.out;
                    _gotoNext = 3877048i32;
                } else if (__value__ == (3879437i32)) {
                    _pc_3876671 = _inst_3877119.out;
                    _gotoNext = 3877048i32;
                } else if (__value__ == (3879499i32)) {
                    if ((_b._cap.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3879645i32;
                    } else {
                        _gotoNext = 3879811i32;
                    };
                } else if (__value__ == (3879645i32)) {
                    return true;
                    _gotoNext = 3879811i32;
                } else if (__value__ == (3879811i32)) {
                    if (((_b._cap.length) > (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3879829i32;
                    } else {
                        _gotoNext = 3879858i32;
                    };
                } else if (__value__ == (3879829i32)) {
                    _b._cap[(1 : stdgo.GoInt)] = _pos_3876692;
                    _gotoNext = 3879858i32;
                } else if (__value__ == (3879858i32)) {
                    {
                        _old_3879861 = _b._matchcap[(1 : stdgo.GoInt)];
                        if (((_old_3879861 == (-1 : stdgo.GoInt)) || (((_longest_3876544 && (_pos_3876692 > (0 : stdgo.GoInt) : Bool) : Bool) && (_pos_3876692 > _old_3879861 : Bool) : Bool)) : Bool)) {
                            _gotoNext = 3879930i32;
                        } else {
                            _gotoNext = 3880013i32;
                        };
                    };
                } else if (__value__ == (3879930i32)) {
                    stdgo.Go.copySlice(_b._matchcap, _b._cap);
                    _gotoNext = 3880013i32;
                } else if (__value__ == (3880013i32)) {
                    if (!_longest_3876544) {
                        _gotoNext = 3880025i32;
                    } else {
                        _gotoNext = 3880115i32;
                    };
                } else if (__value__ == (3880025i32)) {
                    return true;
                    _gotoNext = 3880115i32;
                } else if (__value__ == (3880115i32)) {
                    if (_pos_3876692 == (_b._end)) {
                        _gotoNext = 3880131i32;
                    } else {
                        _gotoNext = 3880214i32;
                    };
                } else if (__value__ == (3880131i32)) {
                    return true;
                    _gotoNext = 3880214i32;
                } else if (__value__ == (3880214i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3876596i32;
                } else if (__value__ == (3880232i32)) {
                    return ((_longest_3876544 && ((_b._matchcap.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (_b._matchcap[(1 : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
