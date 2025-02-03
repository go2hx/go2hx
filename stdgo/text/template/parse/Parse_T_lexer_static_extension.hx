package stdgo.text.template.parse;
class T_lexer_static_extension {
    static public function _scanNumber(_l:T_lexer):Bool {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>);
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._scanNumber(_l);
    }
    static public function _atTerminator(_l:T_lexer):Bool {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>);
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._atTerminator(_l);
    }
    static public function _atRightDelim(_l:T_lexer):stdgo.Tuple<Bool, Bool> {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>);
        return {
            final obj = stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._atRightDelim(_l);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _nextItem(_l:T_lexer):T_item {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>);
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._nextItem(_l);
    }
    static public function _errorf(_l:T_lexer, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):T_stateFn {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>);
        final _format = (_format : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._errorf(_l, _format, ...[for (i in _args) i]);
    }
    static public function _acceptRun(_l:T_lexer, _valid:String):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>);
        final _valid = (_valid : stdgo.GoString);
        stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._acceptRun(_l, _valid);
    }
    static public function _accept(_l:T_lexer, _valid:String):Bool {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>);
        final _valid = (_valid : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._accept(_l, _valid);
    }
    static public function _ignore(_l:T_lexer):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>);
        stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._ignore(_l);
    }
    static public function _emitItem(_l:T_lexer, _i:T_item):T_stateFn {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>);
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._emitItem(_l, _i);
    }
    static public function _emit(_l:T_lexer, _t:T_itemType):T_stateFn {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>);
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._emit(_l, _t);
    }
    static public function _thisItem(_l:T_lexer, _t:T_itemType):T_item {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>);
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._thisItem(_l, _t);
    }
    static public function _backup(_l:T_lexer):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>);
        stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._backup(_l);
    }
    static public function _peek(_l:T_lexer):StdTypes.Int {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>);
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._peek(_l);
    }
    static public function _next(_l:T_lexer):StdTypes.Int {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>);
        return stdgo._internal.text.template.parse.Parse_T_lexer_static_extension.T_lexer_static_extension._next(_l);
    }
}
