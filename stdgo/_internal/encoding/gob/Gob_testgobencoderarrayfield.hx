package stdgo._internal.encoding.gob;
function testGobEncoderArrayField(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _a:stdgo._internal.encoding.gob.Gob_gobtestarrayencdec.GobTestArrayEncDec = ({} : stdgo._internal.encoding.gob.Gob_gobtestarrayencdec.GobTestArrayEncDec);
        _a.x = (17 : stdgo.GoInt);
        for (_i => _ in _a.a._a) {
            _a.a._a[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
        };
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtestarrayencdec.GobTestArrayEncDec>)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_gobtestarrayencdec.GobTestArrayEncDec)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtestarrayencdec.GobTestArrayEncDec>);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        for (_i => _v in (@:checkr _x ?? throw "null pointer dereference").a._a) {
            if (_v != ((_i : stdgo.GoUInt8))) {
                @:check2r _t.errorf(("expected %x got %x" : stdgo.GoString), stdgo.Go.toInterface((_i : stdgo.GoUInt8)), stdgo.Go.toInterface(_v));
                break;
            };
        };
    }
