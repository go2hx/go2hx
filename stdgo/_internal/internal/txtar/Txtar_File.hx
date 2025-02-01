package stdgo._internal.internal.txtar;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
@:structInit @:using(stdgo._internal.internal.txtar.Txtar_File_static_extension.File_static_extension) class File {
    public var name : stdgo.GoString = "";
    public var data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?name:stdgo.GoString, ?data:stdgo.Slice<stdgo.GoUInt8>) {
        if (name != null) this.name = name;
        if (data != null) this.data = data;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new File(name, data);
    }
}
