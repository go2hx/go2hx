package stdgo._internal.internal.fuzz;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.Math;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.go.parser.Parser;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.json.Json;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_T_sharedMem_static_extension.T_sharedMem_static_extension) class T_sharedMem {
    public var _f : stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
    public var _region : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _removeOnClose : Bool = false;
    public var _sys : stdgo._internal.internal.fuzz.Fuzz_T_sharedMemSys.T_sharedMemSys = ({} : stdgo._internal.internal.fuzz.Fuzz_T_sharedMemSys.T_sharedMemSys);
    public function new(?_f:stdgo.Ref<stdgo._internal.os.Os_File.File>, ?_region:stdgo.Slice<stdgo.GoUInt8>, ?_removeOnClose:Bool, ?_sys:stdgo._internal.internal.fuzz.Fuzz_T_sharedMemSys.T_sharedMemSys) {
        if (_f != null) this._f = _f;
        if (_region != null) this._region = _region;
        if (_removeOnClose != null) this._removeOnClose = _removeOnClose;
        if (_sys != null) this._sys = _sys;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sharedMem(_f, _region, _removeOnClose, _sys);
    }
}
