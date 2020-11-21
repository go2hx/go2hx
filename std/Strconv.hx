package std;

class StrConv {
	public static function ParseBool(str:String) {}

	public static function FormatBool(b:Bool) {}

	public static function AppendBool(dst:Array<Byte>, b:Bool) {}

	public static function ParseComplex(s:String, bitSize:Int) {}

	public static function ParseFloat(s:String, bitSize:Int) {}

	public static function Error() {}

	public static function Unwrap() {}

	public static function ParseUint(s:String, base:Int, bitSize:Int) {}

	public static function ParseInt(s:String, base:Int, bitSize:Int) {}

	public static function Atoi(s:String) {}

	public static function FormatComplex(c:complex128, fmt:Byte, prec:IntbitSize:Int) {}

	public static function String() {}

	public static function Assign(v:Uint64) {}

	public static function Shift(k:Int) {}

	public static function Round(nd:Int) {}

	public static function RoundDown(nd:Int) {}

	public static function RoundUp(nd:Int) {}

	public static function RoundedInteger() {}

	public static function AssignComputeBounds(mant:Uint64, exp:Int, neg:Bool, flt:floatInfo) {}

	public static function Normalize() {}

	public static function Multiply(g:extFloat) {}

	public static function AssignDecimal(mantissa:Uint64, exp10:Int, neg:Bool, trunc:Bool, flt:floatInfo) {}

	public static function FixedDecimal(d:decimalSlice, n:Int) {}

	public static function ShortestDecimal(d:decimalSlice, lower:extFloatupper:extFloat) {}

	public static function FormatFloat(f:float64, fmt:Byte, prec:IntbitSize:Int) {}

	public static function AppendFloat(dst:Array<Byte>, f:float64, fmt:Byte, prec:IntbitSize:Int) {}

	public static function FormatUint(i:Uint64, base:Int) {}

	public static function FormatInt(i:Int64, base:Int) {}

	public static function Itoa(i:Int) {}

	public static function AppendInt(dst:Array<Byte>, i:Int64, base:Int) {}

	public static function AppendUint(dst:Array<Byte>, i:Uint64, base:Int) {}

	public static function Quote(s:String) {}

	public static function AppendQuote(dst:Array<Byte>, s:String) {}

	public static function QuoteToASCII(s:String) {}

	public static function AppendQuoteToASCII(dst:Array<Byte>, s:String) {}

	public static function QuoteToGraphic(s:String) {}

	public static function AppendQuoteToGraphic(dst:Array<Byte>, s:String) {}

	public static function QuoteRune(r:rune) {}

	public static function AppendQuoteRune(dst:Array<Byte>, r:rune) {}

	public static function QuoteRuneToASCII(r:rune) {}

	public static function AppendQuoteRuneToASCII(dst:Array<Byte>, r:rune) {}

	public static function QuoteRuneToGraphic(r:rune) {}

	public static function AppendQuoteRuneToGraphic(dst:Array<Byte>, r:rune) {}

	public static function CanBackquote(s:String) {}

	public static function UnquoteChar(s:String, quote:Byte) {}

	public static function Unquote(s:String) {}

	public static function IsPrint(r:rune) {}

	public static function IsGraphic(r:rune) {}
}
