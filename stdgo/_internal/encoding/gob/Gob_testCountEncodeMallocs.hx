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
function testCountEncodeMallocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            @:check2r _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        if ((stdgo._internal.runtime.Runtime_gOMAXPROCS.gOMAXPROCS((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            @:check2r _t.skip(stdgo.Go.toInterface(("skipping; GOMAXPROCS>1" : stdgo.GoString)));
        };
        {};
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        var _bench = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_Bench.Bench((7 : stdgo.GoInt), (3.2 : stdgo.GoFloat64), ("now is the time" : stdgo.GoString), (("for all good men" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.encoding.gob.Gob_Bench.Bench)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bench.Bench>);
        var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_bench))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        }) : stdgo.GoFloat64);
        if (_allocs != (0 : stdgo.GoFloat64)) {
            @:check2r _t.fatalf(("mallocs per encode of type Bench: %v; wanted 0\n" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
