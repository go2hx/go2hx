package stdgo._internal.crypto.sha1_test;
import stdgo._internal.crypto.sha1.Sha1;
function exampleNew():Void {
        var _h:stdgo._internal.hash.Hash.Hash = stdgo._internal.crypto.sha1.Sha1.new_();
        stdgo._internal.io.Io.writeString(_h, ("His money is twice tainted:" : stdgo.GoString));
        stdgo._internal.io.Io.writeString(_h, (" \'taint yours and \'taint mine." : stdgo.GoString));
        stdgo._internal.fmt.Fmt.printf(("% x" : stdgo.GoString), stdgo.Go.toInterface(_h.sum((null : stdgo.Slice<stdgo.GoUInt8>))));
    }
function exampleSum():Void {
        var _data = (("This page intentionally left blank." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.fmt.Fmt.printf(("% x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.crypto.sha1.Sha1.sum(_data)));
    }
function exampleNew_file():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os.open(("file.txt" : stdgo.GoString)), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            var _h:stdgo._internal.hash.Hash.Hash = stdgo._internal.crypto.sha1.Sha1.new_();
            {
                var __tmp__ = stdgo._internal.io.Io.copy(_h, stdgo.Go.asInterface(_f)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
                };
            };
            stdgo._internal.fmt.Fmt.printf(("% x" : stdgo.GoString), stdgo.Go.toInterface(_h.sum((null : stdgo.Slice<stdgo.GoUInt8>))));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
