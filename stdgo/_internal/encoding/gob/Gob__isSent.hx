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
function _isSent(_field:stdgo.Ref<stdgo._internal.reflect.Reflect_StructField.StructField>):Bool {
        if (!stdgo._internal.encoding.gob.Gob__isExported._isExported((@:checkr _field ?? throw "null pointer dereference").name?.__copy__())) {
            return false;
        };
        var _typ = ((@:checkr _field ?? throw "null pointer dereference").type : stdgo._internal.reflect.Reflect_Type_.Type_);
        while (_typ.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            _typ = _typ.elem();
        };
        if (((_typ.kind() == (18u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || (_typ.kind() == (19u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) {
            return false;
        };
        return true;
    }
