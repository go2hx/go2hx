package stdgo._internal.mime.multipart;
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
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.sectionReader ?? throw "null pointer derefrence").read;
    public var readAt(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readAt():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 (this.sectionReader ?? throw "null pointer derefrence").readAt;
    public var seek(get, never) : (stdgo.GoInt64, stdgo.GoInt) -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_seek():(stdgo.GoInt64, stdgo.GoInt) -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:check3 (this.sectionReader ?? throw "null pointer derefrence").seek;
    public var size(get, never) : () -> stdgo.GoInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoInt64 return @:check3 (this.sectionReader ?? throw "null pointer derefrence").size;
    public function __copy__() {
        return new T_sectionReadCloser(sectionReader, closer);
    }
}
