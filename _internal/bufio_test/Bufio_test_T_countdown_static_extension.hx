package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_countdown_asInterface) class T_countdown_static_extension {
    @:keep
    @:pointer
    static public function _split(____:_internal.bufio_test.Bufio_test_T_countdown.T_countdown,  _c:stdgo.Pointer<_internal.bufio_test.Bufio_test_T_countdown.T_countdown>, _data:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        var _advance = (0 : stdgo.GoInt), _token = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        if ((_c.value > (0 : _internal.bufio_test.Bufio_test_T_countdown.T_countdown) : Bool)) {
            _c.value--;
            return { _0 : (1 : stdgo.GoInt), _1 : (_data.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
    }
}
