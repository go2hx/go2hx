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
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_gobDecoderBug0_asInterface) class T_gobDecoderBug0_static_extension {
    @:keep
    @:tdfield
    static public function gobDecode( _br:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _br:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0> = _br;
        (@:checkr _br ?? throw "null pointer dereference")._foo = ("foo" : stdgo.GoString);
        (@:checkr _br ?? throw "null pointer dereference")._bar = ("bar" : stdgo.GoString);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function gobEncode( _br:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _br:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0> = _br;
        return { _0 : ((@:check2r _br.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function string( _br:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0>):stdgo.GoString {
        @:recv var _br:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0> = _br;
        return (((@:checkr _br ?? throw "null pointer dereference")._foo + ("-" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _br ?? throw "null pointer dereference")._bar?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
