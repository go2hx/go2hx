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
function parseFloat(_s:stdgo.GoString, _base:stdgo.GoInt, _prec:stdgo.GoUInt, _mode:stdgo._internal.math.big.Big_RoundingMode.RoundingMode):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _f = (null : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>), _b = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = @:check2r @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_prec).setMode(_mode).parse(_s?.__copy__(), _base);
            _f = __tmp__._0;
            _b = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
