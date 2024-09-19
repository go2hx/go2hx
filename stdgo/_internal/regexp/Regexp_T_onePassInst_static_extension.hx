package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_onePassInst_asInterface) class T_onePassInst_static_extension {
    @:embedded
    public static function _op( __self__:stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst):stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp return __self__._op();
    @:embedded
    public static function string( __self__:stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst):stdgo.GoString return __self__.string();
    @:embedded
    public static function matchRunePos( __self__:stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst, _nameOff:stdgo.GoInt32):stdgo.GoInt return __self__.matchRunePos(_nameOff);
    @:embedded
    public static function matchRune( __self__:stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst, _nameOff:stdgo.GoInt32):Bool return __self__.matchRune(_nameOff);
    @:embedded
    public static function matchEmptyWidth( __self__:stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst, _old:stdgo.GoInt32, _new:stdgo.GoInt32):Bool return __self__.matchEmptyWidth(_old, _new);
}
