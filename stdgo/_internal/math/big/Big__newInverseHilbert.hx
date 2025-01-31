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
function _newInverseHilbert(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix> {
        var _a = stdgo._internal.math.big.Big__newMatrix._newMatrix(_n, _n);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < _n : Bool)) {
                        var _x1 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setInt64((((_i + _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64));
var _x2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setInt(@:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).binomial(((_n + _i : stdgo.GoInt) : stdgo.GoInt64), (((_n - _j : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)));
var _x3 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setInt(@:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).binomial(((_n + _j : stdgo.GoInt) : stdgo.GoInt64), (((_n - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)));
var _x4 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setInt(@:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).binomial(((_i + _j : stdgo.GoInt) : stdgo.GoInt64), (_i : stdgo.GoInt64)));
@:check2r _x1.mul(_x1, _x2);
@:check2r _x1.mul(_x1, _x3);
@:check2r _x1.mul(_x1, _x4);
@:check2r _x1.mul(_x1, _x4);
if ((((_i + _j : stdgo.GoInt)) & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                            @:check2r _x1.neg(_x1);
                        };
@:check2r _a._set(_i, _j, _x1);
                        _j++;
                    };
                };
                _i++;
            };
        };
        return _a;
    }
