package stdgo.regexp.syntax;
class T_parser_static_extension {
    static public function _parseClass(_p:T_parser, _s:String):stdgo.Tuple<String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parseClass(_p, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseUnicodeClass(_p:T_parser, _s:String, _r:Array<StdTypes.Int>):stdgo.Tuple.Tuple3<Array<StdTypes.Int>, String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _s = (_s : stdgo.GoString);
        final _r = ([for (i in _r) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parseUnicodeClass(_p, _s, _r);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _appendGroup(_p:T_parser, _r:Array<StdTypes.Int>, _g:T_charGroup):Array<StdTypes.Int> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _r = ([for (i in _r) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return [for (i in stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._appendGroup(_p, _r, _g)) i];
    }
    static public function _parseNamedClass(_p:T_parser, _s:String, _r:Array<StdTypes.Int>):stdgo.Tuple.Tuple3<Array<StdTypes.Int>, String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _s = (_s : stdgo.GoString);
        final _r = ([for (i in _r) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parseNamedClass(_p, _s, _r);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _parsePerlClassEscape(_p:T_parser, _s:String, _r:Array<StdTypes.Int>):stdgo.Tuple<Array<StdTypes.Int>, String> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _s = (_s : stdgo.GoString);
        final _r = ([for (i in _r) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parsePerlClassEscape(_p, _s, _r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _parseClassChar(_p:T_parser, _s:String, _wholeClass:String):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _s = (_s : stdgo.GoString);
        final _wholeClass = (_wholeClass : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parseClassChar(_p, _s, _wholeClass);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _parseEscape(_p:T_parser, _s:String):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parseEscape(_p, _s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _parseRightParen(_p:T_parser):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parseRightParen(_p);
    }
    static public function _swapVerticalBar(_p:T_parser):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._swapVerticalBar(_p);
    }
    static public function _parseVerticalBar(_p:T_parser):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parseVerticalBar(_p);
    }
    static public function _parseInt(_p:T_parser, _s:String):stdgo.Tuple.Tuple3<StdTypes.Int, String, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parseInt(_p, _s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _parsePerlFlags(_p:T_parser, _s:String):stdgo.Tuple<String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parsePerlFlags(_p, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseRepeat(_p:T_parser, _s:String):stdgo.Tuple.Tuple4<StdTypes.Int, StdTypes.Int, String, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._parseRepeat(_p, _s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function _removeLeadingRegexp(_p:T_parser, _re:Regexp, _reuse:Bool):Regexp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._removeLeadingRegexp(_p, _re, _reuse);
    }
    static public function _leadingRegexp(_p:T_parser, _re:Regexp):Regexp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._leadingRegexp(_p, _re);
    }
    static public function _removeLeadingString(_p:T_parser, _re:Regexp, _n:StdTypes.Int):Regexp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._removeLeadingString(_p, _re, _n);
    }
    static public function _leadingString(_p:T_parser, _re:Regexp):stdgo.Tuple<Array<StdTypes.Int>, Flags> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._leadingString(_p, _re);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _factor(_p:T_parser, _sub:Array<Regexp>):Array<Regexp> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _sub = ([for (i in _sub) (i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        return [for (i in stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._factor(_p, _sub)) i];
    }
    static public function _collapse(_p:T_parser, _subs:Array<Regexp>, _op:Op):Regexp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _subs = ([for (i in _subs) (i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._collapse(_p, _subs, _op);
    }
    static public function _alternate(_p:T_parser):Regexp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._alternate(_p);
    }
    static public function _concat(_p:T_parser):Regexp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._concat(_p);
    }
    static public function _repeat(_p:T_parser, _op:Op, _min:StdTypes.Int, _max:StdTypes.Int, _before:String, _after:String, _lastRepeat:String):stdgo.Tuple<String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _min = (_min : stdgo.GoInt);
        final _max = (_max : stdgo.GoInt);
        final _before = (_before : stdgo.GoString);
        final _after = (_after : stdgo.GoString);
        final _lastRepeat = (_lastRepeat : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._repeat(_p, _op, _min, _max, _before, _after, _lastRepeat);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _op(_p:T_parser, _op:Op):Regexp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._op(_p, _op);
    }
    static public function _literal(_p:T_parser, _r:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _r = (_r : stdgo.GoInt32);
        stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._literal(_p, _r);
    }
    static public function _maybeConcat(_p:T_parser, _r:StdTypes.Int, _flags:Flags):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._maybeConcat(_p, _r, _flags);
    }
    static public function _push(_p:T_parser, _re:Regexp):Regexp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._push(_p, _re);
    }
    static public function _calcHeight(_p:T_parser, _re:Regexp, _force:Bool):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._calcHeight(_p, _re, _force);
    }
    static public function _checkHeight(_p:T_parser, _re:Regexp):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._checkHeight(_p, _re);
    }
    static public function _calcSize(_p:T_parser, _re:Regexp, _force:Bool):haxe.Int64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._calcSize(_p, _re, _force);
    }
    static public function _checkSize(_p:T_parser, _re:Regexp):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._checkSize(_p, _re);
    }
    static public function _checkLimits(_p:T_parser, _re:Regexp):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._checkLimits(_p, _re);
    }
    static public function _reuse(_p:T_parser, _re:Regexp):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._reuse(_p, _re);
    }
    static public function _newRegexp(_p:T_parser, _op:Op):Regexp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>);
        return stdgo._internal.regexp.syntax.Syntax_T_parser_static_extension.T_parser_static_extension._newRegexp(_p, _op);
    }
}
