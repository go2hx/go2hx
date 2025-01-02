package stdgo._internal.os.user;
function _lookupGroup(_groupname:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_Group.Group>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_open.open(("/etc/group" : stdgo.GoString)), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            {
                final __f__ = @:check2r _f.close;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_Group.Group>; var _1 : stdgo.Error; } = stdgo._internal.os.user.User__findGroupName._findGroupName(_groupname?.__copy__(), stdgo.Go.asInterface(_f));
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : (null : stdgo.Ref<stdgo._internal.os.user.User_Group.Group>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : (null : stdgo.Ref<stdgo._internal.os.user.User_Group.Group>), _1 : (null : stdgo.Error) };
        };
    }
