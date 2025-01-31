package stdgo._internal.mime.multipart;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.mime.quotedprintable.Quotedprintable;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.mime.Mime;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.mime.multipart.Multipart_T_partReader_static_extension.T_partReader_static_extension) class T_partReader {
    public var _p : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part> = (null : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>);
    public function new(?_p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_partReader(_p);
    }
}
