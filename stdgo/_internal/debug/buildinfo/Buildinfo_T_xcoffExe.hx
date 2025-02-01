package stdgo._internal.debug.buildinfo;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.debug.elf.Elf;
import stdgo._internal.debug.pe.Pe;
import stdgo._internal.debug.macho.Macho;
import stdgo._internal.internal.xcoff.Xcoff;
import stdgo._internal.debug.plan9obj.Plan9obj;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
@:structInit @:using(stdgo._internal.debug.buildinfo.Buildinfo_T_xcoffExe_static_extension.T_xcoffExe_static_extension) class T_xcoffExe {
    public var _f : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File> = (null : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>);
    public function new(?_f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>) {
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_xcoffExe(_f);
    }
}
