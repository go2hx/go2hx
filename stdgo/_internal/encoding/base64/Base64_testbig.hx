package stdgo._internal.encoding.base64;
function testBig(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _n = (3001 : stdgo.GoInt);
        var _raw = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {};
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _raw[(_i : stdgo.GoInt)] = ("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString)[(_i % ((("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)];
                _i++;
            };
        };
        var _encoded = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _w = (stdgo._internal.encoding.base64.Base64_newencoder.newEncoder(stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding, stdgo.Go.asInterface(_encoded)) : stdgo._internal.io.Io_writecloser.WriteCloser);
        var __tmp__ = _w.write(_raw), _nn:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_nn != _n) || (_err != null) : Bool)) {
            @:check2r _t.fatalf(("Encoder.Write(raw) = %d, %v want %d, nil" : stdgo.GoString), stdgo.Go.toInterface(_nn), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_n));
        };
        _err = _w.close();
        if (_err != null) {
            @:check2r _t.fatalf(("Encoder.Close() = %v want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.io.Io_readall.readAll(stdgo._internal.encoding.base64.Base64_newdecoder.newDecoder(stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding, stdgo.Go.asInterface(_encoded))), _decoded:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("io.ReadAll(NewDecoder(...)): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.bytes.Bytes_equal.equal(_raw, _decoded)) {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                _i = (0 : stdgo.GoInt);
                while (((_i < (_decoded.length) : Bool) && (_i < (_raw.length) : Bool) : Bool)) {
                    if (_decoded[(_i : stdgo.GoInt)] != (_raw[(_i : stdgo.GoInt)])) {
                        break;
                    };
                    _i++;
                };
            };
            @:check2r _t.errorf(("Decode(Encode(%d-byte string)) failed at offset %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i));
        };
    }
