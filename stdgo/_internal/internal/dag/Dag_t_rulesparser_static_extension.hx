package stdgo._internal.internal.dag;
@:keep @:allow(stdgo._internal.internal.dag.Dag.T_rulesParser_asInterface) class T_rulesParser_static_extension {
    @:keep
    @:tdfield
    static public function _nextToken( _p:stdgo.Ref<stdgo._internal.internal.dag.Dag_t_rulesparser.T_rulesParser>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.dag.Dag_t_rulesparser.T_rulesParser> = _p;
        while (true) {
            if ((@:checkr _p ?? throw "null pointer dereference")._text == ((stdgo.Go.str() : stdgo.GoString))) {
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
            {
                var __continue__ = false;
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = (@:checkr _p ?? throw "null pointer dereference")._text[(0 : stdgo.GoInt)];
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((44 : stdgo.GoUInt8)) || __value__ == ((60 : stdgo.GoUInt8))))) {
                            var _t = (((@:checkr _p ?? throw "null pointer dereference")._text.__slice__(0, (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            (@:checkr _p ?? throw "null pointer dereference")._text = ((@:checkr _p ?? throw "null pointer dereference")._text.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            return _t?.__copy__();
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (33 : stdgo.GoUInt8)))) {
                            if (((((@:checkr _p ?? throw "null pointer dereference")._text.length) < (2 : stdgo.GoInt) : Bool) || ((@:checkr _p ?? throw "null pointer dereference")._text[(1 : stdgo.GoInt)] != (60 : stdgo.GoUInt8)) : Bool)) {
                                @:check2r _p._syntaxError(("unexpected token !" : stdgo.GoString));
                            };
                            (@:checkr _p ?? throw "null pointer dereference")._text = ((@:checkr _p ?? throw "null pointer dereference")._text.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            return ("!<" : stdgo.GoString);
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (35 : stdgo.GoUInt8)))) {
                            var _i = (stdgo._internal.strings.Strings_index.index((@:checkr _p ?? throw "null pointer dereference")._text?.__copy__(), ("\n" : stdgo.GoString)) : stdgo.GoInt);
                            if ((_i < (0 : stdgo.GoInt) : Bool)) {
                                _i = ((@:checkr _p ?? throw "null pointer dereference")._text.length);
                            };
                            (@:checkr _p ?? throw "null pointer dereference")._text = ((@:checkr _p ?? throw "null pointer dereference")._text.__slice__(_i) : stdgo.GoString)?.__copy__();
                            {
                                __continue__ = true;
                                break;
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (10 : stdgo.GoUInt8)))) {
                            (@:checkr _p ?? throw "null pointer dereference")._lineno++;
                            @:fallthrough {
                                __switchIndex__ = 4;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == ((32 : stdgo.GoUInt8)) || __value__ == ((9 : stdgo.GoUInt8))))) {
                            (@:checkr _p ?? throw "null pointer dereference")._text = ((@:checkr _p ?? throw "null pointer dereference")._text.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            {
                                __continue__ = true;
                                break;
                            };
                            break;
                            break;
                        } else {
                            var _i = (stdgo._internal.strings.Strings_indexany.indexAny((@:checkr _p ?? throw "null pointer dereference")._text?.__copy__(), ("!;,<#\n \t" : stdgo.GoString)) : stdgo.GoInt);
                            if ((_i < (0 : stdgo.GoInt) : Bool)) {
                                _i = ((@:checkr _p ?? throw "null pointer dereference")._text.length);
                            };
                            var _t = (((@:checkr _p ?? throw "null pointer dereference")._text.__slice__(0, _i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            (@:checkr _p ?? throw "null pointer dereference")._text = ((@:checkr _p ?? throw "null pointer dereference")._text.__slice__(_i) : stdgo.GoString)?.__copy__();
                            (@:checkr _p ?? throw "null pointer dereference")._lastWord = _t?.__copy__();
                            return _t?.__copy__();
                            break;
                        };
                    };
                    break;
                };
                if (__continue__) continue;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _nextList( _p:stdgo.Ref<stdgo._internal.internal.dag.Dag_t_rulesparser.T_rulesParser>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.GoString; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.dag.Dag_t_rulesparser.T_rulesParser> = _p;
        var _list = (null : stdgo.Slice<stdgo.GoString>), _token = ("" : stdgo.GoString);
        while (true) {
            var _tok = (@:check2r _p._nextToken()?.__copy__() : stdgo.GoString);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _tok;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (stdgo.Go.str() : stdgo.GoString)))) {
                            if ((_list.length) == ((0 : stdgo.GoInt))) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.GoString; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
                                    _list = __tmp__._0;
                                    _token = __tmp__._1;
                                    __tmp__;
                                };
                            };
                            @:fallthrough {
                                __switchIndex__ = 1;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (("," : stdgo.GoString)) || __value__ == (("<" : stdgo.GoString)) || __value__ == (("!<" : stdgo.GoString)) || __value__ == ((";" : stdgo.GoString))))) {
                            @:check2r _p._syntaxError(("bad list syntax" : stdgo.GoString));
                            break;
                            break;
                        };
                    };
                    break;
                };
            };
            _list = (_list.__append__(_tok?.__copy__()));
            _tok = @:check2r _p._nextToken()?.__copy__();
            if (_tok != (("," : stdgo.GoString))) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.GoString; } = { _0 : _list, _1 : _tok?.__copy__() };
                    _list = __tmp__._0;
                    _token = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _syntaxError( _p:stdgo.Ref<stdgo._internal.internal.dag.Dag_t_rulesparser.T_rulesParser>, _msg:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.dag.Dag_t_rulesparser.T_rulesParser> = _p;
        throw stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo._internal.fmt.Fmt_sprintf.sprintf(("parsing graph: line %d: syntax error: %s near %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._lineno), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._lastWord)) : stdgo._internal.internal.dag.Dag_t_syntaxerror.T_syntaxError)));
    }
}
