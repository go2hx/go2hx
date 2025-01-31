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
function testFloatInc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        for (__8 => _prec in stdgo._internal.math.big.Big__precList._precList) {
            if ((((1 : stdgo.GoInt) << _prec : stdgo.GoInt) < (10 : stdgo.GoInt) : Bool)) {
                continue;
            };
            var __0:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_), __1:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
var _one = __1, _x = __0;
            @:check2 _x.setPrec(_prec);
            @:check2 _one.setInt64((1i64 : stdgo.GoInt64));
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (10 : stdgo.GoInt) : Bool)) {
                    @:check2 _x.add((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>), (stdgo.Go.setRef(_one) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>));
                    _i++;
                };
            };
            if (@:check2 _x.cmp(@:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setInt64((10i64 : stdgo.GoInt64))) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("prec = %d: got %s; want %d" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>))), stdgo.Go.toInterface((10 : stdgo.GoInt)));
            };
        };
    }
