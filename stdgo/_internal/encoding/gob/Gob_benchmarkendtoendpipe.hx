package stdgo._internal.encoding.gob;
function benchmarkEndToEndPipe(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        stdgo._internal.encoding.gob.Gob__benchmarkendtoend._benchmarkEndToEnd(_b, function():stdgo.AnyInterface {
            return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_bench.Bench((7 : stdgo.GoInt), (3.2 : stdgo.GoFloat64), ("now is the time" : stdgo.GoString), stdgo._internal.bytes.Bytes_repeat.repeat(((("for all good men" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (100 : stdgo.GoInt))) : stdgo._internal.encoding.gob.Gob_bench.Bench)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bench.Bench>)));
        }, function():{ var _0 : stdgo._internal.io.Io_reader.Reader; var _1 : stdgo._internal.io.Io_writer.Writer; var _2 : stdgo.Error; } {
            var _r = (null : stdgo._internal.io.Io_reader.Reader), _w = (null : stdgo._internal.io.Io_writer.Writer), _err = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.os.Os_pipe.pipe();
                _r = stdgo.Go.asInterface(@:tmpset0 __tmp__._0);
                _w = stdgo.Go.asInterface(@:tmpset0 __tmp__._1);
                _err = @:tmpset0 __tmp__._2;
            };
            return { _0 : _r, _1 : _w, _2 : _err };
        });
    }
