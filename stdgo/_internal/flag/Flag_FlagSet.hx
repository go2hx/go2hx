package stdgo._internal.flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
@:structInit @:using(stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension) class FlagSet {
    public var usage : () -> Void = null;
    public var _name : stdgo.GoString = "";
    public var _parsed : Bool = false;
    public var _actual : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>);
    public var _formal : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>);
    public var _args : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _errorHandling : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling = ((0 : stdgo.GoInt) : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling);
    public var _output : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public var _undef : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public function new(?usage:() -> Void, ?_name:stdgo.GoString, ?_parsed:Bool, ?_actual:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>, ?_formal:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>>, ?_args:stdgo.Slice<stdgo.GoString>, ?_errorHandling:stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling, ?_output:stdgo._internal.io.Io_Writer.Writer, ?_undef:stdgo.GoMap<stdgo.GoString, stdgo.GoString>) {
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
