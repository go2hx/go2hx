package stdgo._internal.encoding.gob;
function _benchmarkEndToEnd(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _ctor:() -> stdgo.AnyInterface, _pipe:() -> { var _0 : stdgo._internal.io.Io_reader.Reader; var _1 : stdgo._internal.io.Io_writer.Writer; var _2 : stdgo.Error; }):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L24"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L25"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            var __tmp__ = _pipe(), _r:stdgo._internal.io.Io_reader.Reader = __tmp__._0, _w:stdgo._internal.io.Io_writer.Writer = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L27"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L28"
                _b.fatal(stdgo.Go.toInterface(("can\'t get pipe:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            var _v = (_ctor() : stdgo.AnyInterface);
            var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(_w);
            var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(_r);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L33"
            while (_pb.next()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L34"
                {
                    var _err = (_enc.encode(_v) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L35"
                        _b.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L37"
                {
                    var _err = (_dec.decode(_v) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L38"
                        _b.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
