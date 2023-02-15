package stdgo.internal.safefilepath;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Package safefilepath manipulates operating-system file paths.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
private var _errInvalidPath = (null : Error);
/**
    // FromFS converts a slash-separated path into an operating-system path.
    //
    // FromFS returns an error if the path cannot be represented by the operating
    // system. For example, paths containing '\' and ':' characters are rejected
    // on Windows.
**/
function fromFS(_path:GoString):{ var _0 : GoString; var _1 : Error; } throw "internal.safefilepath.fromFS is not yet implemented";
private function _fromFS(_path:GoString):{ var _0 : GoString; var _1 : Error; } throw "internal.safefilepath._fromFS is not yet implemented";
