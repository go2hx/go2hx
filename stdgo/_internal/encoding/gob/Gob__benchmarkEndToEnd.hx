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
function _benchmarkEndToEnd(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _ctor:() -> stdgo.AnyInterface, _pipe:() -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo._internal.io.Io_Writer.Writer; var _2 : stdgo.Error; }):Void {
        @:check2r _b.reportAllocs();
        @:check2r _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var __tmp__ = _pipe(), _r:stdgo._internal.io.Io_Reader.Reader = __tmp__._0, _w:stdgo._internal.io.Io_Writer.Writer = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                @:check2r _b.fatal(stdgo.Go.toInterface(("can\'t get pipe:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            var _v = (_ctor() : stdgo.AnyInterface);
            var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(_w);
            var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(_r);
            while (@:check2r _pb.next()) {
                {
                    var _err = (@:check2r _enc.encode(_v) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _b.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var _err = (@:check2r _dec.decode(_v) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _b.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
