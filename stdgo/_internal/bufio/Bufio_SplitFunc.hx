package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
@:named @:using(stdgo._internal.bufio.Bufio_SplitFunc_static_extension.SplitFunc_static_extension) typedef SplitFunc = (stdgo.Slice<stdgo.GoUInt8>, Bool) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; };
