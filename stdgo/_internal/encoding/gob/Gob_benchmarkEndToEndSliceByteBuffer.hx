package stdgo._internal.encoding.gob;
function benchmarkEndToEndSliceByteBuffer(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        stdgo._internal.encoding.gob.Gob__benchmarkEndToEnd._benchmarkEndToEnd(_b, function():stdgo.AnyInterface {
            var _v = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_Bench.Bench((7 : stdgo.GoInt), (3.2 : stdgo.GoFloat64), ("now is the time" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_Bench.Bench)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bench.Bench>);
            stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(_v));
            var _arr = (new stdgo.Slice<stdgo.AnyInterface>((100 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
            var _arr__pointer__ = (stdgo.Go.setRef(_arr) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>);
            var _arr__pointer__ = (stdgo.Go.setRef(_arr) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>);
            var _arr__pointer__ = (stdgo.Go.setRef(_arr) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>);
            var _arr__pointer__ = (stdgo.Go.setRef(_arr) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>);
            for (_i => _ in _arr) {
                _arr[(_i : stdgo.GoInt)] = stdgo.Go.toInterface(_v);
            };
            return stdgo.Go.toInterface(_arr__pointer__);
        }, function():{ var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo._internal.io.Io_Writer.Writer; var _2 : stdgo.Error; } {
            var _r = (null : stdgo._internal.io.Io_Reader.Reader), _w = (null : stdgo._internal.io.Io_Writer.Writer), _err = (null : stdgo.Error);
            var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
            var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            return {
                final __tmp__:{ var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo._internal.io.Io_Writer.Writer; var _2 : stdgo.Error; } = { _0 : stdgo.Go.asInterface(_buf__pointer__), _1 : stdgo.Go.asInterface(_buf__pointer__), _2 : (null : stdgo.Error) };
                _r = __tmp__._0;
                _w = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        });
    }
