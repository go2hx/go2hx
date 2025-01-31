package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
function size(_v:stdgo.AnyInterface):stdgo.GoInt {
        return stdgo._internal.encoding.binary.Binary__dataSize._dataSize(stdgo._internal.reflect.Reflect_indirect.indirect(stdgo._internal.reflect.Reflect_valueOf.valueOf(_v)?.__copy__())?.__copy__());
    }
