package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:interface typedef T_decimalDecompose = stdgo.StructType & {
    /**
        Decompose returns the internal decimal state into parts.
        If the provided buf has sufficient capacity, buf may be returned as the coefficient with
        the value set and length set as appropriate.
        
        
    **/
    @:interfacetypeffun
    public dynamic function decompose(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt8; var _1 : Bool; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.GoInt32; };
};
