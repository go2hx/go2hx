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
function _testRatBin(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _i:stdgo.GoInt, _name:stdgo.GoString, _f:stdgo._internal.math.big.Big_T_ratBinFun.T_ratBinFun, _a:stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg):Void {
        var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setString(_a._x?.__copy__()), _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = __tmp__._0, __8:Bool = __tmp__._1;
        var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setString(_a._y?.__copy__()), _y:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = __tmp__._0, __9:Bool = __tmp__._1;
        var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setString(_a._z?.__copy__()), _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = __tmp__._0, __10:Bool = __tmp__._1;
        var _out = _f((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>), _x, _y);
        if (@:check2r _out.cmp(_z) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("%s #%d got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
    }
