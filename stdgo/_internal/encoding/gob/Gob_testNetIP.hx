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
function testNetIP(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _enc = (new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(7 : stdgo.GoUInt8), (10 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _ip:stdgo._internal.net.Net_IP.IP = new stdgo._internal.net.Net_IP.IP(0, 0);
        var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_enc))).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_ip) : stdgo.Ref<stdgo._internal.net.Net_IP.IP>)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatalf(("decode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_ip.string() : stdgo.GoString) != (("1.2.3.4" : stdgo.GoString))) {
            @:check2r _t.errorf(("decoded to %v, want 1.2.3.4" : stdgo.GoString), stdgo.Go.toInterface((_ip.string() : stdgo.GoString)));
        };
    }
