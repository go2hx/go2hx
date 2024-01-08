package stdgo.log.internal;
/**
    // Package internal contains definitions used by both log and log/slog.
**/
private var __go2hxdoc__package : Bool;
/**
    // DefaultOutput holds a function which calls the default log.Logger's
    // output function.
    // It allows slog.defaultHandler to call into an unexported function of
    // the log package.
    
    
**/
var defaultOutput : (_pc:stdgo.StdGoTypes.GoUIntptr, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>) -> stdgo.Error = null;
