package stdgo._internal.math.big;
function testScan(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        for (_i => _test in stdgo._internal.math.big.Big__scantests._scanTests) {
            var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            @:check2 _buf.reset();
            @:check2 _buf.writeString(_test._input?.__copy__());
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _test._format?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_x))), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _t.errorf(("#%d error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                };
            };
            if ((@:check2r _x.string() : stdgo.GoString) != (_test._output)) {
                @:check2r _t.errorf(("#%d got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((@:check2r _x.string() : stdgo.GoString)), stdgo.Go.toInterface(_test._output));
            };
            if (@:check2 _buf.len() != (_test._remaining)) {
                @:check2r _t.errorf(("#%d got %d bytes remaining; want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(@:check2 _buf.len()), stdgo.Go.toInterface(_test._remaining));
            };
        };
    }
