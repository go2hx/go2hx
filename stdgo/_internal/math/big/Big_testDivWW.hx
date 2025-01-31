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
function testDivWW(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _i = (0 : stdgo.GoInt);
        for (_i => _test in stdgo._internal.math.big.Big__divWWTests._divWWTests) {
            var _rec = (stdgo._internal.math.big.Big__reciprocalWord._reciprocalWord(_test._y) : stdgo._internal.math.big.Big_Word.Word);
            var __tmp__ = stdgo._internal.math.big.Big__divWW._divWW(_test._x1, _test._x0, _test._y, _rec), _q:stdgo._internal.math.big.Big_Word.Word = __tmp__._0, _r:stdgo._internal.math.big.Big_Word.Word = __tmp__._1;
            if (((_q != _test._q) || (_r != _test._r) : Bool)) {
                @:check2r _t.errorf(("#%d got (%x, %x) want (%x, %x)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_test._q), stdgo.Go.toInterface(_test._r));
            };
        };
        while ((_i < (65536 : stdgo.GoInt) : Bool)) {
            var _x1 = (stdgo._internal.math.big.Big__rndW._rndW() : stdgo._internal.math.big.Big_Word.Word);
var _x0 = (stdgo._internal.math.big.Big__rndW._rndW() : stdgo._internal.math.big.Big_Word.Word);
var _y = (stdgo._internal.math.big.Big__rndW._rndW() : stdgo._internal.math.big.Big_Word.Word);
if ((_x1 >= _y : Bool)) {
                {
                    _i++;
                    continue;
                };
            };
var _rec = (stdgo._internal.math.big.Big__reciprocalWord._reciprocalWord(_y) : stdgo._internal.math.big.Big_Word.Word);
var __tmp__ = stdgo._internal.math.big.Big__divWW._divWW(_x1, _x0, _y, _rec), _qGot:stdgo._internal.math.big.Big_Word.Word = __tmp__._0, _rGot:stdgo._internal.math.big.Big_Word.Word = __tmp__._1;
var __tmp__ = stdgo._internal.math.bits.Bits_div.div((_x1 : stdgo.GoUInt), (_x0 : stdgo.GoUInt), (_y : stdgo.GoUInt)), _qWant:stdgo.GoUInt = __tmp__._0, _rWant:stdgo.GoUInt = __tmp__._1;
if ((((_qGot : stdgo.GoUInt) != _qWant) || ((_rGot : stdgo.GoUInt) != _rWant) : Bool)) {
                @:check2r _t.errorf(("#%d got (%x, %x) want (%x, %x)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_qGot), stdgo.Go.toInterface(_rGot), stdgo.Go.toInterface(_qWant), stdgo.Go.toInterface(_rWant));
            };
            _i++;
        };
    }
