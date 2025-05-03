package stdgo._internal.encoding.hex;
function testDumper(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _in:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(40, 40).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L166"
        for (_i => _ in _in.__copy__()) {
            _in[(_i : stdgo.GoInt)] = ((_i + (30 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L170"
        {
            var _stride = (1 : stdgo.GoInt);
            while ((_stride < (_in.length) : Bool)) {
                var _out:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
var _dumper = (stdgo._internal.encoding.hex.Hex_dumper.dumper(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))) : stdgo._internal.io.Io_writecloser.WriteCloser);
var _done = (0 : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L174"
                while ((_done < (_in.length) : Bool)) {
                    var _todo = (_done + _stride : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L176"
                    if ((_todo > (_in.length) : Bool)) {
                        _todo = (_in.length);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L179"
                    _dumper.write((_in.__slice__(_done, _todo) : stdgo.Slice<stdgo.GoUInt8>));
                    _done = _todo;
                };
//"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L183"
                _dumper.close();
//"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L184"
                if (!stdgo._internal.bytes.Bytes_equal.equal(_out.bytes(), stdgo._internal.encoding.hex.Hex__expectedhexdump._expectedHexDump)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L185"
                    _t.errorf(("stride: %d failed. got:\n%s\nwant:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_stride), stdgo.Go.toInterface(_out.bytes()), stdgo.Go.toInterface(stdgo._internal.encoding.hex.Hex__expectedhexdump._expectedHexDump));
                };
                _stride++;
            };
        };
    }
