package stdgo._internal.math.big;
function testFloatCorruptGob(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _tx = @:check2r @:check2r stdgo._internal.math.big.Big_newFloat.newFloat((1 : stdgo.GoFloat64)).setPrec((1000u32 : stdgo.GoUInt)).setMode((5 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode));
        {
            var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>))).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_tx))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _b = @:check2 _buf.bytes();
        var _rx:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
        {
            var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_b))).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>)))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((_b.__slice__(0, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>)))) : stdgo.Error);
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF))) {
                @:check2r _t.errorf(("got %v want EOF" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _b[(1 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        {
            var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_b))).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>)))) : stdgo.Error);
            if (_err == null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("got nil want version error" : stdgo.GoString)));
            };
        };
    }
