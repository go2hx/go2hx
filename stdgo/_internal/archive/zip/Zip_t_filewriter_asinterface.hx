package stdgo._internal.archive.zip;
class T_fileWriter_asInterface {
    @:keep
    @:tdfield
    public dynamic function _writeDataDescriptor():stdgo.Error return @:_0 __self__.value._writeDataDescriptor();
    @:keep
    @:tdfield
    public dynamic function _close():stdgo.Error return @:_0 __self__.value._close();
    @:keep
    @:tdfield
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_p);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _isZip64():Bool return @:_0 __self__.value._isZip64();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _hasDataDescriptor():Bool return @:_0 __self__.value._hasDataDescriptor();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setMode(_0:stdgo._internal.io.fs.Fs_filemode.FileMode):Void @:_0 __self__.value.setMode(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setModTime(_0:stdgo._internal.time.Time_time.Time):Void @:_0 __self__.value.setModTime(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function mode():stdgo._internal.io.fs.Fs_filemode.FileMode return @:_0 __self__.value.mode();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function modTime():stdgo._internal.time.Time_time.Time return @:_0 __self__.value.modTime();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function fileInfo():stdgo._internal.io.fs.Fs_fileinfo.FileInfo return @:_0 __self__.value.fileInfo();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.zip.Zip_t_filewriterpointer.T_fileWriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
