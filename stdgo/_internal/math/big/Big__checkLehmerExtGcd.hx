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
function _checkLehmerExtGcd(_aBytes:stdgo.Slice<stdgo.GoUInt8>, _bBytes:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _a = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setBytes(_aBytes);
        var _b = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setBytes(_bBytes);
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        if (((@:check2r _a.sign() <= (0 : stdgo.GoInt) : Bool) || (@:check2r _b.sign() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return true;
        };
        var _d = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)._lehmerGCD(_x, _y, _a, _b);
        var __tmp__ = stdgo._internal.math.big.Big__euclidExtGCD._euclidExtGCD(_a, _b), _d0:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _x0:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._1, _y0:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._2;
        return ((@:check2r _d.cmp(_d0) == ((0 : stdgo.GoInt)) && @:check2r _x.cmp(_x0) == ((0 : stdgo.GoInt)) : Bool) && (@:check2r _y.cmp(_y0) == (0 : stdgo.GoInt)) : Bool);
    }
