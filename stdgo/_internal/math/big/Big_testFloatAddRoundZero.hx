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
function testFloatAddRoundZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _mode in (new stdgo.GoArray<stdgo._internal.math.big.Big_RoundingMode.RoundingMode>(6, 6, ...[(0 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (1 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (2 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (3 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (5 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (4 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode)]).__setNumber32__() : stdgo.GoArray<stdgo._internal.math.big.Big_RoundingMode.RoundingMode>)) {
            var _x = stdgo._internal.math.big.Big_newFloat.newFloat((5 : stdgo.GoFloat64));
            var _y = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).neg(_x);
            var _want = stdgo._internal.math.big.Big_newFloat.newFloat((0 : stdgo.GoFloat64));
            if (_mode == ((4 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode))) {
                @:check2r _want.neg(_want);
            };
            var _got = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setMode(_mode);
            @:check2r _got.add(_x, _y);
            if (((@:check2r _got.cmp(_want) != (0 : stdgo.GoInt)) || ((@:checkr _got ?? throw "null pointer dereference")._neg != (_mode == (4 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode))) : Bool)) {
                @:check2r _t.errorf(("%s:\n\t     %v\n\t+    %v\n\t=    %v\n\twant %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
            @:check2r _got.sub(_x, _x);
            if (((@:check2r _got.cmp(_want) != (0 : stdgo.GoInt)) || ((@:checkr _got ?? throw "null pointer dereference")._neg != (_mode == (4 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode))) : Bool)) {
                @:check2r _t.errorf(("%v:\n\t     %v\n\t-    %v\n\t=    %v\n\twant %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
    }
