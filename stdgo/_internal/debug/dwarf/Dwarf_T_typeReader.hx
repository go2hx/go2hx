package stdgo._internal.debug.dwarf;
import stdgo._internal.errors.Errors;
import stdgo._internal.path.Path;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
@:interface typedef T_typeReader = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function seek(_0:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function next():{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _clone():stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _offset():stdgo._internal.debug.dwarf.Dwarf_Offset.Offset;
    /**
        AddressSize returns the size in bytes of addresses in the current
        compilation unit.
        
        
    **/
    @:interfacetypeffun
    public dynamic function addressSize():stdgo.GoInt;
};
