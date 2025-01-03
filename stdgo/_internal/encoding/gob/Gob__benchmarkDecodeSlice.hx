package stdgo._internal.encoding.gob;
function _benchmarkDecodeSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _a:stdgo.AnyInterface):Void {
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        var _err = (@:check2r _enc.encode(_a) : stdgo.Error);
        if (_err != null) {
            @:check2r _b.fatal(stdgo.Go.toInterface(_err));
        };
        var _ra = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_a)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _rt = (_ra.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
        @:check2r _b.resetTimer();
        @:check2r _b.reportAllocs();
        @:check2r _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _rp = (stdgo._internal.reflect.Reflect_new_.new_(_rt)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            _rp.elem().set(stdgo._internal.reflect.Reflect_makeSlice.makeSlice(_rt, _ra.len(), _ra.cap())?.__copy__());
            var _p = (_rp.interface_() : stdgo.AnyInterface);
            var _bbuf = ({ _data : @:check2 _buf.bytes() } : stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf);
            while (@:check2r _pb.next()) {
                @:check2 _bbuf._reset();
                var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_bbuf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf>)));
                var _err = (@:check2r _dec.decode(_p) : stdgo.Error);
                if (_err != null) {
                    @:check2r _b.fatal(stdgo.Go.toInterface(_err));
                };
            };
        });
    }
