package stdgo.internal.profile;
@:structInit @:using(stdgo.internal.profile.Profile.Function_static_extension) abstract Function(stdgo._internal.internal.profile.Profile_Function.Function) from stdgo._internal.internal.profile.Profile_Function.Function to stdgo._internal.internal.profile.Profile_Function.Function {
    public var iD(get, set) : haxe.UInt64;
    function get_iD():haxe.UInt64 return this.iD;
    function set_iD(v:haxe.UInt64):haxe.UInt64 {
        this.iD = (v : stdgo.GoUInt64);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var systemName(get, set) : String;
    function get_systemName():String return this.systemName;
    function set_systemName(v:String):String {
        this.systemName = (v : stdgo.GoString);
        return v;
    }
    public var filename(get, set) : String;
    function get_filename():String return this.filename;
    function set_filename(v:String):String {
        this.filename = (v : stdgo.GoString);
        return v;
    }
    public var startLine(get, set) : haxe.Int64;
    function get_startLine():haxe.Int64 return this.startLine;
    function set_startLine(v:haxe.Int64):haxe.Int64 {
        this.startLine = (v : stdgo.GoInt64);
        return v;
    }
    public var _nameX(get, set) : haxe.Int64;
    function get__nameX():haxe.Int64 return this._nameX;
    function set__nameX(v:haxe.Int64):haxe.Int64 {
        this._nameX = (v : stdgo.GoInt64);
        return v;
    }
    public var _systemNameX(get, set) : haxe.Int64;
    function get__systemNameX():haxe.Int64 return this._systemNameX;
    function set__systemNameX(v:haxe.Int64):haxe.Int64 {
        this._systemNameX = (v : stdgo.GoInt64);
        return v;
    }
    public var _filenameX(get, set) : haxe.Int64;
    function get__filenameX():haxe.Int64 return this._filenameX;
    function set__filenameX(v:haxe.Int64):haxe.Int64 {
        this._filenameX = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?iD:haxe.UInt64, ?name:String, ?systemName:String, ?filename:String, ?startLine:haxe.Int64, ?_nameX:haxe.Int64, ?_systemNameX:haxe.Int64, ?_filenameX:haxe.Int64) this = new stdgo._internal.internal.profile.Profile_Function.Function((iD : stdgo.GoUInt64), (name : stdgo.GoString), (systemName : stdgo.GoString), (filename : stdgo.GoString), (startLine : stdgo.GoInt64), (_nameX : stdgo.GoInt64), (_systemNameX : stdgo.GoInt64), (_filenameX : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
