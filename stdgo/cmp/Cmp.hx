package stdgo.cmp;
class Ordered_static_extension {

}
@:union typedef Ordered = {

}
/**
    Package cmp provides types and functions related to comparing
    ordered values.
**/
class Cmp {
    /**
        Less reports whether x is less than y.
        For floating-point types, a NaN is considered less than any non-NaN,
        and -0.0 is not less than (is equal to) 0.0.
    **/
    static public function less<T_>(_x:Dynamic, _y:Dynamic):Bool {
        return stdgo._internal.cmp.Cmp_less.less(_x, _y);
    }
    /**
        Compare returns
        
        	-1 if x is less than y,
        	 0 if x equals y,
        	+1 if x is greater than y.
        
        For floating-point types, a NaN is considered less than any non-NaN,
        a NaN is considered equal to a NaN, and -0.0 is equal to 0.0.
    **/
    static public function compare<T_>(_x:Dynamic, _y:Dynamic):StdTypes.Int {
        return stdgo._internal.cmp.Cmp_compare.compare(_x, _y);
    }
}