package stdgo.flag;
@:structInit @:using(stdgo.flag.Flag.FlagSet_static_extension) abstract FlagSet(stdgo._internal.flag.Flag_FlagSet.FlagSet) from stdgo._internal.flag.Flag_FlagSet.FlagSet to stdgo._internal.flag.Flag_FlagSet.FlagSet {
    public var usage(get, set) : () -> Void;
    function get_usage():() -> Void return () -> this.usage();
    function set_usage(v:() -> Void):() -> Void {
        this.usage = v;
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _parsed(get, set) : Bool;
    function get__parsed():Bool return this._parsed;
    function set__parsed(v:Bool):Bool {
        this._parsed = v;
        return v;
    }
    public var _actual(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>;
    function get__actual():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>> return this._actual;
    function set__actual(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>> {
        this._actual = (v : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>);
        return v;
    }
    public var _formal(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>;
    function get__formal():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>> return this._formal;
    function set__formal(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>> {
        this._formal = (v : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>);
        return v;
    }
    public var _args(get, set) : Array<String>;
    function get__args():Array<String> return [for (i in this._args) i];
    function set__args(v:Array<String>):Array<String> {
        this._args = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _errorHandling(get, set) : ErrorHandling;
    function get__errorHandling():ErrorHandling return this._errorHandling;
    function set__errorHandling(v:ErrorHandling):ErrorHandling {
        this._errorHandling = v;
        return v;
    }
    public var _output(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__output():stdgo._internal.io.Io_Writer.Writer return this._output;
    function set__output(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._output = v;
        return v;
    }
    public var _undef(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get__undef():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this._undef;
    function set__undef(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this._undef = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return v;
    }
    public function new(?usage:() -> Void, ?_name:String, ?_parsed:Bool, ?_actual:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>, ?_formal:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>, ?_args:Array<String>, ?_errorHandling:ErrorHandling, ?_output:stdgo._internal.io.Io_Writer.Writer, ?_undef:stdgo.GoMap<stdgo.GoString, stdgo.GoString>) this = new stdgo._internal.flag.Flag_FlagSet.FlagSet(usage, (_name : stdgo.GoString), _parsed, (_actual : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>), (_formal : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>), ([for (i in _args) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), _errorHandling, _output, (_undef : stdgo.GoMap<stdgo.GoString, stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
