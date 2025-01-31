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
@:interface typedef T_dataFormat = stdgo.StructType & {
    /**
        DWARF version number. Zero means unknown.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _version():stdgo.GoInt;
    /**
        64-bit DWARF format?
        
        
    **/
    @:interfacetypeffun
    public dynamic function _dwarf64():{ var _0 : Bool; var _1 : Bool; };
    /**
        Size of an address, in bytes. Zero means unknown.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _addrsize():stdgo.GoInt;
};
