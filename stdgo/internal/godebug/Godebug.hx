package stdgo.internal.godebug;
@:structInit @:using(stdgo.internal.godebug.Godebug.Setting_static_extension) abstract Setting(stdgo._internal.internal.godebug.Godebug.Setting) from stdgo._internal.internal.godebug.Godebug.Setting to stdgo._internal.internal.godebug.Godebug.Setting {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _once(get, set) : stdgo._internal.sync.Sync.Once;
    function get__once():stdgo._internal.sync.Sync.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync.Once):stdgo._internal.sync.Sync.Once {
        this._once = v;
        return v;
    }
    public var _setting(get, set) : stdgo._internal.internal.godebug.Godebug.T_setting;
    function get__setting():stdgo._internal.internal.godebug.Godebug.T_setting return this._setting;
    function set__setting(v:stdgo._internal.internal.godebug.Godebug.T_setting):stdgo._internal.internal.godebug.Godebug.T_setting {
        this._setting = v;
        return v;
    }
    public function new(?_name:String, ?_once:stdgo._internal.sync.Sync.Once, ?_setting:stdgo._internal.internal.godebug.Godebug.T_setting) this = new stdgo._internal.internal.godebug.Godebug.Setting(_name, _once, _setting);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_setting(stdgo._internal.internal.godebug.Godebug.T_setting) from stdgo._internal.internal.godebug.Godebug.T_setting to stdgo._internal.internal.godebug.Godebug.T_setting {
    public var _value(get, set) : stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.internal.godebug.Godebug.T_value>;
    function get__value():stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.internal.godebug.Godebug.T_value> return this._value;
    function set__value(v:stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.internal.godebug.Godebug.T_value>):stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.internal.godebug.Godebug.T_value> {
        this._value = v;
        return v;
    }
    public var _nonDefaultOnce(get, set) : stdgo._internal.sync.Sync.Once;
    function get__nonDefaultOnce():stdgo._internal.sync.Sync.Once return this._nonDefaultOnce;
    function set__nonDefaultOnce(v:stdgo._internal.sync.Sync.Once):stdgo._internal.sync.Sync.Once {
        this._nonDefaultOnce = v;
        return v;
    }
    public var _nonDefault(get, set) : stdgo._internal.sync.atomic_.Atomic_.Uint64;
    function get__nonDefault():stdgo._internal.sync.atomic_.Atomic_.Uint64 return this._nonDefault;
    function set__nonDefault(v:stdgo._internal.sync.atomic_.Atomic_.Uint64):stdgo._internal.sync.atomic_.Atomic_.Uint64 {
        this._nonDefault = v;
        return v;
    }
    public var _info(get, set) : stdgo._internal.internal.godebugs.Godebugs.Info;
    function get__info():stdgo._internal.internal.godebugs.Godebugs.Info return this._info;
    function set__info(v:stdgo._internal.internal.godebugs.Godebugs.Info):stdgo._internal.internal.godebugs.Godebugs.Info {
        this._info = v;
        return v;
    }
    public function new(?_value:stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.internal.godebug.Godebug.T_value>, ?_nonDefaultOnce:stdgo._internal.sync.Sync.Once, ?_nonDefault:stdgo._internal.sync.atomic_.Atomic_.Uint64, ?_info:stdgo._internal.internal.godebugs.Godebugs.Info) this = new stdgo._internal.internal.godebug.Godebug.T_setting(_value, _nonDefaultOnce, _nonDefault, _info);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_value(stdgo._internal.internal.godebug.Godebug.T_value) from stdgo._internal.internal.godebug.Godebug.T_value to stdgo._internal.internal.godebug.Godebug.T_value {
    public var _text(get, set) : String;
    function get__text():String return this._text;
    function set__text(v:String):String {
        this._text = v;
        return v;
    }
    public var _bisect(get, set) : stdgo._internal.internal.bisect.Bisect.Matcher;
    function get__bisect():stdgo._internal.internal.bisect.Bisect.Matcher return this._bisect;
    function set__bisect(v:stdgo._internal.internal.bisect.Bisect.Matcher):stdgo._internal.internal.bisect.Bisect.Matcher {
        this._bisect = v;
        return v;
    }
    public function new(?_text:String, ?_bisect:stdgo._internal.internal.bisect.Bisect.Matcher) this = new stdgo._internal.internal.godebug.Godebug.T_value(_text, _bisect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.internal.godebug.Godebug.T_runtimeStderr_static_extension) abstract T_runtimeStderr(stdgo._internal.internal.godebug.Godebug.T_runtimeStderr) from stdgo._internal.internal.godebug.Godebug.T_runtimeStderr to stdgo._internal.internal.godebug.Godebug.T_runtimeStderr {
    public function new() this = new stdgo._internal.internal.godebug.Godebug.T_runtimeStderr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Setting_static_extension {
    static public function value(s:Setting):String {
        return stdgo._internal.internal.godebug.Godebug.Setting_static_extension.value(s);
    }
    static public function _register(s:Setting):Void {
        stdgo._internal.internal.godebug.Godebug.Setting_static_extension._register(s);
    }
    static public function incNonDefault(s:Setting):Void {
        stdgo._internal.internal.godebug.Godebug.Setting_static_extension.incNonDefault(s);
    }
    static public function string(s:Setting):String {
        return stdgo._internal.internal.godebug.Godebug.Setting_static_extension.string(s);
    }
    static public function undocumented(s:Setting):Bool {
        return stdgo._internal.internal.godebug.Godebug.Setting_static_extension.undocumented(s);
    }
    static public function name(s:Setting):String {
        return stdgo._internal.internal.godebug.Godebug.Setting_static_extension.name(s);
    }
}
class T_runtimeStderr_static_extension {
    static public function write(:T_runtimeStderr, b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.godebug.Godebug.T_runtimeStderr_static_extension.write(, b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
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
