package stdgo._internal.encoding.hex;
function testDump(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _in:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(40, 40, ...[for (i in 0 ... 40) (0 : stdgo.GoUInt8)]);
        for (_i => _ in _in) {
            _in[(_i : stdgo.GoInt)] = ((_i + (30 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        };
        var _out = (stdgo._internal.encoding.hex.Hex_dump.dump((_in.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        if (!stdgo._internal.bytes.Bytes_equal.equal(_out, stdgo._internal.encoding.hex.Hex__expectedHexDump._expectedHexDump)) {
            _t.errorf(("got:\n%s\nwant:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(stdgo._internal.encoding.hex.Hex__expectedHexDump._expectedHexDump));
        };
    }
