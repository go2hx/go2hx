package stdgo.internal.cpu;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// Package cpu implements processor feature detection
	// used by the Go standard library.
**/
private var __go2hxdoc__package:Bool;

/**
	// CacheLineSize is the CPU's assumed cache line size.
	// There is currently no runtime detection of the real cache line size
	// so we use the constant per GOARCH CacheLinePadSize as an approximation.
**/
var cacheLineSize:GoUIntptr = (64 : GoUIntptr);

/**
	// DebugOptions is set to true by the runtime if the OS supports reading
	// GODEBUG early in runtime startup.
	// This should not be changed after it is initialized.
**/
var debugOptions:Bool = false;

/**
	// The booleans in X86 contain the correspondingly named cpuid feature bit.
	// HasAVX and HasAVX2 are only set if the OS does support XMM and YMM registers
	// in addition to the cpuid feature bit being set.
	// The struct is padded to avoid false sharing.
**/
var x86:T__struct_0 = ({
	hasAES: false,
	hasADX: false,
	hasAVX: false,
	hasAVX2: false,
	hasBMI1: false,
	hasBMI2: false,
	hasERMS: false,
	hasFMA: false,
	hasOSXSAVE: false,
	hasPCLMULQDQ: false,
	hasPOPCNT: false,
	hasRDTSCP: false,
	hasSSE3: false,
	hasSSSE3: false,
	hasSSE41: false,
	hasSSE42: false
} : T__struct_0);

/**
	// The booleans in ARM contain the correspondingly named cpu feature bit.
	// The struct is padded to avoid false sharing.
**/
var arm:T__struct_1 = ({hasVFPv4: false, hasIDIVA: false} : T__struct_1);

/**
	// The booleans in ARM64 contain the correspondingly named cpu feature bit.
	// The struct is padded to avoid false sharing.
**/
var arm64:T__struct_2 = ({
	hasAES: false,
	hasPMULL: false,
	hasSHA1: false,
	hasSHA2: false,
	hasCRC32: false,
	hasATOMICS: false,
	hasCPUID: false,
	isNeoverseN1: false,
	isZeus: false
} : T__struct_2);

var mips64x:T__struct_3 = ({hasMSA: false} : T__struct_3);

/**
	// For ppc64(le), it is safe to check only for ISA level starting on ISA v3.00,
	// since there are no optional categories. There are some exceptions that also
	// require kernel support to work (darn, scv), so there are feature bits for
	// those as well. The minimum processor requirement is POWER8 (ISA 2.07).
	// The struct is padded to avoid false sharing.
**/
var ppc64:T__struct_4 = ({
	hasDARN: false,
	hasSCV: false,
	isPOWER8: false,
	isPOWER9: false,
	isPOWER10: false
} : T__struct_4);

var s390x:T__struct_5 = ({
	hasZARCH: false,
	hasSTFLE: false,
	hasLDISP: false,
	hasEIMM: false,
	hasDFP: false,
	hasETF3EH: false,
	hasMSA: false,
	hasAES: false,
	hasAESCBC: false,
	hasAESCTR: false,
	hasAESGCM: false,
	hasGHASH: false,
	hasSHA1: false,
	hasSHA256: false,
	hasSHA512: false,
	hasSHA3: false,
	hasVX: false,
	hasVXE: false,
	hasKDSA: false,
	hasECDSA: false,
	hasEDDSA: false
} : T__struct_5);

/**
	// options contains the cpu debug options that can be used in GODEBUG.
	// Options are arch dependent and are added by the arch specific doinit functions.
	// Features that are mandatory for the specific GOARCH should not be added to options
	// (e.g. SSE2 on amd64).
**/
private var _options:Slice<T_option> = (null : Slice<T_option>);

final cacheLinePadSize:GoUInt64 = ("64" : GoUInt64);

/**
	// CacheLinePad is used to pad structs to avoid false sharing.
**/
@:structInit class CacheLinePad {
	@:optional
	public var _1:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...64) (0 : GoUInt8)]);

	public function new(?_1:GoArray<GoUInt8>) {
		if (_1 != null)
			this._1 = _1;
	}

	public function __copy__() {
		return new CacheLinePad(_1);
	}
}

/**
	// Option names should be lower case. e.g. avx instead of AVX.
**/
@:structInit private class T_option {
	public var name:GoString = "";
	public var feature:Pointer<Bool> = (null : Pointer<Bool>);

	/**
		// whether feature value was specified in GODEBUG
	**/
	public var specified:Bool = false;

	/**
		// whether feature should be enabled
	**/
	public var enable:Bool = false;

	public function new(?name:GoString, ?feature:Pointer<Bool>, ?specified:Bool, ?enable:Bool) {
		if (name != null)
			this.name = name;
		if (feature != null)
			this.feature = feature;
		if (specified != null)
			this.specified = specified;
		if (enable != null)
			this.enable = enable;
	}

	public function __copy__() {
		return new T_option(name, feature, specified, enable);
	}
}

@:local private typedef T__struct_0 = {
	@:optional
	public var _7:CacheLinePad;
	public var hasAES:Bool;
	public var hasADX:Bool;
	public var hasAVX:Bool;
	public var hasAVX2:Bool;
	public var hasBMI1:Bool;
	public var hasBMI2:Bool;
	public var hasERMS:Bool;
	public var hasFMA:Bool;
	public var hasOSXSAVE:Bool;
	public var hasPCLMULQDQ:Bool;
	public var hasPOPCNT:Bool;
	public var hasRDTSCP:Bool;
	public var hasSSE3:Bool;
	public var hasSSSE3:Bool;
	public var hasSSE41:Bool;
	public var hasSSE42:Bool;
	@:optional
	public var _9:CacheLinePad;
};

@:local private typedef T__struct_1 = {
	@:optional
	public var _15:CacheLinePad;
	public var hasVFPv4:Bool;
	public var hasIDIVA:Bool;
	@:optional
	public var _17:CacheLinePad;
};

@:local private typedef T__struct_2 = {
	@:optional
	public var _23:CacheLinePad;
	public var hasAES:Bool;
	public var hasPMULL:Bool;
	public var hasSHA1:Bool;
	public var hasSHA2:Bool;
	public var hasCRC32:Bool;
	public var hasATOMICS:Bool;
	public var hasCPUID:Bool;
	public var isNeoverseN1:Bool;
	public var isZeus:Bool;
	@:optional
	public var _25:CacheLinePad;
};

@:local private typedef T__struct_3 = {
	@:optional
	public var _31:CacheLinePad;

	/**
		// MIPS SIMD architecture
	**/
	public var hasMSA:Bool;

	@:optional
	public var _33:CacheLinePad;
};

@:local private typedef T__struct_4 = {
	@:optional
	public var _39:CacheLinePad;

	/**
		// Hardware random number generator (requires kernel enablement)
	**/
	public var hasDARN:Bool;

	/**
		// Syscall vectored (requires kernel enablement)
	**/
	public var hasSCV:Bool;

	/**
		// ISA v2.07 (POWER8)
	**/
	public var isPOWER8:Bool;

	/**
		// ISA v3.00 (POWER9)
	**/
	public var isPOWER9:Bool;

	/**
		// ISA v3.1  (POWER10)
	**/
	public var isPOWER10:Bool;

	@:optional
	public var _41:CacheLinePad;
};

@:local private typedef T__struct_5 = {
	@:optional
	public var _47:CacheLinePad;

	/**
		// z architecture mode is active [mandatory]
	**/
	public var hasZARCH:Bool;

	/**
		// store facility list extended [mandatory]
	**/
	public var hasSTFLE:Bool;

	/**
		// long (20-bit) displacements [mandatory]
	**/
	public var hasLDISP:Bool;

	/**
		// 32-bit immediates [mandatory]
	**/
	public var hasEIMM:Bool;

	/**
		// decimal floating point
	**/
	public var hasDFP:Bool;

	/**
		// ETF-3 enhanced
	**/
	public var hasETF3EH:Bool;

	/**
		// message security assist (CPACF)
	**/
	public var hasMSA:Bool;

	/**
		// KM-AES{128,192,256} functions
	**/
	public var hasAES:Bool;

	/**
		// KMC-AES{128,192,256} functions
	**/
	public var hasAESCBC:Bool;

	/**
		// KMCTR-AES{128,192,256} functions
	**/
	public var hasAESCTR:Bool;

	/**
		// KMA-GCM-AES{128,192,256} functions
	**/
	public var hasAESGCM:Bool;

	/**
		// KIMD-GHASH function
	**/
	public var hasGHASH:Bool;

	/**
		// K{I,L}MD-SHA-1 functions
	**/
	public var hasSHA1:Bool;

	/**
		// K{I,L}MD-SHA-256 functions
	**/
	public var hasSHA256:Bool;

	/**
		// K{I,L}MD-SHA-512 functions
	**/
	public var hasSHA512:Bool;

	/**
		// K{I,L}MD-SHA3-{224,256,384,512} and K{I,L}MD-SHAKE-{128,256} functions
	**/
	public var hasSHA3:Bool;

	/**
		// vector facility. Note: the runtime sets this when it processes auxv records.
	**/
	public var hasVX:Bool;

	/**
		// vector-enhancements facility 1
	**/
	public var hasVXE:Bool;

	/**
		// elliptic curve functions
	**/
	public var hasKDSA:Bool;

	/**
		// NIST curves
	**/
	public var hasECDSA:Bool;

	/**
		// Edwards curves
	**/
	public var hasEDDSA:Bool;

	@:optional
	public var _49:CacheLinePad;
};

/**
	// Initialize examines the processor and sets the relevant variables above.
	// This is called by the runtime package early in program initialization,
	// before normal init functions are run. env is set by runtime if the OS supports
	// cpu feature options in GODEBUG.
**/
function initialize(_env:GoString):Void {
	_doinit();
	_processOptions(_env);
}

/**
	// processOptions enables or disables CPU feature values based on the parsed env string.
	// The env string is expected to be of the form cpu.feature1=value1,cpu.feature2=value2...
	// where feature names is one of the architecture specific list stored in the
	// cpu packages options variable and values are either 'on' or 'off'.
	// If env contains cpu.all=off then all cpu features referenced through the options
	// variable are disabled. Other feature names and values result in warning messages.
**/
function _processOptions(_env:GoString):Void {
	stdgo.internal.Macro.controlFlow({
		@:label("field") while (_env != (Go.str())) {
			var _field:GoString = Go.str();
			var _i:GoInt = _indexByte(_env, (",".code : GoRune));
			if (_i < (0:GoInt)) {
				{
					final __tmp__0 = _env;
					final __tmp__1 = Go.str();
					_field = __tmp__0;
					_env = __tmp__1;
				};
			} else {
				{
					final __tmp__0 = (_env.__slice__(0, _i) : GoString);
					final __tmp__1 = (_env.__slice__(_i + (1 : GoInt)) : GoString);
					_field = __tmp__0;
					_env = __tmp__1;
				};
			};
			if ((_field.length < (4:GoInt)) || ((_field.__slice__(0, (4 : GoInt)) : GoString) != Go.str("cpu."))) {
				continue;
			};
			_i = _indexByte(_field, ("=".code : GoRune));
			if (_i < (0:GoInt)) {
				stdgo.fmt.Fmt.print(Go.str("GODEBUG: no value specified for \""), _field, Go.str("\"\n"));
				continue;
			};
			var _0:GoString = (_field.__slice__((4 : GoInt), _i) : GoString),
				_1:GoString = (_field.__slice__(_i + (1 : GoInt)) : GoString),
				_value:GoString = _1,
				_key:GoString = _0;
			var _enable:Bool = false;
			if (_value == (Go.str("on"))) {
				_enable = true;
			} else if (_value == (Go.str("off"))) {
				_enable = false;
			} else {
				stdgo.fmt.Fmt.print(Go.str("GODEBUG: value \""), _value, Go.str("\" not supported for cpu option \""), _key, Go.str("\"\n"));
				continue;
			};
			if (_key == (Go.str("all"))) {
				for (_i in 0..._options.length.toBasic()) {
					_options[_i].specified = true;
					_options[_i].enable = _enable;
				};
				continue;
			};
			for (_i in 0..._options.length.toBasic()) {
				if (_options[_i].name == (_key)) {
					_options[_i].specified = true;
					_options[_i].enable = _enable;
					continue;
				};
			};
			stdgo.fmt.Fmt.print(Go.str("GODEBUG: unknown cpu feature \""), _key, Go.str("\"\n"));
		};
		for (_0 => _o in _options) {
			if (!_o.specified) {
				continue;
			};
			if (_o.enable && !_o.feature.value) {
				stdgo.fmt.Fmt.print(Go.str("GODEBUG: can not enable \""), _o.name, Go.str("\", missing CPU support\n"));
				continue;
			};
			_o.feature.value = _o.enable;
		};
	});
}

/**
	// indexByte returns the index of the first instance of c in s,
	// or -1 if c is not present in s.
**/
function _indexByte(_s:GoString, _c:GoByte):GoInt {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_s.length), _i++, {
			if (_s[_i] == (_c)) {
				return _i;
			};
		});
	};
	return (-1 : GoInt);
}

/**
	// Name returns the CPU name given by the vendor
	// if it can be read directly from memory or by CPU instructions.
	// If the CPU name can not be determined an empty string is returned.
	//
	// Implementations that use the Operating System (e.g. sysctl or /sys/)
	// to gather CPU information for display should be placed in internal/sysinfo.
**/
function name():GoString {
	return Go.str();
}

function _doinit():Void {}
