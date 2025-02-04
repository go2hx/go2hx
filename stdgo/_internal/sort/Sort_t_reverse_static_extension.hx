package stdgo._internal.sort;
@:keep @:allow(stdgo._internal.sort.Sort.T_reverse_asInterface) class T_reverse_static_extension {
    @:keep
    @:tdfield
    static public function less( _r:stdgo._internal.sort.Sort_t_reverse.T_reverse, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _r:stdgo._internal.sort.Sort_t_reverse.T_reverse = _r?.__copy__();
        return _r.interface_.less(_j, _i);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function swap( __self__:stdgo._internal.sort.Sort_t_reverse.T_reverse, _0:stdgo.GoInt, _1:stdgo.GoInt):Void return @:_5 __self__.swap(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function len( __self__:stdgo._internal.sort.Sort_t_reverse.T_reverse):stdgo.GoInt return @:_5 __self__.len();
}
