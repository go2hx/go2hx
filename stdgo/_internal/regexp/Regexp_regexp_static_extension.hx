package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.Regexp_asInterface) class Regexp_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalText( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile((_text : stdgo.GoString)?.__copy__()), _newRE:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = (_newRE : stdgo._internal.regexp.Regexp_regexp.Regexp)?.__copy__();
            var x = (_re : stdgo._internal.regexp.Regexp_regexp.Regexp);
            x._expr = __tmp__?._expr;
            x._prog = __tmp__?._prog;
            x._onepass = __tmp__?._onepass;
            x._numSubexp = __tmp__?._numSubexp;
            x._maxBitStateLen = __tmp__?._maxBitStateLen;
            x._subexpNames = __tmp__?._subexpNames;
            x._prefix = __tmp__?._prefix;
            x._prefixBytes = __tmp__?._prefixBytes;
            x._prefixRune = __tmp__?._prefixRune;
            x._prefixEnd = __tmp__?._prefixEnd;
            x._mpool = __tmp__?._mpool;
            x._matchcap = __tmp__?._matchcap;
            x._prefixComplete = __tmp__?._prefixComplete;
            x._cond = __tmp__?._cond;
            x._minInputLen = __tmp__?._minInputLen;
            x._longest = __tmp__?._longest;
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return { _0 : ((@:check2r _re.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function split( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if (_n == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        if (((((@:checkr _re ?? throw "null pointer dereference")._expr.length) > (0 : stdgo.GoInt) : Bool) && (_s.length == (0 : stdgo.GoInt)) : Bool)) {
            return (new stdgo.Slice<stdgo.GoString>(1, 1, ...[(stdgo.Go.str() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        };
        var _matches = @:check2r _re.findAllStringIndex(_s?.__copy__(), _n);
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
    @:tdfield
    static public function findAllStringSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        @:check2r _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__(_match));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllStringSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoString>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
        @:check2r _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
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
    @:tdfield
    static public function findAllSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        @:check2r _re._allMatches((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__(_match));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>);
        @:check2r _re._allMatches((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
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
    @:tdfield
    static public function findAllStringIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        @:check2r _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__((_match.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        @:check2r _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
            };
            _result = (_result.__append__((_s.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__()));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        @:check2r _re._allMatches((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__((_match.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAll( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        @:check2r _re._allMatches((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            };
            _result = (_result.__append__((_b.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>)));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findReaderSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._pad(@:check2r _re._doExecute(_r, (null : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    @:tdfield
    static public function findStringSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._pad(@:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    @:tdfield
    static public function findStringSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4).__setNumber32__();
        var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        var _ret = (new stdgo.Slice<stdgo.GoString>(((1 : stdgo.GoInt) + (@:checkr _re ?? throw "null pointer dereference")._numSubexp : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _ in _ret) {
            if (((((2 : stdgo.GoInt) * _i : stdgo.GoInt) < (_a.length) : Bool) && (_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                _ret[(_i : stdgo.GoInt)] = (_s.__slice__(_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
            };
        };
        return _ret;
    }
    @:keep
    @:tdfield
    static public function findSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._pad(@:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    @:tdfield
    static public function _expand( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.GoString, _bsrc:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        while (((_template.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_template?.__copy__(), ("$" : stdgo.GoString)), _before:stdgo.GoString = __tmp__._0, _after:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (!_ok) {
                break;
            };
            _dst = (_dst.__append__(...(_before : Array<stdgo.GoUInt8>)));
            _template = _after?.__copy__();
            if (((_template != (stdgo.Go.str() : stdgo.GoString)) && (_template[(0 : stdgo.GoInt)] == (36 : stdgo.GoUInt8)) : Bool)) {
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
                for (_i => _namei in (@:checkr _re ?? throw "null pointer dereference")._subexpNames) {
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
    @:tdfield
    static public function expandString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.GoString, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._expand(_dst, _template?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _match);
    }
    @:keep
    @:tdfield
    static public function expand( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._expand(_dst, (_template : stdgo.GoString)?.__copy__(), _src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _match);
    }
    @:keep
    @:tdfield
    static public function findSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4).__setNumber32__();
        var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        };
        var _ret = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(((1 : stdgo.GoInt) + (@:checkr _re ?? throw "null pointer dereference")._numSubexp : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (_i => _ in _ret) {
            if (((((2 : stdgo.GoInt) * _i : stdgo.GoInt) < (_a.length) : Bool) && (_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                _ret[(_i : stdgo.GoInt)] = (_b.__slice__(_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        return _ret;
    }
    @:keep
    @:tdfield
    static public function findReaderIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = @:check2r _re._doExecute(_r, (null : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return _loc = (null : stdgo.Slice<stdgo.GoInt>);
        };
        return _loc = (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    @:tdfield
    static public function findStringIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return _loc = (null : stdgo.Slice<stdgo.GoInt>);
        };
        return _loc = (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    @:tdfield
    static public function findString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__();
        var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        return (_s.__slice__(_a[(0 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function findIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return _loc = (null : stdgo.Slice<stdgo.GoInt>);
        };
        return _loc = (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    @:tdfield
    static public function find( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__();
        var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (_b.__slice__(_a[(0 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _allMatches( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt, _deliver:stdgo.Slice<stdgo.GoInt> -> Void):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
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
                var _matches = @:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, _s?.__copy__(), _pos, (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (null : stdgo.Slice<stdgo.GoInt>));
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
                        var _is = ({ _str : _s?.__copy__() } : stdgo._internal.regexp.Regexp_t_inputstring.T_inputString);
                        {
                            var __tmp__ = @:check2 _is._step(_pos);
                            _width = @:tmpset0 __tmp__._1;
                        };
                    } else {
                        var _ib = ({ _str : _b } : stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes);
                        {
                            var __tmp__ = @:check2 _ib._step(_pos);
                            _width = @:tmpset0 __tmp__._1;
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
                    _deliver(@:check2r _re._pad(_matches));
                    _i++;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _pad( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _a:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        var _n = ((((1 : stdgo.GoInt) + (@:checkr _re ?? throw "null pointer dereference")._numSubexp : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt);
        while (((_a.length) < _n : Bool)) {
            _a = (_a.__append__((-1 : stdgo.GoInt)));
        };
        return _a;
    }
    @:keep
    @:tdfield
    static public function replaceAllFunc( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._replaceAll(_src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return (_dst.__append__(...(_repl((_src.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>)) : Array<stdgo.GoUInt8>)));
        });
    }
    @:keep
    @:tdfield
    static public function replaceAllLiteral( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._replaceAll(_src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return (_dst.__append__(...(_repl : Array<stdgo.GoUInt8>)));
        });
    }
    @:keep
    @:tdfield
    static public function replaceAll( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _n = (2 : stdgo.GoInt);
        if ((stdgo._internal.bytes.Bytes_indexbyte.indexByte(_repl, (36 : stdgo.GoUInt8)) >= (0 : stdgo.GoInt) : Bool)) {
            _n = ((2 : stdgo.GoInt) * (((@:checkr _re ?? throw "null pointer dereference")._numSubexp + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _srepl = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _b = @:check2r _re._replaceAll(_src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _n, function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            if ((_srepl.length) != ((_repl.length))) {
                _srepl = (_repl : stdgo.GoString)?.__copy__();
            };
            return @:check2r _re._expand(_dst, _srepl?.__copy__(), _src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _match);
        });
        return _b;
    }
    @:keep
    @:tdfield
    static public function _replaceAll( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _bsrc:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.GoString, _nmatch:stdgo.GoInt, _repl:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoInt>) -> stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _lastMatchEnd = (0 : stdgo.GoInt);
        var _searchPos = (0 : stdgo.GoInt);
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _endPos:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_bsrc != null) {
            _endPos = (_bsrc.length);
        } else {
            _endPos = (_src.length);
        };
        if ((_nmatch > (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap : Bool)) {
            _nmatch = (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap;
        };
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__();
        while ((_searchPos <= _endPos : Bool)) {
            var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _bsrc, _src?.__copy__(), _searchPos, _nmatch, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
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
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_bsrc.__slice__(_searchPos) : stdgo.Slice<stdgo.GoUInt8>));
                    _width = @:tmpset0 __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_src.__slice__(_searchPos) : stdgo.GoString)?.__copy__());
                    _width = @:tmpset0 __tmp__._1;
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
    @:tdfield
    static public function replaceAllStringFunc( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString -> stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _b = @:check2r _re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return (_dst.__append__(...(_repl((_src.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__()) : Array<stdgo.GoUInt8>)));
        });
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function replaceAllLiteralString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return (@:check2r _re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return (_dst.__append__(...(_repl : Array<stdgo.GoUInt8>)));
        }) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function replaceAllString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _n = (2 : stdgo.GoInt);
        if (stdgo._internal.strings.Strings_contains.contains(_repl?.__copy__(), ("$" : stdgo.GoString))) {
            _n = ((2 : stdgo.GoInt) * (((@:checkr _re ?? throw "null pointer dereference")._numSubexp + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _b = @:check2r _re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _n, function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return @:check2r _re._expand(_dst, _repl?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _match);
        });
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function match( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._doMatch((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function matchString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._doMatch((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function matchReader( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._doMatch(_r, (null : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function literalPrefix( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _prefix = ("" : stdgo.GoString), _complete = false;
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (@:checkr _re ?? throw "null pointer dereference")._prefix?.__copy__(), _1 : (@:checkr _re ?? throw "null pointer dereference")._prefixComplete };
            _prefix = __tmp__._0;
            _complete = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function subexpIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _name:stdgo.GoString):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if (_name != ((stdgo.Go.str() : stdgo.GoString))) {
            for (_i => _s in (@:checkr _re ?? throw "null pointer dereference")._subexpNames) {
                if (_name == (_s)) {
                    return _i;
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function subexpNames( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return (@:checkr _re ?? throw "null pointer dereference")._subexpNames;
    }
    @:keep
    @:tdfield
    static public function numSubexp( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return (@:checkr _re ?? throw "null pointer dereference")._numSubexp;
    }
    @:keep
    @:tdfield
    static public function _put( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        (@:checkr _m ?? throw "null pointer dereference")._re = null;
        (@:checkr _m ?? throw "null pointer dereference")._p = null;
        @:check2 (@:checkr _m ?? throw "null pointer dereference")._inputs._clear();
        @:check2 stdgo._internal.regexp.Regexp__matchpool._matchPool[((@:checkr _re ?? throw "null pointer dereference")._mpool : stdgo.GoInt)].put(stdgo.Go.toInterface(stdgo.Go.asInterface(_m)));
    }
    @:keep
    @:tdfield
    static public function _get( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2 stdgo._internal.regexp.Regexp__matchpool._matchPool[((@:checkr _re ?? throw "null pointer dereference")._mpool : stdgo.GoInt)].get() : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>)) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>), _1 : false };
        }, _m = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _m = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp_t_machine.T_machine)) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>);
        };
        (@:checkr _m ?? throw "null pointer dereference")._re = _re;
        (@:checkr _m ?? throw "null pointer dereference")._p = (@:checkr _re ?? throw "null pointer dereference")._prog;
        if (((@:checkr _m ?? throw "null pointer dereference")._matchcap.capacity < (@:checkr _re ?? throw "null pointer dereference")._matchcap : Bool)) {
            (@:checkr _m ?? throw "null pointer dereference")._matchcap = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _re ?? throw "null pointer dereference")._matchcap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            for (__0 => _t in (@:checkr _m ?? throw "null pointer dereference")._pool) {
                (@:checkr _t ?? throw "null pointer dereference")._cap = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _re ?? throw "null pointer dereference")._matchcap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            };
        };
        var _n = (stdgo._internal.regexp.Regexp__matchsize._matchSize[((@:checkr _re ?? throw "null pointer dereference")._mpool : stdgo.GoInt)] : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            _n = ((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").inst.length);
        };
        if ((((@:checkr _m ?? throw "null pointer dereference")._q0._sparse.length) < _n : Bool)) {
            (@:checkr _m ?? throw "null pointer dereference")._q0 = (new stdgo._internal.regexp.Regexp_t_queue.T_queue((new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), (new stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_t_entry.T_entry)]) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>)) : stdgo._internal.regexp.Regexp_t_queue.T_queue);
            (@:checkr _m ?? throw "null pointer dereference")._q1 = (new stdgo._internal.regexp.Regexp_t_queue.T_queue((new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), (new stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_t_entry.T_entry)]) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>)) : stdgo._internal.regexp.Regexp_t_queue.T_queue);
        };
        return _m;
    }
    @:keep
    @:tdfield
    static public function longest( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        (@:checkr _re ?? throw "null pointer dereference")._longest = true;
    }
    @:keep
    @:tdfield
    static public function copy( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _re2 = ((_re : stdgo._internal.regexp.Regexp_regexp.Regexp)?.__copy__() : stdgo._internal.regexp.Regexp_regexp.Regexp);
        return (stdgo.Go.setRef(_re2) : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
    }
    @:keep
    @:tdfield
    static public function string( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return (@:checkr _re ?? throw "null pointer dereference")._expr?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _doExecute( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        if (_dstCap == null) {
            _dstCap = (stdgo._internal.regexp.Regexp__arraynoints._arrayNoInts.__slice__(0, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        };
        if (((_r == null) && (((_b.length) + (_s.length) : stdgo.GoInt) < (@:checkr _re ?? throw "null pointer dereference")._minInputLen : Bool) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        if (((@:checkr _re ?? throw "null pointer dereference")._onepass != null && (((@:checkr _re ?? throw "null pointer dereference")._onepass : Dynamic).__nil__ == null || !((@:checkr _re ?? throw "null pointer dereference")._onepass : Dynamic).__nil__))) {
            return @:check2r _re._doOnePass(_r, _b, _s?.__copy__(), _pos, _ncap, _dstCap);
        };
        if (((_r == null) && (((_b.length) + (_s.length) : stdgo.GoInt) < (@:checkr _re ?? throw "null pointer dereference")._maxBitStateLen : Bool) : Bool)) {
            return @:check2r _re._backtrack(_b, _s?.__copy__(), _pos, _ncap, _dstCap);
        };
        var _m = @:check2r _re._get();
        var __tmp__ = @:check2 (@:checkr _m ?? throw "null pointer dereference")._inputs._init(_r, _b, _s?.__copy__()), _i:stdgo._internal.regexp.Regexp_t_input.T_input = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        @:check2r _m._init(_ncap);
        if (!@:check2r _m._match(_i, _pos)) {
            @:check2r _re._put(_m);
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        _dstCap = (_dstCap.__append__(...((@:checkr _m ?? throw "null pointer dereference")._matchcap : Array<stdgo.GoInt>)));
        @:check2r _re._put(_m);
        return _dstCap;
    }
    @:keep
    @:tdfield
    static public function _doMatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        return @:check2r _re._doExecute(_r, _b, _s?.__copy__(), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>)) != null;
    }
    @:keep
    @:tdfield
    static public function _doOnePass( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _ir:stdgo._internal.io.Io_runereader.RuneReader, _ib:stdgo.Slice<stdgo.GoUInt8>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _inst_38:stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>);
        var _r_32:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_31:stdgo._internal.regexp.Regexp_t_input.T_input = (null : stdgo._internal.regexp.Regexp_t_input.T_input);
        var _i_30:stdgo.GoInt = (0 : stdgo.GoInt);
        var _matched_29:Bool = false;
        var _m_28:stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine>);
        var _startCond_27:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        var _pc_37:stdgo.GoInt = (0 : stdgo.GoInt);
        var _flag_36:stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag);
        var _width1_35:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_34:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r1_33:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _startCond_27 = (@:checkr _re ?? throw "null pointer dereference")._cond;
                    if (_startCond_27 == ((255 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3746586i32;
                    } else {
                        _gotoNext = 3746620i32;
                    };
                } else if (__value__ == (3746586i32)) {
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3746620i32;
                } else if (__value__ == (3746620i32)) {
                    _m_28 = stdgo._internal.regexp.Regexp__newonepassmachine._newOnePassMachine();
                    if (((@:checkr _m_28 ?? throw "null pointer dereference")._matchcap.capacity < _ncap : Bool)) {
                        _gotoNext = 3746672i32;
                    } else {
                        _gotoNext = 3746715i32;
                    };
                } else if (__value__ == (3746672i32)) {
                    (@:checkr _m_28 ?? throw "null pointer dereference")._matchcap = (new stdgo.Slice<stdgo.GoInt>((_ncap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3746755i32;
                } else if (__value__ == (3746715i32)) {
                    _gotoNext = 3746715i32;
                    (@:checkr _m_28 ?? throw "null pointer dereference")._matchcap = ((@:checkr _m_28 ?? throw "null pointer dereference")._matchcap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
                    var __blank__ = 0i32;
                    _gotoNext = 3746755i32;
                } else if (__value__ == (3746755i32)) {
                    _matched_29 = false;
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _m_28 ?? throw "null pointer dereference")._matchcap.length)) {
                        _gotoNext = 3746822i32;
                    } else {
                        _gotoNext = 3746827i32;
                    };
                } else if (__value__ == (3746799i32)) {
                    (@:checkr _m_28 ?? throw "null pointer dereference")._matchcap[(_i_30 : stdgo.GoInt)] = (-1 : stdgo.GoInt);
                    _i_30++;
                    _gotoNext = 3746823i32;
                } else if (__value__ == (3746822i32)) {
                    _i_30 = 0i32;
                    _gotoNext = 3746823i32;
                } else if (__value__ == (3746823i32)) {
                    if (_i_30 < ((@:checkr _m_28 ?? throw "null pointer dereference")._matchcap.length)) {
                        _gotoNext = 3746799i32;
                    } else {
                        _gotoNext = 3746827i32;
                    };
                } else if (__value__ == (3746827i32)) {
                    {
                        var __tmp__ = @:check2 (@:checkr _m_28 ?? throw "null pointer dereference")._inputs._init(_ir, _ib, _is?.__copy__());
                        _i_31 = @:tmpset0 __tmp__._0;
                    };
                    {
                        final __tmp__0 = (-1 : stdgo.GoInt32);
                        final __tmp__1 = (-1 : stdgo.GoInt32);
                        _r_32 = __tmp__0;
                        _r1_33 = __tmp__1;
                    };
                    {
                        final __tmp__0 = (0 : stdgo.GoInt);
                        final __tmp__1 = (0 : stdgo.GoInt);
                        _width_34 = __tmp__0;
                        _width1_35 = __tmp__1;
                    };
                    {
                        var __tmp__ = _i_31._step(_pos);
                        _r_32 = @:tmpset0 __tmp__._0;
                        _width_34 = @:tmpset0 __tmp__._1;
                    };
                    if (_r_32 != ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3746959i32;
                    } else {
                        _gotoNext = 3747000i32;
                    };
                } else if (__value__ == (3746959i32)) {
                    {
                        var __tmp__ = _i_31._step((_pos + _width_34 : stdgo.GoInt));
                        _r1_33 = @:tmpset0 __tmp__._0;
                        _width1_35 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3747000i32;
                } else if (__value__ == (3747000i32)) {
                    if (_pos == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3747031i32;
                    } else {
                        _gotoNext = 3747069i32;
                    };
                } else if (__value__ == (3747031i32)) {
                    _flag_36 = stdgo._internal.regexp.Regexp__newlazyflag._newLazyFlag((-1 : stdgo.GoInt32), _r_32);
                    _gotoNext = 3747099i32;
                } else if (__value__ == (3747069i32)) {
                    _gotoNext = 3747069i32;
                    _flag_36 = _i_31._context(_pos);
                    var __blank__ = 0i32;
                    _gotoNext = 3747099i32;
                } else if (__value__ == (3747099i32)) {
                    _pc_37 = (@:checkr (@:checkr _re ?? throw "null pointer dereference")._onepass ?? throw "null pointer dereference").start;
                    _inst_38 = (stdgo.Go.setRef((@:checkr (@:checkr _re ?? throw "null pointer dereference")._onepass ?? throw "null pointer dereference").inst[(_pc_37 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>);
                    if ((((_pos == ((0 : stdgo.GoInt)) && _flag_36._match(((@:checkr _inst_38 ?? throw "null pointer dereference").inst.arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : Bool) && (((@:checkr _re ?? throw "null pointer dereference")._prefix.length) > (0 : stdgo.GoInt) : Bool) : Bool) && _i_31._canCheckPrefix() : Bool)) {
                        _gotoNext = 3747306i32;
                    } else {
                        _gotoNext = 3747544i32;
                    };
                } else if (__value__ == (3747306i32)) {
                    if (!_i_31._hasPrefix(_re)) {
                        _gotoNext = 3747386i32;
                    } else {
                        _gotoNext = 3747409i32;
                    };
                } else if (__value__ == (3747386i32)) {
                    _gotoNext = 3748668i32;
                } else if (__value__ == (3747409i32)) {
                    _pos = (_pos + (((@:checkr _re ?? throw "null pointer dereference")._prefix.length)) : stdgo.GoInt);
                    {
                        var __tmp__ = _i_31._step(_pos);
                        _r_32 = @:tmpset0 __tmp__._0;
                        _width_34 = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = _i_31._step((_pos + _width_34 : stdgo.GoInt));
                        _r1_33 = @:tmpset0 __tmp__._0;
                        _width1_35 = @:tmpset0 __tmp__._1;
                    };
                    _flag_36 = _i_31._context(_pos);
                    _pc_37 = ((@:checkr _re ?? throw "null pointer dereference")._prefixEnd : stdgo.GoInt);
                    _gotoNext = 3747544i32;
                } else if (__value__ == (3747544i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3747544i32;
                    if (true) {
                        _gotoNext = 3747548i32;
                    } else {
                        _gotoNext = 3748668i32;
                    };
                } else if (__value__ == (3747548i32)) {
                    _inst_38 = (stdgo.Go.setRef((@:checkr (@:checkr _re ?? throw "null pointer dereference")._onepass ?? throw "null pointer dereference").inst[(_pc_37 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>);
                    _pc_37 = ((@:checkr _inst_38 ?? throw "null pointer dereference").inst.out : stdgo.GoInt);
                    _gotoNext = 3747603i32;
                } else if (__value__ == (3747603i32)) {
                    {
                        final __value__ = (@:checkr _inst_38 ?? throw "null pointer dereference").inst.op;
                        if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3747654i32;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3747791i32;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3747863i32;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3747935i32;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3747976i32;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3748114i32;
                        } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3748204i32;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3748243i32;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3748278i32;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3748387i32;
                        } else {
                            _gotoNext = 3747622i32;
                        };
                    };
                } else if (__value__ == (3747622i32)) {
                    throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    _gotoNext = 3748506i32;
                } else if (__value__ == (3747654i32)) {
                    _matched_29 = true;
                    if ((((@:checkr _m_28 ?? throw "null pointer dereference")._matchcap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3747721i32;
                    } else {
                        _gotoNext = 3747777i32;
                    };
                } else if (__value__ == (3747721i32)) {
                    (@:checkr _m_28 ?? throw "null pointer dereference")._matchcap[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt);
                    (@:checkr _m_28 ?? throw "null pointer dereference")._matchcap[(1 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3747777i32;
                } else if (__value__ == (3747777i32)) {
                    _gotoNext = 3748668i32;
                } else if (__value__ == (3747791i32)) {
                    if (!@:check2r _inst_38.matchRune(_r_32)) {
                        _gotoNext = 3747838i32;
                    } else {
                        _gotoNext = 3748506i32;
                    };
                } else if (__value__ == (3747838i32)) {
                    _gotoNext = 3748668i32;
                } else if (__value__ == (3747863i32)) {
                    if (_r_32 != ((@:checkr _inst_38 ?? throw "null pointer dereference").inst.rune[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                        _gotoNext = 3747910i32;
                    } else {
                        _gotoNext = 3748506i32;
                    };
                } else if (__value__ == (3747910i32)) {
                    _gotoNext = 3748668i32;
                } else if (__value__ == (3747935i32)) {
                    _gotoNext = 3748506i32;
                } else if (__value__ == (3747976i32)) {
                    if (_r_32 == ((10 : stdgo.GoInt32))) {
                        _gotoNext = 3748022i32;
                    } else {
                        _gotoNext = 3748506i32;
                    };
                } else if (__value__ == (3748022i32)) {
                    _gotoNext = 3748668i32;
                } else if (__value__ == (3748114i32)) {
                    _pc_37 = (stdgo._internal.regexp.Regexp__onepassnext._onePassNext(_inst_38, _r_32) : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3747544i32;
                } else if (__value__ == (3748204i32)) {
                    _gotoNext = 3748668i32;
                } else if (__value__ == (3748243i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3747544i32;
                } else if (__value__ == (3748278i32)) {
                    if (!_flag_36._match(((@:checkr _inst_38 ?? throw "null pointer dereference").inst.arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3748350i32;
                    } else {
                        _gotoNext = 3748376i32;
                    };
                } else if (__value__ == (3748350i32)) {
                    _gotoNext = 3748668i32;
                } else if (__value__ == (3748376i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3747544i32;
                } else if (__value__ == (3748387i32)) {
                    if ((((@:checkr _inst_38 ?? throw "null pointer dereference").inst.arg : stdgo.GoInt) < ((@:checkr _m_28 ?? throw "null pointer dereference")._matchcap.length) : Bool)) {
                        _gotoNext = 3748450i32;
                    } else {
                        _gotoNext = 3748491i32;
                    };
                } else if (__value__ == (3748450i32)) {
                    (@:checkr _m_28 ?? throw "null pointer dereference")._matchcap[((@:checkr _inst_38 ?? throw "null pointer dereference").inst.arg : stdgo.GoInt)] = _pos;
                    _gotoNext = 3748491i32;
                } else if (__value__ == (3748491i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3747544i32;
                } else if (__value__ == (3748506i32)) {
                    if (_width_34 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3748520i32;
                    } else {
                        _gotoNext = 3748537i32;
                    };
                } else if (__value__ == (3748520i32)) {
                    _gotoNext = 3748668i32;
                } else if (__value__ == (3748537i32)) {
                    _flag_36 = stdgo._internal.regexp.Regexp__newlazyflag._newLazyFlag(_r_32, _r1_33);
                    _pos = (_pos + (_width_34) : stdgo.GoInt);
                    {
                        final __tmp__0 = _r1_33;
                        final __tmp__1 = _width1_35;
                        _r_32 = __tmp__0;
                        _width_34 = __tmp__1;
                    };
                    if (_r_32 != ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3748622i32;
                    } else {
                        _gotoNext = 3747544i32;
                    };
                } else if (__value__ == (3748622i32)) {
                    {
                        var __tmp__ = _i_31._step((_pos + _width_34 : stdgo.GoInt));
                        _r1_33 = @:tmpset0 __tmp__._0;
                        _width1_35 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3747544i32;
                } else if (__value__ == (3748668i32)) {
                    _gotoNext = 3748668i32;
                    if (!_matched_29) {
                        _gotoNext = 3748689i32;
                    } else {
                        _gotoNext = 3748733i32;
                    };
                } else if (__value__ == (3748689i32)) {
                    stdgo._internal.regexp.Regexp__freeonepassmachine._freeOnePassMachine(_m_28);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3748733i32;
                } else if (__value__ == (3748733i32)) {
                    _dstCap = (_dstCap.__append__(...((@:checkr _m_28 ?? throw "null pointer dereference")._matchcap : Array<stdgo.GoInt>)));
                    stdgo._internal.regexp.Regexp__freeonepassmachine._freeOnePassMachine(_m_28);
                    return _dstCap;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _backtrack( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _ib:stdgo.Slice<stdgo.GoUInt8>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _startCond_16:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        var _advance_21:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_20:stdgo.GoInt = (0 : stdgo.GoInt);
        var _end_19:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_18:stdgo._internal.regexp.Regexp_t_input.T_input = (null : stdgo._internal.regexp.Regexp_t_input.T_input);
        var _b_17:stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _startCond_16 = (@:checkr _re ?? throw "null pointer dereference")._cond;
                    if (_startCond_16 == ((255 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3735924i32;
                    } else {
                        _gotoNext = 3735957i32;
                    };
                } else if (__value__ == (3735924i32)) {
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3735957i32;
                } else if (__value__ == (3735957i32)) {
                    if ((((_startCond_16 & (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != (0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) && (_pos != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3736009i32;
                    } else {
                        _gotoNext = 3736074i32;
                    };
                } else if (__value__ == (3736009i32)) {
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3736074i32;
                } else if (__value__ == (3736074i32)) {
                    _b_17 = stdgo._internal.regexp.Regexp__newbitstate._newBitState();
                    {
                        var __tmp__ = @:check2 (@:checkr _b_17 ?? throw "null pointer dereference")._inputs._init((null : stdgo._internal.io.Io_runereader.RuneReader), _ib, _is?.__copy__());
                        _i_18 = @:tmpset0 __tmp__._0;
                        _end_19 = @:tmpset0 __tmp__._1;
                    };
                    @:check2r _b_17._reset((@:checkr _re ?? throw "null pointer dereference")._prog, _end_19, _ncap);
                    if ((_startCond_16 & (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3736263i32;
                    } else {
                        _gotoNext = 3736412i32;
                    };
                } else if (__value__ == (3736263i32)) {
                    if ((((@:checkr _b_17 ?? throw "null pointer dereference")._cap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3736285i32;
                    } else {
                        _gotoNext = 3736311i32;
                    };
                } else if (__value__ == (3736285i32)) {
                    (@:checkr _b_17 ?? throw "null pointer dereference")._cap[(0 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3736311i32;
                } else if (__value__ == (3736311i32)) {
                    if (!@:check2r _re._tryBacktrack(_b_17, _i_18, ((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").start : stdgo.GoUInt32), _pos)) {
                        _gotoNext = 3736365i32;
                    } else {
                        _gotoNext = 3737299i32;
                    };
                } else if (__value__ == (3736365i32)) {
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_17);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3737299i32;
                } else if (__value__ == (3736412i32)) {
                    _gotoNext = 3736412i32;
                    _width_20 = (-1 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3736819i32;
                } else if (__value__ == (3736819i32)) {
                    if (((_pos <= _end_19 : Bool) && (_width_20 != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3736864i32;
                    } else {
                        _gotoNext = 3737266i32;
                    };
                } else if (__value__ == (3736864i32)) {
                    if ((((@:checkr _re ?? throw "null pointer dereference")._prefix.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3736891i32;
                    } else {
                        _gotoNext = 3737075i32;
                    };
                } else if (__value__ == (3736891i32)) {
                    _advance_21 = _i_18._index(_re, _pos);
                    if ((_advance_21 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3737002i32;
                    } else {
                        _gotoNext = 3737051i32;
                    };
                } else if (__value__ == (3737002i32)) {
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_17);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3737051i32;
                } else if (__value__ == (3737051i32)) {
                    _pos = (_pos + (_advance_21) : stdgo.GoInt);
                    _gotoNext = 3737075i32;
                } else if (__value__ == (3737075i32)) {
                    if ((((@:checkr _b_17 ?? throw "null pointer dereference")._cap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3737093i32;
                    } else {
                        _gotoNext = 3737122i32;
                    };
                } else if (__value__ == (3737093i32)) {
                    (@:checkr _b_17 ?? throw "null pointer dereference")._cap[(0 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3737122i32;
                } else if (__value__ == (3737122i32)) {
                    if (@:check2r _re._tryBacktrack(_b_17, _i_18, ((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").start : stdgo.GoUInt32), _pos)) {
                        _gotoNext = 3737175i32;
                    } else {
                        _gotoNext = 3737237i32;
                    };
                } else if (__value__ == (3737175i32)) {
                    _gotoNext = 3737299i32;
                } else if (__value__ == (3737237i32)) {
                    {
                        var __tmp__ = _i_18._step(_pos);
                        _width_20 = @:tmpset0 __tmp__._1;
                    };
                    _pos = (_pos + (_width_20) : stdgo.GoInt);
                    _gotoNext = 3736819i32;
                } else if (__value__ == (3737266i32)) {
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_17);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    var __blank__ = 0i32;
                    _gotoNext = 3737299i32;
                } else if (__value__ == (3737299i32)) {
                    _gotoNext = 3737299i32;
                    _dstCap = (_dstCap.__append__(...((@:checkr _b_17 ?? throw "null pointer dereference")._matchcap : Array<stdgo.GoInt>)));
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_17);
                    return _dstCap;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _tryBacktrack( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>, _i:stdgo._internal.regexp.Regexp_t_input.T_input, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _width_13:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_8:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_6:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _inst_5:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        var _pc_2:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _l_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_10:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _width_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _longest_0:Bool = false;
        var _old_15:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_12:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _flag_14:stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag);
        var _arg_4:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _longest_0 = (@:checkr _re ?? throw "null pointer dereference")._longest;
                    @:check2r _b._push(_re, _pc, _pos, false);
                    var __blank__ = 0i32;
                    _gotoNext = 3731998i32;
                } else if (__value__ == (3731998i32)) {
                    if ((((@:checkr _b ?? throw "null pointer dereference")._jobs.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3732018i32;
                    } else {
                        _gotoNext = 3735634i32;
                    };
                } else if (__value__ == (3732018i32)) {
                    _l_1 = (((@:checkr _b ?? throw "null pointer dereference")._jobs.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _pc_2 = (@:checkr _b ?? throw "null pointer dereference")._jobs[(_l_1 : stdgo.GoInt)]._pc;
                    _pos_3 = (@:checkr _b ?? throw "null pointer dereference")._jobs[(_l_1 : stdgo.GoInt)]._pos;
                    _arg_4 = (@:checkr _b ?? throw "null pointer dereference")._jobs[(_l_1 : stdgo.GoInt)]._arg;
                    (@:checkr _b ?? throw "null pointer dereference")._jobs = ((@:checkr _b ?? throw "null pointer dereference")._jobs.__slice__(0, _l_1) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_job.T_job>);
                    _gotoNext = 3732512i32;
                } else if (__value__ == (3732450i32)) {
                    if (!@:check2r _b._shouldVisit(_pc_2, _pos_3)) {
                        _gotoNext = 3732493i32;
                    } else {
                        _gotoNext = 3732512i32;
                    };
                } else if (__value__ == (3732493i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3731998i32;
                } else if (__value__ == (3732512i32)) {
                    _gotoNext = 3732512i32;
                    _inst_5 = (stdgo.Go.setRef((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").inst[(_pc_2 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
                    _gotoNext = 3732550i32;
                } else if (__value__ == (3732550i32)) {
                    {
                        final __value__ = (@:checkr _inst_5 ?? throw "null pointer dereference").op;
                        if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3732601i32;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3732657i32;
                        } else if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3733218i32;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3733677i32;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3733828i32;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3733979i32;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3734147i32;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3734297i32;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3734680i32;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3734839i32;
                        } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3734901i32;
                        } else {
                            _gotoNext = 3732569i32;
                        };
                    };
                } else if (__value__ == (3732569i32)) {
                    throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    _gotoNext = 3731998i32;
                } else if (__value__ == (3732601i32)) {
                    throw stdgo.Go.toInterface(("unexpected InstFail" : stdgo.GoString));
                    _gotoNext = 3731998i32;
                } else if (__value__ == (3732657i32)) {
                    if (_arg_4) {
                        _gotoNext = 3733030i32;
                    } else {
                        _gotoNext = 3733138i32;
                    };
                } else if (__value__ == (3733030i32)) {
                    _arg_4 = false;
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").arg;
                    _gotoNext = 3732450i32;
                } else if (__value__ == (3733138i32)) {
                    _gotoNext = 3733138i32;
                    @:check2r _b._push(_re, _pc_2, _pos_3, true);
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").out;
                    _gotoNext = 3732450i32;
                } else if (__value__ == (3733218i32)) {
                    _gotoNext = 3733306i32;
                } else if (__value__ == (3733306i32)) {
                    {
                        final __value__ = (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").inst[((@:checkr _inst_5 ?? throw "null pointer dereference").out : stdgo.GoInt)].op;
                        if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3733344i32;
                        } else {
                            _gotoNext = 3733601i32;
                        };
                    };
                } else if (__value__ == (3733344i32)) {
                    @:check2r _b._push(_re, (@:checkr _inst_5 ?? throw "null pointer dereference").arg, _pos_3, false);
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").arg;
                    _pos_3 = (@:checkr _b ?? throw "null pointer dereference")._end;
                    _gotoNext = 3732450i32;
                } else if (__value__ == (3733601i32)) {
                    @:check2r _b._push(_re, (@:checkr _inst_5 ?? throw "null pointer dereference").out, (@:checkr _b ?? throw "null pointer dereference")._end, false);
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").out;
                    _gotoNext = 3732450i32;
                } else if (__value__ == (3733677i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3);
                        _r_6 = @:tmpset0 __tmp__._0;
                        _width_7 = @:tmpset0 __tmp__._1;
                    };
                    if (!@:check2r _inst_5.matchRune(_r_6)) {
                        _gotoNext = 3733751i32;
                    } else {
                        _gotoNext = 3733774i32;
                    };
                } else if (__value__ == (3733751i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3731998i32;
                } else if (__value__ == (3733774i32)) {
                    _pos_3 = (_pos_3 + (_width_7) : stdgo.GoInt);
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").out;
                    _gotoNext = 3732450i32;
                } else if (__value__ == (3733828i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3);
                        _r_8 = @:tmpset0 __tmp__._0;
                        _width_9 = @:tmpset0 __tmp__._1;
                    };
                    if (_r_8 != ((@:checkr _inst_5 ?? throw "null pointer dereference").rune[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                        _gotoNext = 3733902i32;
                    } else {
                        _gotoNext = 3733925i32;
                    };
                } else if (__value__ == (3733902i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3731998i32;
                } else if (__value__ == (3733925i32)) {
                    _pos_3 = (_pos_3 + (_width_9) : stdgo.GoInt);
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").out;
                    _gotoNext = 3732450i32;
                } else if (__value__ == (3733979i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3);
                        _r_10 = @:tmpset0 __tmp__._0;
                        _width_11 = @:tmpset0 __tmp__._1;
                    };
                    if (((_r_10 == (10 : stdgo.GoInt32)) || (_r_10 == (-1 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3734070i32;
                    } else {
                        _gotoNext = 3734093i32;
                    };
                } else if (__value__ == (3734070i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3731998i32;
                } else if (__value__ == (3734093i32)) {
                    _pos_3 = (_pos_3 + (_width_11) : stdgo.GoInt);
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").out;
                    _gotoNext = 3732450i32;
                } else if (__value__ == (3734147i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3);
                        _r_12 = @:tmpset0 __tmp__._0;
                        _width_13 = @:tmpset0 __tmp__._1;
                    };
                    if (_r_12 == ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3734220i32;
                    } else {
                        _gotoNext = 3734243i32;
                    };
                } else if (__value__ == (3734220i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3731998i32;
                } else if (__value__ == (3734243i32)) {
                    _pos_3 = (_pos_3 + (_width_13) : stdgo.GoInt);
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").out;
                    _gotoNext = 3732450i32;
                } else if (__value__ == (3734297i32)) {
                    if (_arg_4) {
                        _gotoNext = 3734332i32;
                    } else {
                        _gotoNext = 3734432i32;
                    };
                } else if (__value__ == (3734332i32)) {
                    (@:checkr _b ?? throw "null pointer dereference")._cap[((@:checkr _inst_5 ?? throw "null pointer dereference").arg : stdgo.GoInt)] = _pos_3;
                    var __blank__ = 0i32;
                    _gotoNext = 3731998i32;
                } else if (__value__ == (3734432i32)) {
                    _gotoNext = 3734432i32;
                    if (((@:checkr _inst_5 ?? throw "null pointer dereference").arg < ((@:checkr _b ?? throw "null pointer dereference")._cap.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3734471i32;
                    } else {
                        _gotoNext = 3734636i32;
                    };
                } else if (__value__ == (3734471i32)) {
                    @:check2r _b._push(_re, _pc_2, (@:checkr _b ?? throw "null pointer dereference")._cap[((@:checkr _inst_5 ?? throw "null pointer dereference").arg : stdgo.GoInt)], true);
                    (@:checkr _b ?? throw "null pointer dereference")._cap[((@:checkr _inst_5 ?? throw "null pointer dereference").arg : stdgo.GoInt)] = _pos_3;
                    _gotoNext = 3734636i32;
                } else if (__value__ == (3734636i32)) {
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").out;
                    _gotoNext = 3732450i32;
                } else if (__value__ == (3734680i32)) {
                    _flag_14 = _i._context(_pos_3);
                    if (!_flag_14._match(((@:checkr _inst_5 ?? throw "null pointer dereference").arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3734778i32;
                    } else {
                        _gotoNext = 3734801i32;
                    };
                } else if (__value__ == (3734778i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3731998i32;
                } else if (__value__ == (3734801i32)) {
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").out;
                    _gotoNext = 3732450i32;
                } else if (__value__ == (3734839i32)) {
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").out;
                    _gotoNext = 3732450i32;
                } else if (__value__ == (3734901i32)) {
                    if (((@:checkr _b ?? throw "null pointer dereference")._cap.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3735047i32;
                    } else {
                        _gotoNext = 3735213i32;
                    };
                } else if (__value__ == (3735047i32)) {
                    return true;
                    _gotoNext = 3735213i32;
                } else if (__value__ == (3735213i32)) {
                    if ((((@:checkr _b ?? throw "null pointer dereference")._cap.length) > (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3735231i32;
                    } else {
                        _gotoNext = 3735260i32;
                    };
                } else if (__value__ == (3735231i32)) {
                    (@:checkr _b ?? throw "null pointer dereference")._cap[(1 : stdgo.GoInt)] = _pos_3;
                    _gotoNext = 3735260i32;
                } else if (__value__ == (3735260i32)) {
                    {
                        _old_15 = (@:checkr _b ?? throw "null pointer dereference")._matchcap[(1 : stdgo.GoInt)];
                        if (((_old_15 == (-1 : stdgo.GoInt)) || (((_longest_0 && (_pos_3 > (0 : stdgo.GoInt) : Bool) : Bool) && (_pos_3 > _old_15 : Bool) : Bool)) : Bool)) {
                            _gotoNext = 3735332i32;
                        } else {
                            _gotoNext = 3735415i32;
                        };
                    };
                } else if (__value__ == (3735332i32)) {
                    (@:checkr _b ?? throw "null pointer dereference")._matchcap.__copyTo__((@:checkr _b ?? throw "null pointer dereference")._cap);
                    _gotoNext = 3735415i32;
                } else if (__value__ == (3735415i32)) {
                    if (!_longest_0) {
                        _gotoNext = 3735427i32;
                    } else {
                        _gotoNext = 3735517i32;
                    };
                } else if (__value__ == (3735427i32)) {
                    return true;
                    _gotoNext = 3735517i32;
                } else if (__value__ == (3735517i32)) {
                    if (_pos_3 == ((@:checkr _b ?? throw "null pointer dereference")._end)) {
                        _gotoNext = 3735533i32;
                    } else {
                        _gotoNext = 3735616i32;
                    };
                } else if (__value__ == (3735533i32)) {
                    return true;
                    _gotoNext = 3735616i32;
                } else if (__value__ == (3735616i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3731998i32;
                } else if (__value__ == (3735634i32)) {
                    return ((_longest_0 && (((@:checkr _b ?? throw "null pointer dereference")._matchcap.length) > (1 : stdgo.GoInt) : Bool) : Bool) && ((@:checkr _b ?? throw "null pointer dereference")._matchcap[(1 : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
