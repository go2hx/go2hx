package stdgo._internal.encoding.ascii85;
function testBig(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _n = (3001 : stdgo.GoInt);
        var _raw = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {};
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L176"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _raw[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString)[(_i % ((("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)];
                _i++;
            };
        };
        var _encoded = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _w = (stdgo._internal.encoding.ascii85.Ascii85_newencoder.newEncoder(stdgo.Go.asInterface(_encoded)) : stdgo._internal.io.Io_writecloser.WriteCloser);
        var __tmp__ = _w.write(_raw), _nn:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L182"
        if (((_nn != _n) || (_err != null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L183"
            _t.fatalf(("Encoder.Write(raw) = %d, %v want %d, nil" : stdgo.GoString), stdgo.Go.toInterface(_nn), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_n));
        };
        _err = _w.close();
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L186"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L187"
            _t.fatalf(("Encoder.Close() = %v want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.io.Io_readall.readAll(stdgo._internal.encoding.ascii85.Ascii85_newdecoder.newDecoder(stdgo.Go.asInterface(_encoded))), _decoded:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L190"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L191"
            _t.fatalf(("io.ReadAll(NewDecoder(...)): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L194"
        if (!stdgo._internal.bytes.Bytes_equal.equal(_raw, _decoded)) {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L196"
            {
                _i = (0 : stdgo.GoInt);
                while (((_i < (_decoded.length) : Bool) && (_i < (_raw.length) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L197"
                    if (_decoded[(_i : stdgo.GoInt)] != (_raw[(_i : stdgo.GoInt)])) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L198"
                        break;
                    };
                    _i++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L201"
            _t.errorf(("Decode(Encode(%d-byte string)) failed at offset %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i));
        };
    }
