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
function benchmarkEndToEndPipe(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        stdgo._internal.encoding.gob.Gob__benchmarkEndToEnd._benchmarkEndToEnd(_b, function():stdgo.AnyInterface {
            return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_Bench.Bench((7 : stdgo.GoInt), (3.2 : stdgo.GoFloat64), ("now is the time" : stdgo.GoString), stdgo._internal.bytes.Bytes_repeat.repeat((("for all good men" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (100 : stdgo.GoInt))) : stdgo._internal.encoding.gob.Gob_Bench.Bench)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bench.Bench>)));
        }, function():{ var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo._internal.io.Io_Writer.Writer; var _2 : stdgo.Error; } {
            var _r = (null : stdgo._internal.io.Io_Reader.Reader), _w = (null : stdgo._internal.io.Io_Writer.Writer), _err = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.os.Os_pipe.pipe();
                _r = stdgo.Go.asInterface(@:tmpset0 __tmp__._0);
                _w = stdgo.Go.asInterface(@:tmpset0 __tmp__._1);
                _err = @:tmpset0 __tmp__._2;
            };
            return { _0 : _r, _1 : _w, _2 : _err };
        });
    }
