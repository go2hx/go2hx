package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.Regexp_asInterface) class Regexp_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalText( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile((_text : stdgo.GoString)?.__copy__()), _newRE:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1301"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1302"
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
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1305"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1294"
        return { _0 : ((_re.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function split( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1255"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1256"
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1259"
        if (((((@:checkr _re ?? throw "null pointer dereference")._expr.length) > (0 : stdgo.GoInt) : Bool) && (_s.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1260"
            return (new stdgo.Slice<stdgo.GoString>(1, 1, ...[(stdgo.Go.str() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        };
        var _matches = _re.findAllStringIndex(_s?.__copy__(), _n);
        var _strings = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_matches.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _beg = (0 : stdgo.GoInt);
        var _end = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1268"
        for (__0 => _match in _matches) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1269"
            if (((_n > (0 : stdgo.GoInt) : Bool) && ((_strings.length) >= (_n - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1270"
                break;
            };
            _end = _match[(0 : stdgo.GoInt)];
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1274"
            if (_match[(1 : stdgo.GoInt)] != ((0 : stdgo.GoInt))) {
                _strings = (_strings.__append__((_s.__slice__(_beg, _end) : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
            _beg = _match[(1 : stdgo.GoInt)];
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1280"
        if (_end != ((_s.length))) {
            _strings = (_strings.__append__((_s.__slice__(_beg) : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1284"
        return _strings;
    }
    @:keep
    @:tdfield
    static public function findAllStringSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1223"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1227"
        _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1228"
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__(_match) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        });
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1233"
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllStringSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoString>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1198"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1202"
        _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1203"
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoString>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
            };
            var _slice = (new stdgo.Slice<stdgo.GoString>(((_match.length) / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1207"
            for (_j => _ in _slice) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1208"
                if ((_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool)) {
                    _slice[(_j : stdgo.GoInt)] = (_s.__slice__(_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
                };
            };
            _result = (_result.__append__(_slice) : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
        });
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1214"
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1180"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1184"
        _re._allMatches((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1185"
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__(_match) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        });
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1190"
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1156"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1160"
        _re._allMatches((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1161"
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>);
            };
            var _slice = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(((_match.length) / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1165"
            for (_j => _ in _slice) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1166"
                if ((_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool)) {
                    _slice[(_j : stdgo.GoInt)] = (_b.__slice__(_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                };
            };
            _result = (_result.__append__(_slice) : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>);
        });
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1172"
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllStringIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1138"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1142"
        _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1143"
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__((_match.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        });
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1148"
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1120"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1124"
        _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1125"
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
            };
            _result = (_result.__append__((_s.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        });
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1130"
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1102"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1106"
        _re._allMatches((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1107"
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__((_match.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        });
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1112"
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAll( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1084"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1088"
        _re._allMatches((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1089"
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            };
            _result = (_result.__append__((_b.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        });
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1094"
        return _result;
    }
    @:keep
    @:tdfield
    static public function findReaderSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1074"
        return _re._pad(_re._doExecute(_r, (null : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    @:tdfield
    static public function findStringSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1065"
        return _re._pad(_re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    @:tdfield
    static public function findStringSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4).__setNumber32__();
        var _a = _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1047"
        if (_a == null) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1048"
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        var _ret = (new stdgo.Slice<stdgo.GoString>(((1 : stdgo.GoInt) + (@:checkr _re ?? throw "null pointer dereference")._numSubexp : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1051"
        for (_i => _ in _ret) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1052"
            if (((((2 : stdgo.GoInt) * _i : stdgo.GoInt) < (_a.length) : Bool) && (_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                _ret[(_i : stdgo.GoInt)] = (_s.__slice__(_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1056"
        return _ret;
    }
    @:keep
    @:tdfield
    static public function findSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L1036"
        return _re._pad(_re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    @:tdfield
    static public function _expand( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.GoString, _bsrc:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L933"
        while (((_template.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_template?.__copy__(), ("$" : stdgo.GoString)), _before:stdgo.GoString = __tmp__._0, _after:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L935"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L936"
                break;
            };
            _dst = (_dst.__append__(...(_before : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            _template = _after?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L940"
            if (((_template != (stdgo.Go.str() : stdgo.GoString)) && (_template[(0 : stdgo.GoInt)] == (36 : stdgo.GoUInt8)) : Bool)) {
                _dst = (_dst.__append__((36 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                _template = (_template.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L944"
                continue;
            };
            var __tmp__ = stdgo._internal.regexp.Regexp__extract._extract(_template?.__copy__()), _name:stdgo.GoString = __tmp__._0, _num:stdgo.GoInt = __tmp__._1, _rest:stdgo.GoString = __tmp__._2, _ok:Bool = __tmp__._3;
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L947"
            if (!_ok) {
                _dst = (_dst.__append__((36 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L950"
                continue;
            };
            _template = _rest?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L953"
            if ((_num >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L954"
                if ((((((2 : stdgo.GoInt) * _num : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) < (_match.length) : Bool) && (_match[((2 : stdgo.GoInt) * _num : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L955"
                    if (_bsrc != null) {
                        _dst = (_dst.__append__(...((_bsrc.__slice__(_match[((2 : stdgo.GoInt) * _num : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _num : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    } else {
                        _dst = (_dst.__append__(...((_src.__slice__(_match[((2 : stdgo.GoInt) * _num : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _num : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L962"
                for (_i => _namei in (@:checkr _re ?? throw "null pointer dereference")._subexpNames) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L963"
                    if (((_name == (_namei) && ((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) < (_match.length) : Bool) : Bool) && (_match[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L964"
                        if (_bsrc != null) {
                            _dst = (_dst.__append__(...((_bsrc.__slice__(_match[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                        } else {
                            _dst = (_dst.__append__(...((_src.__slice__(_match[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L969"
                        break;
                    };
                };
            };
        };
        _dst = (_dst.__append__(...(_template : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L975"
        return _dst;
    }
    @:keep
    @:tdfield
    static public function expandString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.GoString, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L929"
        return _re._expand(_dst, _template?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _match);
    }
    @:keep
    @:tdfield
    static public function expand( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L922"
        return _re._expand(_dst, (_template : stdgo.GoString)?.__copy__(), _src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _match);
    }
    @:keep
    @:tdfield
    static public function findSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4).__setNumber32__();
        var _a = _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L892"
        if (_a == null) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L893"
            return (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        };
        var _ret = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(((1 : stdgo.GoInt) + (@:checkr _re ?? throw "null pointer dereference")._numSubexp : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L896"
        for (_i => _ in _ret) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L897"
            if (((((2 : stdgo.GoInt) * _i : stdgo.GoInt) < (_a.length) : Bool) && (_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                _ret[(_i : stdgo.GoInt)] = (_b.__slice__(_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L901"
        return _ret;
    }
    @:keep
    @:tdfield
    static public function findReaderIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = _re._doExecute(_r, (null : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L878"
        if (_a == null) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L879"
            return _loc = (null : stdgo.Slice<stdgo.GoInt>);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L881"
        return _loc = (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    @:tdfield
    static public function findStringIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L865"
        if (_a == null) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L866"
            return _loc = (null : stdgo.Slice<stdgo.GoInt>);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L868"
        return _loc = (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    @:tdfield
    static public function findString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__();
        var _a = _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L853"
        if (_a == null) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L854"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L856"
        return (_s.__slice__(_a[(0 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function findIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L839"
        if (_a == null) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L840"
            return _loc = (null : stdgo.Slice<stdgo.GoInt>);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L842"
        return _loc = (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    @:tdfield
    static public function find( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__();
        var _a = _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L827"
        if (_a == null) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L828"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L830"
        return (_b.__slice__(_a[(0 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _allMatches( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt, _deliver:stdgo.Slice<stdgo.GoInt> -> Void):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _end:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L777"
        if (_b == null) {
            _end = (_s.length);
        } else {
            _end = (_b.length);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L783"
        {
            var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt), __2 = (-1 : stdgo.GoInt);
var _prevMatchEnd = __2, _i = __1, _pos = __0;
            while (((_i < _n : Bool) && (_pos <= _end : Bool) : Bool)) {
                var _matches = _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _b, _s?.__copy__(), _pos, (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (null : stdgo.Slice<stdgo.GoInt>));
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L785"
                if ((_matches.length) == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L786"
                    break;
                };
                var _accept = (true : Bool);
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L790"
                if (_matches[(1 : stdgo.GoInt)] == (_pos)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L792"
                    if (_matches[(0 : stdgo.GoInt)] == (_prevMatchEnd)) {
                        _accept = false;
                    };
                    var _width:stdgo.GoInt = (0 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L798"
                    if (_b == null) {
                        var _is = ({ _str : _s?.__copy__() } : stdgo._internal.regexp.Regexp_t_inputstring.T_inputString);
                        {
                            var __tmp__ = _is._step(_pos);
                            _width = @:tmpset0 __tmp__._1;
                        };
                    } else {
                        var _ib = ({ _str : _b } : stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes);
                        {
                            var __tmp__ = _ib._step(_pos);
                            _width = @:tmpset0 __tmp__._1;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L805"
                    if ((_width > (0 : stdgo.GoInt) : Bool)) {
                        _pos = (_pos + (_width) : stdgo.GoInt);
                    } else {
                        _pos = (_end + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                } else {
                    _pos = _matches[(1 : stdgo.GoInt)];
                };
                _prevMatchEnd = _matches[(1 : stdgo.GoInt)];
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L815"
                if (_accept) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L816"
                    _deliver(_re._pad(_matches));
                    //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L817"
                    _i++;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _pad( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _a:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L761"
        if (_a == null) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L763"
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        var _n = ((((1 : stdgo.GoInt) + (@:checkr _re ?? throw "null pointer dereference")._numSubexp : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L766"
        while (((_a.length) < _n : Bool)) {
            _a = (_a.__append__((-1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L769"
        return _a;
    }
    @:keep
    @:tdfield
    static public function replaceAllFunc( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L706"
        return _re._replaceAll(_src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L707"
            return (_dst.__append__(...(_repl((_src.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>)) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        });
    }
    @:keep
    @:tdfield
    static public function replaceAllLiteral( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L696"
        return _re._replaceAll(_src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L697"
            return (_dst.__append__(...(_repl : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        });
    }
    @:keep
    @:tdfield
    static public function replaceAll( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _n = (2 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L679"
        if ((stdgo._internal.bytes.Bytes_indexbyte.indexByte(_repl, (36 : stdgo.GoUInt8)) >= (0 : stdgo.GoInt) : Bool)) {
            _n = ((2 : stdgo.GoInt) * (((@:checkr _re ?? throw "null pointer dereference")._numSubexp + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _srepl = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _b = _re._replaceAll(_src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _n, function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L684"
            if ((_srepl.length) != ((_repl.length))) {
                _srepl = (_repl : stdgo.GoString)?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L687"
            return _re._expand(_dst, _srepl?.__copy__(), _src, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _match);
        });
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L689"
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
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L614"
        if (_bsrc != null) {
            _endPos = (_bsrc.length);
        } else {
            _endPos = (_src.length);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L619"
        if ((_nmatch > (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap : Bool)) {
            _nmatch = (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap;
        };
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L624"
        while ((_searchPos <= _endPos : Bool)) {
            var _a = _re._doExecute((null : stdgo._internal.io.Io_runereader.RuneReader), _bsrc, _src?.__copy__(), _searchPos, _nmatch, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L626"
            if ((_a.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L627"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L631"
            if (_bsrc != null) {
                _buf = (_buf.__append__(...((_bsrc.__slice__(_lastMatchEnd, _a[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                _buf = (_buf.__append__(...((_src.__slice__(_lastMatchEnd, _a[(0 : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L641"
            if (((_a[(1 : stdgo.GoInt)] > _lastMatchEnd : Bool) || (_a[(0 : stdgo.GoInt)] == (0 : stdgo.GoInt)) : Bool)) {
                _buf = _repl(_buf, _a);
            };
            _lastMatchEnd = _a[(1 : stdgo.GoInt)];
            var _width:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L648"
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
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L653"
            if (((_searchPos + _width : stdgo.GoInt) > _a[(1 : stdgo.GoInt)] : Bool)) {
                _searchPos = (_searchPos + (_width) : stdgo.GoInt);
            } else if (((_searchPos + (1 : stdgo.GoInt) : stdgo.GoInt) > _a[(1 : stdgo.GoInt)] : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L658"
                _searchPos++;
            } else {
                _searchPos = _a[(1 : stdgo.GoInt)];
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L665"
        if (_bsrc != null) {
            _buf = (_buf.__append__(...((_bsrc.__slice__(_lastMatchEnd) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _buf = (_buf.__append__(...((_src.__slice__(_lastMatchEnd) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L671"
        return _buf;
    }
    @:keep
    @:tdfield
    static public function replaceAllStringFunc( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString -> stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _b = _re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L604"
            return (_dst.__append__(...(_repl((_src.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__()) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        });
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L606"
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function replaceAllLiteralString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L593"
        return (_re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L594"
            return (_dst.__append__(...(_repl : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        }) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function replaceAllString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _n = (2 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L580"
        if (stdgo._internal.strings.Strings_contains.contains(_repl?.__copy__(), ("$" : stdgo.GoString))) {
            _n = ((2 : stdgo.GoInt) * (((@:checkr _re ?? throw "null pointer dereference")._numSubexp + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _b = _re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _n, function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L584"
            return _re._expand(_dst, _repl?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _match);
        });
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L586"
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function match( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L539"
        return _re._doMatch((null : stdgo._internal.io.Io_runereader.RuneReader), _b, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function matchString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _s:stdgo.GoString):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L533"
        return _re._doMatch((null : stdgo._internal.io.Io_runereader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function matchReader( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L527"
        return _re._doMatch(_r, (null : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function literalPrefix( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _prefix = ("" : stdgo.GoString), _complete = false;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L521"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (@:checkr _re ?? throw "null pointer dereference")._prefix?.__copy__(), _1 : (@:checkr _re ?? throw "null pointer dereference")._prefixComplete };
            _prefix = __tmp__._0;
            _complete = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function subexpIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _name:stdgo.GoString):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L364"
        if (_name != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L365"
            for (_i => _s in (@:checkr _re ?? throw "null pointer dereference")._subexpNames) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L366"
                if (_name == (_s)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L367"
                    return _i;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L371"
        return (-1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function subexpNames( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L353"
        return (@:checkr _re ?? throw "null pointer dereference")._subexpNames;
    }
    @:keep
    @:tdfield
    static public function numSubexp( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L344"
        return (@:checkr _re ?? throw "null pointer dereference")._numSubexp;
    }
    @:keep
    @:tdfield
    static public function _put( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        (@:checkr _m ?? throw "null pointer dereference")._re = null;
        (@:checkr _m ?? throw "null pointer dereference")._p = null;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L269"
        (@:checkr _m ?? throw "null pointer dereference")._inputs._clear();
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L270"
        stdgo._internal.regexp.Regexp__matchpool._matchPool[((@:checkr _re ?? throw "null pointer dereference")._mpool : stdgo.GoInt)].put(stdgo.Go.toInterface(stdgo.Go.asInterface(_m)));
    }
    @:keep
    @:tdfield
    static public function _get( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo._internal.regexp.Regexp__matchpool._matchPool[((@:checkr _re ?? throw "null pointer dereference")._mpool : stdgo.GoInt)].get() : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>)) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>), _1 : false };
        }, _m = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L240"
        if (!_ok) {
            _m = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp_t_machine.T_machine)) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>);
        };
        (@:checkr _m ?? throw "null pointer dereference")._re = _re;
        (@:checkr _m ?? throw "null pointer dereference")._p = (@:checkr _re ?? throw "null pointer dereference")._prog;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L245"
        if (((@:checkr _m ?? throw "null pointer dereference")._matchcap.capacity < (@:checkr _re ?? throw "null pointer dereference")._matchcap : Bool)) {
            (@:checkr _m ?? throw "null pointer dereference")._matchcap = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _re ?? throw "null pointer dereference")._matchcap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L247"
            for (__0 => _t in (@:checkr _m ?? throw "null pointer dereference")._pool) {
                (@:checkr _t ?? throw "null pointer dereference")._cap = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _re ?? throw "null pointer dereference")._matchcap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            };
        };
        var _n = (stdgo._internal.regexp.Regexp__matchsize._matchSize[((@:checkr _re ?? throw "null pointer dereference")._mpool : stdgo.GoInt)] : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L255"
        if (_n == ((0 : stdgo.GoInt))) {
            _n = ((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").inst.length);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L258"
        if ((((@:checkr _m ?? throw "null pointer dereference")._q0._sparse.length) < _n : Bool)) {
            (@:checkr _m ?? throw "null pointer dereference")._q0 = (new stdgo._internal.regexp.Regexp_t_queue.T_queue((new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), (new stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_t_entry.T_entry)]) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>)) : stdgo._internal.regexp.Regexp_t_queue.T_queue);
            (@:checkr _m ?? throw "null pointer dereference")._q1 = (new stdgo._internal.regexp.Regexp_t_queue.T_queue((new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), (new stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_t_entry.T_entry)]) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>)) : stdgo._internal.regexp.Regexp_t_queue.T_queue);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L262"
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
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L123"
        return (stdgo.Go.setRef(_re2) : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
    }
    @:keep
    @:tdfield
    static public function string( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L110"
        return (@:checkr _re ?? throw "null pointer dereference")._expr?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _doExecute( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L522"
        if (_dstCap == null) {
            _dstCap = (stdgo._internal.regexp.Regexp__arraynoints._arrayNoInts.__slice__(0, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L527"
        if (((_r == null) && (((_b.length) + (_s.length) : stdgo.GoInt) < (@:checkr _re ?? throw "null pointer dereference")._minInputLen : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L528"
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L531"
        if (({
            final value = (@:checkr _re ?? throw "null pointer dereference")._onepass;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L532"
            return _re._doOnePass(_r, _b, _s?.__copy__(), _pos, _ncap, _dstCap);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L534"
        if (((_r == null) && (((_b.length) + (_s.length) : stdgo.GoInt) < (@:checkr _re ?? throw "null pointer dereference")._maxBitStateLen : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L535"
            return _re._backtrack(_b, _s?.__copy__(), _pos, _ncap, _dstCap);
        };
        var _m = _re._get();
        var __tmp__ = (@:checkr _m ?? throw "null pointer dereference")._inputs._init(_r, _b, _s?.__copy__()), _i:stdgo._internal.regexp.Regexp_t_input.T_input = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L541"
        _m._init(_ncap);
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L542"
        if (!_m._match(_i, _pos)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L543"
            _re._put(_m);
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L544"
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        _dstCap = (_dstCap.__append__(...((@:checkr _m ?? throw "null pointer dereference")._matchcap : Array<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L548"
        _re._put(_m);
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L549"
        return _dstCap;
    }
    @:keep
    @:tdfield
    static public function _doMatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _r:stdgo._internal.io.Io_runereader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L514"
        return _re._doExecute(_r, _b, _s?.__copy__(), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>)) != null;
    }
    @:keep
    @:tdfield
    static public function _doOnePass( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _ir:stdgo._internal.io.Io_runereader.RuneReader, _ib:stdgo.Slice<stdgo.GoUInt8>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _width_34:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r1_33:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_32:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_31:stdgo._internal.regexp.Regexp_t_input.T_input = (null : stdgo._internal.regexp.Regexp_t_input.T_input);
        var _i_30:stdgo.GoInt = (0 : stdgo.GoInt);
        var _matched_29:Bool = false;
        var _startCond_27:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        var _flag_36:stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag);
        var _inst_38:stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>);
        var _pc_37:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width1_35:stdgo.GoInt = (0 : stdgo.GoInt);
        var _m_28:stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassmachine.T_onePassMachine>);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _startCond_27 = (@:checkr _re ?? throw "null pointer dereference")._cond;
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L399"
                    if (_startCond_27 == ((255 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3768232i64;
                    } else {
                        _gotoNext = 3768266i64;
                    };
                } else if (__value__ == (3768232i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L400"
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3768266i64;
                } else if (__value__ == (3768266i64)) {
                    _m_28 = stdgo._internal.regexp.Regexp__newonepassmachine._newOnePassMachine();
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L404"
                    if (((@:checkr _m_28 ?? throw "null pointer dereference")._matchcap.capacity < _ncap : Bool)) {
                        _gotoNext = 3768318i64;
                    } else {
                        _gotoNext = 3768361i64;
                    };
                } else if (__value__ == (3768318i64)) {
                    (@:checkr _m_28 ?? throw "null pointer dereference")._matchcap = (new stdgo.Slice<stdgo.GoInt>((_ncap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3768401i64;
                } else if (__value__ == (3768361i64)) {
                    _gotoNext = 3768361i64;
                    (@:checkr _m_28 ?? throw "null pointer dereference")._matchcap = ((@:checkr _m_28 ?? throw "null pointer dereference")._matchcap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
                    0i64;
                    _gotoNext = 3768401i64;
                } else if (__value__ == (3768401i64)) {
                    _matched_29 = false;
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L411"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _m_28 ?? throw "null pointer dereference")._matchcap.length)) {
                        _gotoNext = 3768468i64;
                    } else {
                        _gotoNext = 3768473i64;
                    };
                } else if (__value__ == (3768445i64)) {
                    (@:checkr _m_28 ?? throw "null pointer dereference")._matchcap[(_i_30 : stdgo.GoInt)] = (-1 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L411"
                    _i_30++;
                    _gotoNext = 3768469i64;
                } else if (__value__ == (3768468i64)) {
                    _i_30 = 0i64;
                    _gotoNext = 3768469i64;
                } else if (__value__ == (3768469i64)) {
                    //"file://#L0"
                    if (_i_30 < ((@:checkr _m_28 ?? throw "null pointer dereference")._matchcap.length)) {
                        _gotoNext = 3768445i64;
                    } else {
                        _gotoNext = 3768473i64;
                    };
                } else if (__value__ == (3768473i64)) {
                    {
                        var __tmp__ = (@:checkr _m_28 ?? throw "null pointer dereference")._inputs._init(_ir, _ib, _is?.__copy__());
                        _i_31 = @:tmpset0 __tmp__._0;
                    };
                    {
                        final __tmp__0 = (-1 : stdgo.GoInt32);
                        final __tmp__1 = (-1 : stdgo.GoInt32);
                        _r_32 = @:binopAssign __tmp__0;
                        _r1_33 = @:binopAssign __tmp__1;
                    };
                    {
                        final __tmp__0 = (0 : stdgo.GoInt);
                        final __tmp__1 = (0 : stdgo.GoInt);
                        _width_34 = @:binopAssign __tmp__0;
                        _width1_35 = @:binopAssign __tmp__1;
                    };
                    {
                        var __tmp__ = _i_31._step(_pos);
                        _r_32 = @:tmpset0 __tmp__._0;
                        _width_34 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L420"
                    if (_r_32 != ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3768605i64;
                    } else {
                        _gotoNext = 3768646i64;
                    };
                } else if (__value__ == (3768605i64)) {
                    {
                        var __tmp__ = _i_31._step((_pos + _width_34 : stdgo.GoInt));
                        _r1_33 = @:tmpset0 __tmp__._0;
                        _width1_35 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3768646i64;
                } else if (__value__ == (3768646i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L424"
                    if (_pos == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3768677i64;
                    } else {
                        _gotoNext = 3768715i64;
                    };
                } else if (__value__ == (3768677i64)) {
                    _flag_36 = stdgo._internal.regexp.Regexp__newlazyflag._newLazyFlag((-1 : stdgo.GoInt32), _r_32);
                    _gotoNext = 3768745i64;
                } else if (__value__ == (3768715i64)) {
                    _gotoNext = 3768715i64;
                    _flag_36 = _i_31._context(_pos);
                    0i64;
                    _gotoNext = 3768745i64;
                } else if (__value__ == (3768745i64)) {
                    _pc_37 = (@:checkr (@:checkr _re ?? throw "null pointer dereference")._onepass ?? throw "null pointer dereference").start;
                    _inst_38 = (stdgo.Go.setRef((@:checkr (@:checkr _re ?? throw "null pointer dereference")._onepass ?? throw "null pointer dereference").inst[(_pc_37 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L432"
                    if ((((_pos == ((0 : stdgo.GoInt)) && _flag_36._match(((@:checkr _inst_38 ?? throw "null pointer dereference").inst.arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : Bool) && (((@:checkr _re ?? throw "null pointer dereference")._prefix.length) > (0 : stdgo.GoInt) : Bool) : Bool) && _i_31._canCheckPrefix() : Bool)) {
                        _gotoNext = 3768952i64;
                    } else {
                        _gotoNext = 3769190i64;
                    };
                } else if (__value__ == (3768952i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L435"
                    if (!_i_31._hasPrefix(_re)) {
                        _gotoNext = 3769032i64;
                    } else {
                        _gotoNext = 3769055i64;
                    };
                } else if (__value__ == (3769032i64)) {
                    _gotoNext = 3770314i64;
                } else if (__value__ == (3769055i64)) {
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
                    _gotoNext = 3769190i64;
                } else if (__value__ == (3769190i64)) {
                    0i64;
                    _gotoNext = 3769190i64;
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 3769194i64;
                    } else {
                        _gotoNext = 3770314i64;
                    };
                } else if (__value__ == (3769194i64)) {
                    _inst_38 = (stdgo.Go.setRef((@:checkr (@:checkr _re ?? throw "null pointer dereference")._onepass ?? throw "null pointer dereference").inst[(_pc_37 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>);
                    _pc_37 = ((@:checkr _inst_38 ?? throw "null pointer dereference").inst.out : stdgo.GoInt);
                    _gotoNext = 3769249i64;
                } else if (__value__ == (3769249i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L447"
                    {
                        final __value__ = (@:checkr _inst_38 ?? throw "null pointer dereference").inst.op;
                        if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3769300i64;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3769437i64;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3769509i64;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3769581i64;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3769622i64;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3769760i64;
                        } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3769850i64;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3769889i64;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3769924i64;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3770033i64;
                        } else {
                            _gotoNext = 3769268i64;
                        };
                    };
                } else if (__value__ == (3769268i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L449"
                    throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    _gotoNext = 3770152i64;
                } else if (__value__ == (3769300i64)) {
                    _matched_29 = true;
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L452"
                    if ((((@:checkr _m_28 ?? throw "null pointer dereference")._matchcap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3769367i64;
                    } else {
                        _gotoNext = 3769423i64;
                    };
                } else if (__value__ == (3769367i64)) {
                    (@:checkr _m_28 ?? throw "null pointer dereference")._matchcap[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt);
                    (@:checkr _m_28 ?? throw "null pointer dereference")._matchcap[(1 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3769423i64;
                } else if (__value__ == (3769423i64)) {
                    _gotoNext = 3770314i64;
                } else if (__value__ == (3769437i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L458"
                    if (!_inst_38.matchRune(_r_32)) {
                        _gotoNext = 3769484i64;
                    } else {
                        _gotoNext = 3770152i64;
                    };
                } else if (__value__ == (3769484i64)) {
                    _gotoNext = 3770314i64;
                } else if (__value__ == (3769509i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L462"
                    if (_r_32 != ((@:checkr _inst_38 ?? throw "null pointer dereference").inst.rune[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                        _gotoNext = 3769556i64;
                    } else {
                        _gotoNext = 3770152i64;
                    };
                } else if (__value__ == (3769556i64)) {
                    _gotoNext = 3770314i64;
                } else if (__value__ == (3769581i64)) {
                    _gotoNext = 3770152i64;
                } else if (__value__ == (3769622i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L468"
                    if (_r_32 == ((10 : stdgo.GoInt32))) {
                        _gotoNext = 3769668i64;
                    } else {
                        _gotoNext = 3770152i64;
                    };
                } else if (__value__ == (3769668i64)) {
                    _gotoNext = 3770314i64;
                } else if (__value__ == (3769760i64)) {
                    _pc_37 = (stdgo._internal.regexp.Regexp__onepassnext._onePassNext(_inst_38, _r_32) : stdgo.GoInt);
                    0i64;
                    _gotoNext = 3769190i64;
                } else if (__value__ == (3769850i64)) {
                    _gotoNext = 3770314i64;
                } else if (__value__ == (3769889i64)) {
                    0i64;
                    _gotoNext = 3769190i64;
                } else if (__value__ == (3769924i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L480"
                    if (!_flag_36._match(((@:checkr _inst_38 ?? throw "null pointer dereference").inst.arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3769996i64;
                    } else {
                        _gotoNext = 3770022i64;
                    };
                } else if (__value__ == (3769996i64)) {
                    _gotoNext = 3770314i64;
                } else if (__value__ == (3770022i64)) {
                    0i64;
                    _gotoNext = 3769190i64;
                } else if (__value__ == (3770033i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L485"
                    if ((((@:checkr _inst_38 ?? throw "null pointer dereference").inst.arg : stdgo.GoInt) < ((@:checkr _m_28 ?? throw "null pointer dereference")._matchcap.length) : Bool)) {
                        _gotoNext = 3770096i64;
                    } else {
                        _gotoNext = 3770137i64;
                    };
                } else if (__value__ == (3770096i64)) {
                    (@:checkr _m_28 ?? throw "null pointer dereference")._matchcap[((@:checkr _inst_38 ?? throw "null pointer dereference").inst.arg : stdgo.GoInt)] = _pos;
                    _gotoNext = 3770137i64;
                } else if (__value__ == (3770137i64)) {
                    0i64;
                    _gotoNext = 3769190i64;
                } else if (__value__ == (3770152i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L490"
                    if (_width_34 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3770166i64;
                    } else {
                        _gotoNext = 3770183i64;
                    };
                } else if (__value__ == (3770166i64)) {
                    _gotoNext = 3770314i64;
                } else if (__value__ == (3770183i64)) {
                    _flag_36 = stdgo._internal.regexp.Regexp__newlazyflag._newLazyFlag(_r_32, _r1_33);
                    _pos = (_pos + (_width_34) : stdgo.GoInt);
                    {
                        final __tmp__0 = _r1_33;
                        final __tmp__1 = _width1_35;
                        _r_32 = @:binopAssign __tmp__0;
                        _width_34 = @:binopAssign __tmp__1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L496"
                    if (_r_32 != ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3770268i64;
                    } else {
                        _gotoNext = 3769190i64;
                    };
                } else if (__value__ == (3770268i64)) {
                    {
                        var __tmp__ = _i_31._step((_pos + _width_34 : stdgo.GoInt));
                        _r1_33 = @:tmpset0 __tmp__._0;
                        _width1_35 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3769190i64;
                } else if (__value__ == (3770314i64)) {
                    _gotoNext = 3770314i64;
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L502"
                    if (!_matched_29) {
                        _gotoNext = 3770335i64;
                    } else {
                        _gotoNext = 3770379i64;
                    };
                } else if (__value__ == (3770335i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L503"
                    stdgo._internal.regexp.Regexp__freeonepassmachine._freeOnePassMachine(_m_28);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L504"
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3770379i64;
                } else if (__value__ == (3770379i64)) {
                    _dstCap = (_dstCap.__append__(...((@:checkr _m_28 ?? throw "null pointer dereference")._matchcap : Array<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L508"
                    stdgo._internal.regexp.Regexp__freeonepassmachine._freeOnePassMachine(_m_28);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L509"
                    return _dstCap;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _backtrack( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _ib:stdgo.Slice<stdgo.GoUInt8>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _b_17:stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>);
        var _startCond_16:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        var _advance_21:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_20:stdgo.GoInt = (0 : stdgo.GoInt);
        var _end_19:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_18:stdgo._internal.regexp.Regexp_t_input.T_input = (null : stdgo._internal.regexp.Regexp_t_input.T_input);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _startCond_16 = (@:checkr _re ?? throw "null pointer dereference")._cond;
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L309"
                    if (_startCond_16 == ((255 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3856213i64;
                    } else {
                        _gotoNext = 3856246i64;
                    };
                } else if (__value__ == (3856213i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L310"
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3856246i64;
                } else if (__value__ == (3856246i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L312"
                    if ((((_startCond_16 & (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != (0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) && (_pos != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3856298i64;
                    } else {
                        _gotoNext = 3856363i64;
                    };
                } else if (__value__ == (3856298i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L314"
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3856363i64;
                } else if (__value__ == (3856363i64)) {
                    _b_17 = stdgo._internal.regexp.Regexp__newbitstate._newBitState();
                    {
                        var __tmp__ = (@:checkr _b_17 ?? throw "null pointer dereference")._inputs._init((null : stdgo._internal.io.Io_runereader.RuneReader), _ib, _is?.__copy__());
                        _i_18 = @:tmpset0 __tmp__._0;
                        _end_19 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L319"
                    _b_17._reset((@:checkr _re ?? throw "null pointer dereference")._prog, _end_19, _ncap);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L322"
                    if ((_startCond_16 & (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3856552i64;
                    } else {
                        _gotoNext = 3856701i64;
                    };
                } else if (__value__ == (3856552i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L323"
                    if ((((@:checkr _b_17 ?? throw "null pointer dereference")._cap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3856574i64;
                    } else {
                        _gotoNext = 3856600i64;
                    };
                } else if (__value__ == (3856574i64)) {
                    (@:checkr _b_17 ?? throw "null pointer dereference")._cap[(0 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3856600i64;
                } else if (__value__ == (3856600i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L326"
                    if (!_re._tryBacktrack(_b_17, _i_18, ((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").start : stdgo.GoUInt32), _pos)) {
                        _gotoNext = 3856654i64;
                    } else {
                        _gotoNext = 3857588i64;
                    };
                } else if (__value__ == (3856654i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L327"
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_17);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L328"
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3857588i64;
                } else if (__value__ == (3856701i64)) {
                    _gotoNext = 3856701i64;
                    _width_20 = (-1 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 3857108i64;
                } else if (__value__ == (3857108i64)) {
                    //"file://#L0"
                    if (((_pos <= _end_19 : Bool) && (_width_20 != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3857153i64;
                    } else {
                        _gotoNext = 3857555i64;
                    };
                } else if (__value__ == (3857153i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L340"
                    if ((((@:checkr _re ?? throw "null pointer dereference")._prefix.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3857180i64;
                    } else {
                        _gotoNext = 3857364i64;
                    };
                } else if (__value__ == (3857180i64)) {
                    _advance_21 = _i_18._index(_re, _pos);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L343"
                    if ((_advance_21 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3857291i64;
                    } else {
                        _gotoNext = 3857340i64;
                    };
                } else if (__value__ == (3857291i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L344"
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_17);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L345"
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3857340i64;
                } else if (__value__ == (3857340i64)) {
                    _pos = (_pos + (_advance_21) : stdgo.GoInt);
                    _gotoNext = 3857364i64;
                } else if (__value__ == (3857364i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L350"
                    if ((((@:checkr _b_17 ?? throw "null pointer dereference")._cap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3857382i64;
                    } else {
                        _gotoNext = 3857411i64;
                    };
                } else if (__value__ == (3857382i64)) {
                    (@:checkr _b_17 ?? throw "null pointer dereference")._cap[(0 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3857411i64;
                } else if (__value__ == (3857411i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L353"
                    if (_re._tryBacktrack(_b_17, _i_18, ((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").start : stdgo.GoUInt32), _pos)) {
                        _gotoNext = 3857464i64;
                    } else {
                        _gotoNext = 3857526i64;
                    };
                } else if (__value__ == (3857464i64)) {
                    _gotoNext = 3857588i64;
                } else if (__value__ == (3857526i64)) {
                    {
                        var __tmp__ = _i_18._step(_pos);
                        _width_20 = @:tmpset0 __tmp__._1;
                    };
                    _pos = (_pos + (_width_20) : stdgo.GoInt);
                    _gotoNext = 3857108i64;
                } else if (__value__ == (3857555i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L359"
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_17);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L360"
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    0i64;
                    _gotoNext = 3857588i64;
                } else if (__value__ == (3857588i64)) {
                    _gotoNext = 3857588i64;
                    _dstCap = (_dstCap.__append__(...((@:checkr _b_17 ?? throw "null pointer dereference")._matchcap : Array<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L365"
                    stdgo._internal.regexp.Regexp__freebitstate._freeBitState(_b_17);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L366"
                    return _dstCap;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _tryBacktrack( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _b:stdgo.Ref<stdgo._internal.regexp.Regexp_t_bitstate.T_bitState>, _i:stdgo._internal.regexp.Regexp_t_input.T_input, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = _re;
        var _width_13:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_12:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_10:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_8:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_6:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _pc_2:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _flag_14:stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag);
        var _inst_5:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        var _arg_4:Bool = false;
        var _pos_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _l_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _old_15:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _longest_0:Bool = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _longest_0 = (@:checkr _re ?? throw "null pointer dereference")._longest;
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L143"
                    _b._push(_re, _pc, _pos, false);
                    0i64;
                    _gotoNext = 3852287i64;
                } else if (__value__ == (3852287i64)) {
                    //"file://#L0"
                    if ((((@:checkr _b ?? throw "null pointer dereference")._jobs.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3852307i64;
                    } else {
                        _gotoNext = 3855923i64;
                    };
                } else if (__value__ == (3852307i64)) {
                    _l_1 = (((@:checkr _b ?? throw "null pointer dereference")._jobs.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _pc_2 = (@:checkr _b ?? throw "null pointer dereference")._jobs[(_l_1 : stdgo.GoInt)]._pc;
                    _pos_3 = (@:checkr _b ?? throw "null pointer dereference")._jobs[(_l_1 : stdgo.GoInt)]._pos;
                    _arg_4 = (@:checkr _b ?? throw "null pointer dereference")._jobs[(_l_1 : stdgo.GoInt)]._arg;
                    (@:checkr _b ?? throw "null pointer dereference")._jobs = ((@:checkr _b ?? throw "null pointer dereference")._jobs.__slice__(0, _l_1) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_job.T_job>);
                    _gotoNext = 3852801i64;
                } else if (__value__ == (3852739i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L161"
                    if (!_b._shouldVisit(_pc_2, _pos_3)) {
                        _gotoNext = 3852782i64;
                    } else {
                        _gotoNext = 3852801i64;
                    };
                } else if (__value__ == (3852782i64)) {
                    0i64;
                    _gotoNext = 3852287i64;
                } else if (__value__ == (3852801i64)) {
                    _gotoNext = 3852801i64;
                    _inst_5 = (stdgo.Go.setRef((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").inst[(_pc_2 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
                    _gotoNext = 3852839i64;
                } else if (__value__ == (3852839i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L168"
                    {
                        final __value__ = (@:checkr _inst_5 ?? throw "null pointer dereference").op;
                        if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3852890i64;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3852946i64;
                        } else if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3853507i64;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3853966i64;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3854117i64;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3854268i64;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3854436i64;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3854586i64;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3854969i64;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3855128i64;
                        } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3855190i64;
                        } else {
                            _gotoNext = 3852858i64;
                        };
                    };
                } else if (__value__ == (3852858i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L170"
                    throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    _gotoNext = 3852287i64;
                } else if (__value__ == (3852890i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L172"
                    throw stdgo.Go.toInterface(("unexpected InstFail" : stdgo.GoString));
                    _gotoNext = 3852287i64;
                } else if (__value__ == (3852946i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L182"
                    if (_arg_4) {
                        _gotoNext = 3853319i64;
                    } else {
                        _gotoNext = 3853427i64;
                    };
                } else if (__value__ == (3853319i64)) {
                    _arg_4 = false;
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").arg;
                    _gotoNext = 3852739i64;
                } else if (__value__ == (3853427i64)) {
                    _gotoNext = 3853427i64;
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L188"
                    _b._push(_re, _pc_2, _pos_3, true);
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").out;
                    _gotoNext = 3852739i64;
                } else if (__value__ == (3853507i64)) {
                    _gotoNext = 3853595i64;
                } else if (__value__ == (3853595i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L195"
                    {
                        final __value__ = (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").inst[((@:checkr _inst_5 ?? throw "null pointer dereference").out : stdgo.GoInt)].op;
                        if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3853633i64;
                        } else {
                            _gotoNext = 3853890i64;
                        };
                    };
                } else if (__value__ == (3853633i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L198"
                    _b._push(_re, (@:checkr _inst_5 ?? throw "null pointer dereference").arg, _pos_3, false);
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").arg;
                    _pos_3 = (@:checkr _b ?? throw "null pointer dereference")._end;
                    _gotoNext = 3852739i64;
                } else if (__value__ == (3853890i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L204"
                    _b._push(_re, (@:checkr _inst_5 ?? throw "null pointer dereference").out, (@:checkr _b ?? throw "null pointer dereference")._end, false);
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").out;
                    _gotoNext = 3852739i64;
                } else if (__value__ == (3853966i64)) {
                    {
                        var __tmp__ = _i._step(_pos_3);
                        _r_6 = @:tmpset0 __tmp__._0;
                        _width_7 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L210"
                    if (!_inst_5.matchRune(_r_6)) {
                        _gotoNext = 3854040i64;
                    } else {
                        _gotoNext = 3854063i64;
                    };
                } else if (__value__ == (3854040i64)) {
                    0i64;
                    _gotoNext = 3852287i64;
                } else if (__value__ == (3854063i64)) {
                    _pos_3 = (_pos_3 + (_width_7) : stdgo.GoInt);
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").out;
                    _gotoNext = 3852739i64;
                } else if (__value__ == (3854117i64)) {
                    {
                        var __tmp__ = _i._step(_pos_3);
                        _r_8 = @:tmpset0 __tmp__._0;
                        _width_9 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L219"
                    if (_r_8 != ((@:checkr _inst_5 ?? throw "null pointer dereference").rune[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                        _gotoNext = 3854191i64;
                    } else {
                        _gotoNext = 3854214i64;
                    };
                } else if (__value__ == (3854191i64)) {
                    0i64;
                    _gotoNext = 3852287i64;
                } else if (__value__ == (3854214i64)) {
                    _pos_3 = (_pos_3 + (_width_9) : stdgo.GoInt);
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").out;
                    _gotoNext = 3852739i64;
                } else if (__value__ == (3854268i64)) {
                    {
                        var __tmp__ = _i._step(_pos_3);
                        _r_10 = @:tmpset0 __tmp__._0;
                        _width_11 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L228"
                    if (((_r_10 == (10 : stdgo.GoInt32)) || (_r_10 == (-1 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3854359i64;
                    } else {
                        _gotoNext = 3854382i64;
                    };
                } else if (__value__ == (3854359i64)) {
                    0i64;
                    _gotoNext = 3852287i64;
                } else if (__value__ == (3854382i64)) {
                    _pos_3 = (_pos_3 + (_width_11) : stdgo.GoInt);
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").out;
                    _gotoNext = 3852739i64;
                } else if (__value__ == (3854436i64)) {
                    {
                        var __tmp__ = _i._step(_pos_3);
                        _r_12 = @:tmpset0 __tmp__._0;
                        _width_13 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L237"
                    if (_r_12 == ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3854509i64;
                    } else {
                        _gotoNext = 3854532i64;
                    };
                } else if (__value__ == (3854509i64)) {
                    0i64;
                    _gotoNext = 3852287i64;
                } else if (__value__ == (3854532i64)) {
                    _pos_3 = (_pos_3 + (_width_13) : stdgo.GoInt);
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").out;
                    _gotoNext = 3852739i64;
                } else if (__value__ == (3854586i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L245"
                    if (_arg_4) {
                        _gotoNext = 3854621i64;
                    } else {
                        _gotoNext = 3854721i64;
                    };
                } else if (__value__ == (3854621i64)) {
                    (@:checkr _b ?? throw "null pointer dereference")._cap[((@:checkr _inst_5 ?? throw "null pointer dereference").arg : stdgo.GoInt)] = _pos_3;
                    0i64;
                    _gotoNext = 3852287i64;
                } else if (__value__ == (3854721i64)) {
                    _gotoNext = 3854721i64;
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L250"
                    if (((@:checkr _inst_5 ?? throw "null pointer dereference").arg < ((@:checkr _b ?? throw "null pointer dereference")._cap.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3854760i64;
                    } else {
                        _gotoNext = 3854925i64;
                    };
                } else if (__value__ == (3854760i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L252"
                    _b._push(_re, _pc_2, (@:checkr _b ?? throw "null pointer dereference")._cap[((@:checkr _inst_5 ?? throw "null pointer dereference").arg : stdgo.GoInt)], true);
                    (@:checkr _b ?? throw "null pointer dereference")._cap[((@:checkr _inst_5 ?? throw "null pointer dereference").arg : stdgo.GoInt)] = _pos_3;
                    _gotoNext = 3854925i64;
                } else if (__value__ == (3854925i64)) {
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").out;
                    _gotoNext = 3852739i64;
                } else if (__value__ == (3854969i64)) {
                    _flag_14 = _i._context(_pos_3);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L261"
                    if (!_flag_14._match(((@:checkr _inst_5 ?? throw "null pointer dereference").arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3855067i64;
                    } else {
                        _gotoNext = 3855090i64;
                    };
                } else if (__value__ == (3855067i64)) {
                    0i64;
                    _gotoNext = 3852287i64;
                } else if (__value__ == (3855090i64)) {
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").out;
                    _gotoNext = 3852739i64;
                } else if (__value__ == (3855128i64)) {
                    _pc_2 = (@:checkr _inst_5 ?? throw "null pointer dereference").out;
                    _gotoNext = 3852739i64;
                } else if (__value__ == (3855190i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L274"
                    if (((@:checkr _b ?? throw "null pointer dereference")._cap.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3855336i64;
                    } else {
                        _gotoNext = 3855502i64;
                    };
                } else if (__value__ == (3855336i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L275"
                    return true;
                    _gotoNext = 3855502i64;
                } else if (__value__ == (3855502i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L281"
                    if ((((@:checkr _b ?? throw "null pointer dereference")._cap.length) > (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3855520i64;
                    } else {
                        _gotoNext = 3855549i64;
                    };
                } else if (__value__ == (3855520i64)) {
                    (@:checkr _b ?? throw "null pointer dereference")._cap[(1 : stdgo.GoInt)] = _pos_3;
                    _gotoNext = 3855549i64;
                } else if (__value__ == (3855549i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L284"
                    {
                        _old_15 = (@:checkr _b ?? throw "null pointer dereference")._matchcap[(1 : stdgo.GoInt)];
                        if (((_old_15 == (-1 : stdgo.GoInt)) || (((_longest_0 && (_pos_3 > (0 : stdgo.GoInt) : Bool) : Bool) && (_pos_3 > _old_15 : Bool) : Bool)) : Bool)) {
                            _gotoNext = 3855621i64;
                        } else {
                            _gotoNext = 3855704i64;
                        };
                    };
                } else if (__value__ == (3855621i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L285"
                    (@:checkr _b ?? throw "null pointer dereference")._matchcap.__copyTo__((@:checkr _b ?? throw "null pointer dereference")._cap);
                    _gotoNext = 3855704i64;
                } else if (__value__ == (3855704i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L289"
                    if (!_longest_0) {
                        _gotoNext = 3855716i64;
                    } else {
                        _gotoNext = 3855806i64;
                    };
                } else if (__value__ == (3855716i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L290"
                    return true;
                    _gotoNext = 3855806i64;
                } else if (__value__ == (3855806i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L294"
                    if (_pos_3 == ((@:checkr _b ?? throw "null pointer dereference")._end)) {
                        _gotoNext = 3855822i64;
                    } else {
                        _gotoNext = 3855905i64;
                    };
                } else if (__value__ == (3855822i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L295"
                    return true;
                    _gotoNext = 3855905i64;
                } else if (__value__ == (3855905i64)) {
                    0i64;
                    _gotoNext = 3852287i64;
                } else if (__value__ == (3855923i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/backtrack.go#L303"
                    return ((_longest_0 && (((@:checkr _b ?? throw "null pointer dereference")._matchcap.length) > (1 : stdgo.GoInt) : Bool) : Bool) && ((@:checkr _b ?? throw "null pointer dereference")._matchcap[(1 : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool);
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
