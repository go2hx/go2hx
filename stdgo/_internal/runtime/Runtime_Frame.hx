package stdgo._internal.runtime;
@:structInit class Frame {
    public var pC : stdgo.GoUIntptr = 0;
    public var func : stdgo.Ref<stdgo._internal.runtime.Runtime_Func.Func> = (null : stdgo.Ref<stdgo._internal.runtime.Runtime_Func.Func>);
    public var function_ : stdgo.GoString = "";
    public var file : stdgo.GoString = "";
    public var line : stdgo.GoInt = 0;
    public var entry : stdgo.GoUIntptr = 0;
    public function new(?pC:stdgo.GoUIntptr, ?func:stdgo.Ref<stdgo._internal.runtime.Runtime_Func.Func>, ?function_:stdgo.GoString, ?file:stdgo.GoString, ?line:stdgo.GoInt, ?entry:stdgo.GoUIntptr) {
        if (pC != null) this.pC = pC;
        if (func != null) this.func = func;
        if (function_ != null) this.function_ = function_;
        if (file != null) this.file = file;
        if (line != null) this.line = line;
        if (entry != null) this.entry = entry;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Frame(pC, func, function_, file, line, entry);
    }
}
