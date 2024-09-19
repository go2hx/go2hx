package stdgo._internal.encoding.csv;
@:keep @:allow(stdgo._internal.encoding.csv.Csv.ParseError_asInterface) class ParseError_static_extension {
    @:keep
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError> = _e;
        return _e.err;
    }
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError> = _e;
        if (stdgo.Go.toInterface(_e.err) == (stdgo.Go.toInterface(stdgo._internal.encoding.csv.Csv_errFieldCount.errFieldCount))) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("record on line %d: %v" : stdgo.GoString), stdgo.Go.toInterface(_e.line), stdgo.Go.toInterface(_e.err))?.__copy__();
        };
        if (_e.startLine != (_e.line)) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("record on line %d; parse error on line %d, column %d: %v" : stdgo.GoString), stdgo.Go.toInterface(_e.startLine), stdgo.Go.toInterface(_e.line), stdgo.Go.toInterface(_e.column), stdgo.Go.toInterface(_e.err))?.__copy__();
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("parse error on line %d, column %d: %v" : stdgo.GoString), stdgo.Go.toInterface(_e.line), stdgo.Go.toInterface(_e.column), stdgo.Go.toInterface(_e.err))?.__copy__();
    }
}
