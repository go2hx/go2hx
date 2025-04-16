package stdgo._internal.debug.buildinfo;
@:interface typedef T_exe = stdgo.StructType & {
    /**
        * ReadData reads and returns up to size bytes starting at virtual address addr.
        
        
    **/
    @:interfacetypeffun
    public dynamic function readData(_addr:stdgo.GoUInt64, _size:stdgo.GoUInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    /**
        * DataStart returns the virtual address of the segment or section that
        * should contain build information. This is either a specially named section
        * or the first writable non-zero data segment.
        
        
    **/
    @:interfacetypeffun
    public dynamic function dataStart():stdgo.GoUInt64;
};
