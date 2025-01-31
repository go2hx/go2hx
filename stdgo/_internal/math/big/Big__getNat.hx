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
function _getNat(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_T_nat.T_nat> {
        var _z:stdgo.Ref<stdgo._internal.math.big.Big_T_nat.T_nat> = (null : stdgo.Ref<stdgo._internal.math.big.Big_T_nat.T_nat>);
        {
            var _v = (@:check2 stdgo._internal.math.big.Big__natPool._natPool.get() : stdgo.AnyInterface);
            if (_v != null) {
                _z = (stdgo.Go.typeAssert((_v : stdgo.Ref<stdgo._internal.math.big.Big_T_nat.T_nat>)) : stdgo.Ref<stdgo._internal.math.big.Big_T_nat.T_nat>);
            };
        };
        if ((_z == null || (_z : Dynamic).__nil__)) {
            _z = (stdgo.Go.setRef(new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0)) : stdgo.Ref<stdgo._internal.math.big.Big_T_nat.T_nat>);
        };
        (_z : stdgo._internal.math.big.Big_T_nat.T_nat).__setData__((@:checkr _z ?? throw "null pointer dereference")._make(_n));
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            ((_z : stdgo._internal.math.big.Big_T_nat.T_nat))[(0 : stdgo.GoInt)] = (1043915u32 : stdgo._internal.math.big.Big_Word.Word);
        };
        return _z;
    }
