package stdgo._internal.regexp.syntax;
class T_parser_asInterface {
    @:keep
    public dynamic function _parseClass(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._parseClass(_s);
    @:keep
    public dynamic function _parseUnicodeClass(_s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value._parseUnicodeClass(_s, _r);
    @:keep
    public dynamic function _appendGroup(_r:stdgo.Slice<stdgo.GoInt32>, _g:stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup):stdgo.Slice<stdgo.GoInt32> return __self__.value._appendGroup(_r, _g);
    @:keep
    public dynamic function _parseNamedClass(_s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value._parseNamedClass(_s, _r);
    @:keep
    public dynamic function _parsePerlClassEscape(_s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; } return __self__.value._parsePerlClassEscape(_s, _r);
    @:keep
    public dynamic function _parseClassChar(_s:stdgo.GoString, _wholeClass:stdgo.GoString):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value._parseClassChar(_s, _wholeClass);
    @:keep
    public dynamic function _parseEscape(_s:stdgo.GoString):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value._parseEscape(_s);
    @:keep
    public dynamic function _parseRightParen():stdgo.Error return __self__.value._parseRightParen();
    @:keep
    public dynamic function _swapVerticalBar():Bool return __self__.value._swapVerticalBar();
    @:keep
    public dynamic function _parseVerticalBar():stdgo.Error return __self__.value._parseVerticalBar();
    @:keep
    public dynamic function _parseInt(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } return __self__.value._parseInt(_s);
    @:keep
    public dynamic function _parsePerlFlags(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._parsePerlFlags(_s);
    @:keep
    public dynamic function _parseRepeat(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; var _3 : Bool; } return __self__.value._parseRepeat(_s);
    @:keep
    public dynamic function _removeLeadingRegexp(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _reuse:Bool):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> return __self__.value._removeLeadingRegexp(_re, _reuse);
    @:keep
    public dynamic function _leadingRegexp(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> return __self__.value._leadingRegexp(_re);
    @:keep
    public dynamic function _removeLeadingString(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _n:stdgo.GoInt):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> return __self__.value._removeLeadingString(_re, _n);
    @:keep
    public dynamic function _leadingString(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags; } return __self__.value._leadingString(_re);
    @:keep
    public dynamic function _factor(_sub:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>):stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>> return __self__.value._factor(_sub);
    @:keep
    public dynamic function _collapse(_subs:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>, _op:stdgo._internal.regexp.syntax.Syntax_Op.Op):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> return __self__.value._collapse(_subs, _op);
    @:keep
    public dynamic function _alternate():stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> return __self__.value._alternate();
    @:keep
    public dynamic function _concat():stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> return __self__.value._concat();
    @:keep
    public dynamic function _repeat(_op:stdgo._internal.regexp.syntax.Syntax_Op.Op, _min:stdgo.GoInt, _max:stdgo.GoInt, _before:stdgo.GoString, _after:stdgo.GoString, _lastRepeat:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._repeat(_op, _min, _max, _before, _after, _lastRepeat);
    @:keep
    public dynamic function _op(_op:stdgo._internal.regexp.syntax.Syntax_Op.Op):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> return __self__.value._op(_op);
    @:keep
    public dynamic function _literal(_r:stdgo.GoInt32):Void __self__.value._literal(_r);
    @:keep
    public dynamic function _maybeConcat(_r:stdgo.GoInt32, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):Bool return __self__.value._maybeConcat(_r, _flags);
    @:keep
    public dynamic function _push(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> return __self__.value._push(_re);
    @:keep
    public dynamic function _calcHeight(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _force:Bool):stdgo.GoInt return __self__.value._calcHeight(_re, _force);
    @:keep
    public dynamic function _checkHeight(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Void __self__.value._checkHeight(_re);
    @:keep
    public dynamic function _calcSize(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _force:Bool):stdgo.GoInt64 return __self__.value._calcSize(_re, _force);
    @:keep
    public dynamic function _checkSize(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Void __self__.value._checkSize(_re);
    @:keep
    public dynamic function _checkLimits(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Void __self__.value._checkLimits(_re);
    @:keep
    public dynamic function _reuse(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Void __self__.value._reuse(_re);
    @:keep
    public dynamic function _newRegexp(_op:stdgo._internal.regexp.syntax.Syntax_Op.Op):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> return __self__.value._newRegexp(_op);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
