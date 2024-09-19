package stdgo._internal.debug.dwarf;
typedef T_dataFormat = stdgo.StructType & {
    /**
        DWARF version number. Zero means unknown.
        
        
    **/
    public dynamic function _version():stdgo.GoInt;
    /**
        64-bit DWARF format?
        
        
    **/
    public dynamic function _dwarf64():{ var _0 : Bool; var _1 : Bool; };
    /**
        Size of an address, in bytes. Zero means unknown.
        
        
    **/
    public dynamic function _addrsize():stdgo.GoInt;
};
