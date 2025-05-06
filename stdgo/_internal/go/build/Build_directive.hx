package stdgo._internal.go.build;
@:structInit @:using(stdgo._internal.go.build.Build_directive_static_extension.Directive_static_extension) class Directive {
    public var text : stdgo.GoString = "";
    public var pos : stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
    public function new(?text:stdgo.GoString, ?pos:stdgo._internal.go.token.Token_position.Position) {
        if (text != null) this.text = text;
        if (pos != null) this.pos = pos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Directive(text, pos);
    }
}
