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
@:structInit @:using(stdgo._internal.mime.multipart.Multipart_Form_static_extension.Form_static_extension) class Form {
    public var value : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>);
    public var file : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>>);
    public function new(?value:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>, ?file:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>>) {
        if (value != null) this.value = value;
        if (file != null) this.file = file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Form(value, file);
    }
}
