package stdgo._internal.regexp;
function _compile(_expr:stdgo.GoString, _mode:stdgo._internal.regexp.syntax.Syntax_Flags.Flags, _longest:Bool):{ var _0 : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_expr?.__copy__(), _mode), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _maxCap = (_re.maxCap() : stdgo.GoInt);
        var _capNames = _re.capNames();
        _re = _re.simplify();
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax_compile.compile(_re), _prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _matchcap = (_prog.numCap : stdgo.GoInt);
        if ((_matchcap < (2 : stdgo.GoInt) : Bool)) {
            _matchcap = (2 : stdgo.GoInt);
        };
        var _regexp = (stdgo.Go.setRef(({ _expr : _expr?.__copy__(), _prog : _prog, _onepass : stdgo._internal.regexp.Regexp__compileOnePass._compileOnePass(_prog), _numSubexp : _maxCap, _subexpNames : _capNames, _cond : _prog.startCond(), _longest : _longest, _matchcap : _matchcap, _minInputLen : stdgo._internal.regexp.Regexp__minInputLen._minInputLen(_re) } : stdgo._internal.regexp.Regexp_Regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        if (_regexp._onepass == null || (_regexp._onepass : Dynamic).__nil__) {
            {
                var __tmp__ = _prog.prefix();
                _regexp._prefix = __tmp__._0?.__copy__();
                _regexp._prefixComplete = __tmp__._1;
            };
            _regexp._maxBitStateLen = stdgo._internal.regexp.Regexp__maxBitStateLen._maxBitStateLen(_prog);
        } else {
            {
                var __tmp__ = stdgo._internal.regexp.Regexp__onePassPrefix._onePassPrefix(_prog);
                _regexp._prefix = __tmp__._0?.__copy__();
                _regexp._prefixComplete = __tmp__._1;
                _regexp._prefixEnd = __tmp__._2;
            };
        };
        if (_regexp._prefix != (stdgo.Go.str())) {
            _regexp._prefixBytes = (_regexp._prefix : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_regexp._prefix?.__copy__());
                _regexp._prefixRune = __tmp__._0;
            };
        };
        var _n = (_prog.inst.length : stdgo.GoInt);
        var _i = (0 : stdgo.GoInt);
        while (((stdgo._internal.regexp.Regexp__matchSize._matchSize[(_i : stdgo.GoInt)] != (0 : stdgo.GoInt)) && (stdgo._internal.regexp.Regexp__matchSize._matchSize[(_i : stdgo.GoInt)] < _n : Bool) : Bool)) {
            _i++;
        };
        _regexp._mpool = _i;
        return { _0 : _regexp, _1 : (null : stdgo.Error) };
    }
