package stdgo._internal.html;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
var _htmlEscaper : stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer> = stdgo._internal.strings.Strings_newReplacer.newReplacer(("&" : stdgo.GoString), ("&amp;" : stdgo.GoString), ("\'" : stdgo.GoString), ("&#39;" : stdgo.GoString), ("<" : stdgo.GoString), ("&lt;" : stdgo.GoString), (">" : stdgo.GoString), ("&gt;" : stdgo.GoString), ("\"" : stdgo.GoString), ("&#34;" : stdgo.GoString));
