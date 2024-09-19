package stdgo._internal.sort;
@:keep @:allow(stdgo._internal.sort.Sort.T_reverse_asInterface) class T_reverse_static_extension {
    @:keep
    static public function less( _r:stdgo._internal.sort.Sort_T_reverse.T_reverse, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _r:stdgo._internal.sort.Sort_T_reverse.T_reverse = _r?.__copy__();
        return _r.interface_.less(_j, _i);
    }
    @:embedded
    public static function swap( __self__:stdgo._internal.sort.Sort_T_reverse.T_reverse, _i:stdgo.GoInt, _j:stdgo.GoInt) __self__.swap(_i, _j);
    @:embedded
    public static function len( __self__:stdgo._internal.sort.Sort_T_reverse.T_reverse):stdgo.GoInt return __self__.len();
}
