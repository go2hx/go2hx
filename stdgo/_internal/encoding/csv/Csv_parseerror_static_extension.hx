package stdgo._internal.encoding.csv;
@:keep @:allow(stdgo._internal.encoding.csv.Csv.ParseError_asInterface) class ParseError_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference").err;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError> = _e;
        if (stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").err) == (stdgo.Go.toInterface(stdgo._internal.encoding.csv.Csv_errfieldcount.errFieldCount))) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("record on line %d: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").line), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").err))?.__copy__();
        };
        if ((@:checkr _e ?? throw "null pointer dereference").startLine != ((@:checkr _e ?? throw "null pointer dereference").line)) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("record on line %d; parse error on line %d, column %d: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").startLine), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").line), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").column), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").err))?.__copy__();
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("parse error on line %d, column %d: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").line), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").column), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").err))?.__copy__();
    }
}
