package stdgo._internal.math.big;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.encoding.xml.Xml;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.os.Os;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
function _altSetBit(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
        var _one = stdgo._internal.math.big.Big_newInt.newInt((1i64 : stdgo.GoInt64));
        var _m = @:check2r _one.lsh(_one, (_i : stdgo.GoUInt));
        {
            final __value__ = _b;
            if (__value__ == ((1u32 : stdgo.GoUInt))) {
                return @:check2r _z.or(_x, _m);
            } else if (__value__ == ((0u32 : stdgo.GoUInt))) {
                return @:check2r _z.andNot(_x, _m);
            };
        };
        throw stdgo.Go.toInterface(("set bit is not 0 or 1" : stdgo.GoString));
    }
