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
@:structInit @:using(stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser_static_extension.T_sectionReadCloser_static_extension) class T_sectionReadCloser {
    @:embedded
    public var sectionReader : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader> = (null : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>);
    @:embedded
    public var closer : stdgo._internal.io.Io_Closer.Closer = (null : stdgo._internal.io.Io_Closer.Closer);
    public function new(?sectionReader:stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>, ?closer:stdgo._internal.io.Io_Closer.Closer) {
        if (sectionReader != null) this.sectionReader = sectionReader;
        if (closer != null) this.closer = closer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this.sectionReader.read;
    public var readAt(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readAt():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this.sectionReader.readAt;
    public var seek(get, never) : (stdgo.GoInt64, stdgo.GoInt) -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_seek():(stdgo.GoInt64, stdgo.GoInt) -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:check32 this.sectionReader.seek;
    public var size(get, never) : () -> stdgo.GoInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoInt64 return @:check32 this.sectionReader.size;
    public function __copy__() {
        return new T_sectionReadCloser(sectionReader, closer);
    }
}
