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
function _newIdentCmd(_identifier:stdgo.GoString, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode> {
        return (stdgo.Go.setRef(({ nodeType : (4 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), args : (new stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>(1, 1, ...[stdgo.Go.asInterface(@:check2r @:check2r stdgo._internal.text.template.parse.Parse_newIdentifier.newIdentifier(_identifier?.__copy__()).setTree(null).setPos(_pos))]) : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>) } : stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>);
    }
