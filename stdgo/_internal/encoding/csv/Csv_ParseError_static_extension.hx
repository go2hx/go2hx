package stdgo._internal.encoding.csv;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
@:keep @:allow(stdgo._internal.encoding.csv.Csv.ParseError_asInterface) class ParseError_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference").err;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError> = _e;
        if (stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").err) == (stdgo.Go.toInterface(stdgo._internal.encoding.csv.Csv_errFieldCount.errFieldCount))) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("record on line %d: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").line), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").err))?.__copy__();
        };
        if ((@:checkr _e ?? throw "null pointer dereference").startLine != ((@:checkr _e ?? throw "null pointer dereference").line)) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("record on line %d; parse error on line %d, column %d: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").startLine), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").line), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").column), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").err))?.__copy__();
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("parse error on line %d, column %d: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").line), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").column), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").err))?.__copy__();
    }
}
