package stdgo._internal.go.internal.gcimporter;
@:structInit @:using(stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension) class T_importReader {
    public var _p : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter> = (null : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter>);
    public var _declReader : stdgo._internal.bytes.Bytes_reader.Reader = ({} : stdgo._internal.bytes.Bytes_reader.Reader);
    public var _currPkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
    public var _prevFile : stdgo.GoString = "";
    public var _prevLine : stdgo.GoInt64 = 0;
    public var _prevColumn : stdgo.GoInt64 = 0;
    public function new(?_p:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter>, ?_declReader:stdgo._internal.bytes.Bytes_reader.Reader, ?_currPkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, ?_prevFile:stdgo.GoString, ?_prevLine:stdgo.GoInt64, ?_prevColumn:stdgo.GoInt64) {
        if (_p != null) this._p = _p;
        if (_declReader != null) this._declReader = _declReader;
        if (_currPkg != null) this._currPkg = _currPkg;
        if (_prevFile != null) this._prevFile = _prevFile;
        if (_prevLine != null) this._prevLine = _prevLine;
        if (_prevColumn != null) this._prevColumn = _prevColumn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_importReader(_p, _declReader, _currPkg, _prevFile, _prevLine, _prevColumn);
    }
}
