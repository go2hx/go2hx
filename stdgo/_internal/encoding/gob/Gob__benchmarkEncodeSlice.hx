package stdgo._internal.encoding.gob;
function _benchmarkEncodeSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _a:stdgo.AnyInterface):Void {
        _b.resetTimer();
        _b.reportAllocs();
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
            var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf__pointer__));
            while (_pb.next()) {
                _buf.reset();
                var _err = (_enc.encode(_a) : stdgo.Error);
                if (_err != null) {
                    _b.fatal(stdgo.Go.toInterface(_err));
                };
            };
        });
    }
