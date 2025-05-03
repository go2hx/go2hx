package stdgo._internal.math.big;
function testScan(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L417"
        for (_i => _test in stdgo._internal.math.big.Big__scantests._scanTests) {
            var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L419"
            _buf.reset();
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L420"
            _buf.writeString(_test._input?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L421"
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _test._format?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_x))), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L422"
                    _t.errorf(("#%d error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L424"
            if ((_x.string() : stdgo.GoString) != (_test._output)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L425"
                _t.errorf(("#%d got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_x.string() : stdgo.GoString)), stdgo.Go.toInterface(_test._output));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L427"
            if (_buf.len() != (_test._remaining)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv_test.go#L428"
                _t.errorf(("#%d got %d bytes remaining; want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_buf.len()), stdgo.Go.toInterface(_test._remaining));
            };
        };
    }
