package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function _createTestInput(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        var _input = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _input) {
            _input[(_i : stdgo.GoInt)] = ((_i % (251 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
            if ((_i % (101 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                _input[(_i : stdgo.GoInt)] = (_input[(_i : stdgo.GoInt)] ^ (((_i / (101 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
        };
        return _input;
    }
