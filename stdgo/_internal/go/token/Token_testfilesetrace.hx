package stdgo._internal.go.token;
function testFileSetRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L225"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (100 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L226"
                _fset.addFile(stdgo._internal.fmt.Fmt_sprintf.sprintf(("file-%d" : stdgo.GoString), stdgo.Go.toInterface(_i)).__copy__(), _fset.base(), (1031 : stdgo.GoInt));
                _i++;
            };
        };
        var _max = (_fset.base() : stdgo.GoInt32);
        var _stop:stdgo._internal.sync.Sync_waitgroup.WaitGroup = ({} : stdgo._internal.sync.Sync_waitgroup.WaitGroup);
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newsource.newSource((7i64 : stdgo.GoInt64)));
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L231"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (2 : stdgo.GoInt) : Bool)) {
                var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newsource.newSource(_r.int63()));
//"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L233"
                _stop.add((1 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L234"
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L235"
                        {
                            var _i = (0 : stdgo.GoInt);
                            while ((_i < (1000 : stdgo.GoInt) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L236"
                                _fset.position((_r.int31n(_max) : stdgo._internal.go.token.Token_pos.Pos));
                                _i++;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L238"
                        _stop.done();
                    };
                    a();
                }));
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L241"
        _stop.wait_();
    }
