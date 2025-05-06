package stdgo._internal.go.types;
@:interface typedef Object = stdgo.StructType & {
    /**
        
        
        * scope in which this object is declared; nil for methods and struct fields
    **/
    @:interfacetypeffun
    public dynamic function parent():stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>;
    /**
        
        
        * position of object identifier in declaration
    **/
    @:interfacetypeffun
    public dynamic function pos():stdgo._internal.go.token.Token_pos.Pos;
    /**
        
        
        * package to which this object belongs; nil for labels and objects in the Universe scope
    **/
    @:interfacetypeffun
    public dynamic function pkg():stdgo.Ref<stdgo._internal.go.types.Types_package.Package>;
    /**
        
        
        * package local object name
    **/
    @:interfacetypeffun
    public dynamic function name():stdgo.GoString;
    /**
        
        
        * object type
    **/
    @:interfacetypeffun
    public dynamic function type():stdgo._internal.go.types.Types_type_.Type_;
    /**
        
        
        * reports whether the name starts with a capital letter
    **/
    @:interfacetypeffun
    public dynamic function exported():Bool;
    /**
        
        
        * object name if exported, qualified name if not exported (see func Id)
    **/
    @:interfacetypeffun
    public dynamic function id():stdgo.GoString;
    /**
        * String returns a human-readable string of the object.
        
        
    **/
    @:interfacetypeffun
    public dynamic function string():stdgo.GoString;
    /**
        * order reflects a package-level object's source order: if object
        * a is before object b in the source, then a.order() < b.order().
        * order returns a value > 0 for package-level objects; it returns
        * 0 for all other objects (including objects in file scopes).
        
        
    **/
    @:interfacetypeffun
    public dynamic function _order():stdgo.GoUInt32;
    /**
        * color returns the object's color.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _color():stdgo._internal.go.types.Types_t_color.T_color;
    /**
        * setType sets the type of the object.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _setType(_0:stdgo._internal.go.types.Types_type_.Type_):Void;
    /**
        * setOrder sets the order number of the object. It must be > 0.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _setOrder(_0:stdgo.GoUInt32):Void;
    /**
        * setColor sets the object's color. It must not be white.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _setColor(_color:stdgo._internal.go.types.Types_t_color.T_color):Void;
    /**
        * setParent sets the parent scope of the object.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _setParent(_0:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):Void;
    /**
        * sameId reports whether obj.Id() and Id(pkg, name) are the same.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _sameId(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):Bool;
    /**
        * scopePos returns the start position of the scope of this Object
        
        
    **/
    @:interfacetypeffun
    public dynamic function _scopePos():stdgo._internal.go.token.Token_pos.Pos;
    /**
        * setScopePos sets the start position of the scope for this Object.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _setScopePos(_pos:stdgo._internal.go.token.Token_pos.Pos):Void;
};
