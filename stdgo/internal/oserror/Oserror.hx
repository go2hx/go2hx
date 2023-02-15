package stdgo.internal.oserror;
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
    // Package oserror defines errors values used in the os package.
    //
    // These types are defined here to permit the syscall package to reference them.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
var errInvalid = stdgo.errors.Errors.new_(("invalid argument" : GoString));
/**
    
    
    
**/
var errPermission = stdgo.errors.Errors.new_(("permission denied" : GoString));
/**
    
    
    
**/
var errExist = stdgo.errors.Errors.new_(("file already exists" : GoString));
/**
    
    
    
**/
var errNotExist = stdgo.errors.Errors.new_(("file does not exist" : GoString));
/**
    
    
    
**/
var errClosed = stdgo.errors.Errors.new_(("file already closed" : GoString));
