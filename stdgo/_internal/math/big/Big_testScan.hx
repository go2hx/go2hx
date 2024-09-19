package stdgo._internal.math.big;
function testScan(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        for (_i => _test in stdgo._internal.math.big.Big__scanTests._scanTests) {
            var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            _buf.reset();
            _buf.writeString(_test._input?.__copy__());
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), _test._format?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_x))), __14:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("#%d error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                };
            };
            if ((_x.string() : stdgo.GoString) != (_test._output)) {
                _t.errorf(("#%d got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_x.string() : stdgo.GoString)), stdgo.Go.toInterface(_test._output));
            };
            if (_buf.len() != (_test._remaining)) {
                _t.errorf(("#%d got %d bytes remaining; want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_buf.len()), stdgo.Go.toInterface(_test._remaining));
            };
        };
    }
