package stdgo._internal.math.big;
function testGobEncodingNilRatInSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf));
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_buf));
        var _in:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>> = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>>((1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>>);
        var _err = (_enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_in) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>>>))) : stdgo.Error);
        if (_err != null) {
            _t.errorf(("gob encode failed: %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _out:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>>);
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>>>)));
        if (_err != null) {
            _t.fatalf(("gob decode failed: %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_out.length) != ((1 : stdgo.GoInt))) {
            _t.fatalf(("wrong len; want 1 got %d" : stdgo.GoString), stdgo.Go.toInterface((_out.length)));
        };
        var _zero:stdgo._internal.math.big.Big_Rat.Rat = ({} : stdgo._internal.math.big.Big_Rat.Rat);
        if (_out[(0 : stdgo.GoInt)].cmp((stdgo.Go.setRef(_zero) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>)) != ((0 : stdgo.GoInt))) {
            _t.fatalf(("transmission of (*Int)(nil) failed: got %s want 0" : stdgo.GoString), stdgo.Go.toInterface(_out));
        };
    }