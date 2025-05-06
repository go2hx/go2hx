package stdgo._internal.go.doc;
function _classifyExamples(_p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>, _examples:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L622"
        if ((_examples.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L623"
            return;
        };
        var _ids = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>>);
        _ids[(stdgo.Go.str() : stdgo.GoString)] = (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").examples) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L628"
        for (__0 => _f in (@:checkr _p ?? throw "null pointer dereference").funcs) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L629"
            if (!stdgo._internal.go.token.Token_isexported.isExported((@:checkr _f ?? throw "null pointer dereference").name?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L630"
                continue;
            };
            _ids[(@:checkr _f ?? throw "null pointer dereference").name] = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference").examples) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L634"
        for (__1 => _t in (@:checkr _p ?? throw "null pointer dereference").types) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L635"
            if (!stdgo._internal.go.token.Token_isexported.isExported((@:checkr _t ?? throw "null pointer dereference").name?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L636"
                continue;
            };
            _ids[(@:checkr _t ?? throw "null pointer dereference").name] = (stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference").examples) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>);
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L639"
            for (__2 => _f in (@:checkr _t ?? throw "null pointer dereference").funcs) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L640"
                if (!stdgo._internal.go.token.Token_isexported.isExported((@:checkr _f ?? throw "null pointer dereference").name?.__copy__())) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L641"
                    continue;
                };
                _ids[(@:checkr _f ?? throw "null pointer dereference").name] = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference").examples) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L645"
            for (__3 => _m in (@:checkr _t ?? throw "null pointer dereference").methods) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L646"
                if (!stdgo._internal.go.token.Token_isexported.isExported((@:checkr _m ?? throw "null pointer dereference").name?.__copy__())) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L647"
                    continue;
                };
                _ids[((stdgo._internal.strings.Strings_trimprefix.trimPrefix(stdgo._internal.go.doc.Doc__namewithoutinst._nameWithoutInst((@:checkr _m ?? throw "null pointer dereference").recv?.__copy__())?.__copy__(), ("*" : stdgo.GoString)) + ("_" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _m ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString)] = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference").examples) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L654"
        for (__2 => _ex in _examples) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L661"
            {
                var _i = ((@:checkr _ex ?? throw "null pointer dereference").name.length : stdgo.GoInt);
                while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    var __tmp__ = stdgo._internal.go.doc.Doc__splitexamplename._splitExampleName((@:checkr _ex ?? throw "null pointer dereference").name.__copy__(), _i), _prefix:stdgo.GoString = __tmp__._0, _suffix:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
//"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L663"
                    if (!_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L664"
                        {
                            _i = stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(((@:checkr _ex ?? throw "null pointer dereference").name.__slice__(0, _i) : stdgo.GoString)?.__copy__(), (95 : stdgo.GoUInt8));
                            continue;
                        };
                    };
var __tmp__ = (_ids != null && _ids.__exists__(_prefix.__copy__()) ? { _0 : _ids[_prefix.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>), _1 : false }), _exs:stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>> = __tmp__._0, _ok:Bool = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L667"
                    if (!_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L668"
                        {
                            _i = stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(((@:checkr _ex ?? throw "null pointer dereference").name.__slice__(0, _i) : stdgo.GoString)?.__copy__(), (95 : stdgo.GoUInt8));
                            continue;
                        };
                    };
(@:checkr _ex ?? throw "null pointer dereference").suffix = _suffix.__copy__();
(_exs : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>).__setData__(((_exs : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>).__append__(_ex) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>));
//"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L672"
                    break;
                    _i = stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(((@:checkr _ex ?? throw "null pointer dereference").name.__slice__(0, _i) : stdgo.GoString)?.__copy__(), (95 : stdgo.GoUInt8));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L677"
        for (__3 => _exs in _ids) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L678"
            stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(((_exs : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>))), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L679"
                return ((@:checkr ((_exs : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>))[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").suffix < (@:checkr ((_exs : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>))[(_j : stdgo.GoInt)] ?? throw "null pointer dereference").suffix : Bool);
            });
        };
    }
