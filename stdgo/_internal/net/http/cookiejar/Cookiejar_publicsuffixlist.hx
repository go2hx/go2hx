package stdgo._internal.net.http.cookiejar;
@:interface typedef PublicSuffixList = stdgo.StructType & {
    /**
        * PublicSuffix returns the public suffix of domain.
        * 
        * TODO: specify which of the caller and callee is responsible for IP
        * addresses, for leading and trailing dots, for case sensitivity, and
        * for IDN/Punycode.
        
        
    **/
    @:interfacetypeffun
    public dynamic function publicSuffix(_domain:stdgo.GoString):stdgo.GoString;
    /**
        * String returns a description of the source of this public suffix
        * list. The description will typically contain something like a time
        * stamp or version number.
        
        
    **/
    @:interfacetypeffun
    public dynamic function string():stdgo.GoString;
};
