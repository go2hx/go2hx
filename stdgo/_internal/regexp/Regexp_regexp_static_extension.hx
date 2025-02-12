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
        var _pc_3859975:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width1_3859777:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r1_3859742:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3859739:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3859703:stdgo._internal.regexp.Regexp_t_input.T_input = (null : stdgo._internal.regexp.Regexp_t_input.T_input);
        var _i_3859653:stdgo.GoInt = (0 : stdgo.GoInt);
        var _m_3859496:stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine>);
        var _inst_3859999:stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>);
        var _flag_3859880:stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag);
        var _width_3859770:stdgo.GoInt = (0 : stdgo.GoInt);
        var _matched_3859631:Bool = false;
        var _startCond_3859405:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _startCond_3859405 = (@:checkr _re ?? throw "null pointer dereference")._cond;
                    if (_startCond_3859405 == ((255 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3859462i32;
                    } else {
                        _gotoNext = 3859496i32;
                    };
                } else if (__value__ == (3859462i32)) {
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3859496i32;
                } else if (__value__ == (3859496i32)) {
                    _m_3859496 = stdgo._internal.regexp.Regexp__newonepassmachine._newOnePassMachine();
                    if (((@:checkr _m_3859496 ?? throw "null pointer dereference")._matchcap.capacity < _ncap : Bool)) {
                        _gotoNext = 3859548i32;
                    } else {
                        _gotoNext = 3859591i32;
                    };
                } else if (__value__ == (3859548i32)) {
                    (@:checkr _m_3859496 ?? throw "null pointer dereference")._matchcap = (new stdgo.Slice<stdgo.GoInt>((_ncap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3859631i32;
                } else if (__value__ == (3859591i32)) {
                    _gotoNext = 3859591i32;
                    (@:checkr _m_3859496 ?? throw "null pointer dereference")._matchcap = ((@:checkr _m_3859496 ?? throw "null pointer dereference")._matchcap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
                    var __blank__ = 0i32;
                    _gotoNext = 3859631i32;
                } else if (__value__ == (3859631i32)) {
                    _matched_3859631 = false;
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _m_3859496 ?? throw "null pointer dereference")._matchcap.length)) {
                        _gotoNext = 3859698i32;
                    } else {
                        _gotoNext = 3859703i32;
                    };
                } else if (__value__ == (3859675i32)) {
                    (@:checkr _m_3859496 ?? throw "null pointer dereference")._matchcap[(_i_3859653 : stdgo.GoInt)] = (-1 : stdgo.GoInt);
                    _i_3859653++;
                    _gotoNext = 3859699i32;
                } else if (__value__ == (3859698i32)) {
                    _i_3859653 = 0i32;
                    _gotoNext = 3859699i32;
                } else if (__value__ == (3859699i32)) {
                    if (_i_3859653 < ((@:checkr _m_3859496 ?? throw "null pointer dereference")._matchcap.length)) {
                        _gotoNext = 3859675i32;
                    } else {
                        _gotoNext = 3859703i32;
                    };
                } else if (__value__ == (3859703i32)) {
                    {
                        var __tmp__ = @:check2 (@:checkr _m_3859496 ?? throw "null pointer dereference")._inputs._init(_ir, _ib, _is?.__copy__());
                        _i_3859703 = @:tmpset0 __tmp__._0;
                    };
                    {
                        final __tmp__0 = (-1 : stdgo.GoInt32);
                        final __tmp__1 = (-1 : stdgo.GoInt32);
                        _r_3859739 = __tmp__0;
                        _r1_3859742 = __tmp__1;
                    };
                    {
                        final __tmp__0 = (0 : stdgo.GoInt);
                        final __tmp__1 = (0 : stdgo.GoInt);
                        _width_3859770 = __tmp__0;
                        _width1_3859777 = __tmp__1;
                    };
                    {
                        var __tmp__ = _i_3859703._step(_pos);
                        _r_3859739 = @:tmpset0 __tmp__._0;
                        _width_3859770 = @:tmpset0 __tmp__._1;
                    };
                    if (_r_3859739 != ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3859835i32;
                    } else {
                        _gotoNext = 3859876i32;
                    };
                } else if (__value__ == (3859835i32)) {
                    {
                        var __tmp__ = _i_3859703._step((_pos + _width_3859770 : stdgo.GoInt));
                        _r1_3859742 = @:tmpset0 __tmp__._0;
                        _width1_3859777 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3859876i32;
                } else if (__value__ == (3859876i32)) {
                    if (_pos == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3859907i32;
                    } else {
                        _gotoNext = 3859945i32;
                    };
                } else if (__value__ == (3859907i32)) {
                    _flag_3859880 = stdgo._internal.regexp.Regexp__newlazyflag._newLazyFlag((-1 : stdgo.GoInt32), _r_3859739);
                    _gotoNext = 3859975i32;
                } else if (__value__ == (3859945i32)) {
                    _gotoNext = 3859945i32;
                    _flag_3859880 = _i_3859703._context(_pos);
                    var __blank__ = 0i32;
                    _gotoNext = 3859975i32;
                } else if (__value__ == (3859975i32)) {
                    _pc_3859975 = (@:checkr (@:checkr _re ?? throw "null pointer dereference")._onepass ?? throw "null pointer dereference").start;
                    _inst_3859999 = (stdgo.Go.setRef((@:checkr (@:checkr _re ?? throw "null pointer dereference")._onepass ?? throw "null pointer dereference").inst[(_pc_3859975 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>);
                    if ((((_pos == ((0 : stdgo.GoInt)) && _flag_3859880._match(((@:checkr _inst_3859999 ?? throw "null pointer dereference").inst.arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : Bool) && (((@:checkr _re ?? throw "null pointer dereference")._prefix.length) > (0 : stdgo.GoInt) : Bool) : Bool) && _i_3859703._canCheckPrefix() : Bool)) {
                        _gotoNext = 3860182i32;
                    } else {
                        _gotoNext = 3860420i32;
                    };
                } else if (__value__ == (3860182i32)) {
                    if (!_i_3859703._hasPrefix(_re)) {
                        _gotoNext = 3860262i32;
                    } else {
                        _gotoNext = 3860285i32;
                    };
                } else if (__value__ == (3860262i32)) {
                    _gotoNext = 3861544i32;
                } else if (__value__ == (3860285i32)) {
                    _pos = (_pos + (((@:checkr _re ?? throw "null pointer dereference")._prefix.length)) : stdgo.GoInt);
                    {
                        var __tmp__ = _i_3859703._step(_pos);
                        _r_3859739 = @:tmpset0 __tmp__._0;
                        _width_3859770 = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = _i_3859703._step((_pos + _width_3859770 : stdgo.GoInt));
                        _r1_3859742 = @:tmpset0 __tmp__._0;
                        _width1_3859777 = @:tmpset0 __tmp__._1;
                    };
                    _flag_3859880 = _i_3859703._context(_pos);
                    _pc_3859975 = ((@:checkr _re ?? throw "null pointer dereference")._prefixEnd : stdgo.GoInt);
                    _gotoNext = 3860420i32;
                } else if (__value__ == (3860420i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3860420i32;
                    if (true) {
                        _gotoNext = 3860424i32;
                    } else {
                        _gotoNext = 3861544i32;
                    };
                } else if (__value__ == (3860424i32)) {
                    _inst_3859999 = (stdgo.Go.setRef((@:checkr (@:checkr _re ?? throw "null pointer dereference")._onepass ?? throw "null pointer dereference").inst[(_pc_3859975 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>);
                    _pc_3859975 = ((@:checkr _inst_3859999 ?? throw "null pointer dereference").inst.out : stdgo.GoInt);
                    _gotoNext = 3860479i32;
                } else if (__value__ == (3860479i32)) {
                    {
                        final __value__ = (@:checkr _inst_3859999 ?? throw "null pointer dereference").inst.op;
                        if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3860530i32;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3860667i32;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3860739i32;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3860811i32;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3860852i32;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3860990i32;
                        } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3861080i32;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3861119i32;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3861154i32;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3861263i32;
                        } else {
                            _gotoNext = 3860498i32;
                        };
                    };
                } else if (__value__ == (3860498i32)) {
                    throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    _gotoNext = 3861382i32;
                } else if (__value__ == (3860530i32)) {
                    _matched_3859631 = true;
                    if ((((@:checkr _m_3859496 ?? throw "null pointer dereference")._matchcap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3860597i32;
                    } else {
                        _gotoNext = 3860653i32;
                    };
                } else if (__value__ == (3860597i32)) {
                    (@:checkr _m_3859496 ?? throw "null pointer dereference")._matchcap[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt);
                    (@:checkr _m_3859496 ?? throw "null pointer dereference")._matchcap[(1 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3860653i32;
                } else if (__value__ == (3860653i32)) {
                    _gotoNext = 3861544i32;
                } else if (__value__ == (3860667i32)) {
                    if (!@:check2r _inst_3859999.matchRune(_r_3859739)) {
                        _gotoNext = 3860714i32;
                    } else {
                        _gotoNext = 3861382i32;
                    };
                } else if (__value__ == (3860714i32)) {
                    _gotoNext = 3861544i32;
                } else if (__value__ == (3860739i32)) {
                    if (_r_3859739 != ((@:checkr _inst_3859999 ?? throw "null pointer dereference").inst.rune[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                        _gotoNext = 3860786i32;
                    } else {
                        _gotoNext = 3861382i32;
                    };
                } else if (__value__ == (3860786i32)) {
                    _gotoNext = 3861544i32;
                } else if (__value__ == (3860811i32)) {
                    _gotoNext = 3861382i32;
                } else if (__value__ == (3860852i32)) {
                    if (_r_3859739 == ((10 : stdgo.GoInt32))) {
                        _gotoNext = 3860898i32;
                    } else {
                        _gotoNext = 3861382i32;
                    };
                } else if (__value__ == (3860898i32)) {
                    _gotoNext = 3861544i32;
                } else if (__value__ == (3860990i32)) {
                    _pc_3859975 = (stdgo._internal.regexp.Regexp__onepassnext._onePassNext(_inst_3859999, _r_3859739) : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3860420i32;
                } else if (__value__ == (3861080i32)) {
                    _gotoNext = 3861544i32;
                } else if (__value__ == (3861119i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3860420i32;
                } else if (__value__ == (3861154i32)) {
                    if (!_flag_3859880._match(((@:checkr _inst_3859999 ?? throw "null pointer dereference").inst.arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3861226i32;
                    } else {
                        _gotoNext = 3861252i32;
                    };
                } else if (__value__ == (3861226i32)) {
                    _gotoNext = 3861544i32;
                } else if (__value__ == (3861252i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3860420i32;
                } else if (__value__ == (3861263i32)) {
                    if ((((@:checkr _inst_3859999 ?? throw "null pointer dereference").inst.arg : stdgo.GoInt) < ((@:checkr _m_3859496 ?? throw "null pointer dereference")._matchcap.length) : Bool)) {
                        _gotoNext = 3861326i32;
                    } else {
                        _gotoNext = 3861367i32;
                    };
                } else if (__value__ == (3861326i32)) {
                    (@:checkr _m_3859496 ?? throw "null pointer dereference")._matchcap[((@:checkr _inst_3859999 ?? throw "null pointer dereference").inst.arg : stdgo.GoInt)] = _pos;
                    _gotoNext = 3861367i32;
                } else if (__value__ == (3861367i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3860420i32;
                } else if (__value__ == (3861382i32)) {
                    if (_width_3859770 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3861396i32;
                    } else {
                        _gotoNext = 3861413i32;
                    };
                } else if (__value__ == (3861396i32)) {
                    _gotoNext = 3861544i32;
                } else if (__value__ == (3861413i32)) {
                    _flag_3859880 = stdgo._internal.regexp.Regexp__newlazyflag._newLazyFlag(_r_3859739, _r1_3859742);
                    _pos = (_pos + (_width_3859770) : stdgo.GoInt);
                    {
                        final __tmp__0 = _r1_3859742;
                        final __tmp__1 = _width1_3859777;
                        _r_3859739 = __tmp__0;
                        _width_3859770 = __tmp__1;
                    };
                    if (_r_3859739 != ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3861498i32;
                    } else {
                        _gotoNext = 3860420i32;
                    };
                } else if (__value__ == (3861498i32)) {
                    {
                        var __tmp__ = _i_3859703._step((_pos + _width_3859770 : stdgo.GoInt));
                        _r1_3859742 = @:tmpset0 __tmp__._0;
                        _width1_3859777 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3860420i32;
                } else if (__value__ == (3861544i32)) {
                    _gotoNext = 3861544i32;
                    if (!_matched_3859631) {
                        _gotoNext = 3861565i32;
                    } else {
                        _gotoNext = 3861609i32;
                    };
                } else if (__value__ == (3861565i32)) {
                    stdgo._internal.regexp.Regexp__freeonepassmachine._freeOnePassMachine(_m_3859496);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3861609i32;
                } else if (__value__ == (3861609i32)) {
                    _dstCap = (_dstCap.__append__(...((@:checkr _m_3859496 ?? throw "null pointer dereference")._matchcap : Array<stdgo.GoInt>)));
                    stdgo._internal.regexp.Regexp__freeonepassmachine._freeOnePassMachine(_m_3859496);
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
        var _b_3841283:stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>);
        var _startCond_3841076:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        var _advance_3842164:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_3842014:stdgo.GoInt = (0 : stdgo.GoInt);
        var _end_3841306:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3841303:stdgo._internal.regexp.Regexp_t_input.T_input = (null : stdgo._internal.regexp.Regexp_t_input.T_input);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _startCond_3841076 = (@:checkr _re ?? throw "null pointer dereference")._cond;
                    if (_startCond_3841076 == ((255 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3841133i32;
                    } else {
                        _gotoNext = 3841166i32;
                    };
                } else if (__value__ == (3841133i32)) {
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3841166i32;
                } else if (__value__ == (3841166i32)) {
                    if ((((_startCond_3841076 & (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != (0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) && (_pos != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3841218i32;
                    } else {
                        _gotoNext = 3841283i32;
                    };
                } else if (__value__ == (3841218i32)) {
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3841283i32;
                } else if (__value__ == (3841283i32)) {
                    _b_3841283 = stdgo._internal.regexp.Regexp__newbitstate._newBitState();
                    {
                        var __tmp__ = @:check2 (@:checkr _b_3841283 ?? throw "null pointer dereference")._inputs._init((null : stdgo._internal.io.Io_runereader.RuneReader), _ib, _is?.__copy__());
                        _i_3841303 = @:tmpset0 __tmp__._0;
                        _end_3841306 = @:tmpset0 __tmp__._1;
                    };
                    @:check2r _b_3841283._reset((@:checkr _re ?? throw "null pointer dereference")._prog, _end_3841306, _ncap);
                    if ((_startCond_3841076 & (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3841472i32;
                    } else {
                        _gotoNext = 3841621i32;
                    };
                } else if (__value__ == (3841472i32)) {
                    if ((((@:checkr _b_3841283 ?? throw "null pointer dereference")._cap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3841494i32;
                    } else {
                        _gotoNext = 3841520i32;
                    };
                } else if (__value__ == (3841494i32)) {
                    (@:checkr _b_3841283 ?? throw "null pointer dereference")._cap[(0 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3841520i32;
                } else if (__value__ == (3841520i32)) {
                    if (!@:check2r _re._tryBacktrack(_b_3841283, _i_3841303, ((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").start : stdgo.GoUInt32), _pos)) {
                        _gotoNext = 3841574i32;
                    } else {
                        _gotoNext = 3842508i32;
                    };
                } else if (__value__ == (3841574i32)) {
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_3841283);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3842508i32;
                } else if (__value__ == (3841621i32)) {
                    _gotoNext = 3841621i32;
                    _width_3842014 = (-1 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3842028i32;
                } else if (__value__ == (3842028i32)) {
                    if (((_pos <= _end_3841306 : Bool) && (_width_3842014 != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3842073i32;
                    } else {
                        _gotoNext = 3842475i32;
                    };
                } else if (__value__ == (3842073i32)) {
                    if ((((@:checkr _re ?? throw "null pointer dereference")._prefix.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3842100i32;
                    } else {
                        _gotoNext = 3842284i32;
                    };
                } else if (__value__ == (3842100i32)) {
                    _advance_3842164 = _i_3841303._index(_re, _pos);
                    if ((_advance_3842164 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3842211i32;
                    } else {
                        _gotoNext = 3842260i32;
                    };
                } else if (__value__ == (3842211i32)) {
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_3841283);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3842260i32;
                } else if (__value__ == (3842260i32)) {
                    _pos = (_pos + (_advance_3842164) : stdgo.GoInt);
                    _gotoNext = 3842284i32;
                } else if (__value__ == (3842284i32)) {
                    if ((((@:checkr _b_3841283 ?? throw "null pointer dereference")._cap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3842302i32;
                    } else {
                        _gotoNext = 3842331i32;
                    };
                } else if (__value__ == (3842302i32)) {
                    (@:checkr _b_3841283 ?? throw "null pointer dereference")._cap[(0 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3842331i32;
                } else if (__value__ == (3842331i32)) {
                    if (@:check2r _re._tryBacktrack(_b_3841283, _i_3841303, ((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").start : stdgo.GoUInt32), _pos)) {
                        _gotoNext = 3842384i32;
                    } else {
                        _gotoNext = 3842446i32;
                    };
                } else if (__value__ == (3842384i32)) {
                    _gotoNext = 3842508i32;
                } else if (__value__ == (3842446i32)) {
                    {
                        var __tmp__ = _i_3841303._step(_pos);
                        _width_3842014 = @:tmpset0 __tmp__._1;
                    };
                    _pos = (_pos + (_width_3842014) : stdgo.GoInt);
                    _gotoNext = 3842028i32;
                } else if (__value__ == (3842475i32)) {
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_3841283);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    var __blank__ = 0i32;
                    _gotoNext = 3842508i32;
                } else if (__value__ == (3842508i32)) {
                    _gotoNext = 3842508i32;
                    _dstCap = (_dstCap.__append__(...((@:checkr _b_3841283 ?? throw "null pointer dereference")._matchcap : Array<stdgo.GoInt>)));
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_3841283);
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
        var _pos_3837303:stdgo.GoInt = (0 : stdgo.GoInt);
        var _longest_3837155:Bool = false;
        var _flag_3839920:stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag);
        var _width_3839224:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_3839066:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_3839387:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3839221:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3839063:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _inst_3837730:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        var _l_3837231:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3839384:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _width_3838914:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3838911:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _arg_3837326:Bool = false;
        var _pc_3837282:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _old_3840472:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _longest_3837155 = (@:checkr _re ?? throw "null pointer dereference")._longest;
                    @:check2r _b._push(_re, _pc, _pos, false);
                    var __blank__ = 0i32;
                    _gotoNext = 3837207i32;
                } else if (__value__ == (3837207i32)) {
                    if ((((@:checkr _b ?? throw "null pointer dereference")._jobs.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3837227i32;
                    } else {
                        _gotoNext = 3840843i32;
                    };
                } else if (__value__ == (3837227i32)) {
                    _l_3837231 = (((@:checkr _b ?? throw "null pointer dereference")._jobs.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _pc_3837282 = (@:checkr _b ?? throw "null pointer dereference")._jobs[(_l_3837231 : stdgo.GoInt)]._pc;
                    _pos_3837303 = (@:checkr _b ?? throw "null pointer dereference")._jobs[(_l_3837231 : stdgo.GoInt)]._pos;
                    _arg_3837326 = (@:checkr _b ?? throw "null pointer dereference")._jobs[(_l_3837231 : stdgo.GoInt)]._arg;
                    (@:checkr _b ?? throw "null pointer dereference")._jobs = ((@:checkr _b ?? throw "null pointer dereference")._jobs.__slice__(0, _l_3837231) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_job.T_job>);
                    _gotoNext = 3837721i32;
                } else if (__value__ == (3837659i32)) {
                    if (!@:check2r _b._shouldVisit(_pc_3837282, _pos_3837303)) {
                        _gotoNext = 3837702i32;
                    } else {
                        _gotoNext = 3837721i32;
                    };
                } else if (__value__ == (3837702i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3837207i32;
                } else if (__value__ == (3837721i32)) {
                    _gotoNext = 3837721i32;
                    _inst_3837730 = (stdgo.Go.setRef((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").inst[(_pc_3837282 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
                    _gotoNext = 3837759i32;
                } else if (__value__ == (3837759i32)) {
                    {
                        final __value__ = (@:checkr _inst_3837730 ?? throw "null pointer dereference").op;
                        if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3837810i32;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3837866i32;
                        } else if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3838427i32;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3838886i32;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3839037i32;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3839188i32;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3839356i32;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3839506i32;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3839889i32;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3840048i32;
                        } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3840110i32;
                        } else {
                            _gotoNext = 3837778i32;
                        };
                    };
                } else if (__value__ == (3837778i32)) {
                    throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    _gotoNext = 3837207i32;
                } else if (__value__ == (3837810i32)) {
                    throw stdgo.Go.toInterface(("unexpected InstFail" : stdgo.GoString));
                    _gotoNext = 3837207i32;
                } else if (__value__ == (3837866i32)) {
                    if (_arg_3837326) {
                        _gotoNext = 3838239i32;
                    } else {
                        _gotoNext = 3838347i32;
                    };
                } else if (__value__ == (3838239i32)) {
                    _arg_3837326 = false;
                    _pc_3837282 = (@:checkr _inst_3837730 ?? throw "null pointer dereference").arg;
                    _gotoNext = 3837659i32;
                } else if (__value__ == (3838347i32)) {
                    _gotoNext = 3838347i32;
                    @:check2r _b._push(_re, _pc_3837282, _pos_3837303, true);
                    _pc_3837282 = (@:checkr _inst_3837730 ?? throw "null pointer dereference").out;
                    _gotoNext = 3837659i32;
                } else if (__value__ == (3838427i32)) {
                    _gotoNext = 3838515i32;
                } else if (__value__ == (3838515i32)) {
                    {
                        final __value__ = (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").inst[((@:checkr _inst_3837730 ?? throw "null pointer dereference").out : stdgo.GoInt)].op;
                        if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3838553i32;
                        } else {
                            _gotoNext = 3838810i32;
                        };
                    };
                } else if (__value__ == (3838553i32)) {
                    @:check2r _b._push(_re, (@:checkr _inst_3837730 ?? throw "null pointer dereference").arg, _pos_3837303, false);
                    _pc_3837282 = (@:checkr _inst_3837730 ?? throw "null pointer dereference").arg;
                    _pos_3837303 = (@:checkr _b ?? throw "null pointer dereference")._end;
                    _gotoNext = 3837659i32;
                } else if (__value__ == (3838810i32)) {
                    @:check2r _b._push(_re, (@:checkr _inst_3837730 ?? throw "null pointer dereference").out, (@:checkr _b ?? throw "null pointer dereference")._end, false);
                    _pc_3837282 = (@:checkr _inst_3837730 ?? throw "null pointer dereference").out;
                    _gotoNext = 3837659i32;
                } else if (__value__ == (3838886i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3837303);
                        _r_3838911 = @:tmpset0 __tmp__._0;
                        _width_3838914 = @:tmpset0 __tmp__._1;
                    };
                    if (!@:check2r _inst_3837730.matchRune(_r_3838911)) {
                        _gotoNext = 3838960i32;
                    } else {
                        _gotoNext = 3838983i32;
                    };
                } else if (__value__ == (3838960i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3837207i32;
                } else if (__value__ == (3838983i32)) {
                    _pos_3837303 = (_pos_3837303 + (_width_3838914) : stdgo.GoInt);
                    _pc_3837282 = (@:checkr _inst_3837730 ?? throw "null pointer dereference").out;
                    _gotoNext = 3837659i32;
                } else if (__value__ == (3839037i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3837303);
                        _r_3839063 = @:tmpset0 __tmp__._0;
                        _width_3839066 = @:tmpset0 __tmp__._1;
                    };
                    if (_r_3839063 != ((@:checkr _inst_3837730 ?? throw "null pointer dereference").rune[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                        _gotoNext = 3839111i32;
                    } else {
                        _gotoNext = 3839134i32;
                    };
                } else if (__value__ == (3839111i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3837207i32;
                } else if (__value__ == (3839134i32)) {
                    _pos_3837303 = (_pos_3837303 + (_width_3839066) : stdgo.GoInt);
                    _pc_3837282 = (@:checkr _inst_3837730 ?? throw "null pointer dereference").out;
                    _gotoNext = 3837659i32;
                } else if (__value__ == (3839188i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3837303);
                        _r_3839221 = @:tmpset0 __tmp__._0;
                        _width_3839224 = @:tmpset0 __tmp__._1;
                    };
                    if (((_r_3839221 == (10 : stdgo.GoInt32)) || (_r_3839221 == (-1 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3839279i32;
                    } else {
                        _gotoNext = 3839302i32;
                    };
                } else if (__value__ == (3839279i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3837207i32;
                } else if (__value__ == (3839302i32)) {
                    _pos_3837303 = (_pos_3837303 + (_width_3839224) : stdgo.GoInt);
                    _pc_3837282 = (@:checkr _inst_3837730 ?? throw "null pointer dereference").out;
                    _gotoNext = 3837659i32;
                } else if (__value__ == (3839356i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3837303);
                        _r_3839384 = @:tmpset0 __tmp__._0;
                        _width_3839387 = @:tmpset0 __tmp__._1;
                    };
                    if (_r_3839384 == ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3839429i32;
                    } else {
                        _gotoNext = 3839452i32;
                    };
                } else if (__value__ == (3839429i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3837207i32;
                } else if (__value__ == (3839452i32)) {
                    _pos_3837303 = (_pos_3837303 + (_width_3839387) : stdgo.GoInt);
                    _pc_3837282 = (@:checkr _inst_3837730 ?? throw "null pointer dereference").out;
                    _gotoNext = 3837659i32;
                } else if (__value__ == (3839506i32)) {
                    if (_arg_3837326) {
                        _gotoNext = 3839541i32;
                    } else {
                        _gotoNext = 3839641i32;
                    };
                } else if (__value__ == (3839541i32)) {
                    (@:checkr _b ?? throw "null pointer dereference")._cap[((@:checkr _inst_3837730 ?? throw "null pointer dereference").arg : stdgo.GoInt)] = _pos_3837303;
                    var __blank__ = 0i32;
                    _gotoNext = 3837207i32;
                } else if (__value__ == (3839641i32)) {
                    _gotoNext = 3839641i32;
                    if (((@:checkr _inst_3837730 ?? throw "null pointer dereference").arg < ((@:checkr _b ?? throw "null pointer dereference")._cap.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3839680i32;
                    } else {
                        _gotoNext = 3839845i32;
                    };
                } else if (__value__ == (3839680i32)) {
                    @:check2r _b._push(_re, _pc_3837282, (@:checkr _b ?? throw "null pointer dereference")._cap[((@:checkr _inst_3837730 ?? throw "null pointer dereference").arg : stdgo.GoInt)], true);
                    (@:checkr _b ?? throw "null pointer dereference")._cap[((@:checkr _inst_3837730 ?? throw "null pointer dereference").arg : stdgo.GoInt)] = _pos_3837303;
                    _gotoNext = 3839845i32;
                } else if (__value__ == (3839845i32)) {
                    _pc_3837282 = (@:checkr _inst_3837730 ?? throw "null pointer dereference").out;
                    _gotoNext = 3837659i32;
                } else if (__value__ == (3839889i32)) {
                    _flag_3839920 = _i._context(_pos_3837303);
                    if (!_flag_3839920._match(((@:checkr _inst_3837730 ?? throw "null pointer dereference").arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3839987i32;
                    } else {
                        _gotoNext = 3840010i32;
                    };
                } else if (__value__ == (3839987i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3837207i32;
                } else if (__value__ == (3840010i32)) {
                    _pc_3837282 = (@:checkr _inst_3837730 ?? throw "null pointer dereference").out;
                    _gotoNext = 3837659i32;
                } else if (__value__ == (3840048i32)) {
                    _pc_3837282 = (@:checkr _inst_3837730 ?? throw "null pointer dereference").out;
                    _gotoNext = 3837659i32;
                } else if (__value__ == (3840110i32)) {
                    if (((@:checkr _b ?? throw "null pointer dereference")._cap.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3840256i32;
                    } else {
                        _gotoNext = 3840422i32;
                    };
                } else if (__value__ == (3840256i32)) {
                    return true;
                    _gotoNext = 3840422i32;
                } else if (__value__ == (3840422i32)) {
                    if ((((@:checkr _b ?? throw "null pointer dereference")._cap.length) > (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3840440i32;
                    } else {
                        _gotoNext = 3840469i32;
                    };
                } else if (__value__ == (3840440i32)) {
                    (@:checkr _b ?? throw "null pointer dereference")._cap[(1 : stdgo.GoInt)] = _pos_3837303;
                    _gotoNext = 3840469i32;
                } else if (__value__ == (3840469i32)) {
                    {
                        _old_3840472 = (@:checkr _b ?? throw "null pointer dereference")._matchcap[(1 : stdgo.GoInt)];
                        if (((_old_3840472 == (-1 : stdgo.GoInt)) || (((_longest_3837155 && (_pos_3837303 > (0 : stdgo.GoInt) : Bool) : Bool) && (_pos_3837303 > _old_3840472 : Bool) : Bool)) : Bool)) {
                            _gotoNext = 3840541i32;
                        } else {
                            _gotoNext = 3840624i32;
                        };
                    };
                } else if (__value__ == (3840541i32)) {
                    (@:checkr _b ?? throw "null pointer dereference")._matchcap.__copyTo__((@:checkr _b ?? throw "null pointer dereference")._cap);
                    _gotoNext = 3840624i32;
                } else if (__value__ == (3840624i32)) {
                    if (!_longest_3837155) {
                        _gotoNext = 3840636i32;
                    } else {
                        _gotoNext = 3840726i32;
                    };
                } else if (__value__ == (3840636i32)) {
                    return true;
                    _gotoNext = 3840726i32;
                } else if (__value__ == (3840726i32)) {
                    if (_pos_3837303 == ((@:checkr _b ?? throw "null pointer dereference")._end)) {
                        _gotoNext = 3840742i32;
                    } else {
                        _gotoNext = 3840825i32;
                    };
                } else if (__value__ == (3840742i32)) {
                    return true;
                    _gotoNext = 3840825i32;
                } else if (__value__ == (3840825i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3837207i32;
                } else if (__value__ == (3840843i32)) {
                    return ((_longest_3837155 && (((@:checkr _b ?? throw "null pointer dereference")._matchcap.length) > (1 : stdgo.GoInt) : Bool) : Bool) && ((@:checkr _b ?? throw "null pointer dereference")._matchcap[(1 : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
