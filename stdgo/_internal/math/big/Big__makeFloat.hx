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
function _makeFloat(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        var __tmp__ = stdgo._internal.math.big.Big_parseFloat.parseFloat(_s?.__copy__(), (0 : stdgo.GoInt), (1000u32 : stdgo.GoUInt), (0 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode)), _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = __tmp__._0, __8:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        return _x;
    }
