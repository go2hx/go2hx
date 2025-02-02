package stdgo._internal.text.template;
function testBadFuncNames(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[(stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("2" : stdgo.GoString), ("a-b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__8 => _name in _names) {
            stdgo._internal.text.template.Template__testBadFuncName._testBadFuncName(_name?.__copy__(), _t);
        };
    }
