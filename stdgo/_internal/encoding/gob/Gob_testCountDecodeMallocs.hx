package stdgo._internal.encoding.gob;
function testCountDecodeMallocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        if ((stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            _t.skip(stdgo.Go.toInterface(("skipping; GOMAXPROCS>1" : stdgo.GoString)));
        };
        {};
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf__pointer__));
        var _bench = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_Bench.Bench((7 : stdgo.GoInt), (3.2 : stdgo.GoFloat64), ("now is the time" : stdgo.GoString), (("for all good men" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_Bench.Bench)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bench.Bench>);
        var _bench__pointer__ = (stdgo.Go.setRef(_bench) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bench.Bench>>);
        var _bench__pointer__ = (stdgo.Go.setRef(_bench) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bench.Bench>>);
        var _bench__pointer__ = (stdgo.Go.setRef(_bench) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bench.Bench>>);
        var _bench__pointer__ = (stdgo.Go.setRef(_bench) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bench.Bench>>);
        stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            var _err = (_enc.encode(stdgo.Go.toInterface(_bench)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        });
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_buf__pointer__));
        var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            {
                var __tmp__ = (new stdgo._internal.encoding.gob.Gob_Bench.Bench() : stdgo._internal.encoding.gob.Gob_Bench.Bench);
                (_bench : stdgo._internal.encoding.gob.Gob_Bench.Bench).a = __tmp__.a;
                (_bench : stdgo._internal.encoding.gob.Gob_Bench.Bench).b = __tmp__.b;
                (_bench : stdgo._internal.encoding.gob.Gob_Bench.Bench).c = __tmp__.c;
                (_bench : stdgo._internal.encoding.gob.Gob_Bench.Bench).d = __tmp__.d;
            };
            var _err = (_dec.decode(stdgo.Go.toInterface(_bench__pointer__)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        }) : stdgo.GoFloat64);
        if (_allocs != (3 : stdgo.GoFloat64)) {
            _t.fatalf(("mallocs per decode of type Bench: %v; wanted 3\n" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
