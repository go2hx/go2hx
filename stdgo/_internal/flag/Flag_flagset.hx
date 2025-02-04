package stdgo._internal.flag;
@:structInit @:using(stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension) class FlagSet {
    public var usage : () -> Void = null;
    public var _name : stdgo.GoString = "";
    public var _parsed : Bool = false;
    public var _actual : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>);
    public var _formal : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>);
    public var _args : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _errorHandling : stdgo._internal.flag.Flag_errorhandling.ErrorHandling = ((0 : stdgo.GoInt) : stdgo._internal.flag.Flag_errorhandling.ErrorHandling);
    public var _output : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _undef : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public function new(?usage:() -> Void, ?_name:stdgo.GoString, ?_parsed:Bool, ?_actual:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>, ?_formal:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>, ?_args:stdgo.Slice<stdgo.GoString>, ?_errorHandling:stdgo._internal.flag.Flag_errorhandling.ErrorHandling, ?_output:stdgo._internal.io.Io_writer.Writer, ?_undef:stdgo.GoMap<stdgo.GoString, stdgo.GoString>) {
        if (usage != null) this.usage = usage;
        if (_name != null) this._name = _name;
        if (_parsed != null) this._parsed = _parsed;
        if (_actual != null) this._actual = _actual;
        if (_formal != null) this._formal = _formal;
        if (_args != null) this._args = _args;
        if (_errorHandling != null) this._errorHandling = _errorHandling;
        if (_output != null) this._output = _output;
        if (_undef != null) this._undef = _undef;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FlagSet(usage, _name, _parsed, _actual, _formal, _args, _errorHandling, _output, _undef);
    }
}
