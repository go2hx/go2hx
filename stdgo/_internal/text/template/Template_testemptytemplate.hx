package stdgo._internal.text.template;
function testEmptyTemplate(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _cases = (new stdgo.Slice<stdgo._internal.text.template.Template_t__struct_8.T__struct_8>(6, 6, ...[({ _defn : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("x" : stdgo.GoString), ("y" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _in : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _want : ("y" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_8.T__struct_8), ({ _defn : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[(stdgo.Go.str() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _in : ("once" : stdgo.GoString), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.text.template.Template_t__struct_8.T__struct_8), ({ _defn : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[(stdgo.Go.str() : stdgo.GoString)?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _in : ("twice" : stdgo.GoString), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.text.template.Template_t__struct_8.T__struct_8), ({ _defn : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("{{.}}" : stdgo.GoString), ("{{.}}" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _in : ("twice" : stdgo.GoString), _want : ("twice" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_8.T__struct_8), ({ _defn : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("{{/* a comment */}}" : stdgo.GoString), ("{{/* a comment */}}" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _in : ("comment" : stdgo.GoString), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.text.template.Template_t__struct_8.T__struct_8), ({ _defn : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("{{.}}" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _in : ("twice" : stdgo.GoString), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.text.template.Template_t__struct_8.T__struct_8)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _defn : (null : stdgo.Slice<stdgo.GoString>), _in : ("" : stdgo.GoString), _want : ("" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_8.T__struct_8)])) : stdgo.Slice<stdgo._internal.text.template.Template_t__struct_8.T__struct_8>);
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L400"
        for (_i => _c in _cases) {
            var _root = stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString));
            var _m:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>), _err:stdgo.Error = (null : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L407"
            for (__8 => _d in _c._defn) {
                {
                    var __tmp__ = _root.new_(_c._in?.__copy__()).parse(_d?.__copy__());
                    _m = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L409"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L410"
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var _buf = (stdgo.Go.setRef((new stdgo._internal.strings.Strings_builder.Builder() : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L414"
            {
                var _err = (_m.execute(stdgo.Go.asInterface(_buf), stdgo.Go.toInterface(_c._in)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L415"
                    _t.error(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L416"
                    continue;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L418"
            if ((_buf.string() : stdgo.GoString) != (_c._want)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L419"
                _t.errorf(("expected string %q: got %q" : stdgo.GoString), stdgo.Go.toInterface(_c._want), stdgo.Go.toInterface((_buf.string() : stdgo.GoString)));
            };
        };
    }
