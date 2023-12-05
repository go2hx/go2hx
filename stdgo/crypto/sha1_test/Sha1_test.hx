package stdgo.crypto.sha1_test;
import stdgo.crypto.sha1.Sha1;
function exampleNew():Void {
        var _h:stdgo.hash.Hash.Hash = stdgo.crypto.sha1.Sha1.new_();
        stdgo.io.Io.writeString(_h, ("His money is twice tainted:" : stdgo.GoString));
        stdgo.io.Io.writeString(_h, (" \'taint yours and \'taint mine." : stdgo.GoString));
        stdgo.fmt.Fmt.printf(("% x" : stdgo.GoString), stdgo.Go.toInterface(_h.sum((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))));
    }
function exampleSum():Void {
        var _data = (("This page intentionally left blank." : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        stdgo.fmt.Fmt.printf(("% x" : stdgo.GoString), stdgo.Go.toInterface(stdgo.crypto.sha1.Sha1.sum(_data)));
    }
function exampleNew_file():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo.os.Os.open(("file.txt" : stdgo.GoString)), _f:stdgo.StdGoTypes.Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            var _h:stdgo.hash.Hash.Hash = stdgo.crypto.sha1.Sha1.new_();
            {
                var __tmp__ = stdgo.io.Io.copy(_h, stdgo.Go.asInterface(_f)), __0:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
                };
            };
            stdgo.fmt.Fmt.printf(("% x" : stdgo.GoString), stdgo.Go.toInterface(_h.sum((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))));
            for (defer in __deferstack__) {
                defer();
            };
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
