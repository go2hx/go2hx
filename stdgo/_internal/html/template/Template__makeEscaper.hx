package stdgo._internal.html.template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.text.template.parse.Parse;
import stdgo._internal.html.Html;
import stdgo._internal.text.template.Template;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
function _makeEscaper(_n:stdgo.Ref<stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace>):stdgo._internal.html.template.Template_T_escaper.T_escaper {
        return (new stdgo._internal.html.template.Template_T_escaper.T_escaper(_n, ({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.html.template.Template_T_context.T_context>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.html.template.Template_T_context.T_context);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.html.template.Template_T_context.T_context>), ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>), ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>), ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, stdgo.Slice<stdgo.GoString>>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, stdgo.Slice<stdgo.GoString>>), ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, stdgo.GoString>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, stdgo.GoString>), ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, stdgo.Slice<stdgo.GoUInt8>>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, stdgo.Slice<stdgo.GoUInt8>>), null) : stdgo._internal.html.template.Template_T_escaper.T_escaper);
    }
