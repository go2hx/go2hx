package stdgo._internal.encoding.gob;
function benchmarkEndToEndByteBuffer(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        stdgo._internal.encoding.gob.Gob__benchmarkendtoend._benchmarkEndToEnd(_b, function():stdgo.AnyInterface {
            return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_bench.Bench((7 : stdgo.GoInt), (3.2 : stdgo.GoFloat64), ("now is the time" : stdgo.GoString), stdgo._internal.bytes.Bytes_repeat.repeat(((("for all good men" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (100 : stdgo.GoInt))) : stdgo._internal.encoding.gob.Gob_bench.Bench)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bench.Bench>)));
        }, function():{ var _0 : stdgo._internal.io.Io_reader.Reader; var _1 : stdgo._internal.io.Io_writer.Writer; var _2 : stdgo.Error; } {
            var _r = (null : stdgo._internal.io.Io_reader.Reader), _w = (null : stdgo._internal.io.Io_writer.Writer), _err = (null : stdgo.Error);
            var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            return {
                final __tmp__:{ var _0 : stdgo._internal.io.Io_reader.Reader; var _1 : stdgo._internal.io.Io_writer.Writer; var _2 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _2 : (null : stdgo.Error) };
                _r = __tmp__._0;
                _w = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        });
    }
