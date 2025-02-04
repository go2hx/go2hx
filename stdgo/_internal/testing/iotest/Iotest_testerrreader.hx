package stdgo._internal.testing.iotest;
function testErrReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _cases = (new stdgo.Slice<stdgo._internal.testing.iotest.Iotest_t__struct_0.T__struct_0>(3, 3, ...[({ _name : ("nil error" : stdgo.GoString), _err : (null : stdgo.Error) } : stdgo._internal.testing.iotest.Iotest_t__struct_0.T__struct_0), ({ _name : ("non-nil error" : stdgo.GoString), _err : stdgo._internal.errors.Errors_new_.new_(("io failure" : stdgo.GoString)) } : stdgo._internal.testing.iotest.Iotest_t__struct_0.T__struct_0), ({ _name : ("io.EOF" : stdgo.GoString), _err : stdgo._internal.io.Io_eof.eOF } : stdgo._internal.testing.iotest.Iotest_t__struct_0.T__struct_0)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _err : (null : stdgo.Error) } : stdgo._internal.testing.iotest.Iotest_t__struct_0.T__struct_0)])) : stdgo.Slice<stdgo._internal.testing.iotest.Iotest_t__struct_0.T__struct_0>);
        for (__0 => _tt in _cases) {
            var _tt = ({
                final x = _tt;
                ({ _name : x._name?.__copy__(), _err : x._err } : stdgo._internal.testing.iotest.Iotest_t__struct_0.T__struct_0);
            } : stdgo._internal.testing.iotest.Iotest_t__struct_0.T__struct_0);
            @:check2r _t.run(_tt._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                var __tmp__ = stdgo._internal.testing.iotest.Iotest_errreader.errReader(_tt._err).read((null : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_tt._err))) {
                    @:check2r _t.fatalf(("Error mismatch\nGot:  %v\nWant: %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._err));
                };
                if (_n != ((0 : stdgo.GoInt))) {
                    @:check2r _t.fatalf(("Byte count mismatch: got %d want 0" : stdgo.GoString), stdgo.Go.toInterface(_n));
                };
            });
        };
    }
