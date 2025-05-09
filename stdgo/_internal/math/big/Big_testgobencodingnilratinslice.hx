package stdgo._internal.math.big;
function testGobEncodingNilRatInSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_buf));
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_buf));
        var _in = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>>((1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>>);
        var _err = (_enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_in) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>>>))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L47"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L48"
            _t.errorf(("gob encode failed: %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _out:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>>);
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>>>)));
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L52"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L53"
            _t.fatalf(("gob decode failed: %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L55"
        if ((_out.length) != ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L56"
            _t.fatalf(("wrong len; want 1 got %d" : stdgo.GoString), stdgo.Go.toInterface((_out.length)));
        };
        var _zero:stdgo._internal.math.big.Big_rat.Rat = ({} : stdgo._internal.math.big.Big_rat.Rat);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L59"
        if (_out[(0 : stdgo.GoInt)].cmp((stdgo.Go.setRef(_zero) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>)) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L60"
            _t.fatalf(("transmission of (*Int)(nil) failed: got %s want 0" : stdgo.GoString), stdgo.Go.toInterface(_out));
        };
    }
