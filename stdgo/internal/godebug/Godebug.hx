package stdgo.internal.godebug;
typedef Setting = stdgo._internal.internal.godebug.Godebug_setting.Setting;
typedef SettingPointer = stdgo._internal.internal.godebug.Godebug_settingpointer.SettingPointer;
/**
    * Package godebug makes the settings in the $GODEBUG environment variable
    * available to other packages. These settings are often used for compatibility
    * tweaks, when we need to change a default behavior but want to let users
    * opt back in to the original. For example GODEBUG=http2server=0 disables
    * HTTP/2 support in the net/http server.
    * 
    * In typical usage, code should declare a Setting as a global
    * and then call Value each time the current setting value is needed:
    * 
    * 	var http2server = godebug.New("http2server")
    * 
    * 	func ServeConn(c net.Conn) {
    * 		if http2server.Value() == "0" {
    * 			disallow HTTP/2
    * 			...
    * 		}
    * 		...
    * 	}
    * 
    * Each time a non-default setting causes a change in program behavior,
    * code should call [Setting.IncNonDefault] to increment a counter that can
    * be reported by [runtime/metrics.Read].
    * Note that counters used with IncNonDefault must be added to
    * various tables in other packages. See the [Setting.IncNonDefault]
    * documentation for details.
**/
class Godebug {
    /**
        * New returns a new Setting for the $GODEBUG setting with the given name.
        * 
        * GODEBUGs meant for use by end users must be listed in ../godebugs/table.go,
        * which is used for generating and checking various documentation.
        * If the name is not listed in that table, New will succeed but calling Value
        * on the returned Setting will panic.
        * To disable that panic for access to an undocumented setting,
        * prefix the name with a #, as in godebug.New("#gofsystrace").
        * The # is a signal to New but not part of the key used in $GODEBUG.
    **/
    static public inline function new_(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.godebug.Godebug_setting.Setting> return stdgo._internal.internal.godebug.Godebug_new_.new_(_name);
}
