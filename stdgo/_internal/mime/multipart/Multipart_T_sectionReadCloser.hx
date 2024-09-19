package stdgo._internal.mime.multipart;
import stdgo._internal.unsafe.Unsafe;
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
    @:embedded
    public function read(_d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.sectionReader.read(_d);
    @:embedded
    public function readAt(_p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.sectionReader.readAt(_p, _off);
    @:embedded
    public function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return this.sectionReader.seek(_offset, _whence);
    @:embedded
    public function size():stdgo.GoInt64 return this.sectionReader.size();
    public function __copy__() {
        return new T_sectionReadCloser(sectionReader, closer);
    }
}
