package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testEmbeddedTZData(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _undo = (stdgo._internal.time.Time_disablePlatformSources.disablePlatformSources() : () -> Void);
            __deferstack__.unshift(() -> _undo());
            for (__2 => _zone in _internal.time_test.Time_test__zones._zones) {
                var __tmp__ = stdgo._internal.time.Time_loadLocation.loadLocation(_zone?.__copy__()), _ref:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("LoadLocation(%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_zone), stdgo.Go.toInterface(_err));
                    continue;
                };
                var __tmp__ = stdgo._internal.time.Time_loadFromEmbeddedTZData.loadFromEmbeddedTZData(_zone?.__copy__()), _embedded:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("LoadFromEmbeddedTZData(%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_zone), stdgo.Go.toInterface(_err));
                    continue;
                };
                var __tmp__ = stdgo._internal.time.Time_loadLocationFromTZData.loadLocationFromTZData(_zone?.__copy__(), (_embedded : stdgo.Slice<stdgo.GoUInt8>)), _sample:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("LoadLocationFromTZData failed for %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_zone), stdgo.Go.toInterface(_err));
                    continue;
                };
                var _v1 = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_ref))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                var _v2 = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_sample))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                var _typ = (_v1.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
                var _nf = (_typ.numField() : stdgo.GoInt);
                var _found = (0 : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _nf : Bool), _i++, {
                        var _ft = (_typ.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect_StructField.StructField);
                        if (((_ft.name != ("name" : stdgo.GoString)) && (_ft.name != ("zone" : stdgo.GoString)) : Bool)) {
                            continue;
                        };
                        _found++;
                        if (!_internal.time_test.Time_test__equal._equal(_t, _v1.field(_i)?.__copy__(), _v2.field(_i)?.__copy__())) {
                            _t.errorf(("zone %s: system and embedded tzdata field %s differs" : stdgo.GoString), stdgo.Go.toInterface(_zone), stdgo.Go.toInterface(_ft.name));
                        };
                    });
                };
                if (_found != ((2 : stdgo.GoInt))) {
                    _t.errorf(("test must be updated for change to time.Location struct" : stdgo.GoString));
                };
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
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
