package stdgo.reflect;

// prototype imports
import stdgo.Pointer.PointerData;
import haxe.Int64;
import haxe.EnumTools;
import stdgo.fmt.Fmt;
import stdgo.StdGoTypes;
import stdgo.Go;
import stdgo.GoString;
import haxe.Serializer;
import haxe.Unserializer;
// end prototype imports
import stdgo.StdGoTypes.AnyInterface;

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

// function typeOf(x:AnyInterface)
// 	return null;
// prototype replacement code below

@:using(stdgo.reflect.Reflect._Kind__extension)
abstract Kind(UInt) to(UInt) from(UInt) {
	public inline function new(?i:GoUInt = 0) {
		this = i.toBasic();
	}

	@:from inline static function __fromIntegerType(i:IntegerType):Kind {
		return new Kind((i : UInt));
	}

	@:to inline function __promote() {
		var typ:GoType = GT_namedType(Type.getClassName(_Kind__extension), GT_uint);
		var txt = typ.serialize();
		return new AnyInterface({value: this, typeName: txt});
	}

	@:to inline function __GoUInt()
		return new GoUInt(this);

	@:from inline static function __fromGoUInt(gui:GoUInt)
		return new Kind(gui);
}

@:rtti
class _Kind__extension {
	// string must be here to enable it to be seen at runtime
	public static function string(k:Kind):GoString {
		var r = EnumTools.getConstructors(GT_enum)[k].substr(3);
		if (r == "unsafePointer")
			return "unsafe.pointer";
		return r;
	}
}

function makeGoTypeFromTypeName(typeName:String):GoType {
	// trace("mNBT:", typeName);

	if (StringTools.startsWith(typeName, "wy21:stdgo.reflect.GT_enum"))
		return unserializeGoType(typeName);

	var pointerTo = false;
	if (typeName.length == 0)
		return new GoType(GT_invalid);
	if (StringTools.startsWith(typeName, "*")) {
		pointerTo = true;
		typeName = typeName.substr(1);
	}

	switch (typeName) {
		case "invalid", "array", "chan", "func", "map", "ptr", "slice", "struct", "namedType":
			// type needs more parameters
			return GT_invalid;
		case _:
			if (EnumTools.getConstructors(GT_enum).contains("GT_" + typeName)) {
				if (pointerTo)
					return GT_ptr(EnumTools.createByName(GT_enum, "GT_" + typeName, []));
				else
					return EnumTools.createByName(GT_enum, "GT_" + typeName, []);
			} else {
				if (Type.resolveClass(typeName) != null)
					return GT_namedType(typeName, GT_struct([]));
				else
					return GT_invalid;
			}
	}
}

function makeNamedGoType(typeName:GoString, path:GoString):GoType {
	switch (typeName) {
		case "interface", "namedType":
			return EnumTools.createByName(GT_enum, "GT_" + typeName, [path]);
		case _:
			return GT_invalid;
	}
}

typedef StructTag = GoString; // TODO methods

typedef StructField = {
	name:GoString,
	pkgPath:GoString,
	type:GoType,
	tag:StructTag,
	anonymous:Bool,
	// offset:GoUIntptr;
}

typedef Method = {
	name:GoString,
	pkgPath:GoString,
	type:GoType,
	// func:Value,	// func with receiver as first argument
	// index:GoInt,	// index for Type.Method
}

typedef NamedTypeData = {
	typeName:GoString,
	packPath:GoString,
	methods:Array<Method>,
	underlying:GoType,
	isInterface:Bool,
	interfaces:Array<GoString>
};

var namedTypeMap:Map<GoString, NamedTypeData> = [
	"reflect.HaxeTypeUnknown" => {
		typeName: "HaxeTypeUnknown",
		packPath: "reflect",
		methods: new Array<Method>(),
		underlying: GT_struct(new Array<StructField>()), // struct{}
		isInterface: false,
		interfaces: new Array<GoString>()
	}
];

var haxeTypeUnknown = GT_namedType("reflect.HaxeTypeUnknown", GT_struct([]));

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
	GT_array(elem:GoType, len:GoInt);
	GT_chan(elem:GoType, dir:GoInt);
	GT_func(input:Array<GoType>, output:Array<GoType>);
	GT_interface(haxeClassPath:GoString);
	GT_map(key:GoType, value:GoType);
	GT_ptr(elem:GoType);
	GT_slice(elem:GoType);
	GT_string;
	GT_struct(fields:Array<StructField>);
	GT_unsafePointer;
	GT_namedType(haxeClassPath:GoString, underlying:GoType);
}

typedef Type = GoType;

@:using(stdgo.reflect.Reflect._GoType__extension)
abstract GoType(GT_enum) from(GT_enum) to(GT_enum) {
	public inline function new(?t:GT_enum = GT_invalid) {
		this = t;
	}

	@:to function __promote() {
		var t:GoType = GT_namedType(Type.getClassName(_GoType__extension), GT_struct([]));
		return new AnyInterface({value: this, typeName: t.serialize()});
	}
}

function unserializeGoType(s:String):GoType {
	var unserializer = new Unserializer(s);
	var ret = unserializer.unserialize();
	if (Reflect.isEnumValue(ret)) {
		return ret;
	}
	return GT_invalid;
}

@:rtti
class _GoType__extension {
	public static function serialize(gt:GoType):String {
		var serializer = new Serializer();
		serializer.serialize(gt);
		return serializer.toString();
	}

	public static function kind(gt:GoType):Kind {
		switch (gt) {
			case GT_namedType(classPath, underlying):
				switch (underlying) {
					case GT_struct(_): // struct info is in class not declaration
						return kind(getNamedTypeInfo(classPath).underlying);
					case _:
						return kind(underlying);
				}

			case _:
				return new Kind(new GoUInt(EnumValueTools.getIndex(gt)));
		}
	}

	public static function toString(gt:GoType):String {
		return Std.string(gt);
	}

	private static function getNamedTypeInfo(classPath:GoString):NamedTypeData {
		// trace("getNamedTypeInfo", classPath);
		var ntd = namedTypeMap.get(classPath);
		if (ntd == null) {
			var classObj = Type.resolveClass(classPath);
			if (classObj == null)
				throw "unable to resolve class " + classPath;
			var t = typeOfClass(classObj, null); // has side effect of putting result in map
			switch (t) {
				case GT_namedType(_), GT_interface(_):
					ntd = namedTypeMap.get(classPath);
					if (ntd == null)
						throw "unable to retrive named type info for " + Std.string(classObj);
				case _:
					throw "class is not a named type " + Std.string(classObj);
			}
		}
		return ntd;
	}

	public static function string(gt:GoType):GoString {
		var p = EnumValueTools.getParameters(gt);
		if (p.length == 0)
			return (gt.kind().string() : GoString);

		switch (gt) {
			case GT_namedType(classObj, _), GT_interface(classObj):
				var nti = getNamedTypeInfo(classObj);
				if (nti.packPath == "")
					return nti.typeName;
				else
					return nti.packPath + "." + nti.typeName;
			case GT_ptr(elem):
				return ("*" : GoString) + elem.string();
			case GT_struct(sflds):
				var r:GoString = "struct { ";
				var preface = "";
				for (sf in sflds) {
					r += preface;
					preface = "; ";
					r += sf.name + " " + sf.type.string();
				}
				r += " }";
				return r;
			case GT_array(_, _), GT_chan(_, _), GT_func(_, _), GT_map(_, _):
				return (Std.string(gt) : GoString); // TODO
			case _:
				return (Std.string(gt) : GoString); // should not get here
		}
		return "???"; // should never get here!
	}

	public static function elem(gt:GoType):GoType {
		switch (gt) {
			case GT_chan(elem, _):
				return elem;
			case GT_ptr(elem), GT_slice(elem):
				return elem;
			case GT_array(elem, _):
				return elem;
			case _:
				throw "reflect.Type.Elem not implemented for " + (string(gt) : String);
		}
		return GT_invalid;
	}

	public static function len(gt:GoType):GoInt {
		switch (gt) {
			case GT_array(_, len):
				return (len : GoInt);
			case _:
				throw "reflect.Type.Len() not implemented for " + (string(gt) : String);
		}
	}

	public static function numMethod(gt:GoType):GoInt {
		switch (gt) {
			case GT_namedType(haxeClassPath, _), GT_interface(haxeClassPath):
				var nti = getNamedTypeInfo(haxeClassPath);
				return nti.methods.length;
			case _:
				throw "reflect.NumMethods not implemented for " + string(gt);
		}
		return 0;
	}

	public static function method(gt:GoType, idx:GoInt):Method {
		var i:Int = idx.toBasic();
		switch (gt) {
			case GT_namedType(haxeClassPath, _), GT_interface(haxeClassPath):
				var nti = getNamedTypeInfo(haxeClassPath);
				return nti.methods[i];
			case _:
				throw "reflect.Method not implemented for " + string(gt);
		}
		return null;
	}

	public static function numField(gt:GoType):GoInt {
		switch (gt) {
			case GT_namedType(haxeClassPath, _):
				var nti = getNamedTypeInfo(haxeClassPath);
				return nti.underlying.numField();
			case GT_struct(fields):
				return fields.length;
			case _:
				throw "reflect.NumMethods not implemented for " + string(gt);
		}
		return 0;
	}

	public static function field(gt:GoType, idx:GoInt):Method {
		var i:Int = idx.toBasic();
		switch (gt) {
			case GT_namedType(haxeClassPath, _), GT_interface(haxeClassPath):
				var nti = getNamedTypeInfo(haxeClassPath);
				return nti.underlying.field(idx);
			case GT_struct(fields):
				return fields[i];
			case _:
				throw "reflect.Method not implemented for " + string(gt);
		}
		return null;
	}

	public static function assignableTo(gt:GoType, ot:GoType):Bool {
		var gtP = EnumValueTools.getParameters(gt);
		var otP = EnumValueTools.getParameters(ot);
		if (gtP.length == 0 && otP.length == 0)
			return gt.kind() == ot.kind();

		switch (gt) {
			case GT_struct(_):
				throw "reflect.assignable not yet implemented for struct";
			case GT_namedType(gtRef, _):
				switch (ot) {
					case GT_namedType(otRef, _):
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
				throw "refelect.AssignableTo not implemented for ( " + Std.string(gt) + " , " + Std.string(gt) + " )";
		}
		return false;
	}

	public static function implements_(gt:GoType, ot:GoType):Bool {
		switch (gt) {
			case GT_namedType(ref, _):
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
					case GT_namedType(ntRef, _):
						return ref == ntRef;
					case _:
						return false;
				}
			case _:
				return gt.assignableTo(ot);
		}
		return false;
	}
}

function ptrTo(t:GoType):GoType {
	return GT_ptr(t);
}

function typeOf(iface:AnyInterface):GoType {
	var tn = iface.typeName();
	var v = iface.value();
	switch (tn) {
		case "*unknown": // TODO this code may be in the wrong place
			var elem = (v : Dynamic).get();
			var elemT = typeOfAnyHaxe(elem);
			if (elemT != GT_invalid)
				return GT_ptr(elemT);
		case _:
	}
	var gt = makeGoTypeFromTypeName(tn);
	if (gt != GT_invalid)
		return gt;
	return typeOfAnyHaxe(v);
}

function typeOfAnyHaxe(v:Dynamic):GoType {
	if (v == null)
		return haxeTypeUnknown;

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

	if (!Reflect.isObject(v)) {
		return haxeTypeUnknown;
	}

	if (Reflect.isEnumValue(v)) {
		return haxeTypeUnknown; // enums are not used by go2hx
	}

	if (Reflect.isFunction(v)) // a funcion with no inputs or outputs
		return GT_func(new Array<GoType>(), new Array<GoType>());

	var fields = new Array<StructField>();

	var cl = Type.getClass(v);
	// trace("typeOf - class:", cl);
	if (cl == null) { // an anonomous structure
		var flds = Reflect.fields(v);
		for (fld in flds) {
			var fldValue = Reflect.getProperty(v, fld);
			var typ = typeOfAnyHaxe(fldValue);
			var sf:StructField = {
				name: nameToGo(fld),
				type: typ,
				tag: "",
				pkgPath: "",
				anonymous: false
			};
			fields.push(sf);
		}
		return GT_struct(fields);
	}

	return typeOfClass(cl, v);
}

function typeOfClass(cl:Class<Dynamic>, v:Dynamic):GoType {
	var fields = new Array<StructField>();

	var name:GoString = "";
	var packagePath:GoString = "";
	var methods = new Array<Method>();

	var isInterface = false;
	var interfaces = new Array<GoString>();

	var haxePathToType = Type.getClassName(cl);
	var cnameParts = haxePathToType.split(".");
	name = cnameParts.pop();
	packagePath = cnameParts.join("/");

	var ntCached = namedTypeMap.get(haxePathToType);
	if (ntCached != null) {
		if (ntCached.isInterface)
			return GT_interface(haxePathToType);
		else
			return GT_namedType(haxePathToType, ntCached.underlying);
	}

	if (haxe.rtti.Rtti.hasRtti(cl)) {
		var rtti = haxe.rtti.Rtti.getRtti(cl);
		// trace("rtti", rtti);
		isInterface = rtti.isInterface;

		for (iface in rtti.interfaces)
			interfaces.push((iface.path : GoString));

		for (rttiFld in rtti.fields) {
			// trace("rtti.field:", rttiFld.name, rttiFld.type, rttiFld.meta);
			switch (rttiFld.type) {
				case CFunction(args, ret):
					var m:Method = {
						name: nameToGo(rttiFld.name),
						pkgPath: packagePath,
						type: typeOfRttiType(rttiFld.type)
					};
					methods.push(m);
				case _:
					var typ = typeOfRttiType(rttiFld.type);
					var sf:StructField = {
						name: nameToGo(rttiFld.name),
						type: typ,
						tag: "",
						pkgPath: packagePath,
						anonymous: false
					};
					fields.push(sf);
			}
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
						type: typ
					};
					methods.push(m);
				case _:
					var sf:StructField = {
						name: nameToGo(fld),
						type: typ,
						tag: "",
						pkgPath: "",
						anonymous: false
					};
					fields.push(sf);
			}
		}
	}

	var ntd:NamedTypeData = {
		typeName: name,
		packPath: packagePath,
		methods: methods,
		underlying: GT_struct(fields),
		isInterface: isInterface,
		interfaces: interfaces
	}
	namedTypeMap[haxePathToType] = ntd;

	if (isInterface) {
		return GT_interface(haxePathToType);
	} else {
		return GT_namedType(haxePathToType, ntd.underlying);
	}
}

var rttiCClassMap:Map<String, GoType> = ["String" => GT_string];

var rttiCAbstractMap:Map<String, GoType> = [
	"stdgo.GoInt" => GT_int, "stdgo.GoInt8" => GT_int8, "stdgo.GoIntq6" => GT_int16, "stdgo.GoInt32" => GT_int32, "stdgo.GoInt64" => GT_int64,
	"stdgo.GoUInt" => GT_uint, "stdgo.GoUInt8" => GT_uint8, "stdgo.GoUIntq6" => GT_uint16, "stdgo.GoUInt32" => GT_uint32, "stdgo.GoUInt64" => GT_uint64,
	"stdgo.GoUIntptr" => GT_uintptr, "stdgo.GoFloat32" => GT_float32, "stdgo.GoFloat64" => GT_float64, "stdgo.GoComplex64" => GT_complex64,
	"stdgo.GoComplex128" => GT_complex128, "stdgo.GoString" => GT_string, "Void" => null
];

function typeOfRttiType(rttiT:haxe.rtti.CType):GoType {
	var returnEnum = haxeTypeUnknown;
	switch (rttiT) {
		case CClass(name, params):
			// trace("rttiT class", name, params);
			var ctyp = rttiCClassMap[name];
			if (ctyp == null)
				returnEnum = GT_namedType(name, GT_struct([])); // TODO this underlying type may be wrong
			else
				returnEnum = ctyp;
		case CTypedef(name, params):
			// trace("rttiT typedef", name, params);
			var parts = name.split(".");
			var tName = parts.pop();
			var tPath = parts.join("/");
			var ntd:NamedTypeData = {
				typeName: tName,
				packPath: tPath,
				methods: new Array<Method>(),
				underlying: haxeTypeUnknown,
				isInterface: false,
				interfaces: new Array<GoString>()
			};
			namedTypeMap[name] = ntd;
			returnEnum = GT_namedType(name, ntd.underlying);

		case CFunction(args, ret):
			// trace("rttiT function", args, ret);
			var input = new Array<GoType>();
			var output = new Array<GoType>();
			for (arg in args)
				input.push(typeOfRttiType(arg.t));
			var retT = typeOfRttiType(ret);
			if (retT != null)
				output.push(retT);
			returnEnum = GT_func(input, output);

		case CAbstract(name, params):
			// trace("rttiT abstract", name, params);
			var atyp = rttiCAbstractMap[name];
			if (atyp != null)
				returnEnum = atyp;

		case _:
			// everything else is some opaque Haxe value...
	}
	return returnEnum;
}

function nameToGo(n:GoString):GoString {
	if (n.length == 0)
		return "";
	if (StringTools.startsWith(n, "_"))
		return n.substr(1);
	var firstChar = n.substr(0, 1);
	if (firstChar == firstChar.toLowerCase())
		return firstChar.toUpperCase() + n.substr(1);
	return n;
}

function testHarness() {
	trace("testHarness");

	var cn = Type.getClassName(_GoType__extension /*github_com.pxshadow.go4hx.rnd.Rnd.MyType*/);
	// var cn = "stdgo.reflect.Reflect.Reflect";
	var cl = Type.resolveClass(cn);
	trace(cl);
	var rtti = haxe.rtti.Rtti.getRtti(cl);
	// trace(rtti);

	var gt = GT_string;
	var iface:AnyInterface = gt;
	trace(iface.value(), iface.typeName());
}
