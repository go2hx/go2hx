package stdgo._internal.internal.lazytemplate;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.text.template.Template;
@:keep @:allow(stdgo._internal.internal.lazytemplate.Lazytemplate.Template_asInterface) class Template_static_extension {
    @:keep
    @:tdfield
    static public function execute( _r:stdgo.Ref<stdgo._internal.internal.lazytemplate.Lazytemplate_Template.Template>, _w:stdgo._internal.io.Io_Writer.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.lazytemplate.Lazytemplate_Template.Template> = _r;
        return @:check2r @:check2r _r._tp().execute(_w, _data);
    }
    @:keep
    @:tdfield
    static public function _build( _r:stdgo.Ref<stdgo._internal.internal.lazytemplate.Lazytemplate_Template.Template>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.lazytemplate.Lazytemplate_Template.Template> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._tmpl = ({
            var __f__ = stdgo._internal.text.template.Template_must.must;
            var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_((@:checkr _r ?? throw "null pointer dereference")._name?.__copy__()).parse((@:checkr _r ?? throw "null pointer dereference")._text?.__copy__());
            __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), (__tmp__._1 : stdgo.Error));
        });
        {
            final __tmp__0 = stdgo.Go.str()?.__copy__();
            final __tmp__1 = stdgo.Go.str()?.__copy__();
            (@:checkr _r ?? throw "null pointer dereference")._name = __tmp__0;
            (@:checkr _r ?? throw "null pointer dereference")._text = __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function _tp( _r:stdgo.Ref<stdgo._internal.internal.lazytemplate.Lazytemplate_Template.Template>):stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.lazytemplate.Lazytemplate_Template.Template> = _r;
        @:check2 (@:checkr _r ?? throw "null pointer dereference")._once.do_(@:check2r _r._build);
        return (@:checkr _r ?? throw "null pointer dereference")._tmpl;
    }
}
