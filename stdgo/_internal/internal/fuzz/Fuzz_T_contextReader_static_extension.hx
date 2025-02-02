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
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_contextReader_asInterface) class T_contextReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _cr:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_contextReader.T_contextReader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cr:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_contextReader.T_contextReader> = _cr;
        {
            var _ctxErr = ((@:checkr _cr ?? throw "null pointer dereference")._ctx.err() : stdgo.Error);
            if (_ctxErr != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _ctxErr };
            };
        };
        var _done = (new stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>(0, () -> ({} : stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy)) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>);
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err:stdgo.Error = (null : stdgo.Error);
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                {
                    var __tmp__ = (@:checkr _cr ?? throw "null pointer dereference")._r.read(_b);
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_done != null) _done.__close__();
            };
            a();
        }));
        {
            {
                var __select__ = true;
                while (__select__) {
                    if ((@:checkr _cr ?? throw "null pointer dereference")._ctx.done() != null && (@:checkr _cr ?? throw "null pointer dereference")._ctx.done().__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr _cr ?? throw "null pointer dereference")._ctx.done().__get__();
                            {
                                return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _cr ?? throw "null pointer dereference")._ctx.err() };
                            };
                        };
                    } else if (_done != null && _done.__isGet__()) {
                        __select__ = false;
                        {
                            _done.__get__();
                            {
                                return { _0 : _n, _1 : _err };
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
    }
}
