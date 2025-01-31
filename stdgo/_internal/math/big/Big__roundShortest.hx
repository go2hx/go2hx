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
function _roundShortest(_d:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>):Void {
        if (((@:checkr _d ?? throw "null pointer dereference")._mant.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        var _mant = ((new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._set((@:checkr _x ?? throw "null pointer dereference")._mant) : stdgo._internal.math.big.Big_T_nat.T_nat);
        var _exp = (((@:checkr _x ?? throw "null pointer dereference")._exp : stdgo.GoInt) - _mant._bitLen() : stdgo.GoInt);
        var _s = (_mant._bitLen() - (((@:checkr _x ?? throw "null pointer dereference")._prec + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) : stdgo.GoInt);
        if ((_s < (0 : stdgo.GoInt) : Bool)) {
            _mant = _mant._shl(_mant, (-_s : stdgo.GoUInt));
        } else if ((_s > (0 : stdgo.GoInt) : Bool)) {
            _mant = _mant._shr(_mant, (_s : stdgo.GoUInt));
        };
        _exp = (_exp + (_s) : stdgo.GoInt);
        var _lower:stdgo._internal.math.big.Big_T_decimal.T_decimal = ({} : stdgo._internal.math.big.Big_T_decimal.T_decimal);
        var _tmp:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
        @:check2 _lower._init(_tmp._sub(_mant, stdgo._internal.math.big.Big__natOne._natOne), _exp);
        var _upper:stdgo._internal.math.big.Big_T_decimal.T_decimal = ({} : stdgo._internal.math.big.Big_T_decimal.T_decimal);
        @:check2 _upper._init(_tmp._add(_mant, stdgo._internal.math.big.Big__natOne._natOne), _exp);
        var _inclusive = ((_mant[(0 : stdgo.GoInt)] & (2u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) == ((0u32 : stdgo._internal.math.big.Big_Word.Word)) : Bool);
        for (_i => _m in (@:checkr _d ?? throw "null pointer dereference")._mant) {
            var _l = (@:check2 _lower._at(_i) : stdgo.GoUInt8);
            var _u = (@:check2 _upper._at(_i) : stdgo.GoUInt8);
            var _okdown = ((_l != _m) || (_inclusive && (_i + (1 : stdgo.GoInt) : stdgo.GoInt) == ((_lower._mant.length)) : Bool) : Bool);
            var _okup = ((_m != _u) && (((_inclusive || ((_m + (1 : stdgo.GoUInt8) : stdgo.GoUInt8) < _u : Bool) : Bool) || ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_upper._mant.length) : Bool) : Bool)) : Bool);
            if ((_okdown && _okup : Bool)) {
                @:check2r _d._round((_i + (1 : stdgo.GoInt) : stdgo.GoInt));
                return;
            } else if (_okdown) {
                @:check2r _d._roundDown((_i + (1 : stdgo.GoInt) : stdgo.GoInt));
                return;
            } else if (_okup) {
                @:check2r _d._roundUp((_i + (1 : stdgo.GoInt) : stdgo.GoInt));
                return;
            };
        };
    }
