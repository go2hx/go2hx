package stdgo._internal.text.template;
function testBadFuncNames(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[(stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("2" : stdgo.GoString), ("a-b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1424"
        for (__8 => _name in _names) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1425"
            stdgo._internal.text.template.Template__testbadfuncname._testBadFuncName(_name?.__copy__(), _t);
        };
    }
