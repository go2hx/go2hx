package stdgo._internal.encoding.pem;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
var _pemEnd : stdgo.Slice<stdgo.GoUInt8> = (("\n-----END " : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
