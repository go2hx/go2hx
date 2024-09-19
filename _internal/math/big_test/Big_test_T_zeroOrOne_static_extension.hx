package _internal.math.big_test;
@:keep @:allow(_internal.math.big_test.Big_test.T_zeroOrOne_asInterface) class T_zeroOrOne_static_extension {
    @:keep
    static public function generate( _:_internal.math.big_test.Big_test_T_zeroOrOne.T_zeroOrOne, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _:_internal.math.big_test.Big_test_T_zeroOrOne.T_zeroOrOne = _?.__copy__();
        return stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new _internal.math.big_test.Big_test_T_zeroOrOne.T_zeroOrOne((_rand.intn((2 : stdgo.GoInt)) : stdgo.GoUInt)) : _internal.math.big_test.Big_test_T_zeroOrOne.T_zeroOrOne))))?.__copy__();
    }
}
