package stdgo._internal.math.big;
function testGobEncodingNilIntInSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_buf));
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_buf));
        var _in = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>((1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>);
        var _err = (_enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_in) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>>))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L60"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L61"
            _t.errorf(("gob encode failed: %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _out:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>);
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>>)));
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L65"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L66"
            _t.fatalf(("gob decode failed: %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L68"
        if ((_out.length) != ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L69"
            _t.fatalf(("wrong len; want 1 got %d" : stdgo.GoString), stdgo.Go.toInterface((_out.length)));
        };
        var _zero:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L72"
        if (_out[(0 : stdgo.GoInt)].cmp((stdgo.Go.setRef(_zero) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L73"
            _t.fatalf(("transmission of (*Int)(nil) failed: got %s want 0" : stdgo.GoString), stdgo.Go.toInterface(_out));
        };
    }
