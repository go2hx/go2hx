package stdgo._internal.fmt;
@:interface typedef ScanState = stdgo.StructType & {
    /**
        * ReadRune reads the next rune (Unicode code point) from the input.
        * If invoked during Scanln, Fscanln, or Sscanln, ReadRune() will
        * return EOF after returning the first '\n' or when reading beyond
        * the specified width.
        
        
    **/
    @:interfacetypeffun
    public dynamic function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; };
    /**
        * UnreadRune causes the next call to ReadRune to return the same rune.
        
        
    **/
    @:interfacetypeffun
    public dynamic function unreadRune():stdgo.Error;
    /**
        * SkipSpace skips space in the input. Newlines are treated appropriately
        * for the operation being performed; see the package documentation
        * for more information.
        
        
    **/
    @:interfacetypeffun
    public dynamic function skipSpace():Void;
    /**
        * Token skips space in the input if skipSpace is true, then returns the
        * run of Unicode code points c satisfying f(c).  If f is nil,
        * !unicode.IsSpace(c) is used; that is, the token will hold non-space
        * characters. Newlines are treated appropriately for the operation being
        * performed; see the package documentation for more information.
        * The returned slice points to shared data that may be overwritten
        * by the next call to Token, a call to a Scan function using the ScanState
        * as input, or when the calling Scan method returns.
        
        
    **/
    @:interfacetypeffun
    public dynamic function token(_skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    /**
        * Width returns the value of the width option and whether it has been set.
        * The unit is Unicode code points.
        
        
    **/
    @:interfacetypeffun
    public dynamic function width():{ var _0 : stdgo.GoInt; var _1 : Bool; };
    /**
        * Because ReadRune is implemented by the interface, Read should never be
        * called by the scanning routines and a valid implementation of
        * ScanState may choose always to return an error from Read.
        
        
    **/
    @:interfacetypeffun
    public dynamic function read(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
