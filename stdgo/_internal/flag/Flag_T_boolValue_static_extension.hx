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
@:keep @:allow(stdgo._internal.flag.Flag.T_boolValue_asInterface) class T_boolValue_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function isBoolFlag( _b:stdgo.Pointer<stdgo._internal.flag.Flag_T_boolValue.T_boolValue>):Bool {
        return true;
    }
    @:keep
    @:pointer
    @:tdfield
    static public function string( _b:stdgo.Pointer<stdgo._internal.flag.Flag_T_boolValue.T_boolValue>):stdgo.GoString {
        return stdgo._internal.strconv.Strconv_formatBool.formatBool((_b.value : Bool))?.__copy__();
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _b:stdgo.Pointer<stdgo._internal.flag.Flag_T_boolValue.T_boolValue>):stdgo.AnyInterface {
        return stdgo.Go.toInterface((_b.value : Bool));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function set( _b:stdgo.Pointer<stdgo._internal.flag.Flag_T_boolValue.T_boolValue>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv_parseBool.parseBool(_s?.__copy__()), _v:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = stdgo._internal.flag.Flag__errParse._errParse;
        };
        _b.value = (_v : stdgo._internal.flag.Flag_T_boolValue.T_boolValue);
        return _err;
    }
}
