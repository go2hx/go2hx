package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
class T_bracketPairer_asInterface {
    @:keep
    public dynamic function _resolveBrackets(_dirEmbed:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_, _initialTypes:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>):Void __self__.value._resolveBrackets(_dirEmbed, _initialTypes);
    @:keep
    public dynamic function _setBracketsToType(_loc:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPair.T_bracketPair, _dirPair:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_, _initialTypes:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>):Void __self__.value._setBracketsToType(_loc, _dirPair, _initialTypes);
    @:keep
    public dynamic function _assignBracketType(_loc:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPair.T_bracketPair, _dirEmbed:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_, _initialTypes:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>):Void __self__.value._assignBracketType(_loc, _dirEmbed, _initialTypes);
    @:keep
    public dynamic function _classBeforePair(_loc:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPair.T_bracketPair):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_ return __self__.value._classBeforePair(_loc);
    @:keep
    public dynamic function _classifyPairContent(_loc:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPair.T_bracketPair, _dirEmbed:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_ return __self__.value._classifyPairContent(_loc, _dirEmbed);
    @:keep
    public dynamic function _getStrongTypeN0(_index:stdgo.GoInt):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_ return __self__.value._getStrongTypeN0(_index);
    @:keep
    public dynamic function _locateBrackets(_pairTypes:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType>, _pairValues:stdgo.Slice<stdgo.GoInt32>):Void __self__.value._locateBrackets(_pairTypes, _pairValues);
    @:keep
    public dynamic function _matchOpener(_pairValues:stdgo.Slice<stdgo.GoInt32>, _opener:stdgo.GoInt, _closer:stdgo.GoInt):Bool return __self__.value._matchOpener(_pairValues, _opener, _closer);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer.T_bracketPairer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
