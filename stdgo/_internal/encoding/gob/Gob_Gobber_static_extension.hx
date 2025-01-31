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
@:keep @:allow(stdgo._internal.encoding.gob.Gob.Gobber_asInterface) class Gobber_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function gobDecode( _g:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_Gobber.Gobber>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf((_data : stdgo.GoString)?.__copy__(), ("VALUE=%d" : stdgo.GoString), stdgo.Go.toInterface(new stdgo.Pointer<stdgo.GoInt>(() -> (_g.value : stdgo.GoInt), v -> (_g.value = (v : stdgo._internal.encoding.gob.Gob_Gobber.Gobber) : stdgo.GoInt)))), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:pointer
    @:tdfield
    static public function gobEncode( _g:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_Gobber.Gobber>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return { _0 : (stdgo._internal.fmt.Fmt_sprintf.sprintf(("VALUE=%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_g.value))) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}
