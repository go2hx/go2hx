package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_inlineFrame_static_extension) abstract T_inlineFrame(stdgo._internal.runtime.Runtime_T_inlineFrame.T_inlineFrame) from stdgo._internal.runtime.Runtime_T_inlineFrame.T_inlineFrame to stdgo._internal.runtime.Runtime_T_inlineFrame.T_inlineFrame {
    public function new() this = new stdgo._internal.runtime.Runtime_T_inlineFrame.T_inlineFrame();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
