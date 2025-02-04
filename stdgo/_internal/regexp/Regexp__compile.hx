package stdgo._internal.regexp;
function _compile(_expr:stdgo.GoString, _mode:stdgo._internal.regexp.syntax.Syntax_flags.Flags, _longest:Bool):{ var _0 : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_expr?.__copy__(), _mode), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _maxCap = (@:check2r _re.maxCap() : stdgo.GoInt);
        var _capNames = @:check2r _re.capNames();
        _re = @:check2r _re.simplify();
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax_compile.compile(_re), _prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _matchcap = ((@:checkr _prog ?? throw "null pointer dereference").numCap : stdgo.GoInt);
        if ((_matchcap < (2 : stdgo.GoInt) : Bool)) {
            _matchcap = (2 : stdgo.GoInt);
        };
        var _regexp = (stdgo.Go.setRef(({ _expr : _expr?.__copy__(), _prog : _prog, _onepass : stdgo._internal.regexp.Regexp__compileonepass._compileOnePass(_prog), _numSubexp : _maxCap, _subexpNames : _capNames, _cond : @:check2r _prog.startCond(), _longest : _longest, _matchcap : _matchcap, _minInputLen : stdgo._internal.regexp.Regexp__mininputlen._minInputLen(_re) } : stdgo._internal.regexp.Regexp_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        if (((@:checkr _regexp ?? throw "null pointer dereference")._onepass == null || ((@:checkr _regexp ?? throw "null pointer dereference")._onepass : Dynamic).__nil__)) {
            {
                var __tmp__ = @:check2r _prog.prefix();
                (@:checkr _regexp ?? throw "null pointer dereference")._prefix = @:tmpset0 __tmp__._0?.__copy__();
                (@:checkr _regexp ?? throw "null pointer dereference")._prefixComplete = @:tmpset0 __tmp__._1;
            };
            (@:checkr _regexp ?? throw "null pointer dereference")._maxBitStateLen = stdgo._internal.regexp.Regexp__maxbitstatelen._maxBitStateLen(_prog);
        } else {
            {
                var __tmp__ = stdgo._internal.regexp.Regexp__onepassprefix._onePassPrefix(_prog);
                (@:checkr _regexp ?? throw "null pointer dereference")._prefix = @:tmpset0 __tmp__._0?.__copy__();
                (@:checkr _regexp ?? throw "null pointer dereference")._prefixComplete = @:tmpset0 __tmp__._1;
                (@:checkr _regexp ?? throw "null pointer dereference")._prefixEnd = @:tmpset0 __tmp__._2;
            };
        };
        if ((@:checkr _regexp ?? throw "null pointer dereference")._prefix != ((stdgo.Go.str() : stdgo.GoString))) {
            (@:checkr _regexp ?? throw "null pointer dereference")._prefixBytes = ((@:checkr _regexp ?? throw "null pointer dereference")._prefix : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((@:checkr _regexp ?? throw "null pointer dereference")._prefix?.__copy__());
                (@:checkr _regexp ?? throw "null pointer dereference")._prefixRune = @:tmpset0 __tmp__._0;
            };
        };
        var _n = ((@:checkr _prog ?? throw "null pointer dereference").inst.length : stdgo.GoInt);
        var _i = (0 : stdgo.GoInt);
        while (((stdgo._internal.regexp.Regexp__matchsize._matchSize[(_i : stdgo.GoInt)] != (0 : stdgo.GoInt)) && (stdgo._internal.regexp.Regexp__matchsize._matchSize[(_i : stdgo.GoInt)] < _n : Bool) : Bool)) {
            _i++;
        };
        (@:checkr _regexp ?? throw "null pointer dereference")._mpool = _i;
        return { _0 : _regexp, _1 : (null : stdgo.Error) };
    }
