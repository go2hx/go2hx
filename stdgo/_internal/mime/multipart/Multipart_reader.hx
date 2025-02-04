package stdgo._internal.mime.multipart;
@:structInit @:using(stdgo._internal.mime.multipart.Multipart_reader_static_extension.Reader_static_extension) class Reader {
    public var _bufReader : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
    public var _tempDir : stdgo.GoString = "";
    public var _currentPart : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = (null : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>);
    public var _partsRead : stdgo.GoInt = 0;
    public var _nl : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _nlDashBoundary : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _dashBoundaryDash : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _dashBoundary : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_bufReader:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, ?_tempDir:stdgo.GoString, ?_currentPart:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>, ?_partsRead:stdgo.GoInt, ?_nl:stdgo.Slice<stdgo.GoUInt8>, ?_nlDashBoundary:stdgo.Slice<stdgo.GoUInt8>, ?_dashBoundaryDash:stdgo.Slice<stdgo.GoUInt8>, ?_dashBoundary:stdgo.Slice<stdgo.GoUInt8>) {
        if (_bufReader != null) this._bufReader = _bufReader;
        if (_tempDir != null) this._tempDir = _tempDir;
        if (_currentPart != null) this._currentPart = _currentPart;
        if (_partsRead != null) this._partsRead = _partsRead;
        if (_nl != null) this._nl = _nl;
        if (_nlDashBoundary != null) this._nlDashBoundary = _nlDashBoundary;
        if (_dashBoundaryDash != null) this._dashBoundaryDash = _dashBoundaryDash;
        if (_dashBoundary != null) this._dashBoundary = _dashBoundary;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(_bufReader, _tempDir, _currentPart, _partsRead, _nl, _nlDashBoundary, _dashBoundaryDash, _dashBoundary);
    }
}
