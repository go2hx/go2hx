package stdgo.internal.lazytemplate;
typedef Template = stdgo._internal.internal.lazytemplate.Lazytemplate_template.Template;
typedef TemplatePointer = stdgo._internal.internal.lazytemplate.Lazytemplate_templatepointer.TemplatePointer;
/**
    * Package lazytemplate is a thin wrapper over text/template, allowing the use
    * of global template variables without forcing them to be parsed at init.
**/
class Lazytemplate {
    /**
        * New creates a new lazy template, delaying the parsing work until it is first
        * needed. If the code is being run as part of tests, the template parsing will
        * happen immediately.
    **/
    static public inline function new_(_name:stdgo.GoString, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.lazytemplate.Lazytemplate_template.Template> return stdgo._internal.internal.lazytemplate.Lazytemplate_new_.new_(_name, _text);
}
