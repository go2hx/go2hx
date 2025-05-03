package stdgo._internal.time;
@:keep @:allow(stdgo._internal.time.Time.ParseError_asInterface) class ParseError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.time.Time_parseerror.ParseError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.time.Time_parseerror.ParseError> = _e;
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L887"
        if ((@:checkr _e ?? throw "null pointer dereference").message == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L888"
            return (((((((("parsing time " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote((@:checkr _e ?? throw "null pointer dereference").value?.__copy__())?.__copy__() : stdgo.GoString) + (" as " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.time.Time__quote._quote((@:checkr _e ?? throw "null pointer dereference").layout?.__copy__())?.__copy__() : stdgo.GoString) + (": cannot parse " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.time.Time__quote._quote((@:checkr _e ?? throw "null pointer dereference").valueElem?.__copy__())?.__copy__() : stdgo.GoString) + (" as " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.time.Time__quote._quote((@:checkr _e ?? throw "null pointer dereference").layoutElem?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L894"
        return ((("parsing time " : stdgo.GoString) + stdgo._internal.time.Time__quote._quote((@:checkr _e ?? throw "null pointer dereference").value?.__copy__())?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").message?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
