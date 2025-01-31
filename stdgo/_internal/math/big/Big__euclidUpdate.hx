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
function _euclidUpdate(a:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, b:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ua:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ub:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _q:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _r:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _s:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _t:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _extended:Bool):Void {
        {
            var __tmp__ = @:check2r _q.quoRem(a, b, _r);
            _q = @:tmpset0 __tmp__._0;
            _r = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (b : stdgo._internal.math.big.Big_Int_.Int_)?.__copy__();
            var x = (a : stdgo._internal.math.big.Big_Int_.Int_);
            x._neg = __tmp__?._neg;
            x._abs = __tmp__?._abs;
        };
        if (_extended) {
            @:check2r _t.set(ub);
            @:check2r _s.mul(ub, _q);
            @:check2r ub.sub(ua, _s);
            @:check2r ua.set(_t);
        };
    }
