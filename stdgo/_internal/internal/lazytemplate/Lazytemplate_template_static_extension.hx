package stdgo._internal.internal.lazytemplate;
@:keep @:allow(stdgo._internal.internal.lazytemplate.Lazytemplate.Template_asInterface) class Template_static_extension {
    @:keep
    @:tdfield
    static public function execute( _r:stdgo.Ref<stdgo._internal.internal.lazytemplate.Lazytemplate_template.Template>, _w:stdgo._internal.io.Io_writer.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.lazytemplate.Lazytemplate_template.Template> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/lazytemplate/lazytemplate.go#L37"
        return _r._tp().execute(_w, _data);
    }
    @:keep
    @:tdfield
    static public function _build( _r:stdgo.Ref<stdgo._internal.internal.lazytemplate.Lazytemplate_template.Template>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.lazytemplate.Lazytemplate_template.Template> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._tmpl = ({
            @:tupleArg var __tmp__ = stdgo._internal.text.template.Template_new_.new_((@:checkr _r ?? throw "null pointer dereference")._name?.__copy__()).parse((@:checkr _r ?? throw "null pointer dereference")._text?.__copy__());
            var __f__ = stdgo._internal.text.template.Template_must.must;
            var __tmp__ = stdgo._internal.text.template.Template_new_.new_((@:checkr _r ?? throw "null pointer dereference")._name?.__copy__()).parse((@:checkr _r ?? throw "null pointer dereference")._text?.__copy__());
            __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>), (__tmp__._1 : stdgo.Error));
        });
        {
            final __tmp__0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            (@:checkr _r ?? throw "null pointer dereference")._name = @:binopAssign __tmp__0;
            (@:checkr _r ?? throw "null pointer dereference")._text = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function _tp( _r:stdgo.Ref<stdgo._internal.internal.lazytemplate.Lazytemplate_template.Template>):stdgo.Ref<stdgo._internal.text.template.Template_template.Template> {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.lazytemplate.Lazytemplate_template.Template> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/lazytemplate/lazytemplate.go#L27"
        (@:checkr _r ?? throw "null pointer dereference")._once.do_(_r._build);
        //"file:///home/runner/.go/go1.21.3/src/internal/lazytemplate/lazytemplate.go#L28"
        return (@:checkr _r ?? throw "null pointer dereference")._tmpl;
    }
}
