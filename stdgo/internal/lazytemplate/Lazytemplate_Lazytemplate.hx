package stdgo.internal.lazytemplate;
/**
    Package lazytemplate is a thin wrapper over text/template, allowing the use
    of global template variables without forcing them to be parsed at init.
**/
class Lazytemplate {
    /**
        New creates a new lazy template, delaying the parsing work until it is first
        needed. If the code is being run as part of tests, the template parsing will
        happen immediately.
    **/
    static public inline function new_(_name:String, _text:String):Template {
        final _name = (_name : stdgo.GoString);
        final _text = (_text : stdgo.GoString);
        return stdgo._internal.internal.lazytemplate.Lazytemplate_new_.new_(_name, _text);
    }
}
