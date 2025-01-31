package stdgo._internal.internal.pkgbits;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.go.constant.Constant;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.strconv.Strconv;
@:interface typedef Code = stdgo.StructType & {
    /**
        Marker returns the SyncMarker for the Code's dynamic type.
        
        
    **/
    @:interfacetypeffun
    public dynamic function marker():stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker;
    /**
        Value returns the Code's ordinal value.
        
        
    **/
    @:interfacetypeffun
    public dynamic function value():stdgo.GoInt;
};
