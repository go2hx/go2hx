package stdgo._internal.encoding.gob;
function testCountEncodeMallocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L78"
        if (stdgo._internal.testing.Testing_short.short()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L79"
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L81"
        if ((stdgo._internal.runtime.Runtime_gomaxprocs.gOMAXPROCS((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L82"
            _t.skip(stdgo.Go.toInterface(("skipping; GOMAXPROCS>1" : stdgo.GoString)));
        };
        {};
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        var _bench = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_bench.Bench((7 : stdgo.GoInt), (3.2 : stdgo.GoFloat64), ("now is the time" : stdgo.GoString), ((("for all good men" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_bench.Bench)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bench.Bench>);
        var _allocs = (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_bench))) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L93"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L94"
                _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        }) : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L97"
        if (_allocs != ((0 : stdgo.GoFloat64))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L98"
            _t.fatalf(("mallocs per encode of type Bench: %v; wanted 0\n" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
