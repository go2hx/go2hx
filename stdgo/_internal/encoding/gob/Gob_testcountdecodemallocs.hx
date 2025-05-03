package stdgo._internal.encoding.gob;
function testCountDecodeMallocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L103"
        if (stdgo._internal.testing.Testing_short.short()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L104"
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L106"
        if ((stdgo._internal.runtime.Runtime_gomaxprocs.gOMAXPROCS((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L107"
            _t.skip(stdgo.Go.toInterface(("skipping; GOMAXPROCS>1" : stdgo.GoString)));
        };
        {};
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        var _bench = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_bench.Bench((7 : stdgo.GoInt), (3.2 : stdgo.GoFloat64), ("now is the time" : stdgo.GoString), ((("for all good men" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_bench.Bench)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bench.Bench>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L117"
        stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_bench))) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L119"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L120"
                _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        });
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        var _allocs = (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            {
                var __tmp__ = (new stdgo._internal.encoding.gob.Gob_bench.Bench() : stdgo._internal.encoding.gob.Gob_bench.Bench);
                var x = (_bench : stdgo._internal.encoding.gob.Gob_bench.Bench);
                x.a = __tmp__?.a;
                x.b = __tmp__?.b;
                x.c = __tmp__?.c;
                x.d = __tmp__?.d;
            };
            var _err = (_dec.decode(stdgo.Go.toInterface(stdgo.Go.pointer(_bench))) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L128"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L129"
                _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        }) : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L132"
        if (_allocs != ((3 : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L133"
            _t.fatalf(("mallocs per decode of type Bench: %v; wanted 3\n" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
