package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.time.Time_ParseError_static_extension.ParseError_static_extension) class ParseError {
    public var layout : stdgo.GoString = "";
    public var value : stdgo.GoString = "";
    public var layoutElem : stdgo.GoString = "";
    public var valueElem : stdgo.GoString = "";
    public var message : stdgo.GoString = "";
    public function new(?layout:stdgo.GoString, ?value:stdgo.GoString, ?layoutElem:stdgo.GoString, ?valueElem:stdgo.GoString, ?message:stdgo.GoString) {
        if (layout != null) this.layout = layout;
        if (value != null) this.value = value;
        if (layoutElem != null) this.layoutElem = layoutElem;
        if (valueElem != null) this.valueElem = valueElem;
        if (message != null) this.message = message;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ParseError(layout, value, layoutElem, valueElem, message);
    }
}
