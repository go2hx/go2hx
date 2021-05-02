package stdgo.reflect;

import haxe.macro.Context;
import stdgo.StdGoTypes;
import stdgo.Pointer;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Slice;
import stdgo.StdGoTypes.AnyInterface;
import haxe.EnumTools;
import haxe.Serializer;
import haxe.Unserializer;

//------------------
// Utiltiy functions
//------------------

function deepEqual(a1:Dynamic, a2:Dynamic):Bool {
	if (a1 == a2)
		return true;
	if (a1 == null || a2 == null) {
		return false;
	}
	var t = Type.typeof(a1);
	switch t {
		case TObject:
			return compareStruct(a1, a2);
		case TClass(c):
			var name = Type.getClassName(c);
			switch name {
				case "stdgo.SliceData", "stdgo._Slice.SliceData":
					if (a1.length != a2.length)
						return false;
					for (i in 0...a1.length) {
						if (!deepEqual(a1.get(i), a2.get(i))) {
							trace("a1 not equal: " + a1);
							return false;
						}
					}
					return true;
				case "stdgo.AnyInterfaceData", "stdgo._StdGoTypes.AnyInterfaceData":
					if (a1.typeName != a2.typeName)
						return false;
					return deepEqual(a1.value, a2.value);
				case "stdgo.PointerData":
					return deepEqual(a1.get(), a2.get());
				case "haxe._Int64.___Int64":
					return haxe.Int64.eq(a1, a2);
				case "stdgo.Complex":
					return a1.real == a2.real && a1.imag == a2.imag;
				default:
					// trace("unknown name: " + name);
			}
			return compareStruct(a1, a2);
		case TFunction:
			return Reflect.compareMethods(a1, a2);
		case TInt:
			return a1 == a2;
		case TFloat:
			return a1 == a2;
		default:
			trace('unknown type: $t');
	}
	return false;
}

function compareStruct(a1:Dynamic, a2:Dynamic) {
	// fields
	var f1 = Reflect.fields(a1);
	var f2 = Reflect.fields(a2);
	if (f1.length != f2.length)
		return false;
	for (i in 0...f1.length) {
		if (f1[i] == "_address_")
			continue;
		if (!deepEqual(Reflect.field(a1, f1[i]), Reflect.field(a2, f2[i]))) {
			trace("field not equal: " + f1[i] + " fields: " + f1);
			return false;
		}
	}
	return true;
}

//-------------------------------
// Go reflect.Kind implementation
//-------------------------------

@:using(stdgo.reflect.Reflect._Kind__extension)
abstract Kind(GoUInt) from(GoUInt) to(GoUInt) {
	public inline function new(?ui:GoUInt = 0) {
		this = ui;
	}

	@:to inline function __promote() // this is why Kind is an abstract
		return new AnyInterface({value: this, typeName: Type.getClassName(_Kind__extension)});

	@:from inline static function __fromIntegerType(i:IntegerType):Kind {
		return new Kind((i : GoUInt));
	}
}

@:rtti
class _Kind__extension {
	public static final _typeName_ = "uint";

	// string must be here to enable it to be seen at runtime
	public static function string(k:Kind):GoString {
		var idx:UInt = (k : GoUInt).toBasic();
		var r = EnumTools.getConstructors(GT_enum)[idx].substr(3);
		if (r == "unsafePointer")
			return "unsafe.pointer";
		return r;
	}
}

/**
	reflect.Kind constants - must be same order as GT_enum
**/
final invalid:Kind = (0 : IntegerType);

final bool:Kind = (1 : IntegerType);
final int:Kind = (2 : IntegerType);
final int8:Kind = (3 : IntegerType);
final int16:Kind = (4 : IntegerType);
final int32:Kind = (5 : IntegerType);
final int64:Kind = (6 : IntegerType);
final uint:Kind = (7 : IntegerType);
final uint8:Kind = (8 : IntegerType);
final uint16:Kind = (9 : IntegerType);
final uint32:Kind = (10 : IntegerType);
final uint64:Kind = (11 : IntegerType);
final uintptr:Kind = (12 : IntegerType);
final float32:Kind = (13 : IntegerType);
final float64:Kind = (14 : IntegerType);
final complex64:Kind = (15 : IntegerType);
final complex128:Kind = (16 : IntegerType);
final string:Kind = (17 : IntegerType);
final unsafePointer:Reflect.Kind = (18 : IntegerType);
final chan:Kind = (19 : IntegerType);
final interface_:Kind = (20 : IntegerType);
final ptr:Kind = (21 : IntegerType);
final slice:Kind = (22 : IntegerType);
final array:Kind = (23 : IntegerType);
final func:Kind = (24 : IntegerType);
final map:Kind = (25 : IntegerType);
final struct:Kind = (26 : IntegerType);

//-------------------------------
// Go reflect.Type implementation
//-------------------------------
enum GT_enum {
	GT_invalid;
	GT_bool;
	GT_int;
	GT_int8;
	GT_int16;
	GT_int32;
	GT_int64;
	GT_uint;
	GT_uint8;
	GT_uint16;
	GT_uint32;
	GT_uint64;
	GT_uintptr;
	GT_float32;
	GT_float64;
	GT_complex64;
	GT_complex128;
	GT_string;
	GT_unsafePointer;
	GT_chan(elem:Type);
	GT_interface(haxeClassPath:GoString);
	GT_ptr(elem:Type);
	GT_slice(elem:Type);
	GT_array(elem:Type, len:GoInt);
	GT_func(input:Array<Type>, output:Array<Type>);
	GT_map(key:Type, value:Type);
	GT_struct(haxePath:GoString, fields:Array<FieldInfo>);
	// go2hx Type system internal enum, no Kind equivalent
	GT_namedType(haxeClassPath:GoString);
}

@:using(stdgo.reflect.Reflect._Type__extension)
abstract Type(GT_enum) from(GT_enum) to(GT_enum) {
	public inline function new(?t:GT_enum = GT_invalid) {
		this = t;
	}

	@:to function __promote()
		return new AnyInterface({value: this, typeName: Type.getClassName(_Type__extension)});
}

@:rtti
class _Type__extension {
	public static final _typeName_ = GT_struct("", []);

	public static function serialize(gt:Type):String {
		var serializer = new Serializer();
		serializer.serialize(gt);
		return serializer.toString();
	}

	public static function kind(gt:Type):Kind {
		switch (gt) {
			case GT_namedType(classPath):
				return kind(getNamedTypeInfo(classPath).underlying);
			case _:
				return new Kind(new GoUInt(EnumValueTools.getIndex(gt)));
		}
	}

	public static function toString(gt:Type):String {
		return Std.string(gt);
	}

	public static function getNamedTypeInfo(classPath:GoString):NamedTypeData {
		// trace("getNamedTypeInfo", classPath);
		var ntd = namedTypeMap.get(classPath);
		if (ntd == null) {
			var classObj = Type.resolveClass(classPath);
			if (classObj == null) {
				// assume it is an opaque Haxe type
				// so make an entry for it
				var parts = classPath.split(".");
				var tName = parts.pop();
				var tPath = parts.join(".");
				ntd = {
					typeName: tName,
					haxeTypeName: tName,
					packPath: tPath,
					methods: new Array<MethodInfo>(),
					underlying: haxeTypeUnknown,
					isInterface: false,
					interfaces: new Array<GoString>()
				};
			} else {
				var t = typeOfClass(classObj, null); // has side effect of putting result in map
				switch (t) {
					case GT_namedType(_), GT_interface(_):
						ntd = namedTypeMap.get(classPath);
						if (ntd == null)
							throw "unable to retrive named type info for " + classPath;
					case _:
						throw new Error("getNamedTypeInfo: class is not a named type " + Std.string(classObj));
				}
			}
		}
		return ntd;
	}

	public static function string(gt:Type):GoString {
		var p = EnumValueTools.getParameters(gt);
		if (p.length == 0)
			return (gt.kind().string() : GoString);

		switch (gt) {
			case GT_namedType(classObj), GT_interface(classObj):
				var nti = getNamedTypeInfo(classObj);
				if (nti.packPath == "")
					return nti.typeName;
				else
					return nti.packPath + "." + nti.typeName;
			case GT_ptr(elem):
				return ("*" : GoString) + elem.string();
			case GT_struct(path, fields):
				var sflds = new StructFieldSet(path, fields);
				var r:GoString = "struct { ";
				var preface = "";
				for (sf in sflds) {
					r += preface;
					preface = "; ";
					r += sf.name + " " + sf.type.string();
				}
				r += " }";
				return r;
			case GT_array(typ, len):
				return "[" + Std.string(len) + "]" + typ.string();
			case GT_slice(typ):
				return "[]" + typ.string();
			case GT_map(key, value):
				return "map[" + key.string() + "]" + value.string();
			case GT_chan(typ):
				return "chan " + typ.string();
			case GT_func(args, rets):
				var r:GoString = "func (";
				var preface = "";
				for (arg in args) {
					r += preface;
					preface = ", ";
					r += arg.string();
				}
				r += ")";
				if (rets != null) {
					r += " ";
					if (rets.length > 1)
						r += "(";
					preface = "";
					for (ret in rets) {
						r += preface;
						preface = ", ";
						r += ret.string();
					}
					if (rets.length > 1)
						r += ")";
				}
				return r;
			case _:
				return (Std.string(gt) : GoString); // should not get here
		}
		return "???"; // should never get here!
	}

	public static function elem(gt:Type):Type {
		switch (gt) {
			case GT_chan(elem), GT_ptr(elem), GT_slice(elem), GT_array(elem, _):
				return elem;
			case _:
				throw new Error("reflect.Type.Elem not implemented for " + (string(gt) : String));
		}
		return GT_invalid;
	}

	public static function len(gt:Type):GoInt {
		switch (gt) {
			case GT_array(_, len):
				return (len : GoInt);
			case _:
				throw new Error("reflect.Type.Len() not implemented for " + (string(gt) : String));
		}
	}

	public static function numMethod(gt:Type):GoInt {
		switch (gt) {
			case GT_namedType(haxeClassPath), GT_interface(haxeClassPath):
				var nti = getNamedTypeInfo(haxeClassPath);
				return nti.methods.length;
			case _:
				throw new Error("reflect.NumMethod not implemented for " + string(gt));
		}
		return 0;
	}

	public static function method(gt:Type, idx:GoInt):Method {
		var i:Int = idx.toBasic();
		switch (gt) {
			case GT_namedType(haxeClassPath), GT_interface(haxeClassPath):
				var nti = getNamedTypeInfo(haxeClassPath);
				return nti.methods[i].m;
			case _:
				throw new Error("reflect.Method not implemented for " + string(gt));
		}
		return null;
	}

	public static function numField(gt:Type):GoInt {
		switch (gt) {
			case GT_namedType(haxeClassPath):
				var nti = getNamedTypeInfo(haxeClassPath);
				return nti.underlying.numField();
			case GT_struct(_, fieldsInfo):
				return fieldsInfo.length;
			case _:
				throw new Error("reflect.NumField not implemented for " + string(gt));
		}
		return 0;
	}

	public static function field(gt:Type, idx:GoInt):StructField {
		var i:Int = idx.toBasic();
		switch (gt) {
			case GT_namedType(haxeClassPath), GT_interface(haxeClassPath):
				var nti = getNamedTypeInfo(haxeClassPath);
				return nti.underlying.field(idx);
			case GT_struct(path, fields):
				var sfs = new StructFieldSet(path, fields);
				return (sfs : Array<StructField>)[i];
			case _:
				throw new Error("reflect.Field not implemented for " + string(gt));
		}
		return null;
	}

	public static function assignableTo(gt:Type, ot:Type):Bool {
		var gtP = EnumValueTools.getParameters(gt);
		var otP = EnumValueTools.getParameters(ot);
		if (gtP.length == 0 && otP.length == 0)
			return gt.kind() == ot.kind();

		switch (gt) {
			case GT_struct(_, gtFlds):
				switch (ot) {
					case GT_struct(_, otFlds):
						if (gtFlds.length != otFlds.length)
							return false;
						for (idx in 0...gtFlds.length)
							if (!assignableTo(gtFlds[idx].t, otFlds[idx].t))
								return false;
						return true;

					case _:
						return false;
				}
			case GT_namedType(gtRef):
				switch (ot) {
					case GT_namedType(otRef):
						return gtRef == otRef;
					case _:
						return false;
				}
			case GT_interface(gtRef):
				switch (ot) {
					case GT_interface(otRef):
						return gtRef == otRef;
					case _:
						return false;
				}
			case GT_func(gtArgs, gtRets):
				switch (ot) {
					case GT_func(otArgs, otRets):
						for (gtArg in gtArgs)
							for (otArg in otArgs)
								if (!gtArg.assignableTo(otArg))
									return false;
						for (gtRet in gtRets)
							for (otRet in otRets)
								if (!gtRet.assignableTo(otRet))
									return false;
						return true;
					case _:
						return false;
				}
			case _:
				throw new Error("refelect.AssignableTo not implemented for ( " + Std.string(gt) + " , " + Std.string(gt) + " )");
		}
		return false;
	}

	public static function implements_(gt:Type, ot:Type):Bool {
		switch (gt) {
			case GT_namedType(ref):
				switch (ot) {
					case GT_interface(iref):
						// check shortcut of rtti implements list
						var NTI = getNamedTypeInfo(ref);
						if (NTI.interfaces.contains(iref))
							return true;
						// otherwise check the individual methodslong-hand, needed for non go2hx classes
						var found = 0;
						for (i in 0...ot.numMethod().toBasic()) {
							var ifM = ot.method(i);
							for (j in 0...gt.numMethod().toBasic()) {
								var ntM = gt.method(j);
								if (ifM.name == ntM.name)
									if (ifM.type.assignableTo(ntM.type))
										found++;
							}
						}
						return found == ot.numMethod().toBasic();
					case GT_namedType(ntRef):
						return ref == ntRef;
					case _:
						return false;
				}
			case _:
				return gt.assignableTo(ot);
		}
		return false;
	}

	public static function comparable(gt:Type):Bool {
		switch (gt) {
			case GT_slice(_), GT_func(_, _), GT_map(_, _):
				return false;
			case GT_array(elem, _):
				return elem.comparable();
			case GT_struct(path, fields):
				var sfs = new StructFieldSet(path, fields);
				for (fld in sfs)
					if (!fld.type.comparable())
						return false;
				return true;
			case _:
				// TODO named types
				return true;
		}
	}
}

function unserializeType(s:String):Type {
	var unserializer = new Unserializer(s);
	var ret = unserializer.unserialize();
	if (Reflect.isEnumValue(ret)) {
		return ret;
	}
	return GT_invalid;
}

function ptrTo(t:Type):Type {
	return GT_ptr(t);
}

typedef StructTag = GoString; // TODO methods on this type

// same fields as Go reflect
// TODO - make a go2hx standard class, so that it can be accurately reflected upon
typedef StructField = {
	name:GoString,
	pkgPath:GoString,
	type:Type,
	tag:StructTag,
	offset:GoUIntptr,
	index:Slice<GoInt>,
	anonymous:Bool
}

// FieldInfo is cut-down data for the type declaration
typedef FieldInfo = {
	// n: haxe name for field
	n:GoString,
	t:Type,
	// m: metadata for field = tag
	m:GoString
}

@:forward
abstract StructFieldSet(Array<StructField>) from(Array<StructField>) to(Array<StructField>) {
	public inline function new(path:GoString, fields:Array<FieldInfo>) {
		var idx = new Slice<GoInt>(0);
		this = new Array<StructField>();
		for (field in fields) {
			// TODO add field processing for sub-structures
			var sf:StructField = {
				name: nameToGo(field.n),
				pkgPath: "",
				type: field.t,
				tag: field.m,
				offset: 0,
				index: idx.copy(),
				anonymous: false
			};
			if (sf.name.length == 0)
				sf.anonymous = true;
			else if (sf.name.substr(0, 1) == sf.name.substr(0, 1).toLowerCase())
				sf.pkgPath = path;
			this.push(sf);
			var i = idx.get(0);
			++i;
			idx.set(0, i);
		}
	}
}

// TODO - make a go2hx standard class, so that it can be accurately reflected upon
typedef Method = {
	// Name is the method name.
	name:GoString,
	// PkgPath is the package path that qualifies a lower case (unexported)
	// method name. It is empty for upper case (exported) method names.
	// The combination of PkgPath and Name uniquely identifies a method
	// in a method set.
	// See https://golang.org/ref/spec#Uniqueness_of_identifiers
	pkgPath:GoString,
	type:Type,
	// func with receiver as first argument
	func:Value,
	// index for Type.Method
	index:GoInt
}

typedef MethodInfo = {
	m:Method,
	haxeName:GoString
}

typedef NamedTypeData = {
	typeName:GoString,
	haxeTypeName:GoString,
	packPath:GoString,
	methods:Array<MethodInfo>,
	underlying:Type,
	isInterface:Bool,
	interfaces:Array<GoString>
};

var namedTypeMap:Map<GoString, NamedTypeData> = [
	"" => {
		typeName: "interface{}",
		haxeTypeName: "",
		packPath: "",
		methods: new Array<MethodInfo>(),
		underlying: haxeTypeUnknown,
		isInterface: true,
		interfaces: new Array<GoString>()
	}
];

function typeOf(iface:AnyInterface):Type {
	if (iface == null)
		return GT_unsafePointer;
	var tn = iface.typeName();
	var v = iface.value();
	var gt = declareType(tn);
	if (gt != GT_invalid)
		return gt;
	return typeOfAnyHaxe(v);
}

/*
	The types that can be created from a text value are those that are:
	- the [Haxe serialisation format](https://haxe.org/manual/std-serialization-format.html) encoded form of a GT_enum (allowing full type information to be passed using the typeName)
	- the xxxxx of a GT_xxxxx enum that has no parameters
	- the name of a Haxe class (for interfaces and named types)
 */
function declareType(typeName:String):Type {
	// trace("mNBT:", typeName);

	if (StringTools.startsWith(typeName, "wy21:stdgo.reflect.GT_enum"))
		return unserializeType(typeName);

	if (typeName.length == 0)
		return new Type(GT_invalid);
	if (StringTools.startsWith(typeName, "*")) {
		typeName = typeName.substr(1);
		var pointedAt = declareType(typeName);
		switch (pointedAt) {
			case GT_invalid:
				return GT_invalid;
			default:
				return GT_ptr(pointedAt);
		}
	}

	switch (typeName) {
		case "interface{}":
			return GT_interface("");
		case "float":
			return GT_float64;
		case "rune":
			return GT_int32;
		case "invalid", "array", "chan", "func", "map", "ptr", "slice", "struct", "namedType":
			// type needs more parameters
			return GT_invalid;
		case _:
			if (EnumTools.getConstructors(GT_enum).contains("GT_" + typeName)) {
				return EnumTools.createByName(GT_enum, "GT_" + typeName, []);
			} else {
				var nti = namedTypeMap[typeName];
				if (nti != null) {
					if (nti.isInterface)
						return GT_interface(typeName);
					else
						return GT_namedType(typeName);
				} else {
					if (Type.resolveClass(typeName) != null)
						return GT_namedType(typeName);
					else
						return GT_invalid;
				}
			}
	}
}

function makeNamedType(typeName:GoString, path:GoString):Type {
	switch (typeName) {
		case "interface", "namedType":
			return EnumTools.createByName(GT_enum, "GT_" + typeName, [path]);
		case _:
			return GT_invalid;
	}
}

function typeOfAnyHaxe(v:Dynamic):Type {
	if (v == null)
		return GT_unsafePointer;

	// fallback to the native haxe types
	if (Std.isOfType(v, String))
		return GT_string;
	if (Std.isOfType(v, Bool))
		return GT_bool;
	if (Std.isOfType(v, Int))
		return GT_int;
	if (Std.isOfType(v, Float))
		return GT_float64;
	if (haxe.Int64.isInt64(v))
		return GT_int64;
	if (Reflect.isFunction(v)) // a funcion with no inputs or outputs that can be seen
		return GT_func(new Array<Type>(), new Array<Type>());

	if (!Reflect.isObject(v)) {
		return haxeTypeUnknown;
	}

	if (Reflect.isEnumValue(v)) {
		return haxeTypeUnknown; // enums are not used by go2hx
	}

	var fields = new Array<FieldInfo>();

	var cl = Type.getClass(v);
	// trace("typeOf - class:", cl);
	if (cl == null) { // an anonomous structure
		var flds = Reflect.fields(v);
		for (fld in flds) {
			// TODO find a way to pass in field types, rather than inspect contents
			var fldValue = Reflect.getProperty(v, fld);
			var typ = typeOfAnyHaxe(fldValue);
			var fi:FieldInfo = {
				n: fld,
				t: typ,
				m: ""
			};
			fields.push(fi);
		}
		return GT_struct("", fields);
	}

	return typeOfClass(cl, v);
}

function typeOfClass(cl:Class<Dynamic>, v:Dynamic):Type {
	var fields = new Array<FieldInfo>();

	var name:GoString = "";
	var packagePath:GoString = "";
	var methods = new Array<MethodInfo>();
	var underlying = GT_invalid;

	var isInterface = false;
	var interfaces = new Array<GoString>();

	var haxePathToType = Type.getClassName(cl);

	var knownClass = nonRttiClassMap[haxePathToType];
	if (knownClass != null) {
		switch (knownClass) {
			case GT_array(typ, len):
				try {
					len = v.length;
					if (len > 0)
						switch (haxePathToType) {
							case "eval.Vector":
								var a = v.toArray();
								typ = typeOfAnyHaxe(a.pop());
							case _:
						}
				} catch (e)
					trace("failed attempt to infer array type information:", e);
				return GT_array(typ, len);

			case GT_slice(typ):
				try {
					var len = v.length;
					if (len > 0)
						typ = typeOfAnyHaxe(v.get(0));
				} catch (e)
					trace("failed attempt to infer slice type information:", e);
				return GT_slice(typ);

			case GT_map(key, value):
				var kvi = v.keyValueIterator();
				if (kvi.hasNext()) {
					var entry = kvi.next();
					key = typeOfAnyHaxe(entry.key);
					value = typeOfAnyHaxe(entry.value);
				}
				return GT_map(key, value);

			case GT_chan(elem):
				return GT_chan(elem); // TODO find type of element

			case _:
				throw new Error("typeOfClass: unhandled " + haxePathToType + " as " + knownClass.string());
		}
	}

	var cnameParts = haxePathToType.split(".");
	name = cnameParts.pop();
	packagePath = cnameParts.join(".");

	var ntCached = namedTypeMap.get(haxePathToType);
	if (ntCached != null) {
		if (ntCached.isInterface)
			return GT_interface(haxePathToType);
		else
			return GT_namedType(haxePathToType);
	}

	if (haxe.rtti.Rtti.hasRtti(cl)) {
		var rtti = haxe.rtti.Rtti.getRtti(cl);
		// trace("rtti", rtti);
		isInterface = rtti.isInterface;

		for (iface in rtti.interfaces)
			interfaces.push((iface.path : GoString));

		var xtnPostfix = "__extension";
		if (StringTools.endsWith(haxePathToType, xtnPostfix)) {
			// get the right Go type name from the extension class
			name = name.split(xtnPostfix)[0];
			if (StringTools.startsWith(name, "_"))
				name = name.substr(1);

			for (rttiStatic in rtti.statics) {
				if (rttiStatic.isPublic)
					switch (rttiStatic.name) {
						case "_typeName_":
							var str = StringTools.trim(rttiStatic.expr);
							str = str.substr(1, str.length - 2);
							underlying = declareType(str);
						case _:
							switch (rttiStatic.type) {
								case CFunction(args, ret):
									var fnSig = typeOfRttiType(rttiStatic.type);
									switch (fnSig) {
										case GT_func(args, ret):
											args[0] = GT_namedType(haxePathToType);
											fnSig = GT_func(args, ret);
											var meth:Method = {
												name: nameToGo(rttiStatic.name),
												pkgPath: packagePath,
												type: fnSig,
												func: null,
												index: 0
											};
											var mi:MethodInfo = {m: meth, haxeName: rttiStatic.name};
											methods.push(mi);
										case _:
											// not a function - why?
									}
								case _:
									// not a function, so we don't care
							}
					}
			}
		} else {
			// the fields of the struct{} are in the class
			for (rttiFld in rtti.fields) {
				// trace("rtti.field:", rttiFld.name, rttiFld.isPublic, rttiFld.type, rttiFld.meta);
				if (rttiFld.isPublic)
					switch (rttiFld.type) {
						case CFunction(args, ret):
							var ignoreFn = go2hxIgnore_isFunc[rttiFld.name];
							if (ignoreFn == null || !ignoreFn) {
								var m:Method = {
									name: nameToGo(rttiFld.name),
									pkgPath: packagePath,
									type: funcAddReceiver(typeOfRttiType(rttiFld.type), GT_namedType(haxePathToType)),
									func: null,
									index: 0
								};
								var mi:MethodInfo = {
									m: m,
									haxeName: rttiFld.name
								};
								methods.push(mi);
							}
						case _:
							var ignoreFn = go2hxIgnore_isFunc[rttiFld.name];
							if (ignoreFn == null || ignoreFn) {
								var typ = typeOfRttiType(rttiFld.type);
								var fi:FieldInfo = {
									n: rttiFld.name,
									t: typ,
									m: ""
								};
								fields.push(fi);
							}
					}
			}
			underlying = GT_struct(packagePath, fields);
		}
	} else {
		// a non-rtti class
		var flds = Type.getInstanceFields(cl);
		for (fld in flds) {
			var typ = haxeTypeUnknown;
			if (Reflect.isObject(v)) {
				var fldValue = Reflect.getProperty(v, fld);
				typ = typeOfAnyHaxe(fldValue);
			}
			switch (typ) {
				case GT_func(_, _):
					var m:Method = {
						name: nameToGo(fld),
						pkgPath: packagePath,
						type: typ,
						func: null,
						index: 0
					};
					var mi:MethodInfo = {
						m: m,
						haxeName: fld
					};
					methods.push(mi);
				case _:
					var fi:FieldInfo = {
						n: fld,
						t: typ,
						m: ""
					};
					fields.push(fi);
			}
		}
		underlying = GT_struct("", fields);
	}

	// add the correct method index
	for (idx in 0...methods.length)
		methods[idx].m.index = idx;

	var ntd:NamedTypeData = {
		typeName: name,
		haxeTypeName: haxePathToType,
		packPath: packagePath,
		methods: methods,
		underlying: underlying,
		isInterface: isInterface,
		interfaces: interfaces
	}
	namedTypeMap[haxePathToType] = ntd;

	if (isInterface) {
		return GT_interface(haxePathToType);
	} else {
		return GT_namedType(haxePathToType);
	}
}

// list of boilerplate go2hx fields not to show in Go reflect
var go2hxIgnore_isFunc:Map<String, Bool> = [
	"_is_pointer_" => false,
	"_typeName_" => false,
	"_address_" => false,
	"toString" => true,
	"__copy__" => true,
	"new" => true,
	"__promote" => true
];

var nonRttiClassMap:Map<String, Type> = [
	"eval.Vector" => GT_array(GT_invalid, 0),
	"stdgo._Slice.SliceData" => GT_slice(GT_invalid),
	"stdgo._GoMap.MapData" => GT_map(GT_invalid, GT_invalid),
	"stdgo.Chan" => GT_chan(GT_invalid)
];

var rttiClassMap:Map<String, Type> = [
	"stdgo.AnyInterface" => GT_interface(""), "stdgo.GoInt" => GT_int, "stdgo.GoInt8" => GT_int8, "stdgo.GoInt16" => GT_int16, "stdgo.GoInt32" => GT_int32,
	"stdgo.GoInt64" => GT_int64, "stdgo.GoUInt" => GT_uint, "stdgo.GoUInt8" => GT_uint8, "stdgo.GoUInt16" => GT_uint16, "stdgo.GoUInt32" => GT_uint32,
	"stdgo.GoUInt64" => GT_uint64, "stdgo.GoUIntptr" => GT_uintptr, "stdgo.GoFloat32" => GT_float32, "stdgo.GoFloat64" => GT_float64,
	"stdgo.GoComplex64" => GT_complex64, "stdgo.GoComplex128" => GT_complex128, "stdgo.GoString" => GT_string, "stdgo.GoByte" => GT_uint8,
	"stdgo.GoRune" => GT_int32, "stdgo.GoFloat" => GT_float64, "Any" => haxeTypeUnknown, "Dynamic" => haxeTypeUnknown, "String" => GT_string,
	"Bool" => GT_bool, "Float" => GT_float64, "Int" => GT_int, "Void" => null
];

// take func type and add receiver as first argument
function funcAddReceiver(f:Type, r:Type):Type {
	switch (f) {
		case GT_func(inputs, output):
			inputs.unshift(r);
			return GT_func(inputs, output);
		case _:
			return f; // no change if not a function, rather than error
	}
}

function typeOfRttiType(rttiT:haxe.rtti.CType):Type {
	var returnEnum = haxeTypeUnknown;
	switch (rttiT) {
		case CClass(name, params):
			// trace("rttiT class", name, params);
			var ctyp = rttiClassMap[name];
			if (ctyp == null)
				returnEnum = GT_namedType(name);
			else
				returnEnum = ctyp;
		case CTypedef(name, params):
			// trace("rttiT typedef", name, params);
			var ctyp = rttiClassMap[name];
			if (ctyp != null)
				returnEnum = ctyp;
			else {
				var parts = name.split(".");
				var tName = parts.pop();
				var tPath = parts.join(".");
				var ntd:NamedTypeData = {
					typeName: tName,
					haxeTypeName: name,
					packPath: tPath,
					methods: new Array<MethodInfo>(),
					underlying: haxeTypeUnknown,
					isInterface: false,
					interfaces: new Array<GoString>()
				};
				namedTypeMap[name] = ntd;
				returnEnum = GT_namedType(name);
			}

		case CFunction(args, ret):
			// trace("rttiT function", args, ret);
			var input = new Array<Type>();
			var output = new Array<Type>();
			for (arg in args)
				input.push(typeOfRttiType(arg.t));
			var retT = typeOfRttiType(ret);
			if (retT != null)
				output.push(retT);
			returnEnum = GT_func(input, output);

		case CAbstract(name, params):
			// trace("rttiT abstract", name, params);
			var atyp = rttiClassMap[name];
			if (atyp != null)
				returnEnum = atyp;
			else {
				var parts = name.split(".");
				var cname = parts.pop();
				if (parts.length > 0) // this is go2hx specific
					returnEnum = GT_namedType(parts.join(".") + "._" + cname + "__extension");
			}

		case _:
			// everything else is some opaque Haxe value...
	}

	// if (returnEnum == haxeTypeUnknown)
	// 	trace(rttiT);

	return returnEnum;
}

function nameToGo(n:GoString):GoString {
	if (n.length == 0)
		return "";
	if (StringTools.endsWith(n, "_")) // probably added to fix a name clash
		n = n.substr(0, n.length - 1);
	if (StringTools.startsWith(n, "_")) // a lower-case Go name
		return n.substr(1);
	var firstChar = n.substr(0, 1);
	if (firstChar == firstChar.toLowerCase()) // an upper-case Go name
		return firstChar.toUpperCase() + n.substr(1);
	return n;
}

//--------------------------------
// Go reflect.Value implementation
//--------------------------------

function valueOf(iface:AnyInterface):Value {
	return new Value(iface.value(), typeOf(iface));
}

@:rtti class Value extends StdGo2hx {
	var val:Any;
	var surfaceType:Type;
	var underlyingType:Type;

	public function new(?v:Any = null, t:Type = GT_invalid) {
		super(Type.getClassName(Value));
		val = v;
		surfaceType = t;
		underlyingType = findUnderlying(t);
	}

	public function __copy__()
		return new Value(val, surfaceType);

	@:to public function __promote()
		return new AnyInterface({value: this, typeName: _typeName_});

	public function toString() {
		return (this.string() : String);
	}

	static function findUnderlying(t:Type):Type {
		switch (t) {
			case GT_namedType(name):
				return findUnderlying(_Type__extension.getNamedTypeInfo(name).underlying);
			case _:
				return t;
		}
	}

	public inline function type()
		return surfaceType;

	public inline function kind()
		return surfaceType.kind();

	public inline function interface_()
		return new AnyInterface({value: val, typeName: surfaceType.serialize()});

	public inline function isNil()
		return val == null;

	public inline function isValid()
		return surfaceType != GT_invalid;

	public function bool():Bool {
		switch (underlyingType) {
			case GT_bool:
				return (val : Bool);
			case _:
				throw new ValueError("Bool", underlyingType.kind());
		}
		return false;
	}

	public function int():GoInt64 {
		switch (underlyingType) {
			case GT_int, GT_int8, GT_int16, GT_int32, GT_int64:
				return (val : GoInt64);
			case _:
				throw new ValueError("Int", underlyingType.kind());
		}
		return 0;
	}

	public function uint():GoUInt64 {
		switch (underlyingType) {
			case GT_uint, GT_uint8, GT_uint16, GT_uint32, GT_uint64:
				return (val : GoUInt64);
			case _:
				throw new ValueError("Uint", underlyingType.kind());
		}
		return 0;
	}

	public function float():GoFloat64 {
		switch (underlyingType) {
			case GT_float32, GT_float64:
				return (val : GoFloat64);
			case _:
				throw new ValueError("Float", underlyingType.kind());
		}
		return 0;
	}

	public function complex():GoComplex128 {
		switch (underlyingType) {
			case GT_complex128, GT_complex64:
				return (val : GoComplex128);
			case _:
				throw new ValueError("Complex", underlyingType.kind());
		}
		return 0;
	}

	public function string():GoString {
		switch (underlyingType) {
			case GT_string:
				return (val : GoString);
			case _:
				throw new ValueError("String", underlyingType.kind());
		}
		return "";
	}
}

// A ValueError occurs when a Value method is invoked on
// a Value that does not support it. Such cases are documented
// in the description of each method.
@:rtti class ValueError extends StdGo2hx implements stdgo.StdGoTypes.Error {
	var method:GoString;
	var kind:Kind;

	public function new(m:GoString, k:Kind) {
		super(Type.getClassName(ValueError));
		method = m;
		kind = k;
	}

	public function __copy__()
		return new ValueError(method, kind);

	@:to public function __promote()
		return new AnyInterface({value: this, typeName: _typeName_});

	public function toString() {
		return (this.error() : String);
	}

	public function error():GoString {
		if (this.kind == invalid) {
			return "reflect: call of " + this.method + " on zero Value";
		}
		return "reflect: call of " + this.method + " on " + this.kind.string() + " Value";
	}
}

// a local generic error
@:rtti class Error extends StdGo2hx implements stdgo.StdGoTypes.Error {
	var message:GoString;

	public function new(m:GoString) {
		super(Type.getClassName(Error));
		message = m;
	}

	public function __copy__()
		return new Error(message);

	@:to public function __promote()
		return new AnyInterface({value: this, typeName: _typeName_});

	public function error()
		return message;

	public function toString()
		return (this.error() : String);
}

//---------------------------------
// reflect.HaxeValue implementation
// only method is String()
//---------------------------------
var haxeTypeUnknown = GT_namedType("stdgo.reflect._HaxeValue__extension");

@:using(stdgo.reflect.Reflect._HaxeValue__extension)
abstract HaxeValue(Any) from(Any) to(Any) {
	public inline function new(?a:Any = null) {
		this = a;
	}

	@:to inline function __promote() // this is why Kind is an abstract
		return new AnyInterface({value: this, typeName: Type.getClassName(_HaxeValue__extension)});
}

@:rtti
class _HaxeValue__extension {
	static final _typeName_ = new Type(GT_struct("", [])).serialize();

	// string must be here to enable it to be seen at runtime
	public static function string(hv:Any):GoString {
		return Std.string(hv);
	}
}

// StdGo2hx holds some of the standard fields in a go2hx generated class
class StdGo2hx {
	public function new(tn:String) {
		_typeName_ = tn;
		_address_ = ++Go.addressIndex;
	}

	public var _is_pointer_ = false;
	public var _typeName_ = "invalid";
	public var _address_ = 0;
}

//--------------------------------------
// utility macro to cast to AnyInterface
//--------------------------------------

macro function cast_AnyInterface(e:haxe.macro.Expr)
	if (e == null)
		return macro new AnyInterface({
			value: null,
			typeName: "interface{}"
		});
	else
		return macro new AnyInterface({
			value: $e,
			typeName: $v{(new Type(gtDecode(Context.typeof(e)))).serialize()}
		});

private function gtDecode(t:haxe.macro.Type):GT_enum {
	// trace("gtDecode:", t);
	var ret = GT_invalid;
	switch (t) {
		case TType(ref, params):
			// trace("TType:", ref, params);
			var sref = ref.toString();
			ret = gtLookUp(sref);

		case TAbstract(ref, params):
			// trace("TAbstract:", ref, params);
			var sref:String = ref.toString();
			switch (sref) {
				case "stdgo.Slice":
					ret = GT_slice(gtParams(params)[0]);

				case "stdgo.GoArray":
					ret = GT_array(gtParams(params)[0], -1); // TODO go2hx does not store the length in the type

				case "stdgo.Pointer", "stdgo.PointerWrapper", "stdgo.GoArrayPointer":
					ret = GT_ptr(gtParams(params)[0]);

				case "stdgo.GoMap":
					var ps = gtParams(params);
					ret = GT_map(ps[0], ps[1]);

				case "Void":
					ret = GT_invalid; // TODO is this correct for Void

				default:
					ret = gtLookUp(sref);
					if (ret == GT_invalid) {
						var info = ref.get();
						var info = ref.get();
						var imp = info.impl;
						if (imp != null)
							ret = gtLookUp("Class<" + imp.toString() + ">");
						else {
							var path = info.name;
							if (info.module.length > 0)
								path = info.module + "." + path;
							ret = GT_namedType(path); // NOTE does not actually have an implementation
						}
					}
			}

		case TInst(ref, params):
			// trace("TInst",ref,params);
			var sref = ref.toString();
			switch (sref) {
				case "stdgo.Chan":
					ret = GT_chan(gtParams(params)[0]);

				default:
					ret = gtLookUp("Class<" + ref + ">");
			}

		case TAnonymous(a):
			var fields = a.get().fields;
			var members = new Array<FieldInfo>();
			for (field in fields) {
				var fi:FieldInfo = {
					n: field.name,
					t: gtDecode(field.type),
					m: ""
				};
				members.push(fi);
			}
			ret = GT_struct("", members);

		case TFun(args, result):
			var inputs = new Array<GT_enum>();
			for (arg in args) {
				inputs.push(gtDecode(arg.t));
			}
			var isVoid = false;
			switch (result) {
				case TAbstract(t, _):
					if (t.toString() == "Void") isVoid = true;
				default:
			}
			if (isVoid)
				ret = GT_func(inputs, []);
			else
				ret = GT_func(inputs, [gtDecode(result)]);

		case TDynamic(t):
			return haxeTypeUnknown;

		default:
			throw "reflect.cast_AnyInterface - unhandled typeof " + t;
	}
	return ret;
}

private function gtParams(params:Array<haxe.macro.Type>):Array<GT_enum> {
	// trace("gtLookupParameters", params);
	var pTypes = new Array<GT_enum>();
	for (i in 0...params.length)
		pTypes.push(gtDecode(params[i]));
	return pTypes;
}

private function gtLookUp(ref:String):GT_enum {
	// trace("gtLookup", ref);
	var ret = rttiClassMap[ref];
	if (ret == null) {
		var classPrefix = "Class<";
		var classPostfix = ">";
		if (StringTools.startsWith(ref, classPrefix) && StringTools.endsWith(ref, classPostfix)) {
			ref = ref.substr(classPrefix.length, ref.length - classPrefix.length - classPostfix.length);
			var stdgoPrefix = "stdgo._StdGoTypes.";
			var implPostfix = "_Impl_";
			if (StringTools.startsWith(ref, stdgoPrefix) && StringTools.endsWith(ref, implPostfix)) {
				ref = ref.substr(stdgoPrefix.length, ref.length - stdgoPrefix.length - implPostfix.length);
				ret = gtLookUp("stdgo." + ref);
			} else {
				// trace(ref);
				if (StringTools.endsWith(ref, implPostfix)) {
					var parts = ref.split(".");
					var cname = parts.pop();
					cname = "_" + cname.substr(0, cname.length - implPostfix.length) + "__extension"; // go2hx naming convention
					parts.pop(); // remove hidden _Impl_ location
					parts.push(cname); // put the revised class name back on the end
					ref = parts.join(".");
					ret = GT_namedType(ref);
				} else { // just a class
					ret = GT_namedType(ref);
				}
			}
		} else // not a class
			ret = GT_invalid;
	}
	// trace("gtLookup=>", ref, ret);
	return ret;
}

//------------
// TODO remove
//------------
function testHarness() {
	trace("testHarness");
	// a space to test ideas...
	var x = new Array<AnyInterface>();
	var aif:AnyInterface;
	aif = cast_AnyInterface((42 : GoFloat));
	x.push(aif);
	var z:{var x:GoInt16; var y:Bool;} = {x: ((0 : GoInt16)), y: false};
	aif = cast_AnyInterface(z);
	x.push(aif);
	var a:GoArray<Bool> = new GoArray<Bool>(...[for (i in 0...((3 : GoInt)).toBasic()) false]);
	aif = cast_AnyInterface(a);
	x.push(aif);
	var i = 42;
	var p = Go.pointer(i);
	aif = cast_AnyInterface(p);
	x.push(aif);
	aif = cast_AnyInterface(new Slice<GoRune>());
	x.push(aif);
	aif = cast_AnyInterface(new GoMap<GoString, Bool>(false));
	x.push(aif);
	aif = cast_AnyInterface((new Chan<NonStructT>(12, (0 : NonStructT))));
	x.push(aif);
	aif = cast_AnyInterface(((42 : NonStructT)));
	x.push(aif);
	aif = cast_AnyInterface((new Type(GT_complex128)));
	x.push(aif);
	aif = cast_AnyInterface((new StructT("hello")));
	x.push(aif);
	aif = cast_AnyInterface((typeOfClass)); // func with return value
	x.push(aif);
	aif = cast_AnyInterface((doLittle)); // func with Void return
	x.push(aif);
	aif = cast_AnyInterface(new Slice<GoMap<NonStructT, GoArray<Chan<Pointer<StructT>>>>>()); // complex type
	x.push(aif);
	aif = cast_AnyInterface(new AnyInterface({value: 42, typeName: "int"}));
	x.push(aif);

	for (ai in x) {
		trace("---");
		var tn = ai.typeName();
		var t = declareType(tn);
		trace(t, t.kind().string(), t.string());
		switch (t.kind()) {
			case struct:
				trace("numField", t.numField());
			default:
		}
		switch (t) {
			case GT_namedType(cn):
				trace("numMethod", t.numMethod());
			default:
		}
	}
}

// TODO - remove!
// BELOW SOME GENERATED TYPES FOR TEST HARNESS TO INSPECT

function doLittle(a:GoString, b:GoUInt32):Void {}

@:rtti class _NonStructT__extension {
	public static final _typeName_ = "uint8";

	public static function string(nst:_NonStructT):GoString {
		return (("NonStructT-int8" : GoString));
	}
}

@:rtti @:using(stdgo.reflect.Reflect._NonStructT__extension) typedef _NonStructT = GoUInt8;

/**

	NonStructT uint8
**/
@:transitive @:forward abstract NonStructT(_NonStructT) from _NonStructT to _NonStructT {
	@:to
	inline function __promote():AnyInterface
		return new AnyInterface({value: this, typeName: Type.getClassName(_NonStructT__extension)});
}

/**

	structT struct{ X string }
**/
@:rtti @:structInit @:allow(github_com.pxshadow.go4hx.rnd) private final class StructT implements StructType {
	public var x:GoString = "";

	public function new(?x) {
		stdgo.internal.Macro.initLocals();
		_address_ = ++Go.addressIndex;
	}

	public function toString() {
		return '{${Std.string(x)}}';
	}

	public function __copy__() {
		return new StructT(x);
	}

	public var _is_pointer_ = false;
	public final _typeName_ = "structT";
	public var _address_ = 0;

	public function string():GoString {
		var s = this.__copy__();
		return s.x;
	}
}
