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
function _testSqr(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _x:stdgo._internal.math.big.Big_T_nat.T_nat):Void {
        var _got = (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(((2 : stdgo.GoInt) * (_x.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat);
        var _want = (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(((2 : stdgo.GoInt) * (_x.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat);
        _got = _got._sqr(_x);
        _want = _want._mul(_x, _x);
        if (_got._cmp(_want) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("basicSqr(%v), got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
        };
    }
