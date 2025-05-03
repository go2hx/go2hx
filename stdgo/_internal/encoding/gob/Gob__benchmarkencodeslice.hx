package stdgo._internal.encoding.gob;
function _benchmarkEncodeSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _a:stdgo.AnyInterface):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L138"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L139"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L140"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L144"
            while (_pb.next()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L145"
                _buf.reset();
                var _err = (_enc.encode(_a) : stdgo.Error);
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L147"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L148"
                    _b.fatal(stdgo.Go.toInterface(_err));
                };
            };
        });
    }
