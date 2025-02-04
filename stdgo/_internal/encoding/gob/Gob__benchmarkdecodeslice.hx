package stdgo._internal.encoding.gob;
function _benchmarkDecodeSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _a:stdgo.AnyInterface):Void {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        var _err = (@:check2r _enc.encode(_a) : stdgo.Error);
        if (_err != null) {
            @:check2r _b.fatal(stdgo.Go.toInterface(_err));
        };
        var _ra = (stdgo._internal.reflect.Reflect_valueof.valueOf(_a)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _rt = (_ra.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        @:check2r _b.resetTimer();
        @:check2r _b.reportAllocs();
        @:check2r _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            var _rp = (stdgo._internal.reflect.Reflect_new_.new_(_rt)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            _rp.elem().set(stdgo._internal.reflect.Reflect_makeslice.makeSlice(_rt, _ra.len(), _ra.cap())?.__copy__());
            var _p = (_rp.interface_() : stdgo.AnyInterface);
            var _bbuf = ({ _data : @:check2 _buf.bytes() } : stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf);
            while (@:check2r _pb.next()) {
                @:check2 _bbuf._reset();
                var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_bbuf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf>)));
                var _err = (@:check2r _dec.decode(_p) : stdgo.Error);
                if (_err != null) {
                    @:check2r _b.fatal(stdgo.Go.toInterface(_err));
                };
            };
        });
    }
