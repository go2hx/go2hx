package stdgo._internal.flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.flag.Flag.T_uintValue_asInterface) class T_uintValue_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function string( _i:stdgo.Pointer<stdgo._internal.flag.Flag_T_uintValue.T_uintValue>):stdgo.GoString {
        return stdgo._internal.strconv.Strconv_formatUint.formatUint((_i.value : stdgo.GoUInt64), (10 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _i:stdgo.Pointer<stdgo._internal.flag.Flag_T_uintValue.T_uintValue>):stdgo.AnyInterface {
        return stdgo.Go.toInterface((_i.value : stdgo.GoUInt));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function set( _i:stdgo.Pointer<stdgo._internal.flag.Flag_T_uintValue.T_uintValue>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_s?.__copy__(), (0 : stdgo.GoInt), (32 : stdgo.GoInt)), _v:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = stdgo._internal.flag.Flag__numError._numError(_err);
        };
        _i.value = (_v : stdgo._internal.flag.Flag_T_uintValue.T_uintValue);
        return _err;
    }
}
