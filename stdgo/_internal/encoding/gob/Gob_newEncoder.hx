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
function newEncoder(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> {
        var _enc = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_Encoder.Encoder)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        (@:checkr _enc ?? throw "null pointer dereference")._w = (new stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>(1, 1, ...[_w]) : stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>);
        (@:checkr _enc ?? throw "null pointer dereference")._sent = (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_Type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId>) : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId>);
        (@:checkr _enc ?? throw "null pointer dereference")._countState = @:check2r _enc._newEncoderState((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>));
        return _enc;
    }
