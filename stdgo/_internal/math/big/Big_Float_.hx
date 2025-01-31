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
@:structInit @:using(stdgo._internal.math.big.Big_Float__static_extension.Float__static_extension) class Float_ {
    public var _prec : stdgo.GoUInt32 = 0;
    public var _mode : stdgo._internal.math.big.Big_RoundingMode.RoundingMode = ((0 : stdgo.GoUInt8) : stdgo._internal.math.big.Big_RoundingMode.RoundingMode);
    public var _acc : stdgo._internal.math.big.Big_Accuracy.Accuracy = ((0 : stdgo.GoInt8) : stdgo._internal.math.big.Big_Accuracy.Accuracy);
    public var _form : stdgo._internal.math.big.Big_T_form.T_form = ((0 : stdgo.GoUInt8) : stdgo._internal.math.big.Big_T_form.T_form);
    public var _neg : Bool = false;
    public var _mant : stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
    public var _exp : stdgo.GoInt32 = 0;
    public function new(?_prec:stdgo.GoUInt32, ?_mode:stdgo._internal.math.big.Big_RoundingMode.RoundingMode, ?_acc:stdgo._internal.math.big.Big_Accuracy.Accuracy, ?_form:stdgo._internal.math.big.Big_T_form.T_form, ?_neg:Bool, ?_mant:stdgo._internal.math.big.Big_T_nat.T_nat, ?_exp:stdgo.GoInt32) {
        if (_prec != null) this._prec = _prec;
        if (_mode != null) this._mode = _mode;
        if (_acc != null) this._acc = _acc;
        if (_form != null) this._form = _form;
        if (_neg != null) this._neg = _neg;
        if (_mant != null) this._mant = _mant;
        if (_exp != null) this._exp = _exp;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Float_(_prec, _mode, _acc, _form, _neg, _mant, _exp);
    }
}
