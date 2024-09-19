package stdgo._internal.regexp;
typedef T_input = stdgo.StructType & {
    /**
        
        
        advance one rune
    **/
    public dynamic function _step(_pos:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; };
    /**
        
        
        can we look ahead without losing info?
    **/
    public dynamic function _canCheckPrefix():Bool;
    /**
        
        
        
    **/
    public dynamic function _hasPrefix(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):Bool;
    /**
        
        
        
    **/
    public dynamic function _index(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _pos:stdgo.GoInt):stdgo.GoInt;
    /**
        
        
        
    **/
    public dynamic function _context(_pos:stdgo.GoInt):stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag;
};
