package stdgo._internal.encoding.gob;
function testGobEncoderIndirectArrayField(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _a:stdgo._internal.encoding.gob.Gob_gobtestindirectarrayencdec.GobTestIndirectArrayEncDec = ({} : stdgo._internal.encoding.gob.Gob_gobtestindirectarrayencdec.GobTestIndirectArrayEncDec);
        _a.x = (17 : stdgo.GoInt);
        var _array:stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct = ({} : stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct);
        var _ap = (stdgo.Go.setRef(_array) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct>);
        var _app = (stdgo.Go.setRef(_ap) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct>>);
        _a.a = stdgo.Go.pointer(_app);
        for (_i => _ in _array._a) {
            _array._a[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
        };
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_a))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_gobtestindirectarrayencdec.GobTestIndirectArrayEncDec)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtestindirectarrayencdec.GobTestIndirectArrayEncDec>);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        for (_i => _v in (((@:checkr _x ?? throw "null pointer dereference").a.value : stdgo.Ref<stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct>) : stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct)._a) {
            if (_v != ((_i : stdgo.GoUInt8))) {
                @:check2r _t.errorf(("expected %x got %x" : stdgo.GoString), stdgo.Go.toInterface((_i : stdgo.GoUInt8)), stdgo.Go.toInterface(_v));
                break;
            };
        };
    }
