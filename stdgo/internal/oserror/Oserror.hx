package stdgo.internal.oserror;
/**
    // Package oserror defines errors values used in the os package.
    //
    // These types are defined here to permit the syscall package to reference them.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
var errInvalid : stdgo.Error = stdgo.errors.Errors.new_(("invalid argument" : stdgo.GoString));
/**
    
    
    
**/
var errPermission : stdgo.Error = stdgo.errors.Errors.new_(("permission denied" : stdgo.GoString));
/**
    
    
    
**/
var errExist : stdgo.Error = stdgo.errors.Errors.new_(("file already exists" : stdgo.GoString));
/**
    
    
    
**/
var errNotExist : stdgo.Error = stdgo.errors.Errors.new_(("file does not exist" : stdgo.GoString));
/**
    
    
    
**/
var errClosed : stdgo.Error = stdgo.errors.Errors.new_(("file already closed" : stdgo.GoString));
