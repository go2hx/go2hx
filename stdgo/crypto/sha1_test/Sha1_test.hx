package stdgo.crypto.sha1_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
function exampleNew():Void {
        var _h:stdgo.hash.Hash.Hash = stdgo.crypto.sha1.Sha1.new_();
        stdgo.io.Io.writeString(_h, ("His money is twice tainted:" : GoString));
        stdgo.io.Io.writeString(_h, (" \'taint yours and \'taint mine." : GoString));
        stdgo.fmt.Fmt.printf(("% x" : GoString), Go.toInterface(_h.sum((null : Slice<GoUInt8>))));
    }
function exampleSum():Void {
        var _data = (("This page intentionally left blank." : GoString) : Slice<GoByte>);
        stdgo.fmt.Fmt.printf(("% x" : GoString), Go.toInterface(stdgo.crypto.sha1.Sha1.sum(_data)));
    }
function exampleNew_file():Void {
        var __deferstack__:Array<Void -> Void> = [];
        var __tmp__ = stdgo.os.Os.open(("file.txt" : GoString)), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:Error = __tmp__._1;
        try {
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            var _h:stdgo.hash.Hash.Hash = stdgo.crypto.sha1.Sha1.new_();
            {
                var __tmp__ = stdgo.io.Io.copy(_h, Go.asInterface(_f)), _0:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    stdgo.log.Log.fatal(Go.toInterface(_err));
                };
            };
            stdgo.fmt.Fmt.printf(("% x" : GoString), Go.toInterface(_h.sum((null : Slice<GoUInt8>))));
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            Go.recover_exception = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
