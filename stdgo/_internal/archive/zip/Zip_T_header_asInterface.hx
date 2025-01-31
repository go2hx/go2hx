package stdgo._internal.archive.zip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.Path;
import stdgo._internal.compress.flate.Flate;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.encoding.binary.Binary;
class T_header_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _isZip64():Bool return @:_0 __self__.value._isZip64();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _hasDataDescriptor():Bool return @:_0 __self__.value._hasDataDescriptor();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setMode(_0:stdgo._internal.io.fs.Fs_FileMode.FileMode):Void @:_0 __self__.value.setMode(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setModTime(_0:stdgo._internal.time.Time_Time.Time):Void @:_0 __self__.value.setModTime(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function mode():stdgo._internal.io.fs.Fs_FileMode.FileMode return @:_0 __self__.value.mode();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function modTime():stdgo._internal.time.Time_Time.Time return @:_0 __self__.value.modTime();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function fileInfo():stdgo._internal.io.fs.Fs_FileInfo.FileInfo return @:_0 __self__.value.fileInfo();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.zip.Zip_T_headerPointer.T_headerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
