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
function _testBitFunSelf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _msg:stdgo.GoString, _f:stdgo._internal.math.big.Big_T_bitFun.T_bitFun, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _exp:stdgo.GoString):Void {
        var _self = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        @:check2r _self.set(_x);
        var _expected = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        @:check2r _expected.setString(_exp?.__copy__(), (0 : stdgo.GoInt));
        _self = _f(_self, _self, _y);
        if (@:check2r _self.cmp(_expected) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("%s: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_self)), stdgo.Go.toInterface(stdgo.Go.asInterface(_expected)));
        };
    }
