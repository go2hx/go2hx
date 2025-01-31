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
@:keep @:allow(stdgo._internal.encoding.gob.Gob.BinaryValueGobber_asInterface) class BinaryValueGobber_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalBinary( _v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf((_data : stdgo.GoString)?.__copy__(), ("VALUE=%s" : stdgo.GoString), stdgo.Go.toInterface(new stdgo.Pointer<stdgo.GoString>(() -> (_v.value : stdgo.GoString), v -> (_v.value = (v : stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber) : stdgo.GoString)))), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:tdfield
    static public function marshalBinary( _v:stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _v:stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber = _v;
        return { _0 : (stdgo._internal.fmt.Fmt_sprintf.sprintf(("VALUE=%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v))) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}
