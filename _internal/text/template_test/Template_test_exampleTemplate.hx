package _internal.text.template_test;
function exampleTemplate():Void {
        {};
        {};
        var _recipients:stdgo.Slice<_internal.text.template_test.Template_test_T_exampleTemplate___localname___Recipient_588.T_exampleTemplate___localname___Recipient_588> = (new stdgo.Slice<_internal.text.template_test.Template_test_T_exampleTemplate___localname___Recipient_588.T_exampleTemplate___localname___Recipient_588>(3, 3, ...[(new _internal.text.template_test.Template_test_T_exampleTemplate___localname___Recipient_588.T_exampleTemplate___localname___Recipient_588(("Aunt Mildred" : stdgo.GoString), ("bone china tea set" : stdgo.GoString), true) : _internal.text.template_test.Template_test_T_exampleTemplate___localname___Recipient_588.T_exampleTemplate___localname___Recipient_588), (new _internal.text.template_test.Template_test_T_exampleTemplate___localname___Recipient_588.T_exampleTemplate___localname___Recipient_588(("Uncle John" : stdgo.GoString), ("moleskin pants" : stdgo.GoString), false) : _internal.text.template_test.Template_test_T_exampleTemplate___localname___Recipient_588.T_exampleTemplate___localname___Recipient_588), (new _internal.text.template_test.Template_test_T_exampleTemplate___localname___Recipient_588.T_exampleTemplate___localname___Recipient_588(("Cousin Rodney" : stdgo.GoString), stdgo.Go.str()?.__copy__(), false) : _internal.text.template_test.Template_test_T_exampleTemplate___localname___Recipient_588.T_exampleTemplate___localname___Recipient_588)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : _internal.text.template_test.Template_test_T_exampleTemplate___localname___Recipient_588.T_exampleTemplate___localname___Recipient_588)])) : stdgo.Slice<_internal.text.template_test.Template_test_T_exampleTemplate___localname___Recipient_588.T_exampleTemplate___localname___Recipient_588>);
        var _t = ({
            var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("letter" : stdgo.GoString)).parse(("\nDear {{.Name}},\n{{if .Attended}}\nIt was a pleasure to see you at the wedding.\n{{- else}}\nIt is a shame you couldn\'t make it to the wedding.\n{{- end}}\n{{with .Gift -}}\nThank you for the lovely {{.}}.\n{{end}}\nBest wishes,\nJosie\n" : stdgo.GoString));
            stdgo._internal.text.template.Template_must.must((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), (__tmp__._1 : stdgo.Error));
        });
        for (__8 => _r in _recipients) {
            var _err = (_t.execute(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), stdgo.Go.toInterface(_r)) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log_println.println(stdgo.Go.toInterface(("executing template:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
    }
