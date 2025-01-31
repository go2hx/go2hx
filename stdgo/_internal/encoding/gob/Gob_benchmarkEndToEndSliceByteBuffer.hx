package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
function benchmarkEndToEndSliceByteBuffer(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        stdgo._internal.encoding.gob.Gob__benchmarkEndToEnd._benchmarkEndToEnd(_b, function():stdgo.AnyInterface {
            var _v = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_Bench.Bench((7 : stdgo.GoInt), (3.2 : stdgo.GoFloat64), ("now is the time" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_Bench.Bench)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bench.Bench>);
            stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface(_v)));
            var _arr = (new stdgo.Slice<stdgo.AnyInterface>((100 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
            for (_i => _ in _arr) {
                _arr[(_i : stdgo.GoInt)] = stdgo.Go.toInterface(stdgo.Go.asInterface(_v));
            };
            return stdgo.Go.toInterface((stdgo.Go.setRef(_arr) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>));
        }, function():{ var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo._internal.io.Io_Writer.Writer; var _2 : stdgo.Error; } {
            var _r = (null : stdgo._internal.io.Io_Reader.Reader), _w = (null : stdgo._internal.io.Io_Writer.Writer), _err = (null : stdgo.Error);
            var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
            return {
                final __tmp__:{ var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo._internal.io.Io_Writer.Writer; var _2 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), _2 : (null : stdgo.Error) };
                _r = __tmp__._0;
                _w = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        });
    }
