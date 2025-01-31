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
@:keep @:allow(stdgo._internal.encoding.gob.Gob.StringStruct_asInterface) class StringStruct_static_extension {
    @:keep
    @:tdfield
    static public function gobDecode( _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct> = _g;
        if ((_data.length) == ((0 : stdgo.GoInt))) {
            return stdgo._internal.io.Io_eOF.eOF;
        };
        var _a = (_data[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        for (_i => _c in _data) {
            if (_c != ((_a + (_i : stdgo.GoUInt8) : stdgo.GoUInt8))) {
                return stdgo._internal.errors.Errors_new_.new_(("invalid data sequence" : stdgo.GoString));
            };
        };
        (@:checkr _g ?? throw "null pointer dereference")._s = (_data : stdgo.GoString)?.__copy__();
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function gobEncode( _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct> = _g;
        return { _0 : ((@:checkr _g ?? throw "null pointer dereference")._s : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}
