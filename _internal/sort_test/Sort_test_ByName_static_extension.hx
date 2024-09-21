package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.sort_test.Sort_test.ByName_asInterface) class ByName_static_extension {
    @:keep
    static public function less( _s:_internal.sort_test.Sort_test_ByName.ByName, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:_internal.sort_test.Sort_test_ByName.ByName = _s?.__copy__();
        return (_s.organs[(_i : stdgo.GoInt)].name < _s.organs[(_j : stdgo.GoInt)].name : Bool);
    }
    @:embedded
    public static function swap( __self__:_internal.sort_test.Sort_test_ByName.ByName, _i:stdgo.GoInt, _j:stdgo.GoInt) __self__.swap(_i, _j);
    @:embedded
    public static function len( __self__:_internal.sort_test.Sort_test_ByName.ByName):stdgo.GoInt return __self__.len();
}
