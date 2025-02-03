package stdgo.math.big;
class Bits_static_extension {
    static public function float_(_bits:Bits):Float_ {
        return stdgo._internal.math.big.Big_Bits_static_extension.Bits_static_extension.float_(_bits);
    }
    static public function _round(_x:Bits, _prec:std.UInt, _mode:RoundingMode):Float_ {
        final _prec = (_prec : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_Bits_static_extension.Bits_static_extension._round(_x, _prec, _mode);
    }
    static public function _norm(_x:Bits):Bits {
        return stdgo._internal.math.big.Big_Bits_static_extension.Bits_static_extension._norm(_x);
    }
    static public function _mul(_x:Bits, _y:Bits):Bits {
        return stdgo._internal.math.big.Big_Bits_static_extension.Bits_static_extension._mul(_x, _y);
    }
    static public function _add(_x:Bits, _y:Bits):Bits {
        return stdgo._internal.math.big.Big_Bits_static_extension.Bits_static_extension._add(_x, _y);
    }
}
