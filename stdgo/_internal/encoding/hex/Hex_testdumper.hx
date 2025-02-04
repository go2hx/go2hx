package stdgo._internal.encoding.hex;
function testDumper(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _in:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(40, 40).__setNumber32__();
        for (_i => _ in _in) {
            _in[(_i : stdgo.GoInt)] = ((_i + (30 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        };
        {
            var _stride = (1 : stdgo.GoInt);
            while ((_stride < (_in.length) : Bool)) {
                var _out:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
var _dumper = (stdgo._internal.encoding.hex.Hex_dumper.dumper(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))) : stdgo._internal.io.Io_writecloser.WriteCloser);
var _done = (0 : stdgo.GoInt);
while ((_done < (_in.length) : Bool)) {
                    var _todo = (_done + _stride : stdgo.GoInt);
                    if ((_todo > (_in.length) : Bool)) {
                        _todo = (_in.length);
                    };
                    _dumper.write((_in.__slice__(_done, _todo) : stdgo.Slice<stdgo.GoUInt8>));
                    _done = _todo;
                };
_dumper.close();
if (!stdgo._internal.bytes.Bytes_equal.equal(@:check2 _out.bytes(), stdgo._internal.encoding.hex.Hex__expectedhexdump._expectedHexDump)) {
                    @:check2r _t.errorf(("stride: %d failed. got:\n%s\nwant:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_stride), stdgo.Go.toInterface(@:check2 _out.bytes()), stdgo.Go.toInterface(stdgo._internal.encoding.hex.Hex__expectedhexdump._expectedHexDump));
                };
                _stride++;
            };
        };
    }
