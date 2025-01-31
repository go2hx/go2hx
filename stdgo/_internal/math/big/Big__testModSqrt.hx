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
function _testModSqrt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _elt:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _mod:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _sq:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _sqrt:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool {
        var __0:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __1:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __2:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
var _sqrtsq = __2, _sqrtChk = __1, _sqChk = __0;
        @:check2r _sq.mul(_elt, _elt);
        @:check2r _sq.mod(_sq, _mod);
        var _z = @:check2r _sqrt.modSqrt(_sq, _mod);
        if (_z != (_sqrt)) {
            @:check2r _t.errorf(("ModSqrt returned wrong value %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
        @:check2 _sqChk.add(_sq, _mod);
        _z = @:check2 _sqrtChk.modSqrt((stdgo.Go.setRef(_sqChk) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _mod);
        if (((_z != (stdgo.Go.setRef(_sqrtChk) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)) || (@:check2r _z.cmp(_sqrt) != (0 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("ModSqrt returned inconsistent value %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
        @:check2 _sqChk.sub(_sq, _mod);
        _z = @:check2 _sqrtChk.modSqrt((stdgo.Go.setRef(_sqChk) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _mod);
        if (((_z != (stdgo.Go.setRef(_sqrtChk) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)) || (@:check2r _z.cmp(_sqrt) != (0 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("ModSqrt returned inconsistent value %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
        _z = @:check2 _sqrtChk.modSqrt(@:check2 _sqrtChk.set(_sq), _mod);
        if (((_z != (stdgo.Go.setRef(_sqrtChk) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)) || (@:check2r _z.cmp(_sqrt) != (0 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("ModSqrt returned inconsistent value %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
        if (@:check2r _sqrt.cmp(_elt) == ((0 : stdgo.GoInt))) {
            return true;
        };
        @:check2 _sqrtsq.mul(_sqrt, _sqrt);
        @:check2 _sqrtsq.mod((stdgo.Go.setRef(_sqrtsq) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _mod);
        return @:check2r _sq.cmp((stdgo.Go.setRef(_sqrtsq) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)) == ((0 : stdgo.GoInt));
    }
