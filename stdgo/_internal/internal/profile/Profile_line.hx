package stdgo._internal.internal.profile;
@:structInit @:using(stdgo._internal.internal.profile.Profile_line_static_extension.Line_static_extension) class Line {
    public var function_ : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function> = (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>);
    public var line : stdgo.GoInt64 = 0;
    public var _functionIDX : stdgo.GoUInt64 = 0;
    public function new(?function_:stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>, ?line:stdgo.GoInt64, ?_functionIDX:stdgo.GoUInt64) {
        if (function_ != null) this.function_ = function_;
        if (line != null) this.line = line;
        if (_functionIDX != null) this._functionIDX = _functionIDX;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Line(function_, line, _functionIDX);
    }
}
