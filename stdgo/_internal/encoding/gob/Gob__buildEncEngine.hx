package stdgo._internal.encoding.gob;
function _buildEncEngine(_info:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>, _building:stdgo.GoMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>, Bool>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine> {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (((_building != null) && (_building[_info] ?? false) : Bool)) {
                return null;
            };
            @:check2 (@:checkr _info ?? throw "null pointer dereference")._encInit.lock();
            {
                final __f__ = @:check2 (@:checkr _info ?? throw "null pointer dereference")._encInit.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            var _enc = @:check2 (@:checkr _info ?? throw "null pointer dereference")._encoder.load();
            if ((_enc == null || (_enc : Dynamic).__nil__)) {
                if (_building == null) {
                    _building = ({
                        final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>, Bool>();
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>, Bool>);
                };
                _building[_info] = true;
                _enc = stdgo._internal.encoding.gob.Gob__compileEnc._compileEnc(_ut, _building);
                @:check2 (@:checkr _info ?? throw "null pointer dereference")._encoder.store(_enc);
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return _enc;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine>);
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
            return (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine>);
        };
    }
