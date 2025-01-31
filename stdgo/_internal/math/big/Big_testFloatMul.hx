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
function testFloatMul(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _xbits in stdgo._internal.math.big.Big__bitsList._bitsList) {
            for (__9 => _ybits in stdgo._internal.math.big.Big__bitsList._bitsList) {
                var _x = _xbits.float_();
                var _y = _ybits.float_();
                var _zbits = (_xbits._mul(_ybits) : stdgo._internal.math.big.Big_Bits.Bits);
                var _z = _zbits.float_();
                for (_i => _mode in (new stdgo.GoArray<stdgo._internal.math.big.Big_RoundingMode.RoundingMode>(3, 3, ...[(2 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (0 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (3 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode)]).__setNumber32__() : stdgo.GoArray<stdgo._internal.math.big.Big_RoundingMode.RoundingMode>)) {
                    for (__10 => _prec in stdgo._internal.math.big.Big__precList._precList) {
                        var _got = @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_prec).setMode(_mode);
                        @:check2r _got.mul(_x, _y);
                        var _want = _zbits._round(_prec, _mode);
                        if (@:check2r _got.cmp(_want) != ((0 : stdgo.GoInt))) {
                            @:check2r _t.errorf(("i = %d, prec = %d, %s:\n\t     %v %v\n\t*    %v %v\n\t=    %v\n\twant %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_xbits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_ybits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                        };
                        if (@:check2r _x.sign() == ((0 : stdgo.GoInt))) {
                            continue;
                        };
                        @:check2r _got.quo(_z, _x);
                        _want = _ybits._round(_prec, _mode);
                        if (@:check2r _got.cmp(_want) != ((0 : stdgo.GoInt))) {
                            @:check2r _t.errorf(("i = %d, prec = %d, %s:\n\t     %v %v\n\t/    %v %v\n\t=    %v\n\twant %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_zbits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_xbits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                        };
                    };
                };
            };
        };
    }
