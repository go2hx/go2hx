package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_rot13Reader_asInterface) class T_rot13Reader_static_extension {
    @:keep
    static public function read( _r13:stdgo.Ref<_internal.bufio_test.Bufio_test_T_rot13Reader.T_rot13Reader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r13:stdgo.Ref<_internal.bufio_test.Bufio_test_T_rot13Reader.T_rot13Reader> = _r13;
        var __tmp__ = _r13._r.read(_p), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                var _c = (_p[(_i : stdgo.GoInt)] | (32 : stdgo.GoUInt8) : stdgo.GoUInt8);
                if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (109 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _p[(_i : stdgo.GoInt)] = (_p[(_i : stdgo.GoInt)] + ((13 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                } else if ((((110 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _p[(_i : stdgo.GoInt)] = (_p[(_i : stdgo.GoInt)] - ((13 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
            });
        };
        return { _0 : _n, _1 : _err };
    }
}
