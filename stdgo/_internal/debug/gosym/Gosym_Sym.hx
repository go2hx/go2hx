package stdgo._internal.debug.gosym;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.sort.Sort;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.debug.gosym.Gosym_Sym_static_extension.Sym_static_extension) class Sym {
    public var value : stdgo.GoUInt64 = 0;
    public var type : stdgo.GoUInt8 = 0;
    public var name : stdgo.GoString = "";
    public var goType : stdgo.GoUInt64 = 0;
    public var func : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func>);
    public var _goVersion : stdgo._internal.debug.gosym.Gosym_T_version.T_version = ((0 : stdgo.GoInt) : stdgo._internal.debug.gosym.Gosym_T_version.T_version);
    public function new(?value:stdgo.GoUInt64, ?type:stdgo.GoUInt8, ?name:stdgo.GoString, ?goType:stdgo.GoUInt64, ?func:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func>, ?_goVersion:stdgo._internal.debug.gosym.Gosym_T_version.T_version) {
        if (value != null) this.value = value;
        if (type != null) this.type = type;
        if (name != null) this.name = name;
        if (goType != null) this.goType = goType;
        if (func != null) this.func = func;
        if (_goVersion != null) this._goVersion = _goVersion;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Sym(value, type, name, goType, func, _goVersion);
    }
}
