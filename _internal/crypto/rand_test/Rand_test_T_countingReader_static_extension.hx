package _internal.crypto.rand_test;
@:keep @:allow(_internal.crypto.rand_test.Rand_test.T_countingReader_asInterface) class T_countingReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<_internal.crypto.rand_test.Rand_test_T_countingReader.T_countingReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.crypto.rand_test.Rand_test_T_countingReader.T_countingReader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = _r._r.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _r._n = (_r._n + (_n) : stdgo.GoInt);
        return { _0 : _n, _1 : _err };
    }
}
