package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.time.Time.ParseError_asInterface) class ParseError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.time.Time_ParseError.ParseError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.time.Time_ParseError.ParseError> = _e;
        if ((@:checkr _e ?? throw "null pointer dereference").message == (stdgo.Go.str())) {
            return (((((((("parsing time " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote((@:checkr _e ?? throw "null pointer dereference").value?.__copy__())?.__copy__() : stdgo.GoString) + (" as " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.time.Time__quote._quote((@:checkr _e ?? throw "null pointer dereference").layout?.__copy__())?.__copy__() : stdgo.GoString) + (": cannot parse " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.time.Time__quote._quote((@:checkr _e ?? throw "null pointer dereference").valueElem?.__copy__())?.__copy__() : stdgo.GoString) + (" as " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.time.Time__quote._quote((@:checkr _e ?? throw "null pointer dereference").layoutElem?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return ((("parsing time " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote((@:checkr _e ?? throw "null pointer dereference").value?.__copy__())?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").message?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
