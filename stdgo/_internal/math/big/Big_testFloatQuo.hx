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
function testFloatQuo(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _preci = (200 : stdgo.GoInt);
        var _precf = (20 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (8 : stdgo.GoInt) : Bool)) {
                var _bits = (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(_preci - (1 : stdgo.GoInt) : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.math.big.Big_Bits.Bits);
if ((_i & (3 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _bits = (_bits.__append__((0 : stdgo.GoInt)));
                };
if ((_i & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _bits = (_bits.__append__((-1 : stdgo.GoInt)));
                };
if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _bits = (_bits.__append__(-_precf));
                };
var _z = _bits.float_();
var _y = stdgo._internal.math.big.Big_newFloat.newFloat((3.141592653589793e+123 : stdgo.GoFloat64));
var _x = @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec((@:check2r _z.prec() + @:check2r _y.prec() : stdgo.GoUInt)).setMode((2 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode));
@:check2r _x.mul(_z, _y);
{
                    var _got = (@:check2r _x.acc() : stdgo._internal.math.big.Big_Accuracy.Accuracy);
                    if (_got != ((0 : stdgo._internal.math.big.Big_Accuracy.Accuracy))) {
                        @:check2r _t.errorf(("got acc = %s; want exact" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)));
                    };
                };
for (__8 => _mode in (new stdgo.GoArray<stdgo._internal.math.big.Big_RoundingMode.RoundingMode>(3, 3, ...[(2 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (0 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (3 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode)]).__setNumber32__() : stdgo.GoArray<stdgo._internal.math.big.Big_RoundingMode.RoundingMode>)) {
                    {
                        var _d = (-5 : stdgo.GoInt);
                        while ((_d < (5 : stdgo.GoInt) : Bool)) {
                            var _prec = ((_preci + _d : stdgo.GoInt) : stdgo.GoUInt);
var _got = @:check2r @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_prec).setMode(_mode).quo(_x, _y);
var _want = _bits._round(_prec, _mode);
if (@:check2r _got.cmp(_want) != ((0 : stdgo.GoInt))) {
                                @:check2r _t.errorf(("i = %d, prec = %d, %s:\n\t     %s\n\t/    %s\n\t=    %s\n\twant %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                            };
                            _d++;
                        };
                    };
                };
                _i++;
            };
        };
    }
