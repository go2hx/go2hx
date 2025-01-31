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
function _euclidExtGCD(_a:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } {
        var _g = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _x = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _y = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var a = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(_a);
        var b = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(_b);
        var ua = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setInt64((1i64 : stdgo.GoInt64));
        var va = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var ub = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var vb = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setInt64((1i64 : stdgo.GoInt64));
        var _q = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _temp = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        while ((((@:checkr b ?? throw "null pointer dereference")._abs.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = @:check2r _q.quoRem(a, b, _r);
                _q = @:tmpset0 __tmp__._0;
                _r = @:tmpset0 __tmp__._1;
            };
            {
                final __tmp__0 = b;
                final __tmp__1 = _r;
                final __tmp__2 = a;
                a = __tmp__0;
                b = __tmp__1;
                _r = __tmp__2;
            };
            @:check2r _temp.set(ub);
            @:check2r ub.mul(ub, _q);
            @:check2r ub.sub(ua, ub);
            @:check2r ua.set(_temp);
            @:check2r _temp.set(vb);
            @:check2r vb.mul(vb, _q);
            @:check2r vb.sub(va, vb);
            @:check2r va.set(_temp);
        };
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } = { _0 : a, _1 : ua, _2 : va };
            _g = __tmp__._0;
            _x = __tmp__._1;
            _y = __tmp__._2;
            __tmp__;
        };
    }
