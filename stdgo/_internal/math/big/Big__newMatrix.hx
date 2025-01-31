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
function _newMatrix(_n:stdgo.GoInt, _m:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix> {
        if (!((((0 : stdgo.GoInt) <= _n : Bool) && ((0 : stdgo.GoInt) <= _m : Bool) : Bool))) {
            throw stdgo.Go.toInterface(("illegal matrix" : stdgo.GoString));
        };
        var _a = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_T_matrix.T_matrix)) : stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>);
        (@:checkr _a ?? throw "null pointer dereference")._n = _n;
        (@:checkr _a ?? throw "null pointer dereference")._m = _m;
        (@:checkr _a ?? throw "null pointer dereference")._a = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>>((_n * _m : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>>);
        return _a;
    }
