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
@:structInit @:using(stdgo._internal.html.template.Template_Template_static_extension.Template_static_extension) class Template {
    public var _escapeErr : stdgo.Error = (null : stdgo.Error);
    public var _text : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
    public var tree : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
    @:embedded
    public var _nameSpace : stdgo.Ref<stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace> = (null : stdgo.Ref<stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace>);
    public function new(?_escapeErr:stdgo.Error, ?_text:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, ?tree:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, ?_nameSpace:stdgo.Ref<stdgo._internal.html.template.Template_T_nameSpace.T_nameSpace>) {
        if (_escapeErr != null) this._escapeErr = _escapeErr;
        if (_text != null) this._text = _text;
        if (tree != null) this.tree = tree;
        if (_nameSpace != null) this._nameSpace = _nameSpace;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Template(_escapeErr, _text, tree, _nameSpace);
    }
}
