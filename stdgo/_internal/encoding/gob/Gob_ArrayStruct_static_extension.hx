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
@:keep @:allow(stdgo._internal.encoding.gob.Gob.ArrayStruct_asInterface) class ArrayStruct_static_extension {
    @:keep
    @:tdfield
    static public function gobDecode( _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_ArrayStruct.ArrayStruct>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_ArrayStruct.ArrayStruct> = _a;
        if ((_data.length) != (((@:checkr _a ?? throw "null pointer dereference")._a.length))) {
            return stdgo._internal.errors.Errors_new_.new_(("wrong length in array decode" : stdgo.GoString));
        };
        ((@:checkr _a ?? throw "null pointer dereference")._a.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_data);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function gobEncode( _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_ArrayStruct.ArrayStruct>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_ArrayStruct.ArrayStruct> = _a;
        return { _0 : ((@:checkr _a ?? throw "null pointer dereference")._a.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}
