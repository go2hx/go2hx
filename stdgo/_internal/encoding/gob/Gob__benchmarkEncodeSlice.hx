package stdgo._internal.encoding.gob;
function _benchmarkEncodeSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _a:stdgo.AnyInterface):Void {
        @:check2r _b.resetTimer();
        @:check2r _b.reportAllocs();
        @:check2r _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
            var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
            while (@:check2r _pb.next()) {
                @:check2 _buf.reset();
                var _err = (@:check2r _enc.encode(_a) : stdgo.Error);
                if (_err != null) {
                    @:check2r _b.fatal(stdgo.Go.toInterface(_err));
                };
            };
        });
    }
