package stdgo._internal.encoding.base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strconv.Strconv;
function _testEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Bool {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:check2r _t.helper();
        if (_args[((_args.length) - (2 : stdgo.GoInt) : stdgo.GoInt)] != (_args[(((_args.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)])) {
            @:check2r _t.errorf(_msg?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
            return false;
        };
        return true;
    }
