package stdgo._internal.encoding.gob;
function testCountEncodeMallocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        if ((stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            _t.skip(stdgo.Go.toInterface(("skipping; GOMAXPROCS>1" : stdgo.GoString)));
        };
        {};
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        var _bench = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_Bench.Bench((7 : stdgo.GoInt), (3.2 : stdgo.GoFloat64), ("now is the time" : stdgo.GoString), (("for all good men" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_Bench.Bench)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bench.Bench>);
        var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            var _err = (_enc.encode(stdgo.Go.toInterface(_bench)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        }) : stdgo.GoFloat64);
        if (_allocs != (0 : stdgo.GoFloat64)) {
            _t.fatalf(("mallocs per encode of type Bench: %v; wanted 0\n" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }