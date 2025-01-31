package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.encoding.asn1.Asn1_SyntaxError_static_extension.SyntaxError_static_extension) class SyntaxError {
    public var msg : stdgo.GoString = "";
    public function new(?msg:stdgo.GoString) {
        if (msg != null) this.msg = msg;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SyntaxError(msg);
    }
}
