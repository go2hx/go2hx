package stdgo.internal;
/**
    Package godebug makes the settings in the $GODEBUG environment variable
    available to other packages. These settings are often used for compatibility
    tweaks, when we need to change a default behavior but want to let users
    opt back in to the original. For example GODEBUG=http2server=0 disables
    HTTP/2 support in the net/http server.
    
    In typical usage, code should declare a Setting as a global
    and then call Value each time the current setting value is needed:
    
    	var http2server = godebug.New("http2server")
    
    	func ServeConn(c net.Conn) {
    		if http2server.Value() == "0" {
    			disallow HTTP/2
    			...
    		}
    		...
    	}
    
    Each time a non-default setting causes a change in program behavior,
    code should call [Setting.IncNonDefault] to increment a counter that can
    be reported by [runtime/metrics.Read].
    Note that counters used with IncNonDefault must be added to
    various tables in other packages. See the [Setting.IncNonDefault]
    documentation for details.
**/
private var __go2hxdoc__package : Bool;
@:forward @:forward.new abstract Setting(stdgo._internal.internal.godebug.Godebug.Setting) from stdgo._internal.internal.godebug.Godebug.Setting to stdgo._internal.internal.godebug.Godebug.Setting {

}
@:forward @:forward.new abstract T_setting(stdgo._internal.internal.godebug.Godebug.T_setting) from stdgo._internal.internal.godebug.Godebug.T_setting to stdgo._internal.internal.godebug.Godebug.T_setting {

}
@:forward @:forward.new abstract T_value(stdgo._internal.internal.godebug.Godebug.T_value) from stdgo._internal.internal.godebug.Godebug.T_value to stdgo._internal.internal.godebug.Godebug.T_value {

}
@:forward @:forward.new abstract T_runtimeStderr(stdgo._internal.internal.godebug.Godebug.T_runtimeStderr) from stdgo._internal.internal.godebug.Godebug.T_runtimeStderr to stdgo._internal.internal.godebug.Godebug.T_runtimeStderr {

}
@:forward @:forward.new abstract Setting_asInterface(stdgo._internal.internal.godebug.Godebug.Setting_asInterface) from stdgo._internal.internal.godebug.Godebug.Setting_asInterface to stdgo._internal.internal.godebug.Godebug.Setting_asInterface {

}
@:forward @:forward.new abstract Setting_static_extension(stdgo._internal.internal.godebug.Godebug.Setting_static_extension) from stdgo._internal.internal.godebug.Godebug.Setting_static_extension to stdgo._internal.internal.godebug.Godebug.Setting_static_extension {

}
@:forward @:forward.new abstract T_runtimeStderr_asInterface(stdgo._internal.internal.godebug.Godebug.T_runtimeStderr_asInterface) from stdgo._internal.internal.godebug.Godebug.T_runtimeStderr_asInterface to stdgo._internal.internal.godebug.Godebug.T_runtimeStderr_asInterface {

}
@:forward @:forward.new abstract T_runtimeStderr_static_extension(stdgo._internal.internal.godebug.Godebug.T_runtimeStderr_static_extension) from stdgo._internal.internal.godebug.Godebug.T_runtimeStderr_static_extension to stdgo._internal.internal.godebug.Godebug.T_runtimeStderr_static_extension {

}
class Godebug {
    /**
        New returns a new Setting for the $GODEBUG setting with the given name.
        
        GODEBUGs meant for use by end users must be listed in ../godebugs/table.go,
        which is used for generating and checking various documentation.
        If the name is not listed in that table, New will succeed but calling Value
        on the returned Setting will panic.
        To disable that panic for access to an undocumented setting,
        prefix the name with a #, as in godebug.New("#gofsystrace").
        The # is a signal to New but not part of the key used in $GODEBUG.
    **/
    static public function new_(name:String):Setting {
        return stdgo._internal.internal.godebug.Godebug.new_(name);
    }
}
