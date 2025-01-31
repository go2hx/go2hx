package stdgo._internal.text.template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.flag.Flag;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.net.url.Url;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.path.Path;
import stdgo._internal.internal.fmtsort.Fmtsort;
@:structInit @:using(stdgo._internal.text.template.Template_T_state_static_extension.T_state_static_extension) class T_state {
    public var _tmpl : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
    public var _wr : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public var _node : stdgo._internal.text.template.parse.Parse_Node.Node = (null : stdgo._internal.text.template.parse.Parse_Node.Node);
    public var _vars : stdgo.Slice<stdgo._internal.text.template.Template_T_variable.T_variable> = (null : stdgo.Slice<stdgo._internal.text.template.Template_T_variable.T_variable>);
    public var _depth : stdgo.GoInt = 0;
    public function new(?_tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, ?_wr:stdgo._internal.io.Io_Writer.Writer, ?_node:stdgo._internal.text.template.parse.Parse_Node.Node, ?_vars:stdgo.Slice<stdgo._internal.text.template.Template_T_variable.T_variable>, ?_depth:stdgo.GoInt) {
        if (_tmpl != null) this._tmpl = _tmpl;
        if (_wr != null) this._wr = _wr;
        if (_node != null) this._node = _node;
        if (_vars != null) this._vars = _vars;
        if (_depth != null) this._depth = _depth;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_state(_tmpl, _wr, _node, _vars, _depth);
    }
}
