package stdgo._internal.encoding.pem;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.encoding.pem.Pem_Block_static_extension.Block_static_extension) class Block {
    public var type : stdgo.GoString = "";
    public var headers : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var bytes : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?type:stdgo.GoString, ?headers:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?bytes:stdgo.Slice<stdgo.GoUInt8>) {
        if (type != null) this.type = type;
        if (headers != null) this.headers = headers;
        if (bytes != null) this.bytes = bytes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Block(type, headers, bytes);
    }
}
