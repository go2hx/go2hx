package stdgo._internal.html.template;
var _redundantFuncs : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoMap<stdgo.GoString, Bool>>();
        x.__defaultValue__ = () -> (null : stdgo.GoMap<stdgo.GoString, Bool>);
        x.set(("_html_template_commentescaper" : stdgo.GoString), ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            x.set(("_html_template_attrescaper" : stdgo.GoString), true);
x.set(("_html_template_htmlescaper" : stdgo.GoString), true);
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>));
x.set(("_html_template_cssescaper" : stdgo.GoString), ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            x.set(("_html_template_attrescaper" : stdgo.GoString), true);
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>));
x.set(("_html_template_jsregexpescaper" : stdgo.GoString), ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            x.set(("_html_template_attrescaper" : stdgo.GoString), true);
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>));
x.set(("_html_template_jsstrescaper" : stdgo.GoString), ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            x.set(("_html_template_attrescaper" : stdgo.GoString), true);
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>));
x.set(("_html_template_urlescaper" : stdgo.GoString), ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            x.set(("_html_template_urlnormalizer" : stdgo.GoString), true);
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>);
