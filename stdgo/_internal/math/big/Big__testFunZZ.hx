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
function _testFunZZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _msg:stdgo.GoString, _f:stdgo._internal.math.big.Big_T_funZZ.T_funZZ, _a:stdgo._internal.math.big.Big_T_argZZ.T_argZZ):Void {
        var _z:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
        _f((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _a._x, _a._y);
        if (!stdgo._internal.math.big.Big__isNormalized._isNormalized((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))) {
            @:check2r _t.errorf(("%s%v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
        if (@:check2r (stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).cmp(_a._z) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("%v %s %v\n\tgot z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._x)), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._y)), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._z)));
        };
    }
