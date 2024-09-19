package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_scriptedReader_asInterface) class T_scriptedReader_static_extension {
    @:keep
    static public function read( _sr:stdgo.Ref<_internal.bufio_test.Bufio_test_T_scriptedReader.T_scriptedReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _sr:stdgo.Ref<_internal.bufio_test.Bufio_test_T_scriptedReader.T_scriptedReader> = _sr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_sr : _internal.bufio_test.Bufio_test_T_scriptedReader.T_scriptedReader).length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("too many Read calls on scripted Reader. No steps remain." : stdgo.GoString));
        };
        var _step = ((_sr : _internal.bufio_test.Bufio_test_T_scriptedReader.T_scriptedReader))[(0 : stdgo.GoInt)];
        (_sr : _internal.bufio_test.Bufio_test_T_scriptedReader.T_scriptedReader).__setData__((((_sr : _internal.bufio_test.Bufio_test_T_scriptedReader.T_scriptedReader)).__slice__((1 : stdgo.GoInt)) : _internal.bufio_test.Bufio_test_T_scriptedReader.T_scriptedReader));
        return _step(_p);
    }
}
