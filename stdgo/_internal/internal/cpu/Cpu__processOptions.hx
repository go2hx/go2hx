package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        stdgo._internal.internal.Macro.controlFlow({
            @:label("field") while (_env != (stdgo.Go.str())) {
                var _field = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
                var _i = (stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8)) : stdgo.GoInt);
                if ((_i < (0 : stdgo.GoInt) : Bool)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field = __tmp__0;
                        _env = __tmp__1;
                    };
                } else {
                    {
                        final __tmp__0 = (_env.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field = __tmp__0;
                        _env = __tmp__1;
                    };
                };
                if ((((_field.length) < (4 : stdgo.GoInt) : Bool) || ((_field.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                    continue;
                };
                _i = stdgo._internal.internal.cpu.Cpu__indexByte._indexByte(_field?.__copy__(), (61 : stdgo.GoUInt8));
                if ((_i < (0 : stdgo.GoInt) : Bool)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field, ("\"\n" : stdgo.GoString));
                    continue;
                };
                var __0 = ((_field.__slice__((4 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ((_field.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _value = __1, _key = __0;
                var _enable:Bool = false;
                {
                    final __value__ = _value;
                    if (__value__ == (("on" : stdgo.GoString))) {
                        _enable = true;
                    } else if (__value__ == (("off" : stdgo.GoString))) {
                        _enable = false;
                    } else {
                        stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value, ("\" not supported for cpu option \"" : stdgo.GoString), _key, ("\"\n" : stdgo.GoString));
                        @:jump("field") continue;
                    };
                };
                if (_key == (("all" : stdgo.GoString))) {
                    for (_i => _ in stdgo._internal.internal.cpu.Cpu__options._options) {
                        stdgo._internal.internal.cpu.Cpu__options._options[(_i : stdgo.GoInt)].specified = true;
                        stdgo._internal.internal.cpu.Cpu__options._options[(_i : stdgo.GoInt)].enable = _enable;
                    };
                    @:jump("field") continue;
                };
                for (_i => _ in stdgo._internal.internal.cpu.Cpu__options._options) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i : stdgo.GoInt)].name == (_key)) {
                        stdgo._internal.internal.cpu.Cpu__options._options[(_i : stdgo.GoInt)].specified = true;
                        stdgo._internal.internal.cpu.Cpu__options._options[(_i : stdgo.GoInt)].enable = _enable;
                        @:jump("field") continue;
                    };
                };
                stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key, ("\"\n" : stdgo.GoString));
            };
            for (__98 => _o in stdgo._internal.internal.cpu.Cpu__options._options) {
                if (!_o.specified) {
                    continue;
                };
                if ((_o.enable && !_o.feature.value : Bool)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o.name, ("\", missing CPU support\n" : stdgo.GoString));
                    continue;
                };
                _o.feature.value = _o.enable;
            };
        });
    }
