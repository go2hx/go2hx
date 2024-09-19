package stdgo._internal.encoding.gob;
function _benchmarkEndToEnd(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _ctor:() -> stdgo.AnyInterface, _pipe:() -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo._internal.io.Io_Writer.Writer; var _2 : stdgo.Error; }):Void {
        _b.reportAllocs();
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var __tmp__ = _pipe(), _r:stdgo._internal.io.Io_Reader.Reader = __tmp__._0, _w:stdgo._internal.io.Io_Writer.Writer = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _b.fatal(stdgo.Go.toInterface(("can\'t get pipe:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            var _v = (_ctor() : stdgo.AnyInterface);
            var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(_w);
            var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(_r);
            while (_pb.next()) {
                {
                    var _err = (_enc.encode(_v) : stdgo.Error);
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var _err = (_dec.decode(_v) : stdgo.Error);
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
