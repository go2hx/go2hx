package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testFirstZone(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _undo = (stdgo._internal.time.Time_disablePlatformSources.disablePlatformSources() : () -> Void);
            __deferstack__.unshift(() -> _undo());
            {};
            var _tests:stdgo.Slice<_internal.time_test.Time_test_T__struct_31.T__struct_31> = (new stdgo.Slice<_internal.time_test.Time_test_T__struct_31.T__struct_31>(2, 2, ...[({ _zone : ("PST8PDT" : stdgo.GoString), _unix : (-1633269601i64 : stdgo.GoInt64), _want1 : ("Sun, 31 Mar 1918 01:59:59 -0800 (PST)" : stdgo.GoString), _want2 : ("Sun, 31 Mar 1918 03:00:00 -0700 (PDT)" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_31.T__struct_31), ({ _zone : ("Pacific/Fakaofo" : stdgo.GoString), _unix : (1325242799i64 : stdgo.GoInt64), _want1 : ("Thu, 29 Dec 2011 23:59:59 -1100 (-11)" : stdgo.GoString), _want2 : ("Sat, 31 Dec 2011 00:00:00 +1300 (+13)" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_31.T__struct_31)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _zone : ("" : stdgo.GoString), _unix : (0 : stdgo.GoInt64), _want1 : ("" : stdgo.GoString), _want2 : ("" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_31.T__struct_31)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_31.T__struct_31>);
            for (__2 => _test in _tests) {
                var __tmp__ = stdgo._internal.time.Time_loadLocation.loadLocation(_test._zone?.__copy__()), _z:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                var _s = (stdgo._internal.time.Time_unix.unix(_test._unix, (0i64 : stdgo.GoInt64)).in_(_z).format(("Mon, 02 Jan 2006 15:04:05 -0700 (MST)" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                if (_s != (_test._want1)) {
                    _t.errorf(("for %s %d got %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._zone), stdgo.Go.toInterface(_test._unix), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._want1));
                };
                _s = stdgo._internal.time.Time_unix.unix((_test._unix + (1i64 : stdgo.GoInt64) : stdgo.GoInt64), (0i64 : stdgo.GoInt64)).in_(_z).format(("Mon, 02 Jan 2006 15:04:05 -0700 (MST)" : stdgo.GoString))?.__copy__();
                if (_s != (_test._want2)) {
                    _t.errorf(("for %s %d got %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._zone), stdgo.Go.toInterface(_test._unix), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._want2));
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
