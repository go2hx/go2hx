package stdgo._internal.net.http.cookiejar;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
@:interface typedef PublicSuffixList = stdgo.StructType & {
    /**
        PublicSuffix returns the public suffix of domain.
        
        TODO: specify which of the caller and callee is responsible for IP
        addresses, for leading and trailing dots, for case sensitivity, and
        for IDN/Punycode.
        
        
    **/
    @:interfacetypeffun
    public dynamic function publicSuffix(_domain:stdgo.GoString):stdgo.GoString;
    /**
        String returns a description of the source of this public suffix
        list. The description will typically contain something like a time
        stamp or version number.
        
        
    **/
    @:interfacetypeffun
    public dynamic function string():stdgo.GoString;
};
