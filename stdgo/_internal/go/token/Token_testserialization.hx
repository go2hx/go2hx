package stdgo._internal.go.token;
function testSerialization(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _p = stdgo._internal.go.token.Token_newfileset.newFileSet();
        //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L89"
        stdgo._internal.go.token.Token__checkserialize._checkSerialize(_t, _p);
        //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L91"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                var _f = _p.addFile(stdgo._internal.fmt.Fmt_sprintf.sprintf(("file%d" : stdgo.GoString), stdgo.Go.toInterface(_i)).__copy__(), (_p.base() + _i : stdgo.GoInt), (_i * (100 : stdgo.GoInt) : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L93"
                stdgo._internal.go.token.Token__checkserialize._checkSerialize(_t, _p);
var _line = (1000 : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L96"
                {
                    var _offs = (0 : stdgo.GoInt);
                    while ((_offs < _f.size() : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L97"
                        _f.addLine(_offs);
//"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L98"
                        if ((_offs % (7 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L99"
                            _f.addLineInfo(_offs, stdgo._internal.fmt.Fmt_sprintf.sprintf(("file%d" : stdgo.GoString), stdgo.Go.toInterface(_offs)).__copy__(), _line);
                            _line = (_line + ((33 : stdgo.GoInt)) : stdgo.GoInt);
                        };
                        _offs = (_offs + (((40 : stdgo.GoInt) + _i : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L103"
                stdgo._internal.go.token.Token__checkserialize._checkSerialize(_t, _p);
                _i++;
            };
        };
    }
