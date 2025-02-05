package stdgo._internal.debug.dwarf;
@:interface typedef T_typeReader = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function seek(_0:stdgo._internal.debug.dwarf.Dwarf_offset.Offset):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function next():{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_entry.Entry>; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _clone():stdgo._internal.debug.dwarf.Dwarf_t_typereader.T_typeReader;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _offset():stdgo._internal.debug.dwarf.Dwarf_offset.Offset;
    /**
        * AddressSize returns the size in bytes of addresses in the current
        * compilation unit.
        
        
    **/
    @:interfacetypeffun
    public dynamic function addressSize():stdgo.GoInt;
};
