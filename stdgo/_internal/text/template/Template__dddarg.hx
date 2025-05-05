package stdgo._internal.text.template;
function _dddArg(_a:stdgo.GoInt, _b:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _b = new stdgo.Slice<stdgo.GoString>(_b.length, 0, ..._b);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L713"
        return stdgo._internal.fmt.Fmt_sprintln.sprintln(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))?.__copy__();
    }
